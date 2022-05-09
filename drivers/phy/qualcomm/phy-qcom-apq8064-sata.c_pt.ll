; ModuleID = '/llk/IR_all_yes/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c_pt.bc'
source_filename = "../drivers/phy/qualcomm/phy-qcom-apq8064-sata.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.qcom_apq8064_sata_phy = type { ptr, ptr, ptr }

@__initcall__kmod_phy_qcom_apq8064_sata__289_269_qcom_apq8064_sata_phy_driver_init6 = internal global ptr @qcom_apq8064_sata_phy_driver_init, section ".initcall6.init", align 4
@qcom_apq8064_sata_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_apq8064_sata_phy_probe, ptr @qcom_apq8064_sata_phy_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qcom_apq8064_sata_phy_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qcom_apq8064_sata_phy_driver_exit = internal global ptr @qcom_apq8064_sata_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description290 = internal constant [63 x i8] c"phy_qcom_apq8064_sata.description=QCOM apq8064 SATA PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [70 x i8] c"phy_qcom_apq8064_sata.file=drivers/phy/qualcomm/phy-qcom-apq8064-sata\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [37 x i8] c"phy_qcom_apq8064_sata.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qcom-apq8064-sata-phy\00", [42 x i8] zeroinitializer }, align 32
@qcom_apq8064_sata_phy_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,apq8064-sata-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@qcom_apq8064_sata_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @qcom_apq8064_sata_phy_init, ptr @qcom_apq8064_sata_phy_exit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@qcom_apq8064_sata_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 218, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: failed to create phy\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qcom_apq8064_sata_phy_probe\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/phy/qualcomm/phy-qcom-apq8064-sata.c\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_apq8064_sata_phy_probe._entry_ptr = internal global ptr @qcom_apq8064_sata_phy_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cfg\00", [28 x i8] zeroinitializer }, align 32
@qcom_apq8064_sata_phy_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 228, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get sata cfg clock\0A\00", [34 x i8] zeroinitializer }, align 32
@qcom_apq8064_sata_phy_probe._entry_ptr.9 = internal global ptr @qcom_apq8064_sata_phy_probe._entry.7, section ".printk_index", align 4
@qcom_apq8064_sata_phy_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 239, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: failed to register phy\0A\00", [36 x i8] zeroinitializer }, align 32
@qcom_apq8064_sata_phy_probe._entry_ptr.12 = internal global ptr @qcom_apq8064_sata_phy_probe._entry.10, section ".printk_index", align 4
@qcom_apq8064_sata_phy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 137, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"poll timeout UNIPHY_PLL_STATUS\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qcom_apq8064_sata_phy_init\00", [37 x i8] zeroinitializer }, align 32
@qcom_apq8064_sata_phy_init._entry_ptr = internal global ptr @qcom_apq8064_sata_phy_init._entry, section ".printk_index", align 4
@qcom_apq8064_sata_phy_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.3, i32 144, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"poll timeout SATA_PHY_TX_IMCAL_STAT\0A\00", [59 x i8] zeroinitializer }, align 32
@qcom_apq8064_sata_phy_init._entry_ptr.17 = internal global ptr @qcom_apq8064_sata_phy_init._entry.15, section ".printk_index", align 4
@qcom_apq8064_sata_phy_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.3, i32 151, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"poll timeout SATA_PHY_RX_IMCAL_STAT\0A\00", [59 x i8] zeroinitializer }, align 32
@qcom_apq8064_sata_phy_init._entry_ptr.20 = internal global ptr @qcom_apq8064_sata_phy_init._entry.18, section ".printk_index", align 4
@___asan_gen_.21 = private unnamed_addr constant [29 x i8] c"qcom_apq8064_sata_phy_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 261, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 265, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [31 x i8] c"qcom_apq8064_sata_phy_of_match\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 255, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant [26 x i8] c"qcom_apq8064_sata_phy_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 194, i32 29 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 218, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 226, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 228, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 239, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 137, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 144, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [48 x i8] c"../drivers/phy/qualcomm/phy-qcom-apq8064-sata.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 151, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_qcom_apq8064_sata_phy_driver_exit, ptr @__initcall__kmod_phy_qcom_apq8064_sata__289_269_qcom_apq8064_sata_phy_driver_init6, ptr @qcom_apq8064_sata_phy_driver_exit, ptr @qcom_apq8064_sata_phy_init._entry, ptr @qcom_apq8064_sata_phy_init._entry.15, ptr @qcom_apq8064_sata_phy_init._entry.18, ptr @qcom_apq8064_sata_phy_init._entry_ptr, ptr @qcom_apq8064_sata_phy_init._entry_ptr.17, ptr @qcom_apq8064_sata_phy_init._entry_ptr.20, ptr @qcom_apq8064_sata_phy_probe._entry, ptr @qcom_apq8064_sata_phy_probe._entry.10, ptr @qcom_apq8064_sata_phy_probe._entry.7, ptr @qcom_apq8064_sata_phy_probe._entry_ptr, ptr @qcom_apq8064_sata_phy_probe._entry_ptr.12, ptr @qcom_apq8064_sata_phy_probe._entry_ptr.9, ptr @qcom_apq8064_sata_phy_driver, ptr @.str, ptr @qcom_apq8064_sata_phy_of_match, ptr @qcom_apq8064_sata_phy_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_apq8064_sata_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_apq8064_sata_phy_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_apq8064_sata_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_apq8064_sata_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_apq8064_sata_phy_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_apq8064_sata_phy_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_apq8064_sata_phy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_apq8064_sata_phy_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_apq8064_sata_phy_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_apq8064_sata_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_apq8064_sata_phy_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_apq8064_sata_phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_apq8064_sata_phy_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_apq8064_sata_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #4
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @qcom_apq8064_sata_phy_ops) #4
  %cmp.i67 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i67, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  %2 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %dev14 = getelementptr inbounds %struct.qcom_apq8064_sata_phy, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %dev14 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %dev14, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call9, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i68 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i68 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i68, align 4
  %call15 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.6) #4
  %cfg_clk = getelementptr inbounds %struct.qcom_apq8064_sata_phy, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %cfg_clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call15, ptr %cfg_clk, align 4
  %cmp.i69 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i69, label %do.end21, label %if.end24

do.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #7
  %7 = ptrtoint ptr %cfg_clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg_clk, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end13
  %call.i70 = tail call i32 @clk_prepare(ptr noundef %call15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool.not.i = icmp eq i32 %call.i70, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end24
  %call1.i = tail call i32 @clk_enable(ptr noundef %call15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end29, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %call15) #4
  br label %cleanup

if.end29:                                         ; preds = %if.end.i
  %call30 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #4
  %cmp.i71 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71, label %if.then32, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %cfg_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg_clk, align 4
  tail call void @clk_disable(ptr noundef %11) #4
  tail call void @clk_unprepare(ptr noundef %11) #4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2) #7
  %12 = ptrtoint ptr %call30 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end29.cleanup_crit_edge, %if.then3.i, %if.end24.cleanup_crit_edge, %do.end21, %do.end, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ %2, %do.end ], [ %9, %do.end21 ], [ %12, %if.then32 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i70, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_apq8064_sata_phy_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cfg_clk = getelementptr inbounds %struct.qcom_apq8064_sata_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cfg_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #4
  tail call void @clk_unprepare(ptr noundef %3) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_apq8064_sata_phy_init(ptr nocapture noundef readonly %generic_phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %generic_phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #4, !srcloc !56
  %add.ptr1 = getelementptr i8, ptr %3, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 -1325400064) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  tail call void @arm_heavy_mb() #4
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 60, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 16777216) #4, !srcloc !56
  %add.ptr3 = getelementptr i8, ptr %3, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 1040187392) #4, !srcloc !56
  %add.ptr4 = getelementptr i8, ptr %3, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 16777216) #4, !srcloc !56
  %add.ptr5 = getelementptr i8, ptr %3, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 16777216) #4, !srcloc !56
  %add.ptr6 = getelementptr i8, ptr %3, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 33554432) #4, !srcloc !56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 67108864) #4, !srcloc !56
  %add.ptr8 = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #4, !srcloc !56
  %add.ptr9 = getelementptr i8, ptr %3, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 167772160) #4, !srcloc !56
  %add.ptr10 = getelementptr i8, ptr %3, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 -218103808) #4, !srcloc !56
  %add.ptr11 = getelementptr i8, ptr %3, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 16777216) #4, !srcloc !56
  %add.ptr12 = getelementptr i8, ptr %3, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 -318767104) #4, !srcloc !56
  %add.ptr13 = getelementptr i8, ptr %3, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 33554432) #4, !srcloc !56
  %add.ptr14 = getelementptr i8, ptr %3, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 905969664) #4, !srcloc !56
  %add.ptr15 = getelementptr i8, ptr %3, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 218103808) #4, !srcloc !56
  %add.ptr16 = getelementptr i8, ptr %3, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 -1560281088) #4, !srcloc !56
  %add.ptr17 = getelementptr i8, ptr %3, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 -268435456) #4, !srcloc !56
  %add.ptr18 = getelementptr i8, ptr %3, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 0) #4, !srcloc !56
  %add.ptr19 = getelementptr i8, ptr %3, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 419430400) #4, !srcloc !56
  %add.ptr20 = getelementptr i8, ptr %3, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 -520093696) #4, !srcloc !56
  %add.ptr21 = getelementptr i8, ptr %3, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 0) #4, !srcloc !56
  %add.ptr22 = getelementptr i8, ptr %3, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 285212672) #4, !srcloc !56
  %add.ptr23 = getelementptr i8, ptr %3, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 67108864) #4, !srcloc !56
  %add.ptr24 = getelementptr i8, ptr %3, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 -16777216) #4, !srcloc !56
  %add.ptr25 = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 33554432) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !58
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 50331648) #4, !srcloc !56
  %add.ptr30 = getelementptr i8, ptr %3, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 83886080) #4, !srcloc !56
  %add.ptr31 = getelementptr i8, ptr %3, i32 192
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 10000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 81) #4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #4, !srcloc !59
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not3.i = icmp eq i32 %5, 0
  br i1 %tobool.not3.i, label %entry.land.lhs.true.i_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then21.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call12.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call12.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call12.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then21.i

if.then21.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #4, !srcloc !59
  %7 = and i32 %6, 16777216
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.then21.i.land.lhs.true.i_crit_edge, label %if.then21.i.if.end_crit_edge

if.then21.i.if.end_crit_edge:                     ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then21.i.land.lhs.true.i_crit_edge:            ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #4, !srcloc !59
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool25.not.i = icmp eq i32 %9, 0
  br i1 %tobool25.not.i, label %do.end35, label %for.end.i.if.end_crit_edge

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end35:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.qcom_apq8064_sata_phy, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.13) #7
  br label %cleanup

if.end:                                           ; preds = %for.end.i.if.end_crit_edge, %if.then21.i.if.end_crit_edge, %entry.if.end_crit_edge
  %add.ptr36 = getelementptr i8, ptr %3, i32 484
  %call.i126 = tail call i64 @ktime_get() #4
  %add.i.i127 = add i64 %call.i126, 10000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 81) #4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #4, !srcloc !59
  %13 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not3.i128 = icmp eq i32 %13, 0
  br i1 %tobool.not3.i128, label %if.end.land.lhs.true.i131_crit_edge, label %if.end.if.end44_crit_edge

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

if.end.land.lhs.true.i131_crit_edge:              ; preds = %if.end
  br label %land.lhs.true.i131

land.lhs.true.i131:                               ; preds = %if.then21.i133.land.lhs.true.i131_crit_edge, %if.end.land.lhs.true.i131_crit_edge
  %call12.i129 = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call12.i129, i64 %add.i.i127)
  %cmp3.i.i130 = icmp sgt i64 %call12.i129, %add.i.i127
  br i1 %cmp3.i.i130, label %for.end.i136, label %if.then21.i133

if.then21.i133:                                   ; preds = %land.lhs.true.i131
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #4, !srcloc !59
  %15 = and i32 %14, 16777216
  %tobool.not.i132 = icmp eq i32 %15, 0
  br i1 %tobool.not.i132, label %if.then21.i133.land.lhs.true.i131_crit_edge, label %if.then21.i133.if.end44_crit_edge

if.then21.i133.if.end44_crit_edge:                ; preds = %if.then21.i133
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

if.then21.i133.land.lhs.true.i131_crit_edge:      ; preds = %if.then21.i133
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i131

for.end.i136:                                     ; preds = %land.lhs.true.i131
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #4, !srcloc !59
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool25.not.i134 = icmp eq i32 %17, 0
  br i1 %tobool25.not.i134, label %do.end42, label %for.end.i136.if.end44_crit_edge

for.end.i136.if.end44_crit_edge:                  ; preds = %for.end.i136
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

do.end42:                                         ; preds = %for.end.i136
  call void @__sanitizer_cov_trace_pc() #6
  %dev43 = getelementptr inbounds %struct.qcom_apq8064_sata_phy, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev43, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.16) #7
  br label %cleanup

if.end44:                                         ; preds = %for.end.i136.if.end44_crit_edge, %if.then21.i133.if.end44_crit_edge, %if.end.if.end44_crit_edge
  %add.ptr45 = getelementptr i8, ptr %3, i32 488
  %call.i138 = tail call i64 @ktime_get() #4
  %add.i.i139 = add i64 %call.i138, 10000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 81) #4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #4, !srcloc !59
  %21 = and i32 %20, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not3.i140 = icmp eq i32 %21, 0
  br i1 %tobool.not3.i140, label %if.end44.land.lhs.true.i143_crit_edge, label %if.end44.if.end53_crit_edge

if.end44.if.end53_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53

if.end44.land.lhs.true.i143_crit_edge:            ; preds = %if.end44
  br label %land.lhs.true.i143

land.lhs.true.i143:                               ; preds = %if.then21.i145.land.lhs.true.i143_crit_edge, %if.end44.land.lhs.true.i143_crit_edge
  %call12.i141 = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call12.i141, i64 %add.i.i139)
  %cmp3.i.i142 = icmp sgt i64 %call12.i141, %add.i.i139
  br i1 %cmp3.i.i142, label %for.end.i148, label %if.then21.i145

if.then21.i145:                                   ; preds = %land.lhs.true.i143
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #4, !srcloc !59
  %23 = and i32 %22, 16777216
  %tobool.not.i144 = icmp eq i32 %23, 0
  br i1 %tobool.not.i144, label %if.then21.i145.land.lhs.true.i143_crit_edge, label %if.then21.i145.if.end53_crit_edge

if.then21.i145.if.end53_crit_edge:                ; preds = %if.then21.i145
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53

if.then21.i145.land.lhs.true.i143_crit_edge:      ; preds = %if.then21.i145
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i143

for.end.i148:                                     ; preds = %land.lhs.true.i143
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #4, !srcloc !59
  %25 = and i32 %24, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool25.not.i146 = icmp eq i32 %25, 0
  br i1 %tobool25.not.i146, label %do.end51, label %for.end.i148.if.end53_crit_edge

for.end.i148.if.end53_crit_edge:                  ; preds = %for.end.i148
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53

do.end51:                                         ; preds = %for.end.i148
  call void @__sanitizer_cov_trace_pc() #6
  %dev52 = getelementptr inbounds %struct.qcom_apq8064_sata_phy, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev52, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.19) #7
  br label %cleanup

if.end53:                                         ; preds = %for.end.i148.if.end53_crit_edge, %if.then21.i145.if.end53_crit_edge, %if.end44.if.end53_crit_edge
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 1040187392) #4, !srcloc !56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 16777216) #4, !srcloc !56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 16777216) #4, !srcloc !56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 0) #4, !srcloc !56
  %add.ptr58 = getelementptr i8, ptr %3, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 1493172224) #4, !srcloc !56
  %add.ptr59 = getelementptr i8, ptr %3, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 67108864) #4, !srcloc !56
  %add.ptr60 = getelementptr i8, ptr %3, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 0) #4, !srcloc !56
  %add.ptr61 = getelementptr i8, ptr %3, i32 360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 0) #4, !srcloc !56
  %add.ptr62 = getelementptr i8, ptr %3, i32 340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 0) #4, !srcloc !56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 16777216) #4, !srcloc !56
  %add.ptr64 = getelementptr i8, ptr %3, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 285212672) #4, !srcloc !56
  %add.ptr65 = getelementptr i8, ptr %3, i32 420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 1124073472) #4, !srcloc !56
  %add.ptr66 = getelementptr i8, ptr %3, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 67108864) #4, !srcloc !56
  %add.ptr67 = getelementptr i8, ptr %3, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 16777216) #4, !srcloc !56
  %add.ptr68 = getelementptr i8, ptr %3, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 150994944) #4, !srcloc !56
  %add.ptr69 = getelementptr i8, ptr %3, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 150994944) #4, !srcloc !56
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %do.end51, %do.end42, %do.end35
  %retval.0 = phi i32 [ -110, %do.end35 ], [ -110, %do.end42 ], [ -110, %do.end51 ], [ 0, %if.end53 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_apq8064_sata_phy_exit(ptr nocapture noundef readonly %generic_phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %generic_phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -134217728) #4, !srcloc !56
  %add.ptr1 = getelementptr i8, ptr %3, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 -33554432) #4, !srcloc !56
  %add.ptr2 = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 0) #4, !srcloc !56
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__initcall__kmod_phy_qcom_apq8064_sata__289_269_qcom_apq8064_sata_phy_driver_init6, !1, !"__initcall__kmod_phy_qcom_apq8064_sata__289_269_qcom_apq8064_sata_phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/qualcomm/phy-qcom-apq8064-sata.c", i32 269, i32 1}
!2 = !{ptr @__exitcall_qcom_apq8064_sata_phy_driver_exit, !1, !"__exitcall_qcom_apq8064_sata_phy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description290, !4, !"__UNIQUE_ID_description290", i1 false, i1 false}
!4 = !{!"../drivers/phy/qualcomm/phy-qcom-apq8064-sata.c", i32 271, i32 1}
!5 = !{ptr @__UNIQUE_ID_file291, !6, !"__UNIQUE_ID_file291", i1 false, i1 false}
!6 = !{!"../drivers/phy/qualcomm/phy-qcom-apq8064-sata.c", i32 272, i32 1}
!7 = !{ptr @__UNIQUE_ID_license292, !6, !"__UNIQUE_ID_license292", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/phy/qualcomm/phy-qcom-apq8064-sata.c", i32 265, i32 11}
!10 = !{ptr @qcom_apq8064_sata_phy_driver, !11, !"qcom_apq8064_sata_phy_driver", i1 false, i1 false}
!11 = !{!"../drivers/phy/qualcomm/phy-qcom-apq8064-sata.c", i32 261, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/phy/qualcomm/phy-qcom-apq8064-sata.c", i32 218, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @qcom_apq8064_sata_phy_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @qcom_apq8064_sata_phy_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/phy/qualcomm/phy-qcom-apq8064-sata.c", i32 226, i32 35}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/phy/qualcomm/phy-qcom-apq8064-sata.c", i32 228, i32 3}
!24 = !{ptr @qcom_apq8064_sata_phy_probe._entry.7, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @qcom_apq8064_sata_phy_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/phy/qualcomm/phy-qcom-apq8064-sata.c", i32 239, i32 3}
!28 = !{ptr @qcom_apq8064_sata_phy_probe._entry.10, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @qcom_apq8064_sata_phy_probe._entry_ptr.12, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @qcom_apq8064_sata_phy_ops, !31, !"qcom_apq8064_sata_phy_ops", i1 false, i1 false}
!31 = !{!"../drivers/phy/qualcomm/phy-qcom-apq8064-sata.c", i32 194, i32 29}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/phy/qualcomm/phy-qcom-apq8064-sata.c", i32 137, i32 3}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @qcom_apq8064_sata_phy_init._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @qcom_apq8064_sata_phy_init._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/phy/qualcomm/phy-qcom-apq8064-sata.c", i32 144, i32 3}
!39 = !{ptr @qcom_apq8064_sata_phy_init._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @qcom_apq8064_sata_phy_init._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/phy/qualcomm/phy-qcom-apq8064-sata.c", i32 151, i32 3}
!43 = !{ptr @qcom_apq8064_sata_phy_init._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @qcom_apq8064_sata_phy_init._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @qcom_apq8064_sata_phy_of_match, !46, !"qcom_apq8064_sata_phy_of_match", i1 false, i1 false}
!46 = !{!"../drivers/phy/qualcomm/phy-qcom-apq8064-sata.c", i32 255, i32 34}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i64 691318}
!57 = !{i64 2155067475}
!58 = !{i64 2155071914}
!59 = !{i64 691736}
