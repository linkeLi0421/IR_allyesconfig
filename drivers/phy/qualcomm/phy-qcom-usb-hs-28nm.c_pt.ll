; ModuleID = '/llk/IR_all_yes/drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c_pt.bc'
source_filename = "../drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hsphy_data = type { ptr, i32 }
%struct.hsphy_init_seq = type { i32, i32, i32 }
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
%struct.hsphy_priv = type { ptr, ptr, i32, ptr, ptr, [3 x %struct.regulator_bulk_data], ptr, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.clk_bulk_data = type { ptr, ptr }

@__initcall__kmod_phy_qcom_usb_hs_28nm__289_435_qcom_snps_hsphy_driver_init6 = internal global ptr @qcom_snps_hsphy_driver_init, section ".initcall6.init", align 4
@qcom_snps_hsphy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_snps_hsphy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qcom_snps_hsphy_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qcom_snps_hsphy_driver_exit = internal global ptr @qcom_snps_hsphy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description290 = internal constant [71 x i8] c"phy_qcom_usb_hs_28nm.description=Qualcomm 28nm Hi-Speed USB PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [68 x i8] c"phy_qcom_usb_hs_28nm.file=drivers/phy/qualcomm/phy-qcom-usb-hs-28nm\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [36 x i8] c"phy_qcom_usb_hs_28nm.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qcom,usb-hs-28nm-phy\00", [43 x i8] zeroinitializer }, align 32
@qcom_snps_hsphy_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,usb-hs-28nm-femtophy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hsphy_data_femtophy }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,usb-hs-28nm-mdm9607\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hsphy_data_mdm9607 }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@qcom_snps_hsphy_clks = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8], [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"por\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdda1p8\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdda3p3\00", [24 x i8] zeroinitializer }, align 32
@qcom_snps_hsphy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @qcom_snps_hsphy_init, ptr @qcom_snps_hsphy_exit, ptr @qcom_snps_hsphy_power_on, ptr @qcom_snps_hsphy_power_off, ptr @qcom_snps_hsphy_set_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ref\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sleep\00", [26 x i8] zeroinitializer }, align 32
@hsphy_data_femtophy = internal constant { %struct.hsphy_data, [24 x i8] } { %struct.hsphy_data { ptr @init_seq_femtophy, i32 13 }, [24 x i8] zeroinitializer }, align 32
@hsphy_data_mdm9607 = internal constant { %struct.hsphy_data, [24 x i8] } { %struct.hsphy_data { ptr @init_seq_mdm9607, i32 4 }, [24 x i8] zeroinitializer }, align 32
@init_seq_femtophy = internal constant { [13 x %struct.hsphy_init_seq], [36 x i8] } { [13 x %struct.hsphy_init_seq] [%struct.hsphy_init_seq { i32 192, i32 1, i32 0 }, %struct.hsphy_init_seq { i32 232, i32 13, i32 0 }, %struct.hsphy_init_seq { i32 116, i32 18, i32 0 }, %struct.hsphy_init_seq { i32 152, i32 99, i32 0 }, %struct.hsphy_init_seq { i32 156, i32 3, i32 0 }, %struct.hsphy_init_seq { i32 160, i32 29, i32 0 }, %struct.hsphy_init_seq { i32 164, i32 3, i32 0 }, %struct.hsphy_init_seq { i32 140, i32 35, i32 0 }, %struct.hsphy_init_seq { i32 120, i32 8, i32 0 }, %struct.hsphy_init_seq { i32 124, i32 220, i32 0 }, %struct.hsphy_init_seq { i32 144, i32 224, i32 20 }, %struct.hsphy_init_seq { i32 116, i32 16, i32 0 }, %struct.hsphy_init_seq { i32 144, i32 96, i32 0 }], [36 x i8] zeroinitializer }, align 32
@init_seq_mdm9607 = internal constant { [4 x %struct.hsphy_init_seq], [48 x i8] } { [4 x %struct.hsphy_init_seq] [%struct.hsphy_init_seq { i32 128, i32 68, i32 0 }, %struct.hsphy_init_seq { i32 129, i32 56, i32 0 }, %struct.hsphy_init_seq { i32 130, i32 36, i32 0 }, %struct.hsphy_init_seq { i32 131, i32 19, i32 0 }], [48 x i8] zeroinitializer }, align 32
@switch.table.qcom_snps_hsphy_power_off = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0C\12\12\0A\0A\0C\12\12", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [23 x i8] c"qcom_snps_hsphy_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 428, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 431, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [22 x i8] c"qcom_snps_hsphy_match\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 421, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant [21 x i8] c"qcom_snps_hsphy_clks\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 300, i32 27 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 336, i32 58 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 340, i32 58 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 344, i32 28 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 345, i32 33 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 346, i32 33 }
@___asan_gen_.36 = private unnamed_addr constant [20 x i8] c"qcom_snps_hsphy_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 291, i32 29 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 301, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 302, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 303, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [20 x i8] c"hsphy_data_femtophy\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 411, i32 32 }
@___asan_gen_.51 = private unnamed_addr constant [19 x i8] c"hsphy_data_mdm9607\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 416, i32 32 }
@___asan_gen_.54 = private unnamed_addr constant [18 x i8] c"init_seq_femtophy\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 388, i32 36 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"init_seq_mdm9607\00", align 1
@___asan_gen_.58 = private constant [47 x i8] c"../drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 404, i32 36 }
@___asan_gen_.60 = private unnamed_addr constant [39 x i8] c"switch.table.qcom_snps_hsphy_power_off\00", align 1
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_qcom_snps_hsphy_driver_exit, ptr @__initcall__kmod_phy_qcom_usb_hs_28nm__289_435_qcom_snps_hsphy_driver_init6, ptr @qcom_snps_hsphy_driver_exit, ptr @qcom_snps_hsphy_driver, ptr @.str, ptr @qcom_snps_hsphy_match, ptr @qcom_snps_hsphy_clks, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @qcom_snps_hsphy_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @hsphy_data_femtophy, ptr @hsphy_data_mdm9607, ptr @init_seq_femtophy, ptr @init_seq_mdm9607, ptr @switch.table.qcom_snps_hsphy_power_off], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_snps_hsphy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_snps_hsphy_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_snps_hsphy_clks to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_snps_hsphy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsphy_data_femtophy to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsphy_data_mdm9607 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_seq_femtophy to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_seq_mdm9607 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qcom_snps_hsphy_power_off to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_snps_hsphy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_snps_hsphy_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_snps_hsphy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_snps_hsphy_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_snps_hsphy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 64, i32 noundef 3520) #4
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
  %num_clks = getelementptr inbounds %struct.hsphy_priv, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %num_clks to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %num_clks, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 24, i32 noundef 3520) #4
  %clks = getelementptr inbounds %struct.hsphy_priv, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %clks to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call5.i.i, ptr %clks, align 4
  %tobool12.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool12.not, label %if.end8.cleanup_crit_edge, label %for.cond.preheader

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end8
  %4 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_clks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp138 = icmp sgt i32 %5, 0
  br i1 %cmp138, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0139 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x ptr], ptr @qcom_snps_hsphy_clks, i32 0, i32 %i.0139
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clks, align 4
  %arrayidx17 = getelementptr %struct.clk_bulk_data, ptr %9, i32 %i.0139
  %10 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %arrayidx17, align 4
  %inc = add nuw nsw i32 %i.0139, 1
  %11 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_clks, align 4
  %cmp = icmp slt i32 %inc, %12
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ %5, %for.cond.preheader.for.end_crit_edge ], [ %12, %for.body.for.end_crit_edge ]
  %13 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clks, align 4
  %call20 = tail call i32 @devm_clk_bulk_get(ptr noundef %dev1, i32 noundef %.lcssa, ptr noundef %14) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end23:                                         ; preds = %for.end
  %call.i132 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #4
  %phy_reset = getelementptr inbounds %struct.hsphy_priv, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %phy_reset to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i132, ptr %phy_reset, align 4
  %cmp.i133 = icmp ugt ptr %call.i132, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i133, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %call.i132 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end23
  %call.i134 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #4
  %por_reset = getelementptr inbounds %struct.hsphy_priv, ptr %call.i, i32 0, i32 4
  %17 = ptrtoint ptr %por_reset to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i134, ptr %por_reset, align 4
  %cmp.i135 = icmp ugt ptr %call.i134, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i135, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %call.i134 to i32
  br label %cleanup

if.end37:                                         ; preds = %if.end30
  %vregs = getelementptr inbounds %struct.hsphy_priv, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %vregs to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.3, ptr %vregs, align 4
  %arrayidx40 = getelementptr %struct.hsphy_priv, ptr %call.i, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.4, ptr %arrayidx40, align 4
  %arrayidx43 = getelementptr %struct.hsphy_priv, ptr %call.i, i32 0, i32 5, i32 2
  %21 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.5, ptr %arrayidx43, align 4
  %call46 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 3, ptr noundef %vregs) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end49:                                         ; preds = %if.end37
  %call50 = tail call ptr @device_get_match_data(ptr noundef %dev1) #4
  %data = getelementptr inbounds %struct.hsphy_priv, ptr %call.i, i32 0, i32 6
  %22 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call50, ptr %data, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %23 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node, align 8
  %call51 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef %24, ptr noundef nonnull @qcom_snps_hsphy_ops) #4
  %cmp.i136 = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i136, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %call51 to i32
  br label %cleanup

if.end55:                                         ; preds = %if.end49
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call51, i32 0, i32 8
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call56 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #4
  %cmp.i137 = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i137, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %call56 to i32
  br label %cleanup

if.end60:                                         ; preds = %if.end55
  %consumer = getelementptr %struct.hsphy_priv, ptr %call.i, i32 0, i32 5, i32 1, i32 1
  %28 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %consumer, align 4
  %call63 = tail call i32 @regulator_set_load(ptr noundef %29, i32 noundef 19000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.end60.cleanup_crit_edge, label %if.end66

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end66:                                         ; preds = %if.end60
  %consumer69 = getelementptr %struct.hsphy_priv, ptr %call.i, i32 0, i32 5, i32 2, i32 1
  %30 = ptrtoint ptr %consumer69 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %consumer69, align 4
  %call70 = tail call i32 @regulator_set_load(ptr noundef %31, i32 noundef 16000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %unset_1p8_load, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

unset_1p8_load:                                   ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %consumer, align 4
  %call77 = tail call i32 @regulator_set_load(ptr noundef %33, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %unset_1p8_load, %if.end66.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %if.then58, %if.then53, %if.end37.cleanup_crit_edge, %if.then34, %if.then27, %for.end.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ %16, %if.then27 ], [ %18, %if.then34 ], [ %25, %if.then53 ], [ %27, %if.then58 ], [ %call70, %unset_1p8_load ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ], [ %call20, %for.end.cleanup_crit_edge ], [ %call46, %if.end37.cleanup_crit_edge ], [ %call63, %if.end60.cleanup_crit_edge ], [ 0, %if.end66.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_load(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_snps_hsphy_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %num_clks = getelementptr inbounds %struct.hsphy_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_clks, align 4
  %clks = getelementptr inbounds %struct.hsphy_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clks, align 4
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef %3, ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %3, ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_bulk_unprepare(i32 noundef %3, ptr noundef %5) #4
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %phy_reset.i = getelementptr inbounds %struct.hsphy_priv, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %phy_reset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_reset.i, align 4
  %call.i23 = tail call i32 @reset_control_assert(ptr noundef %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool.not.i24 = icmp eq i32 %call.i23, 0
  br i1 %tobool.not.i24, label %if.end.i25, label %if.end.disable_clocks_crit_edge

if.end.disable_clocks_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %disable_clocks

if.end.i25:                                       ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 15, i32 noundef 2) #4
  %8 = ptrtoint ptr %phy_reset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_reset.i, align 4
  %call2.i = tail call i32 @reset_control_deassert(ptr noundef %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5, label %if.end.i25.disable_clocks_crit_edge

if.end.i25.disable_clocks_crit_edge:              ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #6
  br label %disable_clocks

if.end5:                                          ; preds = %if.end.i25
  tail call void @usleep_range_state(i32 noundef 80, i32 noundef 100, i32 noundef 2) #4
  %data1.i = getelementptr inbounds %struct.hsphy_priv, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data1.i, align 4
  %tobool.not.i27 = icmp eq ptr %11, null
  br i1 %tobool.not.i27, label %if.end5.qcom_snps_hsphy_init_sequence.exit_crit_edge, label %if.end.i28

if.end5.qcom_snps_hsphy_init_sequence.exit_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %qcom_snps_hsphy_init_sequence.exit

if.end.i28:                                       ; preds = %if.end5
  %init_seq_num.i = getelementptr inbounds %struct.hsphy_data, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %init_seq_num.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %init_seq_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp19.not.i = icmp eq i32 %13, 0
  br i1 %cmp19.not.i, label %if.end.i28.qcom_snps_hsphy_init_sequence.exit_crit_edge, label %do.body.preheader.i

if.end.i28.qcom_snps_hsphy_init_sequence.exit_crit_edge: ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #6
  br label %qcom_snps_hsphy_init_sequence.exit

do.body.preheader.i:                              ; preds = %if.end.i28
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc.i.do.body.i_crit_edge, %do.body.preheader.i
  %i.021.i = phi i32 [ %inc.i, %for.inc.i.do.body.i_crit_edge ], [ 0, %do.body.preheader.i ]
  %seq.020.i = phi ptr [ %incdec.ptr.i, %for.inc.i.do.body.i_crit_edge ], [ %15, %do.body.preheader.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  tail call void @arm_heavy_mb() #4
  %val.i = getelementptr inbounds %struct.hsphy_init_seq, ptr %seq.020.i, i32 0, i32 1
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i, align 4
  %conv.i = trunc i32 %17 to i8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %20 = ptrtoint ptr %seq.020.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %seq.020.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 %21
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv.i) #4, !srcloc !52
  %delay.i = getelementptr inbounds %struct.hsphy_init_seq, ptr %seq.020.i, i32 0, i32 2
  %22 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool2.not.i29 = icmp eq i32 %23, 0
  br i1 %tobool2.not.i29, label %do.body.i.for.inc.i_crit_edge, label %if.then3.i30

do.body.i.for.inc.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.then3.i30:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.i = add i32 %23, 10
  tail call void @usleep_range_state(i32 noundef %23, i32 noundef %add.i, i32 noundef 2) #4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then3.i30, %do.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.021.i, 1
  %incdec.ptr.i = getelementptr %struct.hsphy_init_seq, ptr %seq.020.i, i32 1
  %24 = ptrtoint ptr %init_seq_num.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %init_seq_num.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %25
  br i1 %cmp.i, label %for.inc.i.do.body.i_crit_edge, label %for.inc.i.qcom_snps_hsphy_init_sequence.exit_crit_edge

for.inc.i.qcom_snps_hsphy_init_sequence.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %qcom_snps_hsphy_init_sequence.exit

for.inc.i.do.body.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

qcom_snps_hsphy_init_sequence.exit:               ; preds = %for.inc.i.qcom_snps_hsphy_init_sequence.exit_crit_edge, %if.end.i28.qcom_snps_hsphy_init_sequence.exit_crit_edge, %if.end5.qcom_snps_hsphy_init_sequence.exit_crit_edge
  %por_reset.i = getelementptr inbounds %struct.hsphy_priv, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %por_reset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %por_reset.i, align 4
  %call.i31 = tail call i32 @reset_control_assert(ptr noundef %27) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %tobool.not.i32 = icmp eq i32 %call.i31, 0
  br i1 %tobool.not.i32, label %if.end.i35, label %qcom_snps_hsphy_init_sequence.exit.disable_clocks_crit_edge

qcom_snps_hsphy_init_sequence.exit.disable_clocks_crit_edge: ; preds = %qcom_snps_hsphy_init_sequence.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %disable_clocks

if.end.i35:                                       ; preds = %qcom_snps_hsphy_init_sequence.exit
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 120
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  %31 = and i8 %30, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !55
  tail call void @arm_heavy_mb() #4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %33, i32 120
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i.i, i8 %31) #4, !srcloc !52
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %34 = ptrtoint ptr %por_reset.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %por_reset.i, align 4
  %call2.i33 = tail call i32 @reset_control_deassert(ptr noundef %35) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i33)
  %tobool3.not.i34 = icmp eq i32 %call2.i33, 0
  br i1 %tobool3.not.i34, label %qcom_snps_hsphy_por_reset.exit, label %if.end.i35.disable_clocks_crit_edge

if.end.i35.disable_clocks_crit_edge:              ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #6
  br label %disable_clocks

qcom_snps_hsphy_por_reset.exit:                   ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usleep_range_state(i32 noundef 80, i32 noundef 100, i32 noundef 2) #4
  br label %cleanup

disable_clocks:                                   ; preds = %if.end.i35.disable_clocks_crit_edge, %qcom_snps_hsphy_init_sequence.exit.disable_clocks_crit_edge, %if.end.i25.disable_clocks_crit_edge, %if.end.disable_clocks_crit_edge
  %ret.0 = phi i32 [ %call2.i, %if.end.i25.disable_clocks_crit_edge ], [ %call.i23, %if.end.disable_clocks_crit_edge ], [ %call2.i33, %if.end.i35.disable_clocks_crit_edge ], [ %call.i31, %qcom_snps_hsphy_init_sequence.exit.disable_clocks_crit_edge ]
  %36 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_clks, align 4
  %38 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clks, align 4
  tail call void @clk_bulk_disable(i32 noundef %37, ptr noundef %39) #4
  tail call void @clk_bulk_unprepare(i32 noundef %37, ptr noundef %39) #4
  br label %cleanup

cleanup:                                          ; preds = %disable_clocks, %qcom_snps_hsphy_por_reset.exit, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %disable_clocks ], [ 0, %qcom_snps_hsphy_por_reset.exit ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_snps_hsphy_exit(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %num_clks = getelementptr inbounds %struct.hsphy_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_clks, align 4
  %clks = getelementptr inbounds %struct.hsphy_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clks, align 4
  tail call void @clk_bulk_disable(i32 noundef %3, ptr noundef %5) #4
  tail call void @clk_bulk_unprepare(i32 noundef %3, ptr noundef %5) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_snps_hsphy_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %vregs = getelementptr inbounds %struct.hsphy_priv, ptr %1, i32 0, i32 5
  %call1 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %vregs) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 212
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !56
  %5 = and i8 %4, -31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr4.i = getelementptr i8, ptr %7, i32 212
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 %5) #4, !srcloc !52
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %add.ptr8.i = getelementptr i8, ptr %9, i32 220
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr8.i) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !58
  %11 = or i8 %10, 30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !59
  tail call void @arm_heavy_mb() #4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %add.ptr18.i = getelementptr i8, ptr %13, i32 220
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18.i, i8 %11) #4, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %add.ptr23.i = getelementptr i8, ptr %15, i32 208
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr23.i, i8 0) #4, !srcloc !52
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 220, i32 noundef 2) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !61
  tail call void @arm_heavy_mb() #4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr28.i = getelementptr i8, ptr %17, i32 208
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28.i, i8 1) #4, !srcloc !52
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 220, i32 noundef 2) #4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %add.ptr.i6 = getelementptr i8, ptr %19, i32 120
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  %21 = and i8 %20, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !55
  tail call void @arm_heavy_mb() #4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %add.ptr4.i7 = getelementptr i8, ptr %23, i32 120
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i7, i8 %21) #4, !srcloc !52
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_snps_hsphy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 120
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  %5 = or i8 %4, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !63
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr4.i = getelementptr i8, ptr %7, i32 120
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 %5) #4, !srcloc !52
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %add.ptr.i4 = getelementptr i8, ptr %9, i32 220
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i4) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !64
  %11 = or i8 %10, 30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  tail call void @arm_heavy_mb() #4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %add.ptr4.i5 = getelementptr i8, ptr %13, i32 220
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i5, i8 %11) #4, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %add.ptr9.i = getelementptr i8, ptr %15, i32 208
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i, i8 0) #4, !srcloc !52
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 220, i32 noundef 2) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  tail call void @arm_heavy_mb() #4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr14.i = getelementptr i8, ptr %17, i32 208
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14.i, i8 1) #4, !srcloc !52
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 220, i32 noundef 2) #4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %add.ptr18.i = getelementptr i8, ptr %19, i32 212
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr18.i) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !68
  %mode.i = getelementptr inbounds %struct.hsphy_priv, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mode.i, align 4
  %switch.tableidx = add i32 %22, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %23 = icmp ult i32 %switch.tableidx, 8
  br i1 %23, label %switch.lookup, label %entry.qcom_snps_hsphy_enable_hv_interrupts.exit_crit_edge

entry.qcom_snps_hsphy_enable_hv_interrupts.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %qcom_snps_hsphy_enable_hv_interrupts.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table.qcom_snps_hsphy_power_off, i32 0, i32 %switch.tableidx
  %24 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %24)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %qcom_snps_hsphy_enable_hv_interrupts.exit

qcom_snps_hsphy_enable_hv_interrupts.exit:        ; preds = %switch.lookup, %entry.qcom_snps_hsphy_enable_hv_interrupts.exit_crit_edge
  %.sink.i = phi i8 [ %switch.load, %switch.lookup ], [ 10, %entry.qcom_snps_hsphy_enable_hv_interrupts.exit_crit_edge ]
  %or23.i = or i8 %.sink.i, %20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !69
  tail call void @arm_heavy_mb() #4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %add.ptr32.i = getelementptr i8, ptr %26, i32 212
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr32.i, i8 %or23.i) #4, !srcloc !52
  %vregs = getelementptr inbounds %struct.hsphy_priv, ptr %1, i32 0, i32 5
  %call1 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %vregs) #4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qcom_snps_hsphy_set_mode(ptr nocapture noundef readonly %phy, i32 noundef %mode, i32 noundef %submode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mode1 = getelementptr inbounds %struct.hsphy_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %mode1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %mode, ptr %mode1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__initcall__kmod_phy_qcom_usb_hs_28nm__289_435_qcom_snps_hsphy_driver_init6, !1, !"__initcall__kmod_phy_qcom_usb_hs_28nm__289_435_qcom_snps_hsphy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c", i32 435, i32 1}
!2 = !{ptr @__exitcall_qcom_snps_hsphy_driver_exit, !1, !"__exitcall_qcom_snps_hsphy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description290, !4, !"__UNIQUE_ID_description290", i1 false, i1 false}
!4 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c", i32 437, i32 1}
!5 = !{ptr @__UNIQUE_ID_file291, !6, !"__UNIQUE_ID_file291", i1 false, i1 false}
!6 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c", i32 438, i32 1}
!7 = !{ptr @__UNIQUE_ID_license292, !6, !"__UNIQUE_ID_license292", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c", i32 431, i32 11}
!10 = !{ptr @qcom_snps_hsphy_driver, !11, !"qcom_snps_hsphy_driver", i1 false, i1 false}
!11 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c", i32 428, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c", i32 336, i32 58}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c", i32 340, i32 58}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c", i32 344, i32 28}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c", i32 345, i32 33}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c", i32 346, i32 33}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c", i32 301, i32 2}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c", i32 302, i32 2}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c", i32 303, i32 2}
!28 = !{ptr @qcom_snps_hsphy_clks, !29, !"qcom_snps_hsphy_clks", i1 false, i1 false}
!29 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c", i32 300, i32 27}
!30 = !{ptr @qcom_snps_hsphy_ops, !31, !"qcom_snps_hsphy_ops", i1 false, i1 false}
!31 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c", i32 291, i32 29}
!32 = !{ptr @qcom_snps_hsphy_match, !33, !"qcom_snps_hsphy_match", i1 false, i1 false}
!33 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c", i32 421, i32 34}
!34 = !{ptr @hsphy_data_femtophy, !35, !"hsphy_data_femtophy", i1 false, i1 false}
!35 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c", i32 411, i32 32}
!36 = !{ptr @init_seq_femtophy, !37, !"init_seq_femtophy", i1 false, i1 false}
!37 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c", i32 388, i32 36}
!38 = !{ptr @hsphy_data_mdm9607, !39, !"hsphy_data_mdm9607", i1 false, i1 false}
!39 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c", i32 416, i32 32}
!40 = !{ptr @init_seq_mdm9607, !41, !"init_seq_mdm9607", i1 false, i1 false}
!41 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c", i32 404, i32 36}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i64 2155104204}
!52 = !{i64 3077221}
!53 = !{i64 3077616}
!54 = !{i64 2155103621}
!55 = !{i64 2155103924}
!56 = !{i64 2155101434}
!57 = !{i64 2155101660}
!58 = !{i64 2155101954}
!59 = !{i64 2155102180}
!60 = !{i64 2155102455}
!61 = !{i64 2155102730}
!62 = !{i64 2155103024}
!63 = !{i64 2155103327}
!64 = !{i64 2155099357}
!65 = !{i64 2155099583}
!66 = !{i64 2155099858}
!67 = !{i64 2155100133}
!68 = !{i64 2155100427}
!69 = !{i64 2155101140}
