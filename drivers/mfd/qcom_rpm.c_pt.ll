; ModuleID = '/llk/IR_all_yes/drivers/mfd/qcom_rpm.c_pt.bc'
source_filename = "../drivers/mfd/qcom_rpm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+qcom_rpm_write\22, \22a\22\09"
module asm "\09.weak\09__crc_qcom_rpm_write\09\09\09\09"
module asm "\09.long\09__crc_qcom_rpm_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_rpm_write:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_rpm_write\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_rpm_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.qcom_rpm_data = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.qcom_rpm_resource = type { i32, i32, i32, i32 }
%struct.qcom_rpm = type { ptr, ptr, i32, i32, ptr, %struct.completion, %struct.mutex, ptr, ptr, ptr, i32, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/mfd/qcom_rpm.c\00", [41 x i8] zeroinitializer }, align 32
@__kstrtab_qcom_rpm_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_rpm_write = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_rpm_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_rpm_write to i32), ptr @__kstrtab_qcom_rpm_write, ptr @__kstrtabns_qcom_rpm_write }, section "___ksymtab+qcom_rpm_write", align 4
@__initcall__kmod_qcom_rpm__187_702_qcom_rpm_init3 = internal global ptr @qcom_rpm_init, section ".initcall3.init", align 4
@qcom_rpm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_rpm_probe, ptr @qcom_rpm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qcom_rpm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qcom_rpm_exit = internal global ptr @qcom_rpm_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description188 = internal constant [60 x i8] c"qcom_rpm.description=Qualcomm Resource Power Manager driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file189 = internal constant [35 x i8] c"qcom_rpm.file=drivers/mfd/qcom_rpm\00", section ".modinfo", align 1
@__UNIQUE_ID_license190 = internal constant [24 x i8] c"qcom_rpm.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author191 = internal constant [65 x i8] c"qcom_rpm.author=Bjorn Andersson <bjorn.andersson@sonymobile.com>\00", section ".modinfo", align 1
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qcom_rpm\00", [23 x i8] zeroinitializer }, align 32
@qcom_rpm_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-apq8064\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @apq8064_template }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-msm8660\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8660_template }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-msm8960\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8960_template }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-ipq8064\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipq806x_template }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-mdm9615\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mdm9615_template }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@qcom_rpm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&rpm->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ram\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ack\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"err\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wakeup\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qcom,ipc\00", [23 x i8] zeroinitializer }, align 32
@qcom_rpm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 589, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no qcom,ipc node\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcom_rpm_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_rpm_probe._entry_ptr = internal global ptr @qcom_rpm_probe._entry, section ".printk_index", align 4
@qcom_rpm_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.9, ptr @.str, i32 601, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no offset in qcom,ipc\0A\00", [41 x i8] zeroinitializer }, align 32
@qcom_rpm_probe._entry_ptr.14 = internal global ptr @qcom_rpm_probe._entry.12, section ".printk_index", align 4
@qcom_rpm_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.9, ptr @.str, i32 608, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no bit in qcom,ipc\0A\00", [44 x i8] zeroinitializer }, align 32
@qcom_rpm_probe._entry_ptr.17 = internal global ptr @qcom_rpm_probe._entry.15, section ".printk_index", align 4
@qcom_rpm_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.9, ptr @.str, i32 623, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"RPM version %u.%u.%u incompatible with driver version %u\00", [39 x i8] zeroinitializer }, align 32
@qcom_rpm_probe._entry_ptr.20 = internal global ptr @qcom_rpm_probe._entry.18, section ".printk_index", align 4
@qcom_rpm_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.9, ptr @.str, i32 633, ptr @.str.23, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RPM firmware %u.%u.%u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@qcom_rpm_probe._entry_ptr.24 = internal global ptr @qcom_rpm_probe._entry.21, section ".printk_index", align 4
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qcom_rpm_ack\00", [19 x i8] zeroinitializer }, align 32
@qcom_rpm_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.9, ptr @.str, i32 642, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to request ack interrupt\0A\00", [63 x i8] zeroinitializer }, align 32
@qcom_rpm_probe._entry_ptr.28 = internal global ptr @qcom_rpm_probe._entry.26, section ".printk_index", align 4
@qcom_rpm_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.9, ptr @.str, i32 648, ptr @.str.31, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to mark ack irq as wakeup\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@qcom_rpm_probe._entry_ptr.32 = internal global ptr @qcom_rpm_probe._entry.29, section ".printk_index", align 4
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qcom_rpm_err\00", [19 x i8] zeroinitializer }, align 32
@qcom_rpm_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.9, ptr @.str, i32 657, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to request err interrupt\0A\00", [63 x i8] zeroinitializer }, align 32
@qcom_rpm_probe._entry_ptr.36 = internal global ptr @qcom_rpm_probe._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom_rpm_wakeup\00", [16 x i8] zeroinitializer }, align 32
@qcom_rpm_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.9, ptr @.str, i32 668, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to request wakeup interrupt\0A\00", [60 x i8] zeroinitializer }, align 32
@qcom_rpm_probe._entry_ptr.40 = internal global ptr @qcom_rpm_probe._entry.38, section ".printk_index", align 4
@qcom_rpm_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.9, ptr @.str, i32 674, ptr @.str.31, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to mark wakeup irq as wakeup\0A\00", [59 x i8] zeroinitializer }, align 32
@qcom_rpm_probe._entry_ptr.43 = internal global ptr @qcom_rpm_probe._entry.41, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@qcom_rpm_ack_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str, i32 505, ptr @.str.31, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ignoring notification!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qcom_rpm_ack_interrupt\00", [41 x i8] zeroinitializer }, align 32
@qcom_rpm_ack_interrupt._entry_ptr = internal global ptr @qcom_rpm_ack_interrupt._entry, section ".printk_index", align 4
@qcom_rpm_err_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str, i32 519, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RPM triggered fatal error\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qcom_rpm_err_interrupt\00", [41 x i8] zeroinitializer }, align 32
@qcom_rpm_err_interrupt._entry_ptr = internal global ptr @qcom_rpm_err_interrupt._entry, section ".printk_index", align 4
@apq8064_template = internal constant { %struct.qcom_rpm_data, [60 x i8] } { %struct.qcom_rpm_data { i32 3, ptr @apq8064_rpm_resource_table, i32 134, i32 3, i32 11, i32 15, i32 23, i32 4, i32 7 }, [60 x i8] zeroinitializer }, align 32
@msm8660_template = internal constant { %struct.qcom_rpm_data, [60 x i8] } { %struct.qcom_rpm_data { i32 2, ptr @msm8660_rpm_resource_table, i32 132, i32 3, i32 11, i32 19, i32 27, i32 7, i32 7 }, [60 x i8] zeroinitializer }, align 32
@msm8960_template = internal constant { %struct.qcom_rpm_data, [60 x i8] } { %struct.qcom_rpm_data { i32 3, ptr @msm8960_rpm_resource_table, i32 133, i32 3, i32 11, i32 15, i32 23, i32 4, i32 7 }, [60 x i8] zeroinitializer }, align 32
@ipq806x_template = internal constant { %struct.qcom_rpm_data, [60 x i8] } { %struct.qcom_rpm_data { i32 3, ptr @ipq806x_rpm_resource_table, i32 140, i32 3, i32 11, i32 15, i32 23, i32 4, i32 7 }, [60 x i8] zeroinitializer }, align 32
@mdm9615_template = internal constant { %struct.qcom_rpm_data, [60 x i8] } { %struct.qcom_rpm_data { i32 3, ptr @mdm9615_rpm_resource_table, i32 162, i32 3, i32 11, i32 15, i32 23, i32 4, i32 7 }, [60 x i8] zeroinitializer }, align 32
@apq8064_rpm_resource_table = internal constant { [134 x %struct.qcom_rpm_resource], [512 x i8] } { [134 x %struct.qcom_rpm_resource] [%struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 41, i32 22, i32 21, i32 12 }, %struct.qcom_rpm_resource { i32 27, i32 11, i32 8, i32 1 }, %struct.qcom_rpm_resource { i32 35, i32 19, i32 18, i32 1 }, %struct.qcom_rpm_resource { i32 40, i32 21, i32 20, i32 1 }, %struct.qcom_rpm_resource { i32 37, i32 20, i32 19, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 32, i32 16, i32 13, i32 1 }, %struct.qcom_rpm_resource { i32 209, i32 124, i32 81, i32 1 }, %struct.qcom_rpm_resource { i32 25, i32 9, i32 5, i32 1 }, %struct.qcom_rpm_resource { i32 30, i32 14, i32 11, i32 1 }, %struct.qcom_rpm_resource { i32 212, i32 127, i32 84, i32 2 }, %struct.qcom_rpm_resource { i32 34, i32 18, i32 16, i32 1 }, %struct.qcom_rpm_resource { i32 211, i32 126, i32 83, i32 1 }, %struct.qcom_rpm_resource { i32 33, i32 17, i32 14, i32 1 }, %struct.qcom_rpm_resource { i32 95, i32 30, i32 29, i32 21 }, %struct.qcom_rpm_resource { i32 29, i32 13, i32 10, i32 1 }, %struct.qcom_rpm_resource { i32 89, i32 27, i32 26, i32 1 }, %struct.qcom_rpm_resource { i32 94, i32 29, i32 28, i32 1 }, %struct.qcom_rpm_resource { i32 91, i32 28, i32 27, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 205, i32 120, i32 78, i32 2 }, %struct.qcom_rpm_resource { i32 201, i32 116, i32 76, i32 2 }, %struct.qcom_rpm_resource { i32 203, i32 118, i32 77, i32 2 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 190, i32 105, i32 67, i32 2 }, %struct.qcom_rpm_resource { i32 192, i32 107, i32 68, i32 2 }, %struct.qcom_rpm_resource { i32 132, i32 47, i32 38, i32 2 }, %struct.qcom_rpm_resource { i32 134, i32 49, i32 39, i32 2 }, %struct.qcom_rpm_resource { i32 136, i32 51, i32 40, i32 2 }, %struct.qcom_rpm_resource { i32 138, i32 53, i32 41, i32 2 }, %struct.qcom_rpm_resource { i32 140, i32 55, i32 42, i32 2 }, %struct.qcom_rpm_resource { i32 142, i32 57, i32 43, i32 2 }, %struct.qcom_rpm_resource { i32 144, i32 59, i32 44, i32 2 }, %struct.qcom_rpm_resource { i32 146, i32 61, i32 45, i32 2 }, %struct.qcom_rpm_resource { i32 148, i32 63, i32 46, i32 2 }, %struct.qcom_rpm_resource { i32 150, i32 65, i32 47, i32 2 }, %struct.qcom_rpm_resource { i32 152, i32 67, i32 48, i32 2 }, %struct.qcom_rpm_resource { i32 154, i32 69, i32 49, i32 2 }, %struct.qcom_rpm_resource { i32 156, i32 71, i32 50, i32 2 }, %struct.qcom_rpm_resource { i32 158, i32 73, i32 51, i32 2 }, %struct.qcom_rpm_resource { i32 160, i32 75, i32 52, i32 2 }, %struct.qcom_rpm_resource { i32 162, i32 77, i32 53, i32 2 }, %struct.qcom_rpm_resource { i32 164, i32 79, i32 54, i32 2 }, %struct.qcom_rpm_resource { i32 166, i32 81, i32 55, i32 2 }, %struct.qcom_rpm_resource { i32 168, i32 83, i32 56, i32 2 }, %struct.qcom_rpm_resource { i32 170, i32 85, i32 57, i32 2 }, %struct.qcom_rpm_resource { i32 172, i32 87, i32 58, i32 2 }, %struct.qcom_rpm_resource { i32 174, i32 89, i32 59, i32 2 }, %struct.qcom_rpm_resource { i32 176, i32 91, i32 60, i32 2 }, %struct.qcom_rpm_resource { i32 178, i32 93, i32 61, i32 2 }, %struct.qcom_rpm_resource { i32 180, i32 95, i32 62, i32 2 }, %struct.qcom_rpm_resource { i32 182, i32 97, i32 63, i32 2 }, %struct.qcom_rpm_resource { i32 184, i32 99, i32 64, i32 2 }, %struct.qcom_rpm_resource { i32 186, i32 101, i32 65, i32 2 }, %struct.qcom_rpm_resource { i32 188, i32 103, i32 66, i32 2 }, %struct.qcom_rpm_resource { i32 194, i32 109, i32 69, i32 1 }, %struct.qcom_rpm_resource { i32 195, i32 110, i32 70, i32 1 }, %struct.qcom_rpm_resource { i32 196, i32 111, i32 71, i32 1 }, %struct.qcom_rpm_resource { i32 197, i32 112, i32 72, i32 1 }, %struct.qcom_rpm_resource { i32 198, i32 113, i32 73, i32 1 }, %struct.qcom_rpm_resource { i32 199, i32 114, i32 74, i32 1 }, %struct.qcom_rpm_resource { i32 200, i32 115, i32 75, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 207, i32 122, i32 80, i32 2 }, %struct.qcom_rpm_resource { i32 116, i32 31, i32 30, i32 2 }, %struct.qcom_rpm_resource { i32 118, i32 33, i32 31, i32 2 }, %struct.qcom_rpm_resource { i32 120, i32 35, i32 32, i32 2 }, %struct.qcom_rpm_resource { i32 122, i32 37, i32 33, i32 2 }, %struct.qcom_rpm_resource { i32 124, i32 39, i32 34, i32 2 }, %struct.qcom_rpm_resource { i32 126, i32 41, i32 35, i32 2 }, %struct.qcom_rpm_resource { i32 128, i32 43, i32 36, i32 2 }, %struct.qcom_rpm_resource { i32 130, i32 45, i32 37, i32 2 }, %struct.qcom_rpm_resource { i32 26, i32 10, i32 6, i32 1 }, %struct.qcom_rpm_resource { i32 214, i32 -1, i32 7, i32 1 }, %struct.qcom_rpm_resource { i32 31, i32 15, i32 12, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 59, i32 26, i32 25, i32 30 }, %struct.qcom_rpm_resource { i32 28, i32 12, i32 9, i32 1 }, %struct.qcom_rpm_resource { i32 53, i32 23, i32 22, i32 1 }, %struct.qcom_rpm_resource { i32 58, i32 25, i32 24, i32 1 }, %struct.qcom_rpm_resource { i32 55, i32 24, i32 23, i32 1 }, %struct.qcom_rpm_resource { i32 210, i32 125, i32 82, i32 1 }, %struct.qcom_rpm_resource { i32 215, i32 131, i32 89, i32 1 }], [512 x i8] zeroinitializer }, align 32
@msm8660_rpm_resource_table = internal constant { [132 x %struct.qcom_rpm_resource], [512 x i8] } { [132 x %struct.qcom_rpm_resource] [%struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 51, i32 28, i32 21, i32 6 }, %struct.qcom_rpm_resource { i32 35, i32 15, i32 8, i32 1 }, %struct.qcom_rpm_resource { i32 45, i32 25, i32 18, i32 2 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 47, i32 26, i32 19, i32 3 }, %struct.qcom_rpm_resource { i32 44, i32 24, i32 17, i32 1 }, %struct.qcom_rpm_resource { i32 40, i32 20, i32 13, i32 1 }, %struct.qcom_rpm_resource { i32 229, i32 132, i32 81, i32 1 }, %struct.qcom_rpm_resource { i32 32, i32 12, i32 5, i32 1 }, %struct.qcom_rpm_resource { i32 38, i32 18, i32 11, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 43, i32 23, i32 16, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 41, i32 21, i32 14, i32 1 }, %struct.qcom_rpm_resource { i32 111, i32 36, i32 29, i32 23 }, %struct.qcom_rpm_resource { i32 37, i32 17, i32 10, i32 1 }, %struct.qcom_rpm_resource { i32 105, i32 33, i32 26, i32 2 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 107, i32 34, i32 27, i32 3 }, %struct.qcom_rpm_resource { i32 34, i32 14, i32 7, i32 1 }, %struct.qcom_rpm_resource { i32 173, i32 76, i32 52, i32 2 }, %struct.qcom_rpm_resource { i32 175, i32 78, i32 53, i32 2 }, %struct.qcom_rpm_resource { i32 177, i32 80, i32 54, i32 2 }, %struct.qcom_rpm_resource { i32 179, i32 82, i32 55, i32 2 }, %struct.qcom_rpm_resource { i32 181, i32 84, i32 56, i32 2 }, %struct.qcom_rpm_resource { i32 183, i32 86, i32 57, i32 2 }, %struct.qcom_rpm_resource { i32 185, i32 88, i32 58, i32 2 }, %struct.qcom_rpm_resource { i32 187, i32 90, i32 59, i32 2 }, %struct.qcom_rpm_resource { i32 189, i32 92, i32 60, i32 2 }, %struct.qcom_rpm_resource { i32 191, i32 94, i32 61, i32 2 }, %struct.qcom_rpm_resource { i32 193, i32 96, i32 62, i32 2 }, %struct.qcom_rpm_resource { i32 195, i32 98, i32 63, i32 2 }, %struct.qcom_rpm_resource { i32 197, i32 100, i32 64, i32 2 }, %struct.qcom_rpm_resource { i32 199, i32 102, i32 65, i32 2 }, %struct.qcom_rpm_resource { i32 201, i32 104, i32 66, i32 2 }, %struct.qcom_rpm_resource { i32 203, i32 106, i32 67, i32 2 }, %struct.qcom_rpm_resource { i32 205, i32 108, i32 68, i32 2 }, %struct.qcom_rpm_resource { i32 207, i32 110, i32 69, i32 2 }, %struct.qcom_rpm_resource { i32 209, i32 112, i32 70, i32 2 }, %struct.qcom_rpm_resource { i32 211, i32 114, i32 71, i32 2 }, %struct.qcom_rpm_resource { i32 213, i32 116, i32 72, i32 2 }, %struct.qcom_rpm_resource { i32 215, i32 118, i32 73, i32 2 }, %struct.qcom_rpm_resource { i32 217, i32 120, i32 74, i32 2 }, %struct.qcom_rpm_resource { i32 219, i32 122, i32 75, i32 2 }, %struct.qcom_rpm_resource { i32 221, i32 124, i32 76, i32 2 }, %struct.qcom_rpm_resource { i32 223, i32 126, i32 77, i32 2 }, %struct.qcom_rpm_resource { i32 225, i32 128, i32 78, i32 1 }, %struct.qcom_rpm_resource { i32 226, i32 129, i32 79, i32 1 }, %struct.qcom_rpm_resource { i32 227, i32 130, i32 80, i32 2 }, %struct.qcom_rpm_resource { i32 163, i32 66, i32 47, i32 2 }, %struct.qcom_rpm_resource { i32 165, i32 68, i32 48, i32 2 }, %struct.qcom_rpm_resource { i32 167, i32 70, i32 49, i32 2 }, %struct.qcom_rpm_resource { i32 169, i32 72, i32 50, i32 2 }, %struct.qcom_rpm_resource { i32 171, i32 74, i32 51, i32 2 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 144, i32 47, i32 35, i32 2 }, %struct.qcom_rpm_resource { i32 146, i32 49, i32 36, i32 2 }, %struct.qcom_rpm_resource { i32 148, i32 51, i32 37, i32 2 }, %struct.qcom_rpm_resource { i32 150, i32 53, i32 38, i32 2 }, %struct.qcom_rpm_resource { i32 152, i32 55, i32 39, i32 2 }, %struct.qcom_rpm_resource { i32 154, i32 57, i32 40, i32 2 }, %struct.qcom_rpm_resource { i32 156, i32 59, i32 41, i32 2 }, %struct.qcom_rpm_resource { i32 158, i32 61, i32 42, i32 1 }, %struct.qcom_rpm_resource { i32 159, i32 62, i32 43, i32 1 }, %struct.qcom_rpm_resource { i32 160, i32 63, i32 44, i32 1 }, %struct.qcom_rpm_resource { i32 161, i32 64, i32 45, i32 1 }, %struct.qcom_rpm_resource { i32 162, i32 65, i32 46, i32 1 }, %struct.qcom_rpm_resource { i32 134, i32 37, i32 30, i32 2 }, %struct.qcom_rpm_resource { i32 136, i32 39, i32 31, i32 2 }, %struct.qcom_rpm_resource { i32 138, i32 41, i32 32, i32 2 }, %struct.qcom_rpm_resource { i32 140, i32 43, i32 33, i32 2 }, %struct.qcom_rpm_resource { i32 142, i32 45, i32 34, i32 2 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 33, i32 13, i32 6, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 39, i32 19, i32 12, i32 1 }, %struct.qcom_rpm_resource { i32 42, i32 22, i32 15, i32 1 }, %struct.qcom_rpm_resource { i32 69, i32 32, i32 25, i32 22 }, %struct.qcom_rpm_resource { i32 36, i32 16, i32 9, i32 1 }, %struct.qcom_rpm_resource { i32 63, i32 29, i32 22, i32 2 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 65, i32 30, i32 23, i32 3 }], [512 x i8] zeroinitializer }, align 32
@msm8960_rpm_resource_table = internal constant { [133 x %struct.qcom_rpm_resource], [528 x i8] } { [133 x %struct.qcom_rpm_resource] [%struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 41, i32 22, i32 21, i32 12 }, %struct.qcom_rpm_resource { i32 27, i32 11, i32 8, i32 1 }, %struct.qcom_rpm_resource { i32 35, i32 19, i32 18, i32 1 }, %struct.qcom_rpm_resource { i32 40, i32 21, i32 20, i32 1 }, %struct.qcom_rpm_resource { i32 37, i32 20, i32 19, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 32, i32 16, i32 13, i32 1 }, %struct.qcom_rpm_resource { i32 204, i32 118, i32 81, i32 1 }, %struct.qcom_rpm_resource { i32 25, i32 9, i32 5, i32 1 }, %struct.qcom_rpm_resource { i32 30, i32 14, i32 11, i32 1 }, %struct.qcom_rpm_resource { i32 207, i32 121, i32 84, i32 2 }, %struct.qcom_rpm_resource { i32 34, i32 18, i32 16, i32 1 }, %struct.qcom_rpm_resource { i32 206, i32 120, i32 83, i32 1 }, %struct.qcom_rpm_resource { i32 33, i32 17, i32 14, i32 1 }, %struct.qcom_rpm_resource { i32 94, i32 30, i32 29, i32 23 }, %struct.qcom_rpm_resource { i32 29, i32 13, i32 10, i32 1 }, %struct.qcom_rpm_resource { i32 88, i32 27, i32 26, i32 1 }, %struct.qcom_rpm_resource { i32 93, i32 29, i32 28, i32 1 }, %struct.qcom_rpm_resource { i32 90, i32 28, i32 27, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 191, i32 105, i32 67, i32 2 }, %struct.qcom_rpm_resource { i32 193, i32 107, i32 68, i32 2 }, %struct.qcom_rpm_resource { i32 133, i32 47, i32 38, i32 2 }, %struct.qcom_rpm_resource { i32 135, i32 49, i32 39, i32 2 }, %struct.qcom_rpm_resource { i32 137, i32 51, i32 40, i32 2 }, %struct.qcom_rpm_resource { i32 139, i32 53, i32 41, i32 2 }, %struct.qcom_rpm_resource { i32 141, i32 55, i32 42, i32 2 }, %struct.qcom_rpm_resource { i32 143, i32 57, i32 43, i32 2 }, %struct.qcom_rpm_resource { i32 145, i32 59, i32 44, i32 2 }, %struct.qcom_rpm_resource { i32 147, i32 61, i32 45, i32 2 }, %struct.qcom_rpm_resource { i32 149, i32 63, i32 46, i32 2 }, %struct.qcom_rpm_resource { i32 151, i32 65, i32 47, i32 2 }, %struct.qcom_rpm_resource { i32 153, i32 67, i32 48, i32 2 }, %struct.qcom_rpm_resource { i32 155, i32 69, i32 49, i32 2 }, %struct.qcom_rpm_resource { i32 157, i32 71, i32 50, i32 2 }, %struct.qcom_rpm_resource { i32 159, i32 73, i32 51, i32 2 }, %struct.qcom_rpm_resource { i32 161, i32 75, i32 52, i32 2 }, %struct.qcom_rpm_resource { i32 163, i32 77, i32 53, i32 2 }, %struct.qcom_rpm_resource { i32 165, i32 79, i32 54, i32 2 }, %struct.qcom_rpm_resource { i32 167, i32 81, i32 55, i32 2 }, %struct.qcom_rpm_resource { i32 169, i32 83, i32 56, i32 2 }, %struct.qcom_rpm_resource { i32 171, i32 85, i32 57, i32 2 }, %struct.qcom_rpm_resource { i32 173, i32 87, i32 58, i32 2 }, %struct.qcom_rpm_resource { i32 175, i32 89, i32 59, i32 2 }, %struct.qcom_rpm_resource { i32 177, i32 91, i32 60, i32 2 }, %struct.qcom_rpm_resource { i32 179, i32 93, i32 61, i32 2 }, %struct.qcom_rpm_resource { i32 181, i32 95, i32 62, i32 2 }, %struct.qcom_rpm_resource { i32 183, i32 97, i32 63, i32 2 }, %struct.qcom_rpm_resource { i32 185, i32 99, i32 64, i32 2 }, %struct.qcom_rpm_resource { i32 187, i32 101, i32 65, i32 2 }, %struct.qcom_rpm_resource { i32 189, i32 103, i32 66, i32 2 }, %struct.qcom_rpm_resource { i32 195, i32 109, i32 69, i32 1 }, %struct.qcom_rpm_resource { i32 196, i32 110, i32 70, i32 1 }, %struct.qcom_rpm_resource { i32 197, i32 111, i32 71, i32 1 }, %struct.qcom_rpm_resource { i32 198, i32 112, i32 72, i32 1 }, %struct.qcom_rpm_resource { i32 199, i32 113, i32 73, i32 1 }, %struct.qcom_rpm_resource { i32 200, i32 114, i32 74, i32 1 }, %struct.qcom_rpm_resource { i32 201, i32 115, i32 75, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 202, i32 116, i32 80, i32 2 }, %struct.qcom_rpm_resource { i32 117, i32 31, i32 30, i32 2 }, %struct.qcom_rpm_resource { i32 119, i32 33, i32 31, i32 2 }, %struct.qcom_rpm_resource { i32 121, i32 35, i32 32, i32 2 }, %struct.qcom_rpm_resource { i32 123, i32 37, i32 33, i32 2 }, %struct.qcom_rpm_resource { i32 125, i32 39, i32 34, i32 2 }, %struct.qcom_rpm_resource { i32 127, i32 41, i32 35, i32 2 }, %struct.qcom_rpm_resource { i32 129, i32 43, i32 36, i32 2 }, %struct.qcom_rpm_resource { i32 131, i32 45, i32 37, i32 2 }, %struct.qcom_rpm_resource { i32 26, i32 10, i32 6, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 31, i32 15, i32 12, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 59, i32 26, i32 25, i32 29 }, %struct.qcom_rpm_resource { i32 28, i32 12, i32 9, i32 1 }, %struct.qcom_rpm_resource { i32 53, i32 23, i32 22, i32 1 }, %struct.qcom_rpm_resource { i32 58, i32 25, i32 24, i32 1 }, %struct.qcom_rpm_resource { i32 55, i32 24, i32 23, i32 1 }, %struct.qcom_rpm_resource { i32 205, i32 119, i32 82, i32 1 }], [528 x i8] zeroinitializer }, align 32
@ipq806x_rpm_resource_table = internal constant { [140 x %struct.qcom_rpm_resource], [544 x i8] } { [140 x %struct.qcom_rpm_resource] [%struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 41, i32 22, i32 21, i32 12 }, %struct.qcom_rpm_resource { i32 27, i32 11, i32 8, i32 1 }, %struct.qcom_rpm_resource { i32 35, i32 19, i32 18, i32 2 }, %struct.qcom_rpm_resource { i32 40, i32 21, i32 20, i32 1 }, %struct.qcom_rpm_resource { i32 37, i32 20, i32 19, i32 3 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 32, i32 16, i32 13, i32 1 }, %struct.qcom_rpm_resource { i32 209, i32 33, i32 31, i32 1 }, %struct.qcom_rpm_resource { i32 25, i32 9, i32 5, i32 1 }, %struct.qcom_rpm_resource { i32 30, i32 14, i32 11, i32 1 }, %struct.qcom_rpm_resource { i32 212, i32 36, i32 34, i32 2 }, %struct.qcom_rpm_resource { i32 34, i32 18, i32 16, i32 1 }, %struct.qcom_rpm_resource { i32 211, i32 35, i32 33, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 95, i32 30, i32 29, i32 2 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 89, i32 27, i32 26, i32 2 }, %struct.qcom_rpm_resource { i32 94, i32 29, i32 28, i32 1 }, %struct.qcom_rpm_resource { i32 91, i32 28, i32 27, i32 3 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 26, i32 10, i32 6, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 31, i32 15, i32 12, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 59, i32 26, i32 25, i32 30 }, %struct.qcom_rpm_resource { i32 28, i32 12, i32 9, i32 1 }, %struct.qcom_rpm_resource { i32 53, i32 23, i32 22, i32 2 }, %struct.qcom_rpm_resource { i32 58, i32 25, i32 24, i32 1 }, %struct.qcom_rpm_resource { i32 55, i32 24, i32 23, i32 3 }, %struct.qcom_rpm_resource { i32 210, i32 34, i32 32, i32 1 }, %struct.qcom_rpm_resource { i32 215, i32 40, i32 39, i32 1 }, %struct.qcom_rpm_resource { i32 29, i32 13, i32 10, i32 1 }, %struct.qcom_rpm_resource { i32 33, i32 17, i32 14, i32 1 }, %struct.qcom_rpm_resource { i32 216, i32 41, i32 90, i32 2 }, %struct.qcom_rpm_resource { i32 218, i32 43, i32 91, i32 2 }, %struct.qcom_rpm_resource { i32 220, i32 45, i32 92, i32 2 }, %struct.qcom_rpm_resource { i32 222, i32 47, i32 93, i32 2 }], [544 x i8] zeroinitializer }, align 32
@mdm9615_rpm_resource_table = internal constant { [162 x %struct.qcom_rpm_resource], [640 x i8] } { [162 x %struct.qcom_rpm_resource] [%struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 37, i32 18, i32 25, i32 27 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 31, i32 15, i32 22, i32 2 }, %struct.qcom_rpm_resource { i32 36, i32 17, i32 24, i32 1 }, %struct.qcom_rpm_resource { i32 33, i32 16, i32 23, i32 3 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 29, i32 13, i32 13, i32 1 }, %struct.qcom_rpm_resource { i32 105, i32 60, i32 81, i32 1 }, %struct.qcom_rpm_resource { i32 25, i32 9, i32 5, i32 1 }, %struct.qcom_rpm_resource { i32 27, i32 11, i32 11, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 30, i32 14, i32 16, i32 1 }, %struct.qcom_rpm_resource { i32 107, i32 62, i32 83, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 28, i32 12, i32 12, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 26, i32 10, i32 9, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 106, i32 61, i32 82, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 64, i32 19, i32 30, i32 2 }, %struct.qcom_rpm_resource { i32 66, i32 21, i32 31, i32 2 }, %struct.qcom_rpm_resource { i32 68, i32 23, i32 32, i32 2 }, %struct.qcom_rpm_resource { i32 70, i32 25, i32 33, i32 2 }, %struct.qcom_rpm_resource { i32 72, i32 27, i32 34, i32 2 }, %struct.qcom_rpm_resource { i32 74, i32 29, i32 35, i32 2 }, %struct.qcom_rpm_resource { i32 76, i32 31, i32 36, i32 2 }, %struct.qcom_rpm_resource { i32 78, i32 33, i32 37, i32 2 }, %struct.qcom_rpm_resource { i32 80, i32 35, i32 38, i32 2 }, %struct.qcom_rpm_resource { i32 82, i32 37, i32 39, i32 2 }, %struct.qcom_rpm_resource { i32 84, i32 39, i32 40, i32 2 }, %struct.qcom_rpm_resource { i32 86, i32 41, i32 41, i32 2 }, %struct.qcom_rpm_resource { i32 88, i32 43, i32 42, i32 2 }, %struct.qcom_rpm_resource { i32 90, i32 45, i32 43, i32 2 }, %struct.qcom_rpm_resource { i32 92, i32 47, i32 44, i32 2 }, %struct.qcom_rpm_resource { i32 94, i32 49, i32 45, i32 2 }, %struct.qcom_rpm_resource { i32 96, i32 51, i32 46, i32 2 }, %struct.qcom_rpm_resource { i32 98, i32 53, i32 47, i32 2 }, %struct.qcom_rpm_resource { i32 100, i32 55, i32 48, i32 2 }, %struct.qcom_rpm_resource { i32 102, i32 57, i32 49, i32 1 }, %struct.qcom_rpm_resource { i32 103, i32 58, i32 80, i32 2 }, %struct.qcom_rpm_resource { i32 109, i32 64, i32 87, i32 1 }], [640 x i8] zeroinitializer }, align 32
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 457, i32 6 }
@___asan_gen_.52 = private unnamed_addr constant [16 x i8] c"qcom_rpm_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 689, i32 31 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 693, i32 12 }
@___asan_gen_.58 = private unnamed_addr constant [18 x i8] c"qcom_rpm_of_match\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 435, i32 34 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 546, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 550, i32 41 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 563, i32 42 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 567, i32 42 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 571, i32 45 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 587, i32 50 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 589, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 601, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 608, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 618, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 631, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 639, i32 11 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 642, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 648, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 654, i32 11 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 657, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 665, i32 11 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 668, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 674, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 87, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 505, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 519, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"apq8064_template\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 150, i32 35 }
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"msm8660_template\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 239, i32 35 }
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"msm8960_template\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 327, i32 35 }
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"ipq806x_template\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 373, i32 35 }
@___asan_gen_.202 = private unnamed_addr constant [17 x i8] c"mdm9615_template\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 423, i32 35 }
@___asan_gen_.205 = private unnamed_addr constant [27 x i8] c"apq8064_rpm_resource_table\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 69, i32 39 }
@___asan_gen_.208 = private unnamed_addr constant [27 x i8] c"msm8660_rpm_resource_table\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 162, i32 39 }
@___asan_gen_.211 = private unnamed_addr constant [27 x i8] c"msm8960_rpm_resource_table\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 251, i32 39 }
@___asan_gen_.214 = private unnamed_addr constant [27 x i8] c"ipq806x_rpm_resource_table\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 339, i32 39 }
@___asan_gen_.217 = private unnamed_addr constant [27 x i8] c"mdm9615_rpm_resource_table\00", align 1
@___asan_gen_.218 = private constant [26 x i8] c"../drivers/mfd/qcom_rpm.c\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 385, i32 39 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @__UNIQUE_ID_author191, ptr @__UNIQUE_ID_description188, ptr @__UNIQUE_ID_file189, ptr @__UNIQUE_ID_license190, ptr @__exitcall_qcom_rpm_exit, ptr @__initcall__kmod_qcom_rpm__187_702_qcom_rpm_init3, ptr @__ksymtab_qcom_rpm_write, ptr @qcom_rpm_ack_interrupt._entry, ptr @qcom_rpm_ack_interrupt._entry_ptr, ptr @qcom_rpm_err_interrupt._entry, ptr @qcom_rpm_err_interrupt._entry_ptr, ptr @qcom_rpm_exit, ptr @qcom_rpm_probe._entry, ptr @qcom_rpm_probe._entry.12, ptr @qcom_rpm_probe._entry.15, ptr @qcom_rpm_probe._entry.18, ptr @qcom_rpm_probe._entry.21, ptr @qcom_rpm_probe._entry.26, ptr @qcom_rpm_probe._entry.29, ptr @qcom_rpm_probe._entry.34, ptr @qcom_rpm_probe._entry.38, ptr @qcom_rpm_probe._entry.41, ptr @qcom_rpm_probe._entry_ptr, ptr @qcom_rpm_probe._entry_ptr.14, ptr @qcom_rpm_probe._entry_ptr.17, ptr @qcom_rpm_probe._entry_ptr.20, ptr @qcom_rpm_probe._entry_ptr.24, ptr @qcom_rpm_probe._entry_ptr.28, ptr @qcom_rpm_probe._entry_ptr.32, ptr @qcom_rpm_probe._entry_ptr.36, ptr @qcom_rpm_probe._entry_ptr.40, ptr @qcom_rpm_probe._entry_ptr.43, ptr @.str, ptr @qcom_rpm_driver, ptr @.str.1, ptr @qcom_rpm_of_match, ptr @qcom_rpm_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @init_completion.__key, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @apq8064_template, ptr @msm8660_template, ptr @msm8960_template, ptr @ipq806x_template, ptr @mdm9615_template, ptr @apq8064_rpm_resource_table, ptr @msm8660_rpm_resource_table, ptr @msm8960_rpm_resource_table, ptr @ipq806x_rpm_resource_table, ptr @mdm9615_rpm_resource_table], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_rpm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_rpm_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_rpm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_rpm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_rpm_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_rpm_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_rpm_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_rpm_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_rpm_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_rpm_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_rpm_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_rpm_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_rpm_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_rpm_ack_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_rpm_err_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8064_template to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8660_template to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8960_template to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq806x_template to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdm9615_template to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8064_rpm_resource_table to i32), i32 2144, i32 2656, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8660_rpm_resource_table to i32), i32 2112, i32 2624, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8960_rpm_resource_table to i32), i32 2128, i32 2656, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq806x_rpm_resource_table to i32), i32 2240, i32 2784, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdm9615_rpm_resource_table to i32), i32 2592, i32 3232, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qcom_rpm_write(ptr noundef %rpm, i32 noundef %state, i32 noundef %resource, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %sel_mask = alloca [7 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.qcom_rpm, ptr %rpm, i32 0, i32 11
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %sel_mask) #7
  %2 = call ptr @memset(ptr %sel_mask, i32 0, i32 28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %resource)
  %cmp = icmp slt i32 %resource, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %n_resources = getelementptr inbounds %struct.qcom_rpm_data, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %n_resources to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %n_resources, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %resource)
  %cmp2.not = icmp ugt i32 %4, %resource
  br i1 %cmp2.not, label %if.end23, label %lor.rhs.do.end_crit_edge, !prof !127

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 457, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end23:                                         ; preds = %lor.rhs
  %resource_table = getelementptr inbounds %struct.qcom_rpm_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %resource_table to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %resource_table, align 4
  %arrayidx = getelementptr %struct.qcom_rpm_resource, ptr %6, i32 %resource
  %size = getelementptr %struct.qcom_rpm_resource, ptr %6, i32 %resource, i32 3
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %count)
  %cmp25.not = icmp eq i32 %8, %count
  br i1 %cmp25.not, label %if.end57, label %do.end41, !prof !127

do.end41:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 461, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end57:                                         ; preds = %if.end23
  %lock = getelementptr inbounds %struct.qcom_rpm, ptr %rpm, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp59121.not = icmp eq i32 %10, 0
  br i1 %cmp59121.not, label %if.end57.for.end_crit_edge, label %for.body.lr.ph

if.end57.for.end_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end57
  %req_regs = getelementptr inbounds %struct.qcom_rpm, ptr %rpm, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0122 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx60 = getelementptr i32, ptr %buf, i32 %i.0122
  %11 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx60, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = ptrtoint ptr %req_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %req_regs, align 4
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %add = add i32 %17, %i.0122
  %mul = shl i32 %add, 2
  %add.ptr = getelementptr i8, ptr %15, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #7, !srcloc !128
  %inc = add nuw i32 %i.0122, 1
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size, align 4
  %cmp59 = icmp ult i32 %inc, %19
  br i1 %cmp59, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end57.for.end_crit_edge
  %select_id = getelementptr %struct.qcom_rpm_resource, ptr %6, i32 %resource, i32 2
  %20 = ptrtoint ptr %select_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %select_id, align 4
  %rem.i.i = and i32 %21, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %21, 5
  %add.ptr.i.i = getelementptr i32, ptr %sel_mask, i32 %div2.i.i
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %shl.i.i, %23
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %24 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data1, align 4
  %req_sel_size123 = getelementptr inbounds %struct.qcom_rpm_data, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %req_sel_size123 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %req_sel_size123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp63124.not = icmp eq i32 %27, 0
  br i1 %cmp63124.not, label %for.end.for.end72_crit_edge, label %for.body64.lr.ph

for.end.for.end72_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end72

for.body64.lr.ph:                                 ; preds = %for.end
  %ctrl_regs = getelementptr inbounds %struct.qcom_rpm, ptr %rpm, i32 0, i32 8
  br label %for.body64

for.body64:                                       ; preds = %for.body64.for.body64_crit_edge, %for.body64.lr.ph
  %28 = phi ptr [ %25, %for.body64.lr.ph ], [ %37, %for.body64.for.body64_crit_edge ]
  %i.1125 = phi i32 [ 0, %for.body64.lr.ph ], [ %inc71, %for.body64.for.body64_crit_edge ]
  %arrayidx65 = getelementptr [7 x i32], ptr %sel_mask, i32 0, i32 %i.1125
  %29 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx65, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %32 = ptrtoint ptr %ctrl_regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctrl_regs, align 4
  %req_sel_off = getelementptr inbounds %struct.qcom_rpm_data, ptr %28, i32 0, i32 4
  %34 = ptrtoint ptr %req_sel_off to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %req_sel_off, align 4
  %add67 = add i32 %35, %i.1125
  %mul68 = shl i32 %add67, 2
  %add.ptr69 = getelementptr i8, ptr %33, i32 %mul68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 %31) #7, !srcloc !128
  %inc71 = add nuw i32 %i.1125, 1
  %36 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data1, align 4
  %req_sel_size = getelementptr inbounds %struct.qcom_rpm_data, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %req_sel_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %req_sel_size, align 4
  %cmp63 = icmp ult i32 %inc71, %39
  br i1 %cmp63, label %for.body64.for.body64_crit_edge, label %for.body64.for.end72_crit_edge

for.body64.for.end72_crit_edge:                   ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end72

for.body64.for.body64_crit_edge:                  ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body64

for.end72:                                        ; preds = %for.body64.for.end72_crit_edge, %for.end.for.end72_crit_edge
  %.lcssa = phi ptr [ %25, %for.end.for.end72_crit_edge ], [ %37, %for.body64.for.end72_crit_edge ]
  %shl = shl nuw i32 1, %state
  %40 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %ctrl_regs73 = getelementptr inbounds %struct.qcom_rpm, ptr %rpm, i32 0, i32 8
  %41 = ptrtoint ptr %ctrl_regs73 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ctrl_regs73, align 4
  %req_ctx_off = getelementptr inbounds %struct.qcom_rpm_data, ptr %.lcssa, i32 0, i32 3
  %43 = ptrtoint ptr %req_ctx_off to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %req_ctx_off, align 4
  %mul75 = shl i32 %44, 2
  %add.ptr76 = getelementptr i8, ptr %42, i32 %mul75
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %40) #7, !srcloc !128
  %ack = getelementptr inbounds %struct.qcom_rpm, ptr %rpm, i32 0, i32 5
  %45 = ptrtoint ptr %ack to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %ack, align 4
  %ipc_regmap = getelementptr inbounds %struct.qcom_rpm, ptr %rpm, i32 0, i32 1
  %46 = ptrtoint ptr %ipc_regmap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ipc_regmap, align 4
  %ipc_offset = getelementptr inbounds %struct.qcom_rpm, ptr %rpm, i32 0, i32 2
  %48 = ptrtoint ptr %ipc_offset to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ipc_offset, align 4
  %ipc_bit = getelementptr inbounds %struct.qcom_rpm, ptr %rpm, i32 0, i32 3
  %50 = ptrtoint ptr %ipc_bit to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ipc_bit, align 4
  %shl77 = shl nuw i32 1, %51
  %call = tail call i32 @regmap_write(ptr noundef %47, i32 noundef %49, i32 noundef %shl77) #7
  %call79 = tail call i32 @wait_for_completion_timeout(ptr noundef %ack, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %for.end72.if.end85_crit_edge, label %if.else

for.end72.if.end85_crit_edge:                     ; preds = %for.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.else:                                          ; preds = %for.end72
  call void @__sanitizer_cov_trace_pc() #9
  %ack_status = getelementptr inbounds %struct.qcom_rpm, ptr %rpm, i32 0, i32 10
  %52 = ptrtoint ptr %ack_status to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ack_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool82.not.inv = icmp slt i32 %53, 0
  %spec.select = select i1 %tobool82.not.inv, i32 -5, i32 0
  br label %if.end85

if.end85:                                         ; preds = %if.else, %for.end72.if.end85_crit_edge
  %ret.0 = phi i32 [ -110, %for.end72.if.end85_crit_edge ], [ %spec.select, %if.else ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %do.end41, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end41 ], [ %ret.0, %if.end85 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sel_mask) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_rpm_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_rpm_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_rpm_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_rpm_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_rpm_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 188, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %lock = getelementptr inbounds %struct.qcom_rpm, ptr %call.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @qcom_rpm_probe.__key) #7
  %ack = getelementptr inbounds %struct.qcom_rpm, ptr %call.i, i32 0, i32 5
  %1 = ptrtoint ptr %ack to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ack, align 4
  %wait.i = getelementptr inbounds %struct.qcom_rpm, ptr %call.i, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @init_completion.__key) #7
  %call4 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.3) #7
  %ramclk = getelementptr inbounds %struct.qcom_rpm, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %ramclk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %ramclk, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then7:                                         ; preds = %if.end
  %cmp = icmp eq ptr %call4, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.then7.cleanup_crit_edge, label %if.end11

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %ramclk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %ramclk, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end11, %if.end.if.end13_crit_edge
  %4 = ptrtoint ptr %ramclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ramclk, align 4
  %call.i287 = tail call i32 @clk_prepare(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i287)
  %tobool.not.i = icmp eq i32 %call.i287, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end13.clk_prepare_enable.exit_crit_edge

if.end13.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end13
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end13.clk_prepare_enable.exit_crit_edge
  %call16 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %clk_prepare_enable.exit.cleanup_crit_edge, label %if.end19

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %clk_prepare_enable.exit
  %call20 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %call24 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end23.cleanup_crit_edge, label %if.end27

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %call29 = tail call ptr @of_match_device(ptr noundef nonnull @qcom_rpm_of_match, ptr noundef %dev) #7
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.end27.cleanup_crit_edge, label %if.end32

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %data = getelementptr inbounds %struct.of_device_id, ptr %call29, i32 0, i32 3
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %data33 = getelementptr inbounds %struct.qcom_rpm, ptr %call.i, i32 0, i32 11
  %8 = ptrtoint ptr %data33 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %data33, align 4
  %call34 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call36 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call34) #7
  %status_regs = getelementptr inbounds %struct.qcom_rpm, ptr %call.i, i32 0, i32 7
  %9 = ptrtoint ptr %status_regs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call36, ptr %status_regs, align 4
  %cmp.i288 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i288, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call36 to i32
  br label %cleanup

if.end42:                                         ; preds = %if.end32
  %add.ptr = getelementptr i8, ptr %call36, i32 1024
  %ctrl_regs = getelementptr inbounds %struct.qcom_rpm, ptr %call.i, i32 0, i32 8
  %11 = ptrtoint ptr %ctrl_regs to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr, ptr %ctrl_regs, align 4
  %add.ptr45 = getelementptr i8, ptr %call36, i32 1536
  %req_regs = getelementptr inbounds %struct.qcom_rpm, ptr %call.i, i32 0, i32 9
  %12 = ptrtoint ptr %req_regs to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr45, ptr %req_regs, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %15 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i289 = call i32 @__of_parse_phandle_with_args(ptr noundef %14, ptr noundef nonnull @.str.7, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i289)
  %tobool.not.i290 = icmp eq i32 %call.i289, 0
  br i1 %tobool.not.i290, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  br label %do.end52

of_parse_phandle.exit:                            ; preds = %if.end42
  %16 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %tobool48.not = icmp eq ptr %17, null
  br i1 %tobool48.not, label %of_parse_phandle.exit.do.end52_crit_edge, label %if.end54

of_parse_phandle.exit.do.end52_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end52

do.end52:                                         ; preds = %of_parse_phandle.exit.do.end52_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end54:                                         ; preds = %of_parse_phandle.exit
  %call55 = call ptr @syscon_node_to_regmap(ptr noundef nonnull %17) #7
  %ipc_regmap = getelementptr inbounds %struct.qcom_rpm, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %ipc_regmap to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call55, ptr %ipc_regmap, align 4
  call void @of_node_put(ptr noundef nonnull %17) #7
  %19 = ptrtoint ptr %ipc_regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ipc_regmap, align 4
  %cmp.i292 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i292, label %if.then58, label %if.end61

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %20 to i32
  br label %cleanup

if.end61:                                         ; preds = %if.end54
  %22 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node, align 8
  %ipc_offset = getelementptr inbounds %struct.qcom_rpm, ptr %call.i, i32 0, i32 2
  %call64 = call i32 @of_property_read_u32_index(ptr noundef %23, ptr noundef nonnull @.str.7, i32 noundef 1, ptr noundef %ipc_offset) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %do.end69, label %if.end71

do.end69:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #10
  br label %cleanup

if.end71:                                         ; preds = %if.end61
  %24 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node, align 8
  %ipc_bit = getelementptr inbounds %struct.qcom_rpm, ptr %call.i, i32 0, i32 3
  %call74 = call i32 @of_property_read_u32_index(ptr noundef %25, ptr noundef nonnull @.str.7, i32 noundef 2, ptr noundef %ipc_bit) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %do.end79, label %if.end81

do.end79:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  br label %cleanup

if.end81:                                         ; preds = %if.end71
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %26 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %driver_data.i, align 4
  %27 = ptrtoint ptr %status_regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %status_regs, align 4
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #7, !srcloc !129
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  %31 = ptrtoint ptr %status_regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %status_regs, align 4
  %add.ptr90 = getelementptr i8, ptr %32, i32 4
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90) #7, !srcloc !129
  %34 = call i32 @llvm.bswap.i32(i32 %33)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  %35 = ptrtoint ptr %status_regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %status_regs, align 4
  %add.ptr98 = getelementptr i8, ptr %36, i32 8
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98) #7, !srcloc !129
  %38 = call i32 @llvm.bswap.i32(i32 %37)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  %39 = ptrtoint ptr %data33 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data33, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %42)
  %cmp105.not = icmp eq i32 %30, %42
  br i1 %cmp105.not, label %do.body117, label %do.end109

do.end109:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %30, i32 noundef %34, i32 noundef %38, i32 noundef %42) #10
  br label %cleanup

do.body117:                                       ; preds = %if.end81
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  call void @arm_heavy_mb() #7
  %43 = ptrtoint ptr %ctrl_regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ctrl_regs, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %29) #7, !srcloc !128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  call void @arm_heavy_mb() #7
  %45 = ptrtoint ptr %ctrl_regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctrl_regs, align 4
  %add.ptr128 = getelementptr i8, ptr %46, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128, i32 %33) #7, !srcloc !128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  call void @arm_heavy_mb() #7
  %47 = ptrtoint ptr %ctrl_regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctrl_regs, align 4
  %add.ptr134 = getelementptr i8, ptr %48, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134, i32 %37) #7, !srcloc !128
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %30, i32 noundef %34, i32 noundef %38) #10
  %call.i293 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call16, ptr noundef nonnull @qcom_rpm_ack_interrupt, ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.25, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i293)
  %tobool144.not = icmp eq i32 %call.i293, 0
  br i1 %tobool144.not, label %if.end150, label %do.end148

do.end148:                                        ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #10
  br label %cleanup

if.end150:                                        ; preds = %do.body117
  %call151 = call i32 @irq_set_irq_wake(i32 noundef %call16, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.end150.if.end158_crit_edge, label %do.end156

if.end150.if.end158_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end158

do.end156:                                        ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.30) #10
  br label %if.end158

if.end158:                                        ; preds = %do.end156, %if.end150.if.end158_crit_edge
  %call.i294 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call20, ptr noundef nonnull @qcom_rpm_err_interrupt, ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i294)
  %tobool161.not = icmp eq i32 %call.i294, 0
  br i1 %tobool161.not, label %if.end167, label %do.end165

do.end165:                                        ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #10
  br label %cleanup

if.end167:                                        ; preds = %if.end158
  %call.i295 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call24, ptr noundef nonnull @qcom_rpm_wakeup_interrupt, ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i295)
  %tobool170.not = icmp eq i32 %call.i295, 0
  br i1 %tobool170.not, label %if.end176, label %do.end174

do.end174:                                        ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39) #10
  br label %cleanup

if.end176:                                        ; preds = %if.end167
  %call177 = call i32 @irq_set_irq_wake(i32 noundef %call24, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %if.end176.if.end184_crit_edge, label %do.end182

if.end176.if.end184_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end184

do.end182:                                        ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.42) #10
  br label %if.end184

if.end184:                                        ; preds = %do.end182, %if.end176.if.end184_crit_edge
  %49 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %of_node, align 8
  %call188 = call i32 @of_platform_populate(ptr noundef %50, ptr noundef null, ptr noundef null, ptr noundef %dev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end184, %do.end174, %do.end165, %do.end148, %do.end109, %do.end79, %do.end69, %if.then58, %do.end52, %if.then39, %if.end27.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %clk_prepare_enable.exit.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then39 ], [ %21, %if.then58 ], [ -22, %do.end69 ], [ -22, %do.end79 ], [ -14, %do.end109 ], [ %call.i293, %do.end148 ], [ %call.i294, %do.end165 ], [ %call.i295, %do.end174 ], [ %call188, %if.end184 ], [ -19, %do.end52 ], [ -12, %entry.cleanup_crit_edge ], [ -517, %if.then7.cleanup_crit_edge ], [ %call16, %clk_prepare_enable.exit.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ %call24, %if.end23.cleanup_crit_edge ], [ -19, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_rpm_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @of_platform_depopulate(ptr noundef %dev) #7
  %ramclk = getelementptr inbounds %struct.qcom_rpm, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ramclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ramclk, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_rpm_ack_interrupt(i32 noundef %irq, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_regs = getelementptr inbounds %struct.qcom_rpm, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %ctrl_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_regs, align 4
  %data = getelementptr inbounds %struct.qcom_rpm, ptr %dev, i32 0, i32 11
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %ack_ctx_off = getelementptr inbounds %struct.qcom_rpm_data, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %ack_ctx_off to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ack_ctx_off, align 4
  %mul = shl i32 %5, 2
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !129
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %ack_sel_size28 = getelementptr inbounds %struct.qcom_rpm_data, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %ack_sel_size28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ack_sel_size28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp29.not = icmp eq i32 %11, 0
  br i1 %cmp29.not, label %entry.do.body_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %12 = phi ptr [ %18, %for.body.for.body_crit_edge ], [ %9, %entry.for.body_crit_edge ]
  %i.030 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %13 = ptrtoint ptr %ctrl_regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctrl_regs, align 4
  %ack_sel_off = getelementptr inbounds %struct.qcom_rpm_data, ptr %12, i32 0, i32 6
  %15 = ptrtoint ptr %ack_sel_off to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ack_sel_off, align 4
  %add = add i32 %16, %i.030
  %mul4 = shl i32 %add, 2
  %add.ptr5 = getelementptr i8, ptr %14, i32 %mul4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #7, !srcloc !128
  %inc = add nuw i32 %i.030, 1
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %ack_sel_size = getelementptr inbounds %struct.qcom_rpm_data, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %ack_sel_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ack_sel_size, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.body:                                          ; preds = %for.body.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %ctrl_regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctrl_regs, align 4
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %ack_ctx_off8 = getelementptr inbounds %struct.qcom_rpm_data, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %ack_ctx_off8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ack_ctx_off8, align 4
  %mul9 = shl i32 %26, 2
  %add.ptr10 = getelementptr i8, ptr %22, i32 %mul9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #7, !srcloc !128
  %and = and i32 %7, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %do.end13

do.end13:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.45) #10
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %ack_status = getelementptr inbounds %struct.qcom_rpm, ptr %dev, i32 0, i32 10
  %29 = ptrtoint ptr %ack_status to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %7, ptr %ack_status, align 4
  %ack15 = getelementptr inbounds %struct.qcom_rpm, ptr %dev, i32 0, i32 5
  tail call void @complete(ptr noundef %ack15) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end13
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_rpm_err_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ipc_regmap = getelementptr inbounds %struct.qcom_rpm, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %ipc_regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipc_regmap, align 4
  %ipc_offset = getelementptr inbounds %struct.qcom_rpm, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %ipc_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ipc_offset, align 4
  %ipc_bit = getelementptr inbounds %struct.qcom_rpm, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %ipc_bit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ipc_bit, align 4
  %shl = shl nuw i32 1, %5
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %3, i32 noundef %shl) #7
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.47) #10
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qcom_rpm_wakeup_interrupt(i32 noundef %irq, ptr nocapture noundef readnone %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !60, !61, !62, !64, !65, !66, !67, !69, !71, !72, !73, !75, !77, !78, !79, !81, !82, !83, !85, !86, !88, !89, !90, !91, !93, !94, !95, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mfd/qcom_rpm.c", i32 457, i32 6}
!2 = !{ptr @__ksymtab_qcom_rpm_write, !3, !"__ksymtab_qcom_rpm_write", i1 false, i1 false}
!3 = !{!"../drivers/mfd/qcom_rpm.c", i32 490, i32 1}
!4 = !{ptr @__initcall__kmod_qcom_rpm__187_702_qcom_rpm_init3, !5, !"__initcall__kmod_qcom_rpm__187_702_qcom_rpm_init3", i1 false, i1 false}
!5 = !{!"../drivers/mfd/qcom_rpm.c", i32 702, i32 1}
!6 = !{ptr @__exitcall_qcom_rpm_exit, !7, !"__exitcall_qcom_rpm_exit", i1 false, i1 false}
!7 = !{!"../drivers/mfd/qcom_rpm.c", i32 708, i32 1}
!8 = !{ptr @__UNIQUE_ID_description188, !9, !"__UNIQUE_ID_description188", i1 false, i1 false}
!9 = !{!"../drivers/mfd/qcom_rpm.c", i32 710, i32 1}
!10 = !{ptr @__UNIQUE_ID_file189, !11, !"__UNIQUE_ID_file189", i1 false, i1 false}
!11 = !{!"../drivers/mfd/qcom_rpm.c", i32 711, i32 1}
!12 = !{ptr @__UNIQUE_ID_license190, !11, !"__UNIQUE_ID_license190", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author191, !14, !"__UNIQUE_ID_author191", i1 false, i1 false}
!14 = !{!"../drivers/mfd/qcom_rpm.c", i32 712, i32 1}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mfd/qcom_rpm.c", i32 693, i32 12}
!17 = !{ptr @qcom_rpm_driver, !18, !"qcom_rpm_driver", i1 false, i1 false}
!18 = !{!"../drivers/mfd/qcom_rpm.c", i32 689, i32 31}
!19 = !{ptr @qcom_rpm_probe.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/mfd/qcom_rpm.c", i32 546, i32 2}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mfd/qcom_rpm.c", i32 550, i32 41}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mfd/qcom_rpm.c", i32 563, i32 42}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mfd/qcom_rpm.c", i32 567, i32 42}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mfd/qcom_rpm.c", i32 571, i32 45}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mfd/qcom_rpm.c", i32 587, i32 50}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mfd/qcom_rpm.c", i32 589, i32 3}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @qcom_rpm_probe._entry, !33, !"_entry", i1 false, i1 false}
!38 = !{ptr @qcom_rpm_probe._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mfd/qcom_rpm.c", i32 601, i32 3}
!41 = !{ptr @qcom_rpm_probe._entry.12, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @qcom_rpm_probe._entry_ptr.14, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mfd/qcom_rpm.c", i32 608, i32 3}
!45 = !{ptr @qcom_rpm_probe._entry.15, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @qcom_rpm_probe._entry_ptr.17, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mfd/qcom_rpm.c", i32 618, i32 3}
!49 = !{ptr @qcom_rpm_probe._entry.18, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @qcom_rpm_probe._entry_ptr.20, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mfd/qcom_rpm.c", i32 631, i32 2}
!53 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @qcom_rpm_probe._entry.21, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @qcom_rpm_probe._entry_ptr.24, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mfd/qcom_rpm.c", i32 639, i32 11}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mfd/qcom_rpm.c", i32 642, i32 3}
!60 = !{ptr @qcom_rpm_probe._entry.26, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @qcom_rpm_probe._entry_ptr.28, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mfd/qcom_rpm.c", i32 648, i32 3}
!64 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @qcom_rpm_probe._entry.29, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @qcom_rpm_probe._entry_ptr.32, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mfd/qcom_rpm.c", i32 654, i32 11}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mfd/qcom_rpm.c", i32 657, i32 3}
!71 = !{ptr @qcom_rpm_probe._entry.34, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @qcom_rpm_probe._entry_ptr.36, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mfd/qcom_rpm.c", i32 665, i32 11}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mfd/qcom_rpm.c", i32 668, i32 3}
!77 = !{ptr @qcom_rpm_probe._entry.38, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @qcom_rpm_probe._entry_ptr.40, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mfd/qcom_rpm.c", i32 674, i32 3}
!81 = !{ptr @qcom_rpm_probe._entry.41, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @qcom_rpm_probe._entry_ptr.43, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @init_completion.__key, !84, !"__key", i1 false, i1 false}
!84 = !{!"../include/linux/completion.h", i32 87, i32 2}
!85 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mfd/qcom_rpm.c", i32 505, i32 3}
!88 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @qcom_rpm_ack_interrupt._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @qcom_rpm_ack_interrupt._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/mfd/qcom_rpm.c", i32 519, i32 2}
!93 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @qcom_rpm_err_interrupt._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @qcom_rpm_err_interrupt._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @qcom_rpm_of_match, !97, !"qcom_rpm_of_match", i1 false, i1 false}
!97 = !{!"../drivers/mfd/qcom_rpm.c", i32 435, i32 34}
!98 = !{ptr @apq8064_template, !99, !"apq8064_template", i1 false, i1 false}
!99 = !{!"../drivers/mfd/qcom_rpm.c", i32 150, i32 35}
!100 = !{ptr @apq8064_rpm_resource_table, !101, !"apq8064_rpm_resource_table", i1 false, i1 false}
!101 = !{!"../drivers/mfd/qcom_rpm.c", i32 69, i32 39}
!102 = !{ptr @msm8660_template, !103, !"msm8660_template", i1 false, i1 false}
!103 = !{!"../drivers/mfd/qcom_rpm.c", i32 239, i32 35}
!104 = !{ptr @msm8660_rpm_resource_table, !105, !"msm8660_rpm_resource_table", i1 false, i1 false}
!105 = !{!"../drivers/mfd/qcom_rpm.c", i32 162, i32 39}
!106 = !{ptr @msm8960_template, !107, !"msm8960_template", i1 false, i1 false}
!107 = !{!"../drivers/mfd/qcom_rpm.c", i32 327, i32 35}
!108 = !{ptr @msm8960_rpm_resource_table, !109, !"msm8960_rpm_resource_table", i1 false, i1 false}
!109 = !{!"../drivers/mfd/qcom_rpm.c", i32 251, i32 39}
!110 = !{ptr @ipq806x_template, !111, !"ipq806x_template", i1 false, i1 false}
!111 = !{!"../drivers/mfd/qcom_rpm.c", i32 373, i32 35}
!112 = !{ptr @ipq806x_rpm_resource_table, !113, !"ipq806x_rpm_resource_table", i1 false, i1 false}
!113 = !{!"../drivers/mfd/qcom_rpm.c", i32 339, i32 39}
!114 = !{ptr @mdm9615_template, !115, !"mdm9615_template", i1 false, i1 false}
!115 = !{!"../drivers/mfd/qcom_rpm.c", i32 423, i32 35}
!116 = !{ptr @mdm9615_rpm_resource_table, !117, !"mdm9615_rpm_resource_table", i1 false, i1 false}
!117 = !{!"../drivers/mfd/qcom_rpm.c", i32 385, i32 39}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{!"branch_weights", i32 2000, i32 1}
!128 = !{i64 4968044}
!129 = !{i64 4968462}
!130 = !{i64 2153286450}
!131 = !{i64 2153287041}
!132 = !{i64 2153287632}
!133 = !{i64 2153289933}
!134 = !{i64 2153290427}
!135 = !{i64 2153290921}
!136 = !{i64 2153277234}
