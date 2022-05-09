; ModuleID = '/llk/IR_all_yes/drivers/phy/renesas/phy-rcar-gen2.c_pt.bc'
source_filename = "../drivers/phy/renesas/phy-rcar-gen2.c"
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
%struct.rcar_gen2_phy_data = type { ptr, ptr, i32 }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.rcar_gen2_phy_driver = type { ptr, ptr, %struct.spinlock, i32, ptr }
%struct.rcar_gen2_channel = type { ptr, ptr, [2 x %struct.rcar_gen2_phy], i32, i32 }
%struct.rcar_gen2_phy = type { ptr, ptr, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_phy_rcar_gen2__289_439_rcar_gen2_phy_driver_init6 = internal global ptr @rcar_gen2_phy_driver_init, section ".initcall6.init", align 4
@rcar_gen2_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rcar_gen2_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rcar_gen2_phy_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rcar_gen2_phy_driver_exit = internal global ptr @rcar_gen2_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file290 = internal constant [53 x i8] c"phy_rcar_gen2.file=drivers/phy/renesas/phy-rcar-gen2\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [29 x i8] c"phy_rcar_gen2.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [49 x i8] c"phy_rcar_gen2.description=Renesas R-Car Gen2 PHY\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [74 x i8] c"phy_rcar_gen2.author=Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"phy_rcar_gen2\00", [18 x i8] zeroinitializer }, align 32
@rcar_gen2_phy_match_table = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,usb-phy-r8a77470\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rz_g1c_usb_phy_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,usb-phy-r8a7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen2_usb_phy_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,usb-phy-r8a7791\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen2_usb_phy_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,usb-phy-r8a7794\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen2_usb_phy_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen2_usb_phy_data }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@rcar_gen2_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 349, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"This driver is required to be instantiated from device tree\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rcar_gen2_phy_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/phy/renesas/phy-rcar-gen2.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rcar_gen2_phy_probe._entry_ptr = internal global ptr @rcar_gen2_phy_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"usbhs\00", [26 x i8] zeroinitializer }, align 32
@rcar_gen2_phy_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 355, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Can't get USBHS clock\0A\00", [41 x i8] zeroinitializer }, align 32
@rcar_gen2_phy_probe._entry_ptr.9 = internal global ptr @rcar_gen2_phy_probe._entry.7, section ".printk_index", align 4
@rcar_gen2_phy_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&drv->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@rcar_gen2_phy_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 394, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid \22reg\22 property\0A\00", [40 x i8] zeroinitializer }, align 32
@rcar_gen2_phy_probe._entry_ptr.14 = internal global ptr @rcar_gen2_phy_probe._entry.12, section ".printk_index", align 4
@select_mask = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 48, i32 0, i32 -2147483648], [20 x i8] zeroinitializer }, align 32
@rcar_gen2_phy_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 410, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to create PHY\0A\00", [42 x i8] zeroinitializer }, align 32
@rcar_gen2_phy_probe._entry_ptr.17 = internal global ptr @rcar_gen2_phy_probe._entry.15, section ".printk_index", align 4
@rcar_gen2_phy_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 422, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register PHY provider\0A\00", [63 x i8] zeroinitializer }, align 32
@rcar_gen2_phy_probe._entry_ptr.20 = internal global ptr @rcar_gen2_phy_probe._entry.18, section ".printk_index", align 4
@rz_g1c_usb_phy_data = internal constant { %struct.rcar_gen2_phy_data, [20 x i8] } { %struct.rcar_gen2_phy_data { ptr @rz_g1c_phy_ops, ptr @usb20_select_value, i32 1 }, [20 x i8] zeroinitializer }, align 32
@rcar_gen2_usb_phy_data = internal constant { %struct.rcar_gen2_phy_data, [20 x i8] } { %struct.rcar_gen2_phy_data { ptr @rcar_gen2_phy_ops, ptr @pci_select_value, i32 3 }, [20 x i8] zeroinitializer }, align 32
@rz_g1c_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @rcar_gen2_phy_init, ptr @rcar_gen2_phy_exit, ptr @rz_g1c_phy_power_on, ptr @rz_g1c_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@usb20_select_value = internal constant { [1 x [2 x i32]], [24 x i8] } { [1 x [2 x i32]] [[2 x i32] [i32 16, i32 32]], [24 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rcar_gen2_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @rcar_gen2_phy_init, ptr @rcar_gen2_phy_exit, ptr @rcar_gen2_phy_power_on, ptr @rcar_gen2_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@pci_select_value = internal constant { [3 x [2 x i32]], [40 x i8] } { [3 x [2 x i32]] [[2 x i32] [i32 16, i32 48], [2 x i32] zeroinitializer, [2 x i32] [i32 0, i32 -2147483648]], [40 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant [21 x i8] c"rcar_gen2_phy_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 431, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 433, i32 12 }
@___asan_gen_.27 = private unnamed_addr constant [26 x i8] c"rcar_gen2_phy_match_table\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 284, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 348, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 353, i32 26 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 355, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 367, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 392, i32 36 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 394, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant [12 x i8] c"select_mask\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 331, i32 18 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 410, i32 5 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 422, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [20 x i8] c"rz_g1c_usb_phy_data\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 278, i32 40 }
@___asan_gen_.90 = private unnamed_addr constant [23 x i8] c"rcar_gen2_usb_phy_data\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 272, i32 40 }
@___asan_gen_.93 = private unnamed_addr constant [15 x i8] c"rz_g1c_phy_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 255, i32 29 }
@___asan_gen_.96 = private unnamed_addr constant [19 x i8] c"usb20_select_value\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 268, i32 18 }
@___asan_gen_.99 = private unnamed_addr constant [18 x i8] c"rcar_gen2_phy_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 247, i32 29 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"pci_select_value\00", align 1
@___asan_gen_.103 = private constant [39 x i8] c"../drivers/phy/renesas/phy-rcar-gen2.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 263, i32 18 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__exitcall_rcar_gen2_phy_driver_exit, ptr @__initcall__kmod_phy_rcar_gen2__289_439_rcar_gen2_phy_driver_init6, ptr @rcar_gen2_phy_driver_exit, ptr @rcar_gen2_phy_probe._entry, ptr @rcar_gen2_phy_probe._entry.12, ptr @rcar_gen2_phy_probe._entry.15, ptr @rcar_gen2_phy_probe._entry.18, ptr @rcar_gen2_phy_probe._entry.7, ptr @rcar_gen2_phy_probe._entry_ptr, ptr @rcar_gen2_phy_probe._entry_ptr.14, ptr @rcar_gen2_phy_probe._entry_ptr.17, ptr @rcar_gen2_phy_probe._entry_ptr.20, ptr @rcar_gen2_phy_probe._entry_ptr.9, ptr @rcar_gen2_phy_driver, ptr @.str, ptr @rcar_gen2_phy_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @rcar_gen2_phy_probe.__key, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @select_mask, ptr @.str.16, ptr @.str.19, ptr @rz_g1c_usb_phy_data, ptr @rcar_gen2_usb_phy_data, ptr @rz_g1c_phy_ops, ptr @usb20_select_value, ptr @rcar_gen2_phy_ops, ptr @pci_select_value], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen2_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen2_phy_match_table to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen2_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen2_phy_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen2_phy_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen2_phy_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @select_mask to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen2_phy_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen2_phy_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_g1c_usb_phy_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen2_usb_phy_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_g1c_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb20_select_value to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen2_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_select_value to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gen2_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rcar_gen2_phy_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rcar_gen2_phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @rcar_gen2_phy_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gen2_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %channel_num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #11
  br label %cleanup89

if.end:                                           ; preds = %entry
  %call = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.6) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end6, label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #11
  %2 = ptrtoint ptr %call to i32
  br label %cleanup89

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %cmp.i156 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i156, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call9 to i32
  br label %cleanup89

if.end13:                                         ; preds = %if.end8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 60, i32 noundef 3520) #8
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %if.end13.cleanup89_crit_edge, label %do.body18

if.end13.cleanup89_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body18:                                        ; preds = %if.end13
  %lock = getelementptr inbounds %struct.rcar_gen2_phy_driver, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @rcar_gen2_phy_probe.__key, i16 noundef signext 3) #8
  %clk22 = getelementptr inbounds %struct.rcar_gen2_phy_driver, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %clk22 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %clk22, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9, ptr %call.i, align 4
  %call24 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #8
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %do.body18.cleanup89_crit_edge, label %if.end27

do.body18.cleanup89_crit_edge:                    ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

if.end27:                                         ; preds = %do.body18
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call.i157 = tail call ptr @of_get_next_child(ptr noundef %7, ptr noundef null) #8
  %cmp.not5.i = icmp eq ptr %call.i157, null
  br i1 %cmp.not5.i, label %if.end27.of_get_child_count.exit_crit_edge, label %if.end27.for.body.i_crit_edge

if.end27.for.body.i_crit_edge:                    ; preds = %if.end27
  br label %for.body.i

if.end27.of_get_child_count.exit_crit_edge:       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_get_child_count.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end27.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end27.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i157, %if.end27.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_child(ptr noundef %7, ptr noundef nonnull %child.06.i) #8
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %for.body.i.of_get_child_count.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.of_get_child_count.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_get_child_count.exit

of_get_child_count.exit:                          ; preds = %for.body.i.of_get_child_count.exit_crit_edge, %if.end27.of_get_child_count.exit_crit_edge
  %num.0.lcssa.i = phi i32 [ 0, %if.end27.of_get_child_count.exit_crit_edge ], [ %inc.i, %for.body.i.of_get_child_count.exit_crit_edge ]
  %num_channels = getelementptr inbounds %struct.rcar_gen2_phy_driver, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %num.0.lcssa.i, ptr %num_channels, align 4
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num.0.lcssa.i, i32 48) #8
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !70

devm_kcalloc.exit.thread:                         ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #10
  %channels161 = getelementptr inbounds %struct.rcar_gen2_phy_driver, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %channels161 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %channels161, align 4
  br label %cleanup89

devm_kcalloc.exit:                                ; preds = %of_get_child_count.exit
  %12 = extractvalue { i32, i1 } %9, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %12, i32 noundef 3520) #8
  %channels = getelementptr inbounds %struct.rcar_gen2_phy_driver, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5.i.i, ptr %channels, align 4
  %tobool33.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool33.not, label %devm_kcalloc.exit.cleanup89_crit_edge, label %if.end35

devm_kcalloc.exit.cleanup89_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

if.end35:                                         ; preds = %devm_kcalloc.exit
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %call37 = tail call ptr @of_get_next_child(ptr noundef %15, ptr noundef null) #8
  %cmp.not171 = icmp eq ptr %call37, null
  br i1 %cmp.not171, label %if.end35.for.end80_crit_edge, label %for.body.lr.ph

if.end35.for.end80_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end80

for.body.lr.ph:                                   ; preds = %if.end35
  %num_channels43 = getelementptr inbounds %struct.rcar_gen2_phy_data, ptr %call24, i32 0, i32 2
  %select_value = getelementptr inbounds %struct.rcar_gen2_phy_data, ptr %call24, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.1.for.body_crit_edge, %for.body.lr.ph
  %i.0173 = phi i32 [ 0, %for.body.lr.ph ], [ %inc70, %for.inc.1.for.body_crit_edge ]
  %np.0172 = phi ptr [ %call37, %for.body.lr.ph ], [ %call79, %for.inc.1.for.body_crit_edge ]
  %16 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %channels, align 4
  %add.ptr = getelementptr %struct.rcar_gen2_channel, ptr %17, i32 %i.0173
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %channel_num) #8
  %18 = ptrtoint ptr %channel_num to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %channel_num, align 4, !annotation !71
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %np.0172, ptr %add.ptr, align 4
  %drv40 = getelementptr %struct.rcar_gen2_channel, ptr %17, i32 %i.0173, i32 1
  %20 = ptrtoint ptr %drv40 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %drv40, align 4
  %selected_phy = getelementptr %struct.rcar_gen2_channel, ptr %17, i32 %i.0173, i32 3
  %21 = ptrtoint ptr %selected_phy to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %selected_phy, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np.0172, ptr noundef nonnull @.str.11, ptr noundef nonnull %channel_num, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool42.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool42.not, label %lor.lhs.false, label %for.body.do.end48_crit_edge

for.body.do.end48_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48

lor.lhs.false:                                    ; preds = %for.body
  %22 = ptrtoint ptr %channel_num to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %channel_num, align 4
  %24 = ptrtoint ptr %num_channels43 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_channels43, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp44.not = icmp ult i32 %23, %25
  br i1 %cmp44.not, label %if.end49, label %lor.lhs.false.do.end48_crit_edge

lor.lhs.false.do.end48_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48

do.end48:                                         ; preds = %lor.lhs.false.do.end48_crit_edge, %for.body.do.end48_crit_edge
  %26 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #11
  call void @of_node_put(ptr noundef nonnull %np.0172) #8
  br label %cleanup71.thread

if.end49:                                         ; preds = %lor.lhs.false
  %arrayidx = getelementptr [3 x i32], ptr @select_mask, i32 0, i32 %23
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %select_mask = getelementptr %struct.rcar_gen2_channel, ptr %17, i32 %i.0173, i32 4
  %29 = ptrtoint ptr %select_mask to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %select_mask, align 4
  %arrayidx53 = getelementptr %struct.rcar_gen2_channel, ptr %17, i32 %i.0173, i32 2, i32 0
  %channel54 = getelementptr %struct.rcar_gen2_channel, ptr %17, i32 %i.0173, i32 2, i32 0, i32 1
  %30 = ptrtoint ptr %channel54 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr, ptr %channel54, align 4
  %number = getelementptr %struct.rcar_gen2_channel, ptr %17, i32 %i.0173, i32 2, i32 0, i32 2
  %31 = ptrtoint ptr %number to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %number, align 4
  %32 = ptrtoint ptr %select_value to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %select_value, align 4
  %34 = ptrtoint ptr %channel_num to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %channel_num, align 4
  %arrayidx56 = getelementptr [2 x i32], ptr %33, i32 %35, i32 0
  %36 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx56, align 4
  %select_value57 = getelementptr %struct.rcar_gen2_channel, ptr %17, i32 %i.0173, i32 2, i32 0, i32 3
  %38 = ptrtoint ptr %select_value57 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %select_value57, align 4
  %39 = ptrtoint ptr %call24 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call24, align 4
  %call58 = call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef %40) #8
  %41 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call58, ptr %arrayidx53, align 4
  %cmp.i158 = icmp ugt ptr %call58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i158, label %if.end49.cleanup.thread_crit_edge, label %for.inc

if.end49.cleanup.thread_crit_edge:                ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %for.inc.cleanup.thread_crit_edge, %if.end49.cleanup.thread_crit_edge
  %arrayidx53.lcssa = phi ptr [ %arrayidx53, %if.end49.cleanup.thread_crit_edge ], [ %arrayidx53.1, %for.inc.cleanup.thread_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #11
  call void @of_node_put(ptr noundef nonnull %np.0172) #8
  %42 = ptrtoint ptr %arrayidx53.lcssa to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx53.lcssa, align 4
  %44 = ptrtoint ptr %43 to i32
  br label %cleanup71.thread

for.inc:                                          ; preds = %if.end49
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call58, i32 0, i32 8
  %45 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %arrayidx53, ptr %driver_data.i.i, align 4
  %arrayidx53.1 = getelementptr %struct.rcar_gen2_channel, ptr %17, i32 %i.0173, i32 2, i32 1
  %channel54.1 = getelementptr %struct.rcar_gen2_channel, ptr %17, i32 %i.0173, i32 2, i32 1, i32 1
  %46 = ptrtoint ptr %channel54.1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr, ptr %channel54.1, align 4
  %number.1 = getelementptr %struct.rcar_gen2_channel, ptr %17, i32 %i.0173, i32 2, i32 1, i32 2
  %47 = ptrtoint ptr %number.1 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %number.1, align 4
  %48 = ptrtoint ptr %select_value to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %select_value, align 4
  %50 = ptrtoint ptr %channel_num to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %channel_num, align 4
  %arrayidx56.1 = getelementptr [2 x i32], ptr %49, i32 %51, i32 1
  %52 = ptrtoint ptr %arrayidx56.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx56.1, align 4
  %select_value57.1 = getelementptr %struct.rcar_gen2_channel, ptr %17, i32 %i.0173, i32 2, i32 1, i32 3
  %54 = ptrtoint ptr %select_value57.1 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %select_value57.1, align 4
  %55 = ptrtoint ptr %call24 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call24, align 4
  %call58.1 = call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef %56) #8
  %57 = ptrtoint ptr %arrayidx53.1 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call58.1, ptr %arrayidx53.1, align 4
  %cmp.i158.1 = icmp ugt ptr %call58.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i158.1, label %for.inc.cleanup.thread_crit_edge, label %for.inc.1

for.inc.cleanup.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

for.inc.1:                                        ; preds = %for.inc
  %driver_data.i.i.1 = getelementptr inbounds %struct.device, ptr %call58.1, i32 0, i32 8
  %58 = ptrtoint ptr %driver_data.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %arrayidx53.1, ptr %driver_data.i.i.1, align 4
  %inc70 = add i32 %i.0173, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel_num) #8
  %59 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %of_node, align 8
  %call79 = call ptr @of_get_next_child(ptr noundef %60, ptr noundef nonnull %np.0172) #8
  %cmp.not = icmp eq ptr %call79, null
  br i1 %cmp.not, label %for.inc.1.for.end80_crit_edge, label %for.inc.1.for.body_crit_edge

for.inc.1.for.body_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.1.for.end80_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end80

cleanup71.thread:                                 ; preds = %cleanup.thread, %do.end48
  %retval.3.ph = phi i32 [ %44, %cleanup.thread ], [ %26, %do.end48 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel_num) #8
  br label %cleanup89

for.end80:                                        ; preds = %for.inc.1.for.end80_crit_edge, %if.end35.for.end80_crit_edge
  %call81 = call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @rcar_gen2_phy_xlate) #8
  %cmp.i159 = icmp ugt ptr %call81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i159, label %do.end86, label %if.end88

do.end86:                                         ; preds = %for.end80
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #11
  %61 = ptrtoint ptr %call81 to i32
  br label %cleanup89

if.end88:                                         ; preds = %for.end80
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %62 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i, ptr %driver_data.i, align 4
  br label %cleanup89

cleanup89:                                        ; preds = %if.end88, %do.end86, %cleanup71.thread, %devm_kcalloc.exit.cleanup89_crit_edge, %devm_kcalloc.exit.thread, %do.body18.cleanup89_crit_edge, %if.end13.cleanup89_crit_edge, %if.then11, %do.end6, %do.end
  %retval.4 = phi i32 [ %2, %do.end6 ], [ %3, %if.then11 ], [ %61, %do.end86 ], [ 0, %if.end88 ], [ -22, %do.end ], [ -12, %if.end13.cleanup89_crit_edge ], [ -22, %do.body18.cleanup89_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup89_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ %retval.3.ph, %cleanup71.thread ]
  ret i32 %retval.4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal ptr @rcar_gen2_phy_xlate(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %args) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %args, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num_channels = getelementptr inbounds %struct.rcar_gen2_phy_driver, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp32 = icmp sgt i32 %5, 0
  br i1 %cmp32, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %channels = getelementptr inbounds %struct.rcar_gen2_phy_driver, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %channels, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.033 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rcar_gen2_channel, ptr %7, i32 %i.033
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %cmp3 = icmp eq ptr %1, %9
  br i1 %cmp3, label %lor.lhs.false, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %args8 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %10 = ptrtoint ptr %args8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %args8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp10 = icmp ugt i32 %11, 1
  br i1 %cmp10, label %lor.lhs.false.cleanup_crit_edge, label %if.end13

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %channels, align 4
  %arrayidx18 = getelementptr %struct.rcar_gen2_channel, ptr %13, i32 %i.033, i32 2, i32 %11
  %14 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx18, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %lor.lhs.false.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %15, %if.end13 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %for.cond.preheader.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gen2_phy_init(ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %p, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %channel1 = getelementptr inbounds %struct.rcar_gen2_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel1, align 4
  %drv2 = getelementptr inbounds %struct.rcar_gen2_channel, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %drv2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv2, align 4
  %selected_phy = getelementptr inbounds %struct.rcar_gen2_channel, ptr %3, i32 0, i32 3
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %selected_phy, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !72
  %number = getelementptr inbounds %struct.rcar_gen2_phy, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number, align 4
  tail call void @llvm.prefetch.p0(ptr %selected_phy, i32 1, i32 3, i32 1) #8
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %8 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %selected_phy, i32 -1, i32 %7) #8, !srcloc !73
  %asmresult.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %8, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %asmresult1.i)
  %cmp.not = icmp eq i32 %asmresult1.i, -1
  br i1 %cmp.not, label %if.end, label %__cmpxchg.exit.cleanup_crit_edge

__cmpxchg.exit.cleanup_crit_edge:                 ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %__cmpxchg.exit
  %clk = getelementptr inbounds %struct.rcar_gen2_phy_driver, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 4
  %call.i53 = tail call i32 @clk_prepare(ptr noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %tobool.not.i54 = icmp eq i32 %call.i53, 0
  br i1 %tobool.not.i54, label %if.end.i, label %if.end.clk_prepare_enable.exit_crit_edge

if.end.clk_prepare_enable.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %10) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end.clk_prepare_enable.exit_crit_edge
  %lock = getelementptr inbounds %struct.rcar_gen2_phy_driver, ptr %5, i32 0, i32 2
  %call24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 132
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !75
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  %select_mask = getelementptr inbounds %struct.rcar_gen2_channel, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %select_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %select_mask, align 4
  %neg = xor i32 %16, -1
  %and = and i32 %14, %neg
  %select_value = getelementptr inbounds %struct.rcar_gen2_phy, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %select_value to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %select_value, align 4
  %or = or i32 %and, %18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !77
  tail call void @arm_heavy_mb() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %or)
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %add.ptr36 = getelementptr i8, ptr %21, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %19) #8, !srcloc !78
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call24) #8
  br label %cleanup

cleanup:                                          ; preds = %clk_prepare_enable.exit, %__cmpxchg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %clk_prepare_enable.exit ], [ -16, %__cmpxchg.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gen2_phy_exit(ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %p, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %channel1 = getelementptr inbounds %struct.rcar_gen2_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel1, align 4
  %drv = getelementptr inbounds %struct.rcar_gen2_channel, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv, align 4
  %clk = getelementptr inbounds %struct.rcar_gen2_phy_driver, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  %selected_phy = getelementptr inbounds %struct.rcar_gen2_channel, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %selected_phy to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %selected_phy, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rz_g1c_phy_power_on(ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %p, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %channel = getelementptr inbounds %struct.rcar_gen2_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 4
  %drv1 = getelementptr inbounds %struct.rcar_gen2_channel, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %drv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %lock = getelementptr inbounds %struct.rcar_gen2_phy_driver, ptr %5, i32 0, i32 2
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %add.ptr = getelementptr i8, ptr %7, i32 128
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  %9 = and i32 %8, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #8, !srcloc !78
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 73014320) #8
  %select_value = getelementptr inbounds %struct.rcar_gen2_phy, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %select_value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %select_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %12)
  %cmp15 = icmp eq i32 %12, 32
  br i1 %cmp15, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr19 = getelementptr i8, ptr %7, i32 2
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr19) #8, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %14 = or i16 %13, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr19, i16 %14) #8, !srcloc !84
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rz_g1c_phy_power_off(ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %p, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %channel = getelementptr inbounds %struct.rcar_gen2_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 4
  %drv1 = getelementptr inbounds %struct.rcar_gen2_channel, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %drv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %lock = getelementptr inbounds %struct.rcar_gen2_phy_driver, ptr %5, i32 0, i32 2
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %select_value = getelementptr inbounds %struct.rcar_gen2_phy, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %select_value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %select_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %9)
  %cmp8 = icmp eq i32 %9, 32
  br i1 %cmp8, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %7, i32 2
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #8, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  %11 = and i16 %10, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !86
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %11) #8, !srcloc !84
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr21 = getelementptr i8, ptr %7, i32 128
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %13 = or i32 %12, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %13) #8, !srcloc !78
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gen2_phy_power_on(ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %p, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %select_value = getelementptr inbounds %struct.rcar_gen2_phy, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %select_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %select_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %3)
  %cmp.not = icmp eq i32 %3, 48
  br i1 %cmp.not, label %do.body3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body3:                                         ; preds = %entry
  %channel = getelementptr inbounds %struct.rcar_gen2_phy, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel, align 4
  %drv1 = getelementptr inbounds %struct.rcar_gen2_channel, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %drv1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drv1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %lock = getelementptr inbounds %struct.rcar_gen2_phy_driver, ptr %7, i32 0, i32 2
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %add.ptr = getelementptr i8, ptr %9, i32 128
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %11 = and i32 %10, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #8, !srcloc !78
  %add.ptr18 = getelementptr i8, ptr %9, i32 2
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr18) #8, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !91
  %13 = or i16 %12, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr18, i16 %13) #8, !srcloc !84
  %add.ptr32 = getelementptr i8, ptr %9, i32 136
  br label %for.body

for.body:                                         ; preds = %if.end51.for.body_crit_edge, %do.body3
  %i.075 = phi i32 [ 0, %do.body3 ], [ %inc, %if.end51.for.body_crit_edge ]
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  %15 = and i32 %14, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp37.not = icmp eq i32 %15, 0
  br i1 %cmp37.not, label %if.end51, label %if.then39

if.then39:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  %17 = or i32 %16, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %17) #8, !srcloc !78
  br label %out

if.end51:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #8
  %inc = add nuw nsw i32 %i.075, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %if.end51.out_crit_edge, label %if.end51.for.body_crit_edge

if.end51.for.body_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end51.out_crit_edge:                           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %if.end51.out_crit_edge, %if.then39
  %err.0 = phi i32 [ 0, %if.then39 ], [ -110, %if.end51.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gen2_phy_power_off(ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %p, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %select_value = getelementptr inbounds %struct.rcar_gen2_phy, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %select_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %select_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %3)
  %cmp.not = icmp eq i32 %3, 48
  br i1 %cmp.not, label %do.body3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %channel = getelementptr inbounds %struct.rcar_gen2_phy, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel, align 4
  %drv1 = getelementptr inbounds %struct.rcar_gen2_channel, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %drv1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drv1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %lock = getelementptr inbounds %struct.rcar_gen2_phy_driver, ptr %7, i32 0, i32 2
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %add.ptr = getelementptr i8, ptr %9, i32 128
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  %11 = and i32 %10, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #8, !srcloc !78
  %add.ptr18 = getelementptr i8, ptr %9, i32 2
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr18) #8, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %13 = and i16 %12, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr18, i16 %13) #8, !srcloc !84
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  %15 = or i32 %14, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %15) #8, !srcloc !78
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body3, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__initcall__kmod_phy_rcar_gen2__289_439_rcar_gen2_phy_driver_init6, !1, !"__initcall__kmod_phy_rcar_gen2__289_439_rcar_gen2_phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/renesas/phy-rcar-gen2.c", i32 439, i32 1}
!2 = !{ptr @__exitcall_rcar_gen2_phy_driver_exit, !1, !"__exitcall_rcar_gen2_phy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file290, !4, !"__UNIQUE_ID_file290", i1 false, i1 false}
!4 = !{!"../drivers/phy/renesas/phy-rcar-gen2.c", i32 441, i32 1}
!5 = !{ptr @__UNIQUE_ID_license291, !4, !"__UNIQUE_ID_license291", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description292, !7, !"__UNIQUE_ID_description292", i1 false, i1 false}
!7 = !{!"../drivers/phy/renesas/phy-rcar-gen2.c", i32 442, i32 1}
!8 = !{ptr @__UNIQUE_ID_author293, !9, !"__UNIQUE_ID_author293", i1 false, i1 false}
!9 = !{!"../drivers/phy/renesas/phy-rcar-gen2.c", i32 443, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/renesas/phy-rcar-gen2.c", i32 433, i32 12}
!12 = !{ptr @rcar_gen2_phy_driver, !13, !"rcar_gen2_phy_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/renesas/phy-rcar-gen2.c", i32 431, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/renesas/phy-rcar-gen2.c", i32 348, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rcar_gen2_phy_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @rcar_gen2_phy_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/phy/renesas/phy-rcar-gen2.c", i32 353, i32 26}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/renesas/phy-rcar-gen2.c", i32 355, i32 3}
!26 = !{ptr @rcar_gen2_phy_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @rcar_gen2_phy_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @rcar_gen2_phy_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/phy/renesas/phy-rcar-gen2.c", i32 367, i32 2}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/phy/renesas/phy-rcar-gen2.c", i32 392, i32 36}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/phy/renesas/phy-rcar-gen2.c", i32 394, i32 4}
!35 = !{ptr @rcar_gen2_phy_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @rcar_gen2_phy_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/phy/renesas/phy-rcar-gen2.c", i32 410, i32 5}
!39 = !{ptr @rcar_gen2_phy_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @rcar_gen2_phy_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/phy/renesas/phy-rcar-gen2.c", i32 422, i32 3}
!43 = !{ptr @rcar_gen2_phy_probe._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @rcar_gen2_phy_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @select_mask, !46, !"select_mask", i1 false, i1 false}
!46 = !{!"../drivers/phy/renesas/phy-rcar-gen2.c", i32 331, i32 18}
!47 = !{ptr @rcar_gen2_phy_match_table, !48, !"rcar_gen2_phy_match_table", i1 false, i1 false}
!48 = !{!"../drivers/phy/renesas/phy-rcar-gen2.c", i32 284, i32 34}
!49 = !{ptr @rz_g1c_usb_phy_data, !50, !"rz_g1c_usb_phy_data", i1 false, i1 false}
!50 = !{!"../drivers/phy/renesas/phy-rcar-gen2.c", i32 278, i32 40}
!51 = !{ptr @rz_g1c_phy_ops, !52, !"rz_g1c_phy_ops", i1 false, i1 false}
!52 = !{!"../drivers/phy/renesas/phy-rcar-gen2.c", i32 255, i32 29}
!53 = !{ptr @usb20_select_value, !54, !"usb20_select_value", i1 false, i1 false}
!54 = !{!"../drivers/phy/renesas/phy-rcar-gen2.c", i32 268, i32 18}
!55 = !{ptr @rcar_gen2_usb_phy_data, !56, !"rcar_gen2_usb_phy_data", i1 false, i1 false}
!56 = !{!"../drivers/phy/renesas/phy-rcar-gen2.c", i32 272, i32 40}
!57 = !{ptr @rcar_gen2_phy_ops, !58, !"rcar_gen2_phy_ops", i1 false, i1 false}
!58 = !{!"../drivers/phy/renesas/phy-rcar-gen2.c", i32 247, i32 29}
!59 = !{ptr @pci_select_value, !60, !"pci_select_value", i1 false, i1 false}
!60 = !{!"../drivers/phy/renesas/phy-rcar-gen2.c", i32 263, i32 18}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{!"branch_weights", i32 1, i32 2000}
!71 = !{!"auto-init"}
!72 = !{i64 2155096994}
!73 = !{i64 758607, i64 758628, i64 758651, i64 758670, i64 758689}
!74 = !{i64 2155097406}
!75 = !{i64 3078938}
!76 = !{i64 2155098248}
!77 = !{i64 2155098470}
!78 = !{i64 3078520}
!79 = !{i64 2155106430}
!80 = !{i64 2155106656}
!81 = !{i64 3078100}
!82 = !{i64 2155107857}
!83 = !{i64 2155108079}
!84 = !{i64 3077900}
!85 = !{i64 2155109084}
!86 = !{i64 2155109306}
!87 = !{i64 2155109948}
!88 = !{i64 2155110174}
!89 = !{i64 2155099486}
!90 = !{i64 2155099712}
!91 = !{i64 2155100354}
!92 = !{i64 2155100576}
!93 = !{i64 2155101218}
!94 = !{i64 2155101707}
!95 = !{i64 2155101933}
!96 = !{i64 2155103478}
!97 = !{i64 2155103704}
!98 = !{i64 2155104346}
!99 = !{i64 2155104568}
!100 = !{i64 2155105210}
!101 = !{i64 2155105436}
