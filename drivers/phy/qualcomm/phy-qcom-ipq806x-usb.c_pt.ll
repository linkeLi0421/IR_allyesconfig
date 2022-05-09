; ModuleID = '/llk/IR_all_yes/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c_pt.bc'
source_filename = "../drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.phy_drvdata = type { %struct.phy_ops, i32 }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.usb_phy = type { ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_phy_qcom_ipq806x_usb__291_566_qcom_ipq806x_usb_phy_driver_init6 = internal global ptr @qcom_ipq806x_usb_phy_driver_init, section ".initcall6.init", align 4
@qcom_ipq806x_usb_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_ipq806x_usb_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qcom_ipq806x_usb_phy_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qcom_ipq806x_usb_phy_driver_exit = internal global ptr @qcom_ipq806x_usb_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias292 = internal constant [57 x i8] c"phy_qcom_ipq806x_usb.alias=platform:phy-qcom-ipq806x-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [68 x i8] c"phy_qcom_ipq806x_usb.file=drivers/phy/qualcomm/phy-qcom-ipq806x-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [36 x i8] c"phy_qcom_ipq806x_usb.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [63 x i8] c"phy_qcom_ipq806x_usb.author=Andy Gross <agross@codeaurora.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [64 x i8] c"phy_qcom_ipq806x_usb.author=Ivan T. Ivanov <iivanov@mm-sol.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description297 = internal constant [65 x i8] c"phy_qcom_ipq806x_usb.description=DesignWare USB3 QCOM PHY driver\00", section ".modinfo", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qcom-ipq806x-usb-phy\00", [43 x i8] zeroinitializer }, align 32
@qcom_ipq806x_usb_phy_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,ipq806x-usb-phy-hs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @qcom_ipq806x_usb_hs_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,ipq806x-usb-phy-ss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @qcom_ipq806x_usb_ss_drvdata }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@qcom_ipq806x_usb_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 511, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to map reg\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qcom_ipq806x_usb_phy_probe\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_ipq806x_usb_phy_probe._entry_ptr = internal global ptr @qcom_ipq806x_usb_phy_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ref\00", [28 x i8] zeroinitializer }, align 32
@qcom_ipq806x_usb_phy_probe.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 -127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"phy_qcom_ipq806x_usb\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot get reference clock\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"xo\00", [29 x i8] zeroinitializer }, align 32
@qcom_ipq806x_usb_phy_probe.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.2, ptr @.str.3, ptr @.str.10, i8 0, i8 -125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot get TCXO clock\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qcom,rx-eq\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom,tx-deamp_3_5db\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qcom,mpll\00", [22 x i8] zeroinitializer }, align 32
@qcom_ipq806x_usb_hs_drvdata = internal constant { %struct.phy_drvdata, [40 x i8] } { %struct.phy_drvdata { %struct.phy_ops { ptr @qcom_ipq806x_usb_hs_phy_init, ptr @qcom_ipq806x_usb_hs_phy_exit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 60000000 }, [40 x i8] zeroinitializer }, align 32
@qcom_ipq806x_usb_ss_drvdata = internal constant { %struct.phy_drvdata, [40 x i8] } { %struct.phy_drvdata { %struct.phy_ops { ptr @qcom_ipq806x_usb_ss_phy_init, ptr @qcom_ipq806x_usb_ss_phy_exit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 125000000 }, [40 x i8] zeroinitializer }, align 32
@usb_ss_write_phycreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 208, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"timeout waiting for latch\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"usb_ss_write_phycreg\00", [43 x i8] zeroinitializer }, align 32
@usb_ss_write_phycreg._entry_ptr = internal global ptr @usb_ss_write_phycreg._entry, section ".printk_index", align 4
@usb_phy_write_readback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 154, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"write: %x to QSCRATCH: %x FAILED\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"usb_phy_write_readback\00", [41 x i8] zeroinitializer }, align 32
@usb_phy_write_readback._entry_ptr = internal global ptr @usb_phy_write_readback._entry, section ".printk_index", align 4
@___asan_gen_.18 = private unnamed_addr constant [28 x i8] c"qcom_ipq806x_usb_phy_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 558, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 561, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [27 x i8] c"qcom_ipq806x_usb_phy_table\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 478, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 511, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 515, i32 50 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 517, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 523, i32 49 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 525, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 530, i32 43 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 534, i32 43 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 538, i32 43 }
@___asan_gen_.69 = private unnamed_addr constant [28 x i8] c"qcom_ipq806x_usb_hs_drvdata\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 460, i32 33 }
@___asan_gen_.72 = private unnamed_addr constant [28 x i8] c"qcom_ipq806x_usb_ss_drvdata\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 469, i32 33 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 208, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [47 x i8] c"../drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 154, i32 3 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_alias292, ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_qcom_ipq806x_usb_phy_driver_exit, ptr @__initcall__kmod_phy_qcom_ipq806x_usb__291_566_qcom_ipq806x_usb_phy_driver_init6, ptr @qcom_ipq806x_usb_phy_driver_exit, ptr @qcom_ipq806x_usb_phy_probe._entry, ptr @qcom_ipq806x_usb_phy_probe._entry_ptr, ptr @usb_phy_write_readback._entry, ptr @usb_phy_write_readback._entry_ptr, ptr @usb_ss_write_phycreg._entry, ptr @usb_ss_write_phycreg._entry_ptr, ptr @qcom_ipq806x_usb_phy_driver, ptr @.str, ptr @qcom_ipq806x_usb_phy_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @qcom_ipq806x_usb_hs_drvdata, ptr @qcom_ipq806x_usb_ss_drvdata, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_ipq806x_usb_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_ipq806x_usb_phy_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_ipq806x_usb_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_ipq806x_usb_hs_drvdata to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_ipq806x_usb_ss_drvdata to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_ss_write_phycreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_phy_write_readback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_ipq806x_usb_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_ipq806x_usb_phy_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_ipq806x_usb_phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_ipq806x_usb_phy_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_ipq806x_usb_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %dev4 = getelementptr inbounds %struct.usb_phy, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev4, align 4
  %call5 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %end.i = getelementptr inbounds %struct.resource, ptr %call5, i32 0, i32 1
  %1 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %end.i, align 4
  %3 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call5, align 4
  %sub.i = add i32 %2, 1
  %add.i = sub i32 %sub.i, %4
  %5 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev4, align 4
  %call11 = tail call ptr @devm_ioremap(ptr noundef %6, i32 noundef %4, i32 noundef %add.i) #7
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call11, ptr %call.i, align 4
  %tobool13.not = icmp eq ptr %call11, null
  %8 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev4, align 4
  br i1 %tobool13.not, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %call18 = tail call ptr @devm_clk_get(ptr noundef %9, ptr noundef nonnull @.str.6) #7
  %ref_clk = getelementptr inbounds %struct.usb_phy, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %ref_clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call18, ptr %ref_clk, align 4
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body22, label %if.end34

do.body22:                                        ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_ipq806x_usb_phy_probe.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcom_ipq806x_usb_phy_probe, %if.then27)) #7
          to label %do.end31 [label %if.then27], !srcloc !68

if.then27:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_ipq806x_usb_phy_probe.__UNIQUE_ID_ddebug289, ptr noundef %12, ptr noundef nonnull @.str.8) #7
  br label %do.end31

do.end31:                                         ; preds = %if.then27, %do.body22
  %13 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ref_clk, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup

if.end34:                                         ; preds = %if.end16
  %clk_rate = getelementptr inbounds %struct.phy_drvdata, ptr %call2, i32 0, i32 1
  %16 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %clk_rate, align 4
  %call36 = tail call i32 @clk_set_rate(ptr noundef %call18, i32 noundef %17) #7
  %18 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev4, align 4
  %call38 = tail call ptr @devm_clk_get(ptr noundef %19, ptr noundef nonnull @.str.9) #7
  %xo_clk = getelementptr inbounds %struct.usb_phy, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %xo_clk to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call38, ptr %xo_clk, align 4
  %cmp.i140 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i140, label %do.body42, label %if.end34.if.end60_crit_edge

if.end34.if.end60_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

do.body42:                                        ; preds = %if.end34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_ipq806x_usb_phy_probe.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcom_ipq806x_usb_phy_probe, %if.then54)) #7
          to label %do.end58 [label %if.then54], !srcloc !68

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_ipq806x_usb_phy_probe.__UNIQUE_ID_ddebug290, ptr noundef %22, ptr noundef nonnull @.str.10) #7
  br label %do.end58

do.end58:                                         ; preds = %if.then54, %do.body42
  %23 = ptrtoint ptr %xo_clk to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %xo_clk, align 4
  br label %if.end60

if.end60:                                         ; preds = %do.end58, %if.end34.if.end60_crit_edge
  %rx_eq = getelementptr inbounds %struct.usb_phy, ptr %call.i, i32 0, i32 4
  %call.i141 = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef %rx_eq, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141)
  %tobool63.not = icmp eq i32 %call.i141, 0
  br i1 %tobool63.not, label %if.end60.if.end66_crit_edge, label %if.then64

if.end60.if.end66_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %rx_eq to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %rx_eq, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.end60.if.end66_crit_edge
  %tx_deamp_3_5db = getelementptr inbounds %struct.usb_phy, ptr %call.i, i32 0, i32 5
  %call.i142 = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef %tx_deamp_3_5db, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %tobool69.not = icmp eq i32 %call.i142, 0
  br i1 %tobool69.not, label %if.end66.if.end72_crit_edge, label %if.then70

if.end66.if.end72_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then70:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %tx_deamp_3_5db to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 23, ptr %tx_deamp_3_5db, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.end66.if.end72_crit_edge
  %mpll = getelementptr inbounds %struct.usb_phy, ptr %call.i, i32 0, i32 6
  %call.i143 = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef %mpll, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i143)
  %tobool75.not = icmp eq i32 %call.i143, 0
  br i1 %tobool75.not, label %if.end72.if.end78_crit_edge, label %if.then76

if.end72.if.end78_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.then76:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %mpll to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %mpll, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %if.end72.if.end78_crit_edge
  %27 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev4, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %29 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %of_node, align 8
  %call81 = tail call ptr @devm_phy_create(ptr noundef %28, ptr noundef %30, ptr noundef %call2) #7
  %cmp.i144 = icmp ugt ptr %call81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i144, label %if.then83, label %if.end85

if.then83:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %call81 to i32
  br label %cleanup

if.end85:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call81, i32 0, i32 8
  %32 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i145 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %33 = ptrtoint ptr %driver_data.i.i145 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %driver_data.i.i145, align 4
  %34 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev4, align 4
  %call87 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %35, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #7
  %cmp.i146 = icmp ugt ptr %call87, inttoptr (i32 -4096 to ptr)
  %36 = ptrtoint ptr %call87 to i32
  %spec.select = select i1 %cmp.i146, i32 %36, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %if.then83, %do.end31, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %do.end31 ], [ %31, %if.then83 ], [ -12, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %spec.select, %if.end85 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_ipq806x_usb_hs_phy_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %xo_clk = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %xo_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xo_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %ref_clk = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ref_clk, align 4
  %call.i27 = tail call i32 @clk_prepare(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool.not.i28 = icmp eq i32 %call.i27, 0
  br i1 %tobool.not.i28, label %if.end.i31, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.end.i31:                                       ; preds = %if.end
  %call1.i29 = tail call i32 @clk_enable(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i29)
  %tobool2.not.i30 = icmp eq i32 %call1.i29, 0
  br i1 %tobool2.not.i30, label %if.end6, label %if.then3.i32

if.then3.i32:                                     ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %if.then4

if.then4:                                         ; preds = %if.then3.i32, %if.end.if.then4_crit_edge
  %retval.0.i33.ph = phi i32 [ %call1.i29, %if.then3.i32 ], [ %call.i27, %if.end.if.then4_crit_edge ]
  %6 = ptrtoint ptr %xo_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xo_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  br label %cleanup

if.end6:                                          ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %xo_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xo_clk, align 4
  %tobool8.not = icmp eq ptr %9, null
  %spec.select = select i1 %tobool8.not, i32 20319218, i32 20057074
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #7, !srcloc !70
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2200, i32 noundef 2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %add.ptr15 = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 67108864) #7, !srcloc !70
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i33.ph, %if.then4 ], [ 0, %if.end6 ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_ipq806x_usb_hs_phy_exit(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ref_clk = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ref_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  %xo_clk = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %xo_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xo_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_ipq806x_usb_ss_phy_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %data, align 4, !annotation !72
  %xo_clk = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %xo_clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xo_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %4) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %ref_clk = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ref_clk, align 4
  %call.i133 = tail call i32 @clk_prepare(ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133)
  %tobool.not.i134 = icmp eq i32 %call.i133, 0
  br i1 %tobool.not.i134, label %if.end.i137, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.end.i137:                                      ; preds = %if.end
  %call1.i135 = tail call i32 @clk_enable(ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i135)
  %tobool2.not.i136 = icmp eq i32 %call1.i135, 0
  br i1 %tobool2.not.i136, label %if.end6, label %if.then3.i138

if.then3.i138:                                    ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %6) #7
  br label %if.then4

if.then4:                                         ; preds = %if.then3.i138, %if.end.if.then4_crit_edge
  %retval.0.i139.ph = phi i32 [ %call1.i135, %if.then3.i138 ], [ %call.i133, %if.end.if.then4_crit_edge ]
  %7 = ptrtoint ptr %xo_clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xo_clk, align 4
  tail call void @clk_disable(ptr noundef %8) #7
  tail call void @clk_unprepare(ptr noundef %8) #7
  br label %cleanup

if.end6:                                          ; preds = %if.end.i137
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !73
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  tail call void @arm_heavy_mb() #7
  %or = or i32 %12, 128
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #7, !srcloc !70
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2200, i32 noundef 2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %11) #7, !srcloc !70
  %19 = ptrtoint ptr %xo_clk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xo_clk, align 4
  %tobool17.not = icmp eq ptr %20, null
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data, align 4
  %and = and i32 %22, -268435457
  %masksel = select i1 %tobool17.not, i32 0, i32 268435456
  %storemerge = or i32 %and, %masksel
  store i32 %storemerge, ptr %data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %23 = tail call i32 @llvm.bswap.i32(i32 %storemerge)
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #7, !srcloc !70
  tail call void @msleep(i32 noundef 30) #7
  %or26 = or i32 %storemerge, 16777472
  %26 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or26, ptr %data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %27 = tail call i32 @llvm.bswap.i32(i32 %or26)
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #7, !srcloc !70
  %call32 = call fastcc i32 @usb_ss_read_phycreg(ptr noundef %1, i32 noundef 4141, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35:                                         ; preds = %if.end6
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %data, align 4
  %or36 = or i32 %31, 128
  store i32 %or36, ptr %data, align 4
  %call37 = tail call fastcc i32 @usb_ss_write_phycreg(ptr noundef %1, i32 noundef 4141, i32 noundef %or36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40:                                         ; preds = %if.end35
  %call41 = call fastcc i32 @usb_ss_read_phycreg(ptr noundef %1, i32 noundef 4112, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end44:                                         ; preds = %if.end40
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data, align 4
  %and45 = and i32 %33, -4081
  %or46 = or i32 %and45, 32
  store i32 %or46, ptr %data, align 4
  %call47 = tail call fastcc i32 @usb_ss_write_phycreg(ptr noundef %1, i32 noundef 4112, i32 noundef %or46)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end50:                                         ; preds = %if.end44
  %call51 = call fastcc i32 @usb_ss_read_phycreg(ptr noundef %1, i32 noundef 4102, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end54:                                         ; preds = %if.end50
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data, align 4
  %and55 = and i32 %35, -4033
  %rx_eq = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 4
  %36 = ptrtoint ptr %rx_eq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_eq, align 4
  %shl = shl i32 %37, 8
  %or58 = or i32 %and55, %shl
  %or59 = or i32 %or58, 2048
  store i32 %or59, ptr %data, align 4
  %call60 = tail call fastcc i32 @usb_ss_write_phycreg(ptr noundef %1, i32 noundef 4102, i32 noundef %or59)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end63:                                         ; preds = %if.end54
  %call64 = call fastcc i32 @usb_ss_read_phycreg(ptr noundef %1, i32 noundef 4098, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end67:                                         ; preds = %if.end63
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data, align 4
  %tx_deamp_3_5db = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 5
  %40 = ptrtoint ptr %tx_deamp_3_5db to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_deamp_3_5db, align 4
  %shl69 = shl i32 %41, 7
  %and68.masked = and i32 %39, -32768
  %and71 = or i32 %and68.masked, %shl69
  %or73 = or i32 %and71, 16494
  %call74 = tail call fastcc i32 @usb_ss_write_phycreg(ptr noundef %1, i32 noundef 4098, i32 noundef %or73)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end77:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  %mpll = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 6
  %42 = ptrtoint ptr %mpll to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mpll, align 4
  %shl79 = shl i32 %43, 5
  %44 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %shl79, ptr %data, align 4
  %call81 = tail call fastcc i32 @usb_ss_write_phycreg(ptr noundef %1, i32 noundef 48, i32 noundef %shl79)
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %add.ptr85 = getelementptr i8, ptr %46, i32 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %48 = and i32 %47, 50331896
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %50 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %data, align 4
  %51 = ptrtoint ptr %tx_deamp_3_5db to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tx_deamp_3_5db, align 4
  %shl91 = shl i32 %52, 8
  %and92 = and i32 %shl91, 16128
  %or94 = or i32 %49, %and92
  %or95 = or i32 %or94, 115867720
  tail call fastcc void @usb_phy_write_readback(ptr noundef %1, i32 noundef 4, i32 noundef 134217724, i32 noundef %or95)
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %if.end67.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then4, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i139.ph, %if.then4 ], [ %call32, %if.end6.cleanup_crit_edge ], [ %call37, %if.end35.cleanup_crit_edge ], [ %call41, %if.end40.cleanup_crit_edge ], [ %call47, %if.end44.cleanup_crit_edge ], [ %call51, %if.end50.cleanup_crit_edge ], [ %call60, %if.end54.cleanup_crit_edge ], [ %call64, %if.end63.cleanup_crit_edge ], [ %call74, %if.end67.cleanup_crit_edge ], [ 0, %if.end77 ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_ipq806x_usb_ss_phy_exit(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  %5 = and i32 %4, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #7, !srcloc !70
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %11 = and i32 %10, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 0
  br i1 %cmp.not.i, label %entry.usb_phy_write_readback.exit_crit_edge, label %do.end15.i

entry.usb_phy_write_readback.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %usb_phy_write_readback.exit

do.end15.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.16, i32 noundef 0, i32 noundef 0) #10
  br label %usb_phy_write_readback.exit

usb_phy_write_readback.exit:                      ; preds = %do.end15.i, %entry.usb_phy_write_readback.exit_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  %17 = and i32 %16, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #7, !srcloc !70
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %23 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not.i7 = icmp eq i32 %23, 0
  br i1 %cmp.not.i7, label %usb_phy_write_readback.exit.usb_phy_write_readback.exit10_crit_edge, label %do.end15.i9

usb_phy_write_readback.exit.usb_phy_write_readback.exit10_crit_edge: ; preds = %usb_phy_write_readback.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %usb_phy_write_readback.exit10

do.end15.i9:                                      ; preds = %usb_phy_write_readback.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i8 = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %dev.i8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.16, i32 noundef 0, i32 noundef 0) #10
  br label %usb_phy_write_readback.exit10

usb_phy_write_readback.exit10:                    ; preds = %do.end15.i9, %usb_phy_write_readback.exit.usb_phy_write_readback.exit10_crit_edge
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  %29 = and i32 %28, -9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #7, !srcloc !70
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %35 = and i32 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.not.i13 = icmp eq i32 %35, 0
  br i1 %cmp.not.i13, label %usb_phy_write_readback.exit10.usb_phy_write_readback.exit16_crit_edge, label %do.end15.i15

usb_phy_write_readback.exit10.usb_phy_write_readback.exit16_crit_edge: ; preds = %usb_phy_write_readback.exit10
  call void @__sanitizer_cov_trace_pc() #9
  br label %usb_phy_write_readback.exit16

do.end15.i15:                                     ; preds = %usb_phy_write_readback.exit10
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i14 = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %dev.i14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.16, i32 noundef 0, i32 noundef 0) #10
  br label %usb_phy_write_readback.exit16

usb_phy_write_readback.exit16:                    ; preds = %do.end15.i15, %usb_phy_write_readback.exit10.usb_phy_write_readback.exit16_crit_edge
  %ref_clk = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 3
  %38 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ref_clk, align 4
  tail call void @clk_disable(ptr noundef %39) #7
  tail call void @clk_unprepare(ptr noundef %39) #7
  %xo_clk = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 2
  %40 = ptrtoint ptr %xo_clk to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %xo_clk, align 4
  tail call void @clk_disable(ptr noundef %41) #7
  tail call void @clk_unprepare(ptr noundef %41) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb_ss_read_phycreg(ptr nocapture noundef readonly %phy_dwc3, i32 noundef %addr, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %addr)
  %1 = ptrtoint ptr %phy_dwc3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phy_dwc3, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #7, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  tail call void @arm_heavy_mb() #7
  %3 = ptrtoint ptr %phy_dwc3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy_dwc3, align 4
  %add.ptr5 = getelementptr i8, ptr %4, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 16777216) #7, !srcloc !70
  %5 = ptrtoint ptr %phy_dwc3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phy_dwc3, align 4
  %add.ptr7 = getelementptr i8, ptr %6, i32 20
  %call = tail call fastcc i32 @wait_for_latch(ptr noundef %add.ptr7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body8, label %entry.err_wait_crit_edge

entry.err_wait_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_wait

do.body8:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %phy_dwc3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy_dwc3, align 4
  %add.ptr12 = getelementptr i8, ptr %8, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 16777216) #7, !srcloc !70
  %9 = ptrtoint ptr %phy_dwc3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phy_dwc3, align 4
  %add.ptr14 = getelementptr i8, ptr %10, i32 28
  %call15 = tail call fastcc i32 @wait_for_latch(ptr noundef %add.ptr14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %do.body8.err_wait_crit_edge

do.body8.err_wait_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_wait

if.end18:                                         ; preds = %do.body8
  %11 = ptrtoint ptr %phy_dwc3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phy_dwc3, align 4
  %add.ptr20 = getelementptr i8, ptr %12, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %phy_dwc3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy_dwc3, align 4
  %add.ptr27 = getelementptr i8, ptr %15, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 16777216) #7, !srcloc !70
  %16 = ptrtoint ptr %phy_dwc3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy_dwc3, align 4
  %add.ptr29 = getelementptr i8, ptr %17, i32 28
  %call30 = tail call fastcc i32 @wait_for_latch(ptr noundef %add.ptr29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end18.err_wait_crit_edge

if.end18.err_wait_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_wait

if.end33:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %phy_dwc3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy_dwc3, align 4
  %add.ptr37 = getelementptr i8, ptr %19, i32 16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #7, !srcloc !73
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %val, align 4
  br label %err_wait

err_wait:                                         ; preds = %if.end33, %if.end18.err_wait_crit_edge, %do.body8.err_wait_crit_edge, %entry.err_wait_crit_edge
  %ret.0 = phi i32 [ %call, %entry.err_wait_crit_edge ], [ %call15, %do.body8.err_wait_crit_edge ], [ %call30, %if.end18.err_wait_crit_edge ], [ 0, %if.end33 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb_ss_write_phycreg(ptr nocapture noundef readonly %phy_dwc3, i32 noundef %addr, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %addr)
  %1 = ptrtoint ptr %phy_dwc3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phy_dwc3, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #7, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %3 = ptrtoint ptr %phy_dwc3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy_dwc3, align 4
  %add.ptr5 = getelementptr i8, ptr %4, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 16777216) #7, !srcloc !70
  %5 = ptrtoint ptr %phy_dwc3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phy_dwc3, align 4
  %add.ptr7 = getelementptr i8, ptr %6, i32 20
  %call = tail call fastcc i32 @wait_for_latch(ptr noundef %add.ptr7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body8, label %entry.do.end36_crit_edge

entry.do.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end36

do.body8:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %val)
  %8 = ptrtoint ptr %phy_dwc3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_dwc3, align 4
  %add.ptr12 = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %7) #7, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %phy_dwc3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy_dwc3, align 4
  %add.ptr17 = getelementptr i8, ptr %11, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 16777216) #7, !srcloc !70
  %12 = ptrtoint ptr %phy_dwc3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_dwc3, align 4
  %add.ptr19 = getelementptr i8, ptr %13, i32 24
  %call20 = tail call fastcc i32 @wait_for_latch(ptr noundef %add.ptr19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err_wait, label %do.body8.do.end36_crit_edge

do.body8.do.end36_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end36

err_wait:                                         ; preds = %do.body8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %phy_dwc3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy_dwc3, align 4
  %add.ptr28 = getelementptr i8, ptr %15, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 16777216) #7, !srcloc !70
  %16 = ptrtoint ptr %phy_dwc3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy_dwc3, align 4
  %add.ptr30 = getelementptr i8, ptr %17, i32 32
  %call31 = tail call fastcc i32 @wait_for_latch(ptr noundef %add.ptr30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err_wait.if.end37_crit_edge, label %err_wait.do.end36_crit_edge

err_wait.do.end36_crit_edge:                      ; preds = %err_wait
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end36

err_wait.if.end37_crit_edge:                      ; preds = %err_wait
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

do.end36:                                         ; preds = %err_wait.do.end36_crit_edge, %do.body8.do.end36_crit_edge, %entry.do.end36_crit_edge
  %ret.051 = phi i32 [ %call31, %err_wait.do.end36_crit_edge ], [ %call20, %do.body8.do.end36_crit_edge ], [ %call, %entry.do.end36_crit_edge ]
  %dev = getelementptr inbounds %struct.usb_phy, ptr %phy_dwc3, i32 0, i32 1
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.14) #10
  br label %if.end37

if.end37:                                         ; preds = %do.end36, %err_wait.if.end37_crit_edge
  %ret.052 = phi i32 [ %ret.051, %do.end36 ], [ 0, %err_wait.if.end37_crit_edge ]
  ret i32 %ret.052
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usb_phy_write_readback(ptr nocapture noundef readonly %phy_dwc3, i32 noundef %offset, i32 noundef %mask, i32 noundef %val) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %phy_dwc3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_dwc3, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !73
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  %neg = xor i32 %mask, -1
  %and = and i32 %3, %neg
  %or = or i32 %and, %val
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = ptrtoint ptr %phy_dwc3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phy_dwc3, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 %offset
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %4) #7, !srcloc !70
  %7 = ptrtoint ptr %phy_dwc3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy_dwc3, align 4
  %add.ptr8 = getelementptr i8, ptr %8, i32 %offset
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #7, !srcloc !73
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %and12 = and i32 %10, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and12, i32 %val)
  %cmp.not = icmp eq i32 %and12, %val
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end15

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end15:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_phy, ptr %phy_dwc3, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.16, i32 noundef %val, i32 noundef %offset) #10
  br label %if.end

if.end:                                           ; preds = %do.end15, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_for_latch(ptr noundef %addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not4 = icmp eq i32 %0, 0
  br i1 %tobool.not4, label %entry.cleanup_crit_edge, label %if.end.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.preheader:                                 ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end.preheader.cleanup_crit_edge, label %if.end.1

if.end.preheader.cleanup_crit_edge:               ; preds = %if.end.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.1:                                         ; preds = %if.end.preheader
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.1 = icmp eq i32 %2, 0
  br i1 %tobool.not.1, label %if.end.1.cleanup_crit_edge, label %if.end.2

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.2 = icmp eq i32 %3, 0
  br i1 %tobool.not.2, label %if.end.2.cleanup_crit_edge, label %if.end.3

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.3:                                         ; preds = %if.end.2
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.3 = icmp eq i32 %4, 0
  br i1 %tobool.not.3, label %if.end.3.cleanup_crit_edge, label %if.end.4

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.4:                                         ; preds = %if.end.3
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.4 = icmp eq i32 %5, 0
  br i1 %tobool.not.4, label %if.end.4.cleanup_crit_edge, label %if.end.5

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.5:                                         ; preds = %if.end.4
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.5 = icmp eq i32 %6, 0
  br i1 %tobool.not.5, label %if.end.5.cleanup_crit_edge, label %if.end.6

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.6:                                         ; preds = %if.end.5
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.6 = icmp eq i32 %7, 0
  br i1 %tobool.not.6, label %if.end.6.cleanup_crit_edge, label %if.end.7

if.end.6.cleanup_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.7:                                         ; preds = %if.end.6
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.7 = icmp eq i32 %8, 0
  br i1 %tobool.not.7, label %if.end.7.cleanup_crit_edge, label %if.end.8

if.end.7.cleanup_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.8:                                         ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.8 = icmp eq i32 %9, 0
  %spec.select = select i1 %tobool.not.8, i32 0, i32 -110
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.end.7.cleanup_crit_edge, %if.end.6.cleanup_crit_edge, %if.end.5.cleanup_crit_edge, %if.end.4.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.preheader.cleanup_crit_edge ], [ 0, %if.end.1.cleanup_crit_edge ], [ 0, %if.end.2.cleanup_crit_edge ], [ 0, %if.end.3.cleanup_crit_edge ], [ 0, %if.end.4.cleanup_crit_edge ], [ 0, %if.end.5.cleanup_crit_edge ], [ 0, %if.end.6.cleanup_crit_edge ], [ 0, %if.end.7.cleanup_crit_edge ], [ %spec.select, %if.end.8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !39, !41, !43, !45, !47, !49, !51, !52, !53, !54, !56, !57, !58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__initcall__kmod_phy_qcom_ipq806x_usb__291_566_qcom_ipq806x_usb_phy_driver_init6, !1, !"__initcall__kmod_phy_qcom_ipq806x_usb__291_566_qcom_ipq806x_usb_phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c", i32 566, i32 1}
!2 = !{ptr @__exitcall_qcom_ipq806x_usb_phy_driver_exit, !1, !"__exitcall_qcom_ipq806x_usb_phy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias292, !4, !"__UNIQUE_ID_alias292", i1 false, i1 false}
!4 = !{!"../drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c", i32 568, i32 1}
!5 = !{ptr @__UNIQUE_ID_file293, !6, !"__UNIQUE_ID_file293", i1 false, i1 false}
!6 = !{!"../drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c", i32 569, i32 1}
!7 = !{ptr @__UNIQUE_ID_license294, !6, !"__UNIQUE_ID_license294", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author295, !9, !"__UNIQUE_ID_author295", i1 false, i1 false}
!9 = !{!"../drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c", i32 570, i32 1}
!10 = !{ptr @__UNIQUE_ID_author296, !11, !"__UNIQUE_ID_author296", i1 false, i1 false}
!11 = !{!"../drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c", i32 571, i32 1}
!12 = !{ptr @__UNIQUE_ID_description297, !13, !"__UNIQUE_ID_description297", i1 false, i1 false}
!13 = !{!"../drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c", i32 572, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c", i32 561, i32 11}
!16 = !{ptr @qcom_ipq806x_usb_phy_driver, !17, !"qcom_ipq806x_usb_phy_driver", i1 false, i1 false}
!17 = !{!"../drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c", i32 558, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c", i32 511, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @qcom_ipq806x_usb_phy_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @qcom_ipq806x_usb_phy_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c", i32 515, i32 50}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c", i32 517, i32 3}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @qcom_ipq806x_usb_phy_probe.__UNIQUE_ID_ddebug289, !29, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c", i32 523, i32 49}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c", i32 525, i32 3}
!36 = !{ptr @qcom_ipq806x_usb_phy_probe.__UNIQUE_ID_ddebug290, !35, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c", i32 530, i32 43}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c", i32 534, i32 43}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c", i32 538, i32 43}
!43 = !{ptr @qcom_ipq806x_usb_phy_table, !44, !"qcom_ipq806x_usb_phy_table", i1 false, i1 false}
!44 = !{!"../drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c", i32 478, i32 34}
!45 = !{ptr @qcom_ipq806x_usb_hs_drvdata, !46, !"qcom_ipq806x_usb_hs_drvdata", i1 false, i1 false}
!46 = !{!"../drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c", i32 460, i32 33}
!47 = !{ptr @qcom_ipq806x_usb_ss_drvdata, !48, !"qcom_ipq806x_usb_ss_drvdata", i1 false, i1 false}
!48 = !{!"../drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c", i32 469, i32 33}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c", i32 208, i32 3}
!51 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @usb_ss_write_phycreg._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @usb_ss_write_phycreg._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c", i32 154, i32 3}
!56 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @usb_phy_write_readback._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @usb_phy_write_readback._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{i64 2148735790, i64 2148735795, i64 2148735808, i64 2148735852, i64 2148735886, i64 2148735907}
!69 = !{i64 2155194602}
!70 = !{i64 2042880}
!71 = !{i64 2155195116}
!72 = !{!"auto-init"}
!73 = !{i64 2043298}
!74 = !{i64 2155195886}
!75 = !{i64 2155196226}
!76 = !{i64 2155196728}
!77 = !{i64 2155197308}
!78 = !{i64 2155197886}
!79 = !{i64 2155201834}
!80 = !{i64 2155182971}
!81 = !{i64 2155183197}
!82 = !{i64 2155183906}
!83 = !{i64 2155190546}
!84 = !{i64 2155191063}
!85 = !{i64 2155191656}
!86 = !{i64 2155192433}
!87 = !{i64 2155192766}
!88 = !{i64 2155193543}
!89 = !{i64 2155186303}
!90 = !{i64 2155186820}
!91 = !{i64 2155187307}
!92 = !{i64 2155187821}
!93 = !{i64 2155188414}
!94 = !{i64 2155186071}
