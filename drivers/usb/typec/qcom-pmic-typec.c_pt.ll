; ModuleID = '/llk/IR_all_yes/drivers/usb/typec/qcom-pmic-typec.c_pt.bc'
source_filename = "../drivers/usb/typec/qcom-pmic-typec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.typec_capability = type { i32, i32, i16, i16, i32, i32, [3 x i32], i8, ptr, ptr, ptr }
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
%struct.qcom_pmic_typec = type { ptr, ptr, i32, ptr, ptr, ptr, i8 }

@__initcall__kmod_qcom_pmic_typec__288_259_qcom_pmic_typec_init6 = internal global ptr @qcom_pmic_typec_init, section ".initcall6.init", align 4
@qcom_pmic_typec = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_pmic_typec_probe, ptr @qcom_pmic_typec_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qcom_pmic_typec_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qcom_pmic_typec_exit = internal global ptr @qcom_pmic_typec_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [56 x i8] c"qcom_pmic_typec.description=QCOM PMIC USB type C driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [55 x i8] c"qcom_pmic_typec.file=drivers/usb/typec/qcom-pmic-typec\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [31 x i8] c"qcom_pmic_typec.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom,pmic-typec\00", [16 x i8] zeroinitializer }, align 32
@qcom_pmic_typec_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8150b-usb-typec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@qcom_pmic_typec_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 141, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"missing base address\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qcom_pmic_typec_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/usb/typec/qcom-pmic-typec.c\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_pmic_typec_probe._entry_ptr = internal global ptr @qcom_pmic_typec_probe._entry, section ".printk_index", align 4
@qcom_pmic_typec_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 154, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to get regmap\0A\00", [42 x i8] zeroinitializer }, align 32
@qcom_pmic_typec_probe._entry_ptr.9 = internal global ptr @qcom_pmic_typec_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb_vbus\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"connector\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"power-role\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"data-role\00", [22 x i8] zeroinitializer }, align 32
@qcom_pmic_typec_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 191, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register type c port %d\0A\00", [61 x i8] zeroinitializer }, align 32
@qcom_pmic_typec_probe._entry_ptr.16 = internal global ptr @qcom_pmic_typec_probe._entry.14, section ".printk_index", align 4
@qcom_pmic_typec_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 199, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get role switch\0A\00", [37 x i8] zeroinitializer }, align 32
@qcom_pmic_typec_probe._entry_ptr.19 = internal global ptr @qcom_pmic_typec_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom-pmic-typec\00", [16 x i8] zeroinitializer }, align 32
@qcom_pmic_typec_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 212, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Could not request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@qcom_pmic_typec_probe._entry_ptr.23 = internal global ptr @qcom_pmic_typec_probe._entry.21, section ".printk_index", align 4
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"qcom_pmic_typec\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 251, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 253, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [22 x i8] c"qcom_pmic_typec_table\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 245, i32 34 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 139, i32 38 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 141, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 154, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 158, i32 57 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 162, i32 44 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 166, i32 44 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 176, i32 44 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 191, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 199, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 210, i32 6 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [39 x i8] c"../drivers/usb/typec/qcom-pmic-typec.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 212, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__exitcall_qcom_pmic_typec_exit, ptr @__initcall__kmod_qcom_pmic_typec__288_259_qcom_pmic_typec_init6, ptr @qcom_pmic_typec_exit, ptr @qcom_pmic_typec_probe._entry, ptr @qcom_pmic_typec_probe._entry.14, ptr @qcom_pmic_typec_probe._entry.17, ptr @qcom_pmic_typec_probe._entry.21, ptr @qcom_pmic_typec_probe._entry.7, ptr @qcom_pmic_typec_probe._entry_ptr, ptr @qcom_pmic_typec_probe._entry_ptr.16, ptr @qcom_pmic_typec_probe._entry_ptr.19, ptr @qcom_pmic_typec_probe._entry_ptr.23, ptr @qcom_pmic_typec_probe._entry_ptr.9, ptr @qcom_pmic_typec, ptr @.str, ptr @qcom_pmic_typec_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.22], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pmic_typec to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pmic_typec_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pmic_typec_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pmic_typec_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pmic_typec_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pmic_typec_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pmic_typec_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pmic_typec_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_pmic_typec, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_pmic_typec_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_pmic_typec) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pmic_typec_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %cap = alloca %struct.typec_capability, align 4
  %buf = alloca ptr, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cap) #5
  %0 = getelementptr inbounds i8, ptr %cap, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #5
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %buf, align 4, !annotation !59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #5
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %reg, align 4, !annotation !59
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull %reg, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i146 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 28, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i146, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call.i146 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %call.i146, align 4
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %base = getelementptr inbounds %struct.qcom_pmic_typec, ptr %call.i146, i32 0, i32 2
  %7 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %base, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call6 = call ptr @dev_get_regmap(ptr noundef %9, ptr noundef null) #5
  %regmap = getelementptr inbounds %struct.qcom_pmic_typec, ptr %call.i146, i32 0, i32 1
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call6, ptr %regmap, align 4
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %do.end12, label %if.end13

do.end12:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  %11 = ptrtoint ptr %call.i146 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i146, align 4
  %call15 = call ptr @devm_regulator_get(ptr noundef %12, ptr noundef nonnull @.str.10) #5
  %vbus_reg = getelementptr inbounds %struct.qcom_pmic_typec, ptr %call.i146, i32 0, i32 5
  %13 = ptrtoint ptr %vbus_reg to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call15, ptr %vbus_reg, align 4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %call22 = call ptr @device_get_named_child_node(ptr noundef %dev1, ptr noundef nonnull @.str.11) #5
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end21.cleanup_crit_edge, label %if.end25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %call26 = call i32 @fwnode_property_read_string(ptr noundef nonnull %call22, ptr noundef nonnull @.str.12, ptr noundef nonnull %buf) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %if.end25.if.end33_crit_edge

if.end25.if.end33_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buf, align 4
  %call29 = call i32 @typec_find_port_power_role(ptr noundef %16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  %spec.store.select = select i1 %cmp30, i32 1, i32 %call29
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %if.end25.if.end33_crit_edge
  %role.0 = phi i32 [ %spec.store.select, %if.then28 ], [ 1, %if.end25.if.end33_crit_edge ]
  %17 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %role.0, ptr %cap, align 4
  %call34 = call i32 @fwnode_property_read_string(ptr noundef nonnull %call22, ptr noundef nonnull @.str.13, ptr noundef nonnull %buf) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then36, label %if.end33.if.end42_crit_edge

if.end33.if.end42_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buf, align 4
  %call37 = call i32 @typec_find_port_data_role(ptr noundef %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  %spec.store.select95 = select i1 %cmp38, i32 1, i32 %call37
  br label %if.end42

if.end42:                                         ; preds = %if.then36, %if.end33.if.end42_crit_edge
  %role.1 = phi i32 [ %spec.store.select95, %if.then36 ], [ 1, %if.end33.if.end42_crit_edge ]
  %data = getelementptr inbounds %struct.typec_capability, ptr %cap, i32 0, i32 1
  %20 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %role.1, ptr %data, align 4
  %prefer_role = getelementptr inbounds %struct.typec_capability, ptr %cap, i32 0, i32 5
  %21 = ptrtoint ptr %prefer_role to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %prefer_role, align 4
  %fwnode43 = getelementptr inbounds %struct.typec_capability, ptr %cap, i32 0, i32 8
  %22 = ptrtoint ptr %fwnode43 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call22, ptr %fwnode43, align 4
  %call44 = call ptr @typec_register_port(ptr noundef %dev1, ptr noundef nonnull %cap) #5
  %port = getelementptr inbounds %struct.qcom_pmic_typec, ptr %call.i146, i32 0, i32 3
  %23 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call44, ptr %port, align 4
  %cmp.i147 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i147, label %if.then47, label %if.end53

if.then47:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %call44 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %24) #8
  br label %err_put_node

if.end53:                                         ; preds = %if.end42
  call void @fwnode_handle_put(ptr noundef nonnull %call22) #5
  %25 = ptrtoint ptr %call.i146 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i146, align 4
  %call55 = call ptr @dev_fwnode(ptr noundef %26) #5
  %call56 = call ptr @fwnode_usb_role_switch_get(ptr noundef %call55) #5
  %role_sw = getelementptr inbounds %struct.qcom_pmic_typec, ptr %call.i146, i32 0, i32 4
  %27 = ptrtoint ptr %role_sw to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call56, ptr %role_sw, align 4
  %cmp.i148 = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i148, label %if.then59, label %if.end70

if.then59:                                        ; preds = %if.end53
  %cmp62.not = icmp eq ptr %call56, inttoptr (i32 -517 to ptr)
  br i1 %cmp62.not, label %if.then59.if.end67_crit_edge, label %do.end66

if.then59.if.end67_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

do.end66:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #8
  br label %if.end67

if.end67:                                         ; preds = %do.end66, %if.then59.if.end67_crit_edge
  %28 = ptrtoint ptr %role_sw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %role_sw, align 4
  %30 = ptrtoint ptr %29 to i32
  br label %err_typec_port

if.end70:                                         ; preds = %if.end53
  %call71 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.end70.err_usb_role_sw_crit_edge, label %if.end74

if.end70.err_usb_role_sw_crit_edge:               ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_usb_role_sw

if.end74:                                         ; preds = %if.end70
  %31 = ptrtoint ptr %call.i146 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i146, align 4
  %call76 = call i32 @devm_request_threaded_irq(ptr noundef %32, i32 noundef %call71, ptr noundef null, ptr noundef nonnull @qcom_pmic_typec_interrupt, i32 noundef 8192, ptr noundef nonnull @.str.20, ptr noundef nonnull %call.i146) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end83, label %do.end81

do.end81:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #8
  br label %err_usb_role_sw

if.end83:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %33 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i146, ptr %driver_data.i.i, align 4
  %34 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cap, align 4
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %base, align 4
  %add.i = add i32 %39, 94
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef %add.i, i32 noundef 255, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %switch.selectcmp.i = icmp eq i32 %35, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %switch.selectcmp24.i = icmp eq i32 %35, 0
  %switch.select25.i = select i1 %switch.selectcmp24.i, i32 4, i32 %switch.select.i
  %40 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap, align 4
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %base, align 4
  %add6.i = add i32 %43, 68
  %call.i26.i = call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef %add6.i, i32 noundef 6, i32 noundef %switch.select25.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %44 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap, align 4
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %base, align 4
  %add10.i = add i32 %47, 70
  %call.i27.i = call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef %add10.i, i32 noundef 3, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 4
  %50 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %base, align 4
  %add14.i = add i32 %51, 80
  %call.i28.i = call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef %add14.i, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call fastcc void @qcom_pmic_typec_check_connection(ptr noundef nonnull %call.i146)
  br label %cleanup

err_usb_role_sw:                                  ; preds = %do.end81, %if.end70.err_usb_role_sw_crit_edge
  %ret.0 = phi i32 [ %call34, %if.end70.err_usb_role_sw_crit_edge ], [ %call76, %do.end81 ]
  %52 = ptrtoint ptr %role_sw to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %role_sw, align 4
  call void @usb_role_switch_put(ptr noundef %53) #5
  br label %err_typec_port

err_typec_port:                                   ; preds = %err_usb_role_sw, %if.end67
  %ret.1 = phi i32 [ %30, %if.end67 ], [ %ret.0, %err_usb_role_sw ]
  %54 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %port, align 4
  call void @typec_unregister_port(ptr noundef %55) #5
  br label %err_put_node

err_put_node:                                     ; preds = %err_typec_port, %if.then47
  %ret.2 = phi i32 [ %24, %if.then47 ], [ %ret.1, %err_typec_port ]
  call void @fwnode_handle_put(ptr noundef nonnull %call22) #5
  br label %cleanup

cleanup:                                          ; preds = %err_put_node, %if.end83, %if.end21.cleanup_crit_edge, %if.then18, %do.end12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %14, %if.then18 ], [ %ret.2, %err_put_node ], [ 0, %if.end83 ], [ -22, %do.end12 ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cap) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pmic_typec_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %role_sw = getelementptr inbounds %struct.qcom_pmic_typec, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %role_sw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %role_sw, align 4
  %call1 = tail call i32 @usb_role_switch_set_role(ptr noundef %3, i32 noundef 0) #5
  %vbus_enabled.i = getelementptr inbounds %struct.qcom_pmic_typec, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %vbus_enabled.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vbus_enabled.i, align 4, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i = icmp eq i8 %5, 0
  br i1 %cmp.i, label %entry.qcom_pmic_typec_enable_vbus_regulator.exit_crit_edge, label %if.end.i

entry.qcom_pmic_typec_enable_vbus_regulator.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %qcom_pmic_typec_enable_vbus_regulator.exit

if.end.i:                                         ; preds = %entry
  %vbus_reg.i = getelementptr inbounds %struct.qcom_pmic_typec, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %vbus_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vbus_reg.i, align 4
  %call10.i = tail call i32 @regulator_disable(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end14.i, label %if.end.i.qcom_pmic_typec_enable_vbus_regulator.exit_crit_edge

if.end.i.qcom_pmic_typec_enable_vbus_regulator.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qcom_pmic_typec_enable_vbus_regulator.exit

if.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %vbus_enabled.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %vbus_enabled.i, align 4
  br label %qcom_pmic_typec_enable_vbus_regulator.exit

qcom_pmic_typec_enable_vbus_regulator.exit:       ; preds = %if.end14.i, %if.end.i.qcom_pmic_typec_enable_vbus_regulator.exit_crit_edge, %entry.qcom_pmic_typec_enable_vbus_regulator.exit_crit_edge
  %port = getelementptr inbounds %struct.qcom_pmic_typec, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port, align 4
  tail call void @typec_unregister_port(ptr noundef %10) #5
  %11 = ptrtoint ptr %role_sw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %role_sw, align 4
  tail call void @usb_role_switch_put(ptr noundef %12) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_named_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @typec_find_port_power_role(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @typec_find_port_data_role(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @typec_register_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_usb_role_switch_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pmic_typec_interrupt(i32 noundef %irq, ptr nocapture noundef %_qcom_usb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @qcom_pmic_typec_check_connection(ptr noundef %_qcom_usb)
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qcom_pmic_typec_check_connection(ptr nocapture noundef %qcom_usb) unnamed_addr #2 align 64 {
entry:
  %stat = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat) #5
  %0 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %stat, align 4, !annotation !59
  %regmap = getelementptr inbounds %struct.qcom_pmic_typec, ptr %qcom_usb, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %base = getelementptr inbounds %struct.qcom_pmic_typec, ptr %qcom_usb, i32 0, i32 2
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base, align 4
  %add = add i32 %4, 11
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %add, ptr noundef nonnull %stat) #5
  %5 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stat, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end9.thread, label %if.end9

if.end9:                                          ; preds = %entry
  %and1 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %cond = select i1 %tobool2.not, i32 1, i32 2
  %port = getelementptr inbounds %struct.qcom_pmic_typec, ptr %qcom_usb, i32 0, i32 3
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port, align 4
  %call3 = call i32 @typec_set_orientation(ptr noundef %8, i32 noundef %cond) #5
  %9 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stat, align 4
  %and4 = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %cond6 = select i1 %tobool5.not, i32 2, i32 1
  %not.tobool5.not = xor i1 %tobool5.not, true
  %frombool.i = zext i1 %not.tobool5.not to i8
  %vbus_enabled.i = getelementptr inbounds %struct.qcom_pmic_typec, ptr %qcom_usb, i32 0, i32 6
  %11 = ptrtoint ptr %vbus_enabled.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %vbus_enabled.i, align 4, !range !60
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %frombool.i)
  %cmp.i = icmp eq i8 %12, %frombool.i
  br i1 %cmp.i, label %if.end9.qcom_pmic_typec_enable_vbus_regulator.exit_crit_edge, label %if.end.i

if.end9.qcom_pmic_typec_enable_vbus_regulator.exit_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %qcom_pmic_typec_enable_vbus_regulator.exit

if.end9.thread:                                   ; preds = %entry
  %vbus_enabled.i20 = getelementptr inbounds %struct.qcom_pmic_typec, ptr %qcom_usb, i32 0, i32 6
  %13 = ptrtoint ptr %vbus_enabled.i20 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %vbus_enabled.i20, align 4, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp.i21 = icmp eq i8 %14, 0
  br i1 %cmp.i21, label %if.end9.thread.qcom_pmic_typec_enable_vbus_regulator.exit_crit_edge, label %if.end.i.thread

if.end9.thread.qcom_pmic_typec_enable_vbus_regulator.exit_crit_edge: ; preds = %if.end9.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %qcom_pmic_typec_enable_vbus_regulator.exit

if.end.i.thread:                                  ; preds = %if.end9.thread
  call void @__sanitizer_cov_trace_pc() #7
  %vbus_reg.i31 = getelementptr inbounds %struct.qcom_pmic_typec, ptr %qcom_usb, i32 0, i32 5
  %15 = ptrtoint ptr %vbus_reg.i31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vbus_reg.i31, align 4
  br label %if.else.i

if.end.i:                                         ; preds = %if.end9
  %vbus_reg.i = getelementptr inbounds %struct.qcom_pmic_typec, ptr %qcom_usb, i32 0, i32 5
  %17 = ptrtoint ptr %vbus_reg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vbus_reg.i, align 4
  br i1 %tobool5.not, label %if.end.i.if.else.i_crit_edge, label %if.then5.i

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

if.then5.i:                                       ; preds = %if.end.i
  %call.i = call i32 @regulator_enable(ptr noundef %18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.then5.i.if.end14.i_crit_edge, label %if.then5.i.qcom_pmic_typec_enable_vbus_regulator.exit_crit_edge

if.then5.i.qcom_pmic_typec_enable_vbus_regulator.exit_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qcom_pmic_typec_enable_vbus_regulator.exit

if.then5.i.if.end14.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.else.i:                                        ; preds = %if.end.i.if.else.i_crit_edge, %if.end.i.thread
  %19 = phi ptr [ %16, %if.end.i.thread ], [ %18, %if.end.i.if.else.i_crit_edge ]
  %role.02236 = phi i32 [ 0, %if.end.i.thread ], [ 2, %if.end.i.if.else.i_crit_edge ]
  %frombool.i2535 = phi i8 [ 0, %if.end.i.thread ], [ %frombool.i, %if.end.i.if.else.i_crit_edge ]
  %vbus_enabled.i2633 = phi ptr [ %vbus_enabled.i20, %if.end.i.thread ], [ %vbus_enabled.i, %if.end.i.if.else.i_crit_edge ]
  %call10.i = call i32 @regulator_disable(ptr noundef %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.else.i.if.end14.i_crit_edge, label %if.else.i.qcom_pmic_typec_enable_vbus_regulator.exit_crit_edge

if.else.i.qcom_pmic_typec_enable_vbus_regulator.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qcom_pmic_typec_enable_vbus_regulator.exit

if.else.i.if.end14.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else.i.if.end14.i_crit_edge, %if.then5.i.if.end14.i_crit_edge
  %role.02237 = phi i32 [ %role.02236, %if.else.i.if.end14.i_crit_edge ], [ 1, %if.then5.i.if.end14.i_crit_edge ]
  %frombool.i2534 = phi i8 [ %frombool.i2535, %if.else.i.if.end14.i_crit_edge ], [ %frombool.i, %if.then5.i.if.end14.i_crit_edge ]
  %vbus_enabled.i2632 = phi ptr [ %vbus_enabled.i2633, %if.else.i.if.end14.i_crit_edge ], [ %vbus_enabled.i, %if.then5.i.if.end14.i_crit_edge ]
  %20 = ptrtoint ptr %vbus_enabled.i2632 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool.i2534, ptr %vbus_enabled.i2632, align 4
  br label %qcom_pmic_typec_enable_vbus_regulator.exit

qcom_pmic_typec_enable_vbus_regulator.exit:       ; preds = %if.end14.i, %if.else.i.qcom_pmic_typec_enable_vbus_regulator.exit_crit_edge, %if.then5.i.qcom_pmic_typec_enable_vbus_regulator.exit_crit_edge, %if.end9.thread.qcom_pmic_typec_enable_vbus_regulator.exit_crit_edge, %if.end9.qcom_pmic_typec_enable_vbus_regulator.exit_crit_edge
  %role.023 = phi i32 [ 0, %if.end9.thread.qcom_pmic_typec_enable_vbus_regulator.exit_crit_edge ], [ %cond6, %if.end9.qcom_pmic_typec_enable_vbus_regulator.exit_crit_edge ], [ 1, %if.then5.i.qcom_pmic_typec_enable_vbus_regulator.exit_crit_edge ], [ %role.02236, %if.else.i.qcom_pmic_typec_enable_vbus_regulator.exit_crit_edge ], [ %role.02237, %if.end14.i ]
  %role_sw = getelementptr inbounds %struct.qcom_pmic_typec, ptr %qcom_usb, i32 0, i32 4
  %21 = ptrtoint ptr %role_sw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %role_sw, align 4
  %call11 = call i32 @usb_role_switch_set_role(ptr noundef %22, i32 noundef %role.023) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_role_switch_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_unregister_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @typec_set_orientation(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_role_switch_set_role(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !32, !34, !36, !37, !38, !40, !41, !42, !44, !46, !47, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__initcall__kmod_qcom_pmic_typec__288_259_qcom_pmic_typec_init6, !1, !"__initcall__kmod_qcom_pmic_typec__288_259_qcom_pmic_typec_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/typec/qcom-pmic-typec.c", i32 259, i32 1}
!2 = !{ptr @__exitcall_qcom_pmic_typec_exit, !1, !"__exitcall_qcom_pmic_typec_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/usb/typec/qcom-pmic-typec.c", i32 261, i32 1}
!5 = !{ptr @__UNIQUE_ID_file290, !6, !"__UNIQUE_ID_file290", i1 false, i1 false}
!6 = !{!"../drivers/usb/typec/qcom-pmic-typec.c", i32 262, i32 1}
!7 = !{ptr @__UNIQUE_ID_license291, !6, !"__UNIQUE_ID_license291", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/typec/qcom-pmic-typec.c", i32 253, i32 11}
!10 = !{ptr @qcom_pmic_typec, !11, !"qcom_pmic_typec", i1 false, i1 false}
!11 = !{!"../drivers/usb/typec/qcom-pmic-typec.c", i32 251, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/typec/qcom-pmic-typec.c", i32 139, i32 38}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/typec/qcom-pmic-typec.c", i32 141, i32 3}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @qcom_pmic_typec_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @qcom_pmic_typec_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/typec/qcom-pmic-typec.c", i32 154, i32 3}
!24 = !{ptr @qcom_pmic_typec_probe._entry.7, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @qcom_pmic_typec_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/typec/qcom-pmic-typec.c", i32 158, i32 57}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/typec/qcom-pmic-typec.c", i32 162, i32 44}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/typec/qcom-pmic-typec.c", i32 166, i32 44}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/typec/qcom-pmic-typec.c", i32 176, i32 44}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/typec/qcom-pmic-typec.c", i32 191, i32 3}
!36 = !{ptr @qcom_pmic_typec_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @qcom_pmic_typec_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/typec/qcom-pmic-typec.c", i32 199, i32 4}
!40 = !{ptr @qcom_pmic_typec_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @qcom_pmic_typec_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/typec/qcom-pmic-typec.c", i32 210, i32 6}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/typec/qcom-pmic-typec.c", i32 212, i32 3}
!46 = !{ptr @qcom_pmic_typec_probe._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @qcom_pmic_typec_probe._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @qcom_pmic_typec_table, !49, !"qcom_pmic_typec_table", i1 false, i1 false}
!49 = !{!"../drivers/usb/typec/qcom-pmic-typec.c", i32 245, i32 34}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"auto-init"}
!60 = !{i8 0, i8 2}
