; ModuleID = '/llk/IR_all_yes/drivers/phy/broadcom/phy-bcm-sr-pcie.c_pt.bc'
source_filename = "../drivers/phy/broadcom/phy-bcm-sr-pcie.c"
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
%struct.sr_pcie_phy_core = type { ptr, ptr, ptr, ptr, i32, [9 x %struct.sr_pcie_phy] }
%struct.sr_pcie_phy = type { ptr, i32, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_phy_bcm_sr_pcie__289_298_sr_pcie_phy_driver_init6 = internal global ptr @sr_pcie_phy_driver_init, section ".initcall6.init", align 4
@sr_pcie_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sr_pcie_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sr_pcie_phy_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sr_pcie_phy_driver_exit = internal global ptr @sr_pcie_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [54 x i8] c"phy_bcm_sr_pcie.author=Ray Jui <ray.jui@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [62 x i8] c"phy_bcm_sr_pcie.description=Broadcom Stingray PCIe PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [58 x i8] c"phy_bcm_sr_pcie.file=drivers/phy/broadcom/phy-bcm-sr-pcie\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [31 x i8] c"phy_bcm_sr_pcie.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sr-pcie-phy\00", [20 x i8] zeroinitializer }, align 32
@sr_pcie_phy_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,sr-pcie-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"brcm,sr-cdru\00", [19 x i8] zeroinitializer }, align 32
@sr_pcie_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 234, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to find CDRU device\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sr_pcie_phy_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/phy/broadcom/phy-bcm-sr-pcie.c\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sr_pcie_phy_probe._entry_ptr = internal global ptr @sr_pcie_phy_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"brcm,sr-mhb\00", [20 x i8] zeroinitializer }, align 32
@sr_pcie_phy_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 240, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to find MHB device\0A\00", [37 x i8] zeroinitializer }, align 32
@sr_pcie_phy_probe._entry_ptr.10 = internal global ptr @sr_pcie_phy_probe._entry.8, section ".printk_index", align 4
@sr_pcie_phy_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 248, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid PCIe PIPEMUX strap %u\0A\00", [33 x i8] zeroinitializer }, align 32
@sr_pcie_phy_probe._entry_ptr.13 = internal global ptr @sr_pcie_phy_probe._entry.11, section ".printk_index", align 4
@sr_paxc_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @sr_paxc_phy_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@sr_pcie_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @sr_pcie_phy_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@sr_pcie_phy_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 263, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to create PCIe PHY\0A\00", [37 x i8] zeroinitializer }, align 32
@sr_pcie_phy_probe._entry_ptr.16 = internal global ptr @sr_pcie_phy_probe._entry.14, section ".printk_index", align 4
@sr_pcie_phy_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 276, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register PHY provider\0A\00", [63 x i8] zeroinitializer }, align 32
@sr_pcie_phy_probe._entry_ptr.19 = internal global ptr @sr_pcie_phy_probe._entry.17, section ".printk_index", align 4
@sr_pcie_phy_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 280, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Stingray PCIe PHY driver initialized\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sr_pcie_phy_probe._entry_ptr.23 = internal global ptr @sr_pcie_phy_probe._entry.20, section ".printk_index", align 4
@sr_paxc_phy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 180, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PAXC is not powered up\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sr_paxc_phy_init\00", [47 x i8] zeroinitializer }, align 32
@sr_paxc_phy_init._entry_ptr = internal global ptr @sr_paxc_phy_init._entry, section ".printk_index", align 4
@pipemux_table = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\00\80\00\81\C3\FF\CD\FD\F0\C0B<\FCL", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c"sr_pcie_phy_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 291, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 293, i32 12 }
@___asan_gen_.32 = private unnamed_addr constant [24 x i8] c"sr_pcie_phy_match_table\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 285, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 232, i32 53 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 234, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 238, i32 52 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 240, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 247, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [16 x i8] c"sr_paxc_phy_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 192, i32 29 }
@___asan_gen_.74 = private unnamed_addr constant [16 x i8] c"sr_pcie_phy_ops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 187, i32 29 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 263, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 276, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 280, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 180, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [14 x i8] c"pipemux_table\00", align 1
@___asan_gen_.108 = private constant [42 x i8] c"../drivers/phy/broadcom/phy-bcm-sr-pcie.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 78, i32 17 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_sr_pcie_phy_driver_exit, ptr @__initcall__kmod_phy_bcm_sr_pcie__289_298_sr_pcie_phy_driver_init6, ptr @sr_paxc_phy_init._entry, ptr @sr_paxc_phy_init._entry_ptr, ptr @sr_pcie_phy_driver_exit, ptr @sr_pcie_phy_probe._entry, ptr @sr_pcie_phy_probe._entry.11, ptr @sr_pcie_phy_probe._entry.14, ptr @sr_pcie_phy_probe._entry.17, ptr @sr_pcie_phy_probe._entry.20, ptr @sr_pcie_phy_probe._entry.8, ptr @sr_pcie_phy_probe._entry_ptr, ptr @sr_pcie_phy_probe._entry_ptr.10, ptr @sr_pcie_phy_probe._entry_ptr.13, ptr @sr_pcie_phy_probe._entry_ptr.16, ptr @sr_pcie_phy_probe._entry_ptr.19, ptr @sr_pcie_phy_probe._entry_ptr.23, ptr @sr_pcie_phy_driver, ptr @.str, ptr @sr_pcie_phy_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @sr_paxc_phy_ops, ptr @sr_pcie_phy_ops, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @pipemux_table], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_pcie_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_pcie_phy_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_pcie_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_pcie_phy_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_pcie_phy_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_paxc_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_pcie_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_pcie_phy_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_pcie_phy_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_pcie_phy_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_paxc_phy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pipemux_table to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sr_pcie_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sr_pcie_phy_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sr_pcie_phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sr_pcie_phy_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr_pcie_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %pipemux.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 128, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup66_crit_edge, label %if.end

entry.cleanup66_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup66

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.sr_pcie_phy_core, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call3 to i32
  br label %cleanup66

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.1) #6
  %cdru = getelementptr inbounds %struct.sr_pcie_phy_core, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %cdru to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call10, ptr %cdru, align 4
  %cmp.i112 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i112, label %do.end, label %if.end17

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.2) #9
  %8 = ptrtoint ptr %cdru to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cdru, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup66

if.end17:                                         ; preds = %if.end9
  %call18 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.7) #6
  %mhb = getelementptr inbounds %struct.sr_pcie_phy_core, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %mhb to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call18, ptr %mhb, align 4
  %cmp.i113 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i113, label %do.end24, label %if.end28

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.9) #9
  %14 = ptrtoint ptr %mhb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mhb, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup66

if.end28:                                         ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pipemux.i) #6
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 268
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !69
  %20 = lshr i32 %19, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %and.i = and i32 %20, 15
  %21 = ptrtoint ptr %pipemux.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and.i, ptr %pipemux.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and.i)
  %cmp.i114 = icmp eq i32 %and.i, 15
  br i1 %cmp.i114, label %if.then.i, label %if.end28.pipemux_strap_read.exit_crit_edge

if.end28.pipemux_strap_read.exit_crit_edge:       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %pipemux_strap_read.exit

if.then.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %cdru to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cdru, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %23, i32 noundef 92, ptr noundef nonnull %pipemux.i) #6
  %24 = ptrtoint ptr %pipemux.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pipemux.i, align 4
  %shr.i = lshr i32 %25, 19
  %and3.i = and i32 %shr.i, 15
  br label %pipemux_strap_read.exit

pipemux_strap_read.exit:                          ; preds = %if.then.i, %if.end28.pipemux_strap_read.exit_crit_edge
  %26 = phi i32 [ %and.i, %if.end28.pipemux_strap_read.exit_crit_edge ], [ %and3.i, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pipemux.i) #6
  %pipemux = getelementptr inbounds %struct.sr_pcie_phy_core, ptr %call.i, i32 0, i32 4
  %27 = ptrtoint ptr %pipemux to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %pipemux, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %26)
  %cmp.i115 = icmp ult i32 %26, 14
  br i1 %cmp.i115, label %for.body.preheader, label %do.end35

for.body.preheader:                               ; preds = %pipemux_strap_read.exit
  %call42 = call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @sr_pcie_phy_ops) #6
  %phy = getelementptr %struct.sr_pcie_phy_core, ptr %call.i, i32 0, i32 5, i32 0, i32 2
  %28 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call42, ptr %phy, align 4
  %cmp.i116 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116, label %for.body.preheader.cleanup.thread_crit_edge, label %for.inc

for.body.preheader.cleanup.thread_crit_edge:      ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

do.end35:                                         ; preds = %pipemux_strap_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.12, i32 noundef %26) #9
  br label %cleanup66

cleanup.thread:                                   ; preds = %for.inc.7.cleanup.thread_crit_edge, %for.inc.6.cleanup.thread_crit_edge, %for.inc.5.cleanup.thread_crit_edge, %for.inc.4.cleanup.thread_crit_edge, %for.inc.3.cleanup.thread_crit_edge, %for.inc.2.cleanup.thread_crit_edge, %for.inc.1.cleanup.thread_crit_edge, %for.inc.cleanup.thread_crit_edge, %for.body.preheader.cleanup.thread_crit_edge
  %phy.lcssa = phi ptr [ %phy, %for.body.preheader.cleanup.thread_crit_edge ], [ %phy.1, %for.inc.cleanup.thread_crit_edge ], [ %phy.2, %for.inc.1.cleanup.thread_crit_edge ], [ %phy.3, %for.inc.2.cleanup.thread_crit_edge ], [ %phy.4, %for.inc.3.cleanup.thread_crit_edge ], [ %phy.5, %for.inc.4.cleanup.thread_crit_edge ], [ %phy.6, %for.inc.5.cleanup.thread_crit_edge ], [ %phy.7, %for.inc.6.cleanup.thread_crit_edge ], [ %phy.8, %for.inc.7.cleanup.thread_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #9
  %31 = ptrtoint ptr %phy.lcssa to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %phy.lcssa, align 4
  %33 = ptrtoint ptr %32 to i32
  br label %cleanup66

for.inc:                                          ; preds = %for.body.preheader
  %arrayidx = getelementptr %struct.sr_pcie_phy_core, ptr %call.i, i32 0, i32 5, i32 0
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %arrayidx, align 4
  %index = getelementptr %struct.sr_pcie_phy_core, ptr %call.i, i32 0, i32 5, i32 0, i32 1
  %35 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %index, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call42, i32 0, i32 8
  %36 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arrayidx, ptr %driver_data.i.i, align 4
  %call42.1 = call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @sr_pcie_phy_ops) #6
  %phy.1 = getelementptr %struct.sr_pcie_phy_core, ptr %call.i, i32 0, i32 5, i32 1, i32 2
  %37 = ptrtoint ptr %phy.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call42.1, ptr %phy.1, align 4
  %cmp.i116.1 = icmp ugt ptr %call42.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116.1, label %for.inc.cleanup.thread_crit_edge, label %for.inc.1

for.inc.cleanup.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.sr_pcie_phy_core, ptr %call.i, i32 0, i32 5, i32 1
  %38 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %arrayidx.1, align 4
  %index.1 = getelementptr %struct.sr_pcie_phy_core, ptr %call.i, i32 0, i32 5, i32 1, i32 1
  %39 = ptrtoint ptr %index.1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %index.1, align 4
  %driver_data.i.i.1 = getelementptr inbounds %struct.device, ptr %call42.1, i32 0, i32 8
  %40 = ptrtoint ptr %driver_data.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %arrayidx.1, ptr %driver_data.i.i.1, align 4
  %call42.2 = call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @sr_pcie_phy_ops) #6
  %phy.2 = getelementptr %struct.sr_pcie_phy_core, ptr %call.i, i32 0, i32 5, i32 2, i32 2
  %41 = ptrtoint ptr %phy.2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call42.2, ptr %phy.2, align 4
  %cmp.i116.2 = icmp ugt ptr %call42.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116.2, label %for.inc.1.cleanup.thread_crit_edge, label %for.inc.2

for.inc.1.cleanup.thread_crit_edge:               ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.2 = getelementptr %struct.sr_pcie_phy_core, ptr %call.i, i32 0, i32 5, i32 2
  %42 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i, ptr %arrayidx.2, align 4
  %index.2 = getelementptr %struct.sr_pcie_phy_core, ptr %call.i, i32 0, i32 5, i32 2, i32 1
  %43 = ptrtoint ptr %index.2 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %index.2, align 4
  %driver_data.i.i.2 = getelementptr inbounds %struct.device, ptr %call42.2, i32 0, i32 8
  %44 = ptrtoint ptr %driver_data.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %arrayidx.2, ptr %driver_data.i.i.2, align 4
  %call42.3 = call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @sr_pcie_phy_ops) #6
  %phy.3 = getelementptr %struct.sr_pcie_phy_core, ptr %call.i, i32 0, i32 5, i32 3, i32 2
  %45 = ptrtoint ptr %phy.3 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call42.3, ptr %phy.3, align 4
  %cmp.i116.3 = icmp ugt ptr %call42.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116.3, label %for.inc.2.cleanup.thread_crit_edge, label %for.inc.3

for.inc.2.cleanup.thread_crit_edge:               ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.3 = getelementptr %struct.sr_pcie_phy_core, ptr %call.i, i32 0, i32 5, i32 3
  %46 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i, ptr %arrayidx.3, align 4
  %index.3 = getelementptr %struct.sr_pcie_phy_core, ptr %call.i, i32 0, i32 5, i32 3, i32 1
  %47 = ptrtoint ptr %index.3 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 3, ptr %index.3, align 4
  %driver_data.i.i.3 = getelementptr inbounds %struct.device, ptr %call42.3, i32 0, i32 8
  %48 = ptrtoint ptr %driver_data.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %arrayidx.3, ptr %driver_data.i.i.3, align 4
  %call42.4 = call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @sr_pcie_phy_ops) #6
  %phy.4 = getelementptr %struct.sr_pcie_phy_core, ptr %call.i, i32 0, i32 5, i32 4, i32 2
  %49 = ptrtoint ptr %phy.4 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call42.4, ptr %phy.4, align 4
  %cmp.i116.4 = icmp ugt ptr %call42.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116.4, label %for.inc.3.cleanup.thread_crit_edge, label %for.inc.4

for.inc.3.cleanup.thread_crit_edge:               ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.4 = getelementptr %struct.sr_pcie_phy_core, ptr %call.i, i32 0, i32 5, i32 4
  %50 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i, ptr %arrayidx.4, align 4
  %index.4 = getelementptr %struct.sr_pcie_phy_core, ptr %call.i, i32 0, i32 5, i32 4, i32 1
  %51 = ptrtoint ptr %index.4 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 4, ptr %index.4, align 4
  %driver_data.i.i.4 = getelementptr inbounds %struct.device, ptr %call42.4, i32 0, i32 8
  %52 = ptrtoint ptr %driver_data.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %arrayidx.4, ptr %driver_data.i.i.4, align 4
  %call42.5 = call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @sr_pcie_phy_ops) #6
  %phy.5 = getelementptr %struct.sr_pcie_phy_core, ptr %call.i, i32 0, i32 5, i32 5, i32 2
  %53 = ptrtoint ptr %phy.5 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call42.5, ptr %phy.5, align 4
  %cmp.i116.5 = icmp ugt ptr %call42.5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116.5, label %for.inc.4.cleanup.thread_crit_edge, label %for.inc.5

for.inc.4.cleanup.thread_crit_edge:               ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.5 = getelementptr %struct.sr_pcie_phy_core, ptr %call.i, i32 0, i32 5, i32 5
  %54 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i, ptr %arrayidx.5, align 4
  %index.5 = getelementptr %struct.sr_pcie_phy_core, ptr %call.i, i32 0, i32 5, i32 5, i32 1
  %55 = ptrtoint ptr %index.5 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 5, ptr %index.5, align 4
  %driver_data.i.i.5 = getelementptr inbounds %struct.device, ptr %call42.5, i32 0, i32 8
  %56 = ptrtoint ptr %driver_data.i.i.5 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %arrayidx.5, ptr %driver_data.i.i.5, align 4
  %call42.6 = call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @sr_pcie_phy_ops) #6
  %phy.6 = getelementptr %struct.sr_pcie_phy_core, ptr %call.i, i32 0, i32 5, i32 6, i32 2
  %57 = ptrtoint ptr %phy.6 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call42.6, ptr %phy.6, align 4
  %cmp.i116.6 = icmp ugt ptr %call42.6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116.6, label %for.inc.5.cleanup.thread_crit_edge, label %for.inc.6

for.inc.5.cleanup.thread_crit_edge:               ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.6 = getelementptr %struct.sr_pcie_phy_core, ptr %call.i, i32 0, i32 5, i32 6
  %58 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i, ptr %arrayidx.6, align 4
  %index.6 = getelementptr %struct.sr_pcie_phy_core, ptr %call.i, i32 0, i32 5, i32 6, i32 1
  %59 = ptrtoint ptr %index.6 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 6, ptr %index.6, align 4
  %driver_data.i.i.6 = getelementptr inbounds %struct.device, ptr %call42.6, i32 0, i32 8
  %60 = ptrtoint ptr %driver_data.i.i.6 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %arrayidx.6, ptr %driver_data.i.i.6, align 4
  %call42.7 = call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @sr_pcie_phy_ops) #6
  %phy.7 = getelementptr %struct.sr_pcie_phy_core, ptr %call.i, i32 0, i32 5, i32 7, i32 2
  %61 = ptrtoint ptr %phy.7 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call42.7, ptr %phy.7, align 4
  %cmp.i116.7 = icmp ugt ptr %call42.7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116.7, label %for.inc.6.cleanup.thread_crit_edge, label %for.inc.7

for.inc.6.cleanup.thread_crit_edge:               ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx.7 = getelementptr %struct.sr_pcie_phy_core, ptr %call.i, i32 0, i32 5, i32 7
  %62 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i, ptr %arrayidx.7, align 4
  %index.7 = getelementptr %struct.sr_pcie_phy_core, ptr %call.i, i32 0, i32 5, i32 7, i32 1
  %63 = ptrtoint ptr %index.7 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 7, ptr %index.7, align 4
  %driver_data.i.i.7 = getelementptr inbounds %struct.device, ptr %call42.7, i32 0, i32 8
  %64 = ptrtoint ptr %driver_data.i.i.7 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %arrayidx.7, ptr %driver_data.i.i.7, align 4
  %call42.8 = call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @sr_paxc_phy_ops) #6
  %phy.8 = getelementptr %struct.sr_pcie_phy_core, ptr %call.i, i32 0, i32 5, i32 8, i32 2
  %65 = ptrtoint ptr %phy.8 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call42.8, ptr %phy.8, align 4
  %cmp.i116.8 = icmp ugt ptr %call42.8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116.8, label %for.inc.7.cleanup.thread_crit_edge, label %for.inc.8

for.inc.7.cleanup.thread_crit_edge:               ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx.8 = getelementptr %struct.sr_pcie_phy_core, ptr %call.i, i32 0, i32 5, i32 8
  %66 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call.i, ptr %arrayidx.8, align 4
  %index.8 = getelementptr %struct.sr_pcie_phy_core, ptr %call.i, i32 0, i32 5, i32 8, i32 1
  %67 = ptrtoint ptr %index.8 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 8, ptr %index.8, align 4
  %driver_data.i.i.8 = getelementptr inbounds %struct.device, ptr %call42.8, i32 0, i32 8
  %68 = ptrtoint ptr %driver_data.i.i.8 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %arrayidx.8, ptr %driver_data.i.i.8, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %69 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call55 = call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @sr_pcie_phy_xlate) #6
  %cmp.i117 = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i117, label %do.end60, label %do.end65

do.end60:                                         ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #9
  %70 = ptrtoint ptr %call55 to i32
  br label %cleanup66

do.end65:                                         ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.21) #9
  br label %cleanup66

cleanup66:                                        ; preds = %do.end65, %do.end60, %cleanup.thread, %do.end35, %do.end24, %do.end, %if.then6, %entry.cleanup66_crit_edge
  %retval.2 = phi i32 [ %4, %if.then6 ], [ %10, %do.end ], [ %16, %do.end24 ], [ %70, %do.end60 ], [ 0, %do.end65 ], [ -5, %do.end35 ], [ -12, %entry.cleanup66_crit_edge ], [ %33, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sr_pcie_phy_xlate(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %args2 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %2 = ptrtoint ptr %args2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp = icmp sgt i32 %3, 8
  br i1 %cmp, label %do.end, label %if.end27, !prof !71

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 209, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %phy = getelementptr %struct.sr_pcie_phy_core, ptr %1, i32 0, i32 5, i32 %3, i32 2
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -19 to ptr), %do.end ], [ %5, %if.end27 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr_paxc_phy_init(ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %p, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %index = getelementptr inbounds %struct.sr_pcie_phy, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp.not = icmp eq i32 %5, 8
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mhb = getelementptr inbounds %struct.sr_pcie_phy_core, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %mhb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mhb, align 4
  %call2 = call i32 @regmap_read(ptr noundef %8, i32 noundef 448, ptr noundef nonnull %val) #6
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and = and i32 %10, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and)
  %cmp3.not = icmp eq i32 %and, 15
  br i1 %cmp3.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.24) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sr_pcie_phy_init(ptr nocapture noundef readonly %p) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %p, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %index.i = getelementptr inbounds %struct.sr_pcie_phy, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i, align 4
  %pipemux.i = getelementptr inbounds %struct.sr_pcie_phy_core, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %pipemux.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pipemux.i, align 4
  %arrayidx.i = getelementptr [14 x i8], ptr @pipemux_table, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %9 to i32
  %10 = shl nuw i32 1, %5
  %11 = and i32 %10, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not = icmp eq i32 %11, 0
  %. = select i1 %tobool.i.not, i32 -19, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !51, !52, !53, !54, !56, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__initcall__kmod_phy_bcm_sr_pcie__289_298_sr_pcie_phy_driver_init6, !1, !"__initcall__kmod_phy_bcm_sr_pcie__289_298_sr_pcie_phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/broadcom/phy-bcm-sr-pcie.c", i32 298, i32 1}
!2 = !{ptr @__exitcall_sr_pcie_phy_driver_exit, !1, !"__exitcall_sr_pcie_phy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/phy/broadcom/phy-bcm-sr-pcie.c", i32 300, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/phy/broadcom/phy-bcm-sr-pcie.c", i32 301, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/phy/broadcom/phy-bcm-sr-pcie.c", i32 302, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/broadcom/phy-bcm-sr-pcie.c", i32 293, i32 12}
!12 = !{ptr @sr_pcie_phy_driver, !13, !"sr_pcie_phy_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/broadcom/phy-bcm-sr-pcie.c", i32 291, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/broadcom/phy-bcm-sr-pcie.c", i32 232, i32 53}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/broadcom/phy-bcm-sr-pcie.c", i32 234, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sr_pcie_phy_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @sr_pcie_phy_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/broadcom/phy-bcm-sr-pcie.c", i32 238, i32 52}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/phy/broadcom/phy-bcm-sr-pcie.c", i32 240, i32 3}
!28 = !{ptr @sr_pcie_phy_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @sr_pcie_phy_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/phy/broadcom/phy-bcm-sr-pcie.c", i32 247, i32 3}
!32 = !{ptr @sr_pcie_phy_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @sr_pcie_phy_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/phy/broadcom/phy-bcm-sr-pcie.c", i32 263, i32 4}
!36 = !{ptr @sr_pcie_phy_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @sr_pcie_phy_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/phy/broadcom/phy-bcm-sr-pcie.c", i32 276, i32 3}
!40 = !{ptr @sr_pcie_phy_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @sr_pcie_phy_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/phy/broadcom/phy-bcm-sr-pcie.c", i32 280, i32 2}
!44 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @sr_pcie_phy_probe._entry.20, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @sr_pcie_phy_probe._entry_ptr.23, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @sr_paxc_phy_ops, !48, !"sr_paxc_phy_ops", i1 false, i1 false}
!48 = !{!"../drivers/phy/broadcom/phy-bcm-sr-pcie.c", i32 192, i32 29}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/phy/broadcom/phy-bcm-sr-pcie.c", i32 180, i32 3}
!51 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @sr_paxc_phy_init._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @sr_paxc_phy_init._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @sr_pcie_phy_ops, !55, !"sr_pcie_phy_ops", i1 false, i1 false}
!55 = !{!"../drivers/phy/broadcom/phy-bcm-sr-pcie.c", i32 187, i32 29}
!56 = !{ptr @pipemux_table, !57, !"pipemux_table", i1 false, i1 false}
!57 = !{!"../drivers/phy/broadcom/phy-bcm-sr-pcie.c", i32 78, i32 17}
!58 = !{ptr @sr_pcie_phy_match_table, !59, !"sr_pcie_phy_match_table", i1 false, i1 false}
!59 = !{!"../drivers/phy/broadcom/phy-bcm-sr-pcie.c", i32 285, i32 34}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i64 3075464}
!70 = !{i64 2155131181}
!71 = !{!"branch_weights", i32 1, i32 2000}
!72 = !{!"auto-init"}
