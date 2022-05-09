; ModuleID = '/llk/IR_all_yes/drivers/soc/qcom/smd-rpm.c_pt.bc'
source_filename = "../drivers/soc/qcom/smd-rpm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+qcom_rpm_smd_write\22, \22a\22\09"
module asm "\09.weak\09__crc_qcom_rpm_smd_write\09\09\09\09"
module asm "\09.long\09__crc_qcom_rpm_smd_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_rpm_smd_write:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_rpm_smd_write\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_rpm_smd_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rpmsg_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.qcom_smd_rpm = type { ptr, ptr, ptr, %struct.completion, %struct.mutex, i32 }
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
%struct.qcom_rpm_header = type { i32, i32 }
%struct.anon.68 = type { %struct.qcom_rpm_header, %struct.qcom_rpm_request, [0 x i8] }
%struct.qcom_rpm_request = type { i32, i32, i32, i32, i32 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.rpmsg_device = type { %struct.device, %struct.rpmsg_device_id, ptr, i32, i32, ptr, i8, i8, ptr }
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
%struct.rpmsg_device_id = type { [32 x i8], i32 }
%struct.qcom_rpm_message = type { i32, i32, %union.anon.71 }
%union.anon.71 = type { i32 }

@qcom_rpm_smd_write.msg_id = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/soc/qcom/smd-rpm.c\00", [37 x i8] zeroinitializer }, align 32
@__kstrtab_qcom_rpm_smd_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_rpm_smd_write = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_rpm_smd_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_rpm_smd_write to i32), ptr @__kstrtab_qcom_rpm_smd_write, ptr @__kstrtabns_qcom_rpm_smd_write }, section "___ksymtab+qcom_rpm_smd_write", align 4
@__initcall__kmod_smd_rpm__229_268_qcom_smd_rpm_init3 = internal global ptr @qcom_smd_rpm_init, section ".initcall3.init", align 4
@qcom_smd_rpm_driver = internal global { %struct.rpmsg_driver, [36 x i8] } { %struct.rpmsg_driver { %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qcom_smd_rpm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr @qcom_smd_rpm_probe, ptr @qcom_smd_rpm_remove, ptr @qcom_smd_rpm_callback }, [36 x i8] zeroinitializer }, align 32
@__exitcall_qcom_smd_rpm_exit = internal global ptr @qcom_smd_rpm_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author230 = internal constant [64 x i8] c"smd_rpm.author=Bjorn Andersson <bjorn.andersson@sonymobile.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [51 x i8] c"smd_rpm.description=Qualcomm SMD backed RPM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [38 x i8] c"smd_rpm.file=drivers/soc/qcom/smd-rpm\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [23 x i8] c"smd_rpm.license=GPL v2\00", section ".modinfo", align 1
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qcom_smd_rpm\00", [19 x i8] zeroinitializer }, align 32
@qcom_smd_rpm_of_match = internal constant { [17 x %struct.of_device_id], [860 x i8] } { [17 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-apq8084\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-ipq6018\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-msm8226\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-msm8916\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-msm8936\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-msm8953\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-msm8974\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-msm8976\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-msm8994\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-msm8996\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-msm8998\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-sdm660\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-sm6115\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-sm6125\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-qcm2290\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-qcs404\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [860 x i8] zeroinitializer }, align 32
@qcom_smd_rpm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&rpm->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"icc_smd_rpm\00", [20 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@qcom_smd_rpm_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 167, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"invalid request\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qcom_smd_rpm_callback\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_smd_rpm_callback._entry_ptr = internal global ptr @qcom_smd_rpm_callback._entry, section ".printk_index", align 4
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"resource does not exist\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [7 x i8] c"msg_id\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 102, i32 18 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 113, i32 6 }
@___asan_gen_.16 = private unnamed_addr constant [20 x i8] c"qcom_smd_rpm_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 254, i32 28 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 259, i32 12 }
@___asan_gen_.22 = private unnamed_addr constant [22 x i8] c"qcom_smd_rpm_of_match\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 233, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 206, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 213, i32 56 }
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 87, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 167, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [30 x i8] c"../drivers/soc/qcom/smd-rpm.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 182, i32 24 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_qcom_smd_rpm_exit, ptr @__initcall__kmod_smd_rpm__229_268_qcom_smd_rpm_init3, ptr @__ksymtab_qcom_rpm_smd_write, ptr @qcom_smd_rpm_callback._entry, ptr @qcom_smd_rpm_callback._entry_ptr, ptr @qcom_smd_rpm_exit, ptr @qcom_rpm_smd_write.msg_id, ptr @.str, ptr @qcom_smd_rpm_driver, ptr @.str.1, ptr @qcom_smd_rpm_of_match, ptr @qcom_smd_rpm_probe.__key, ptr @.str.2, ptr @.str.3, ptr @init_completion.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_rpm_smd_write.msg_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smd_rpm_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smd_rpm_of_match to i32), i32 3332, i32 4192, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smd_rpm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smd_rpm_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qcom_rpm_smd_write(ptr noundef %rpm, i32 noundef %state, i32 noundef %type, i32 noundef %id, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %count, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add)
  %cmp = icmp ugt i32 %add, 255
  br i1 %cmp, label %do.end, label %if.end8.i, !prof !49

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 113, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end8.i:                                        ; preds = %entry
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #11
  %tobool22.not = icmp eq ptr %call9.i, null
  br i1 %tobool22.not, label %if.end8.i.cleanup_crit_edge, label %if.end24

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %if.end8.i
  %lock = getelementptr inbounds %struct.qcom_smd_rpm, ptr %rpm, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %0 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1919250688, ptr %call9.i, align 128
  %add25 = add nsw i32 %count, 20
  %1 = tail call i32 @llvm.bswap.i32(i32 %add25)
  %length = getelementptr inbounds %struct.qcom_rpm_header, ptr %call9.i, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %length, align 4
  %3 = load i32, ptr @qcom_rpm_smd_write.msg_id, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr @qcom_rpm_smd_write.msg_id, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %req = getelementptr inbounds %struct.anon.68, ptr %call9.i, i32 0, i32 1
  %5 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %req, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %state)
  %flags = getelementptr inbounds %struct.anon.68, ptr %call9.i, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %flags, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %type)
  %type29 = getelementptr inbounds %struct.anon.68, ptr %call9.i, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %type29 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %type29, align 16
  %10 = tail call i32 @llvm.bswap.i32(i32 %id)
  %id31 = getelementptr inbounds %struct.anon.68, ptr %call9.i, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %id31 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %id31, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %count)
  %data_len = getelementptr inbounds %struct.anon.68, ptr %call9.i, i32 0, i32 1, i32 4
  %13 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %data_len, align 8
  %payload = getelementptr inbounds %struct.anon.68, ptr %call9.i, i32 0, i32 2
  %14 = call ptr @memcpy(ptr %payload, ptr %buf, i32 %count)
  %15 = ptrtoint ptr %rpm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rpm, align 4
  %call33 = tail call i32 @rpmsg_send(ptr noundef %16, ptr noundef nonnull %call9.i, i32 noundef %add) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end24.out_crit_edge

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end36:                                         ; preds = %if.end24
  %ack = getelementptr inbounds %struct.qcom_smd_rpm, ptr %rpm, i32 0, i32 3
  %call37 = tail call i32 @wait_for_completion_timeout(ptr noundef %ack, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end36.out_crit_edge, label %if.else

if.end36.out_crit_edge:                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.else:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %ack_status = getelementptr inbounds %struct.qcom_smd_rpm, ptr %rpm, i32 0, i32 5
  %17 = ptrtoint ptr %ack_status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ack_status, align 4
  br label %out

out:                                              ; preds = %if.else, %if.end36.out_crit_edge, %if.end24.out_crit_edge
  %ret.0 = phi i32 [ %call33, %if.end24.out_crit_edge ], [ %18, %if.else ], [ -110, %if.end36.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end8.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %out ], [ -12, %if.end8.i.cleanup_crit_edge ]
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
declare dso_local i32 @rpmsg_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_smd_rpm_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__register_rpmsg_driver(ptr noundef nonnull @qcom_smd_rpm_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_smd_rpm_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unregister_rpmsg_driver(ptr noundef nonnull @qcom_smd_rpm_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_rpmsg_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_rpmsg_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_smd_rpm_probe(ptr noundef %rpdev) #0 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %rpdev, i32 noundef 164, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.qcom_smd_rpm, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @qcom_smd_rpm_probe.__key) #8
  %ack = getelementptr inbounds %struct.qcom_smd_rpm, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %ack to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ack, align 4
  %wait.i = getelementptr inbounds %struct.qcom_smd_rpm, ptr %call.i, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #8
  %dev2 = getelementptr inbounds %struct.qcom_smd_rpm, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %rpdev, ptr %dev2, align 4
  %ept = getelementptr inbounds %struct.rpmsg_device, ptr %rpdev, i32 0, i32 5
  %2 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ept, align 8
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %call.i, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %rpdev, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #8
  %6 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %7 = call ptr @memset(ptr %6, i32 255, i32 48)
  %8 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %rpdev, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %fwnode.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %6, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.3, ptr %name2.i.i, align 4
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %12 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %properties.i.i, align 8
  %14 = call ptr @memset(ptr %res4.i.i, i32 0, i32 16)
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #8
  %icc = getelementptr inbounds %struct.qcom_smd_rpm, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %icc to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i, ptr %icc, align 4
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

if.end11:                                         ; preds = %do.body
  %of_node = getelementptr inbounds %struct.device, ptr %rpdev, i32 0, i32 27
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %call14 = call i32 @of_platform_populate(ptr noundef %18, ptr noundef null, ptr noundef null, ptr noundef %rpdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end11.cleanup_crit_edge, label %if.then16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %icc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %icc, align 4
  call void @platform_device_unregister(ptr noundef %20) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end11.cleanup_crit_edge, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.then8 ], [ -12, %entry.cleanup_crit_edge ], [ %call14, %if.then16 ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_smd_rpm_remove(ptr noundef %rpdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %rpdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %icc = getelementptr inbounds %struct.qcom_smd_rpm, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %icc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %icc, align 4
  tail call void @platform_device_unregister(ptr noundef %3) #8
  tail call void @of_platform_depopulate(ptr noundef %rpdev) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_smd_rpm_callback(ptr nocapture noundef readonly %rpdev, ptr noundef %data, i32 noundef %count, ptr nocapture noundef readnone %priv, i32 noundef %addr) #0 align 64 {
entry:
  %msgbuf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.qcom_rpm_header, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %driver_data.i = getelementptr inbounds %struct.device, ptr %rpdev, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %add.ptr = getelementptr i8, ptr %data, i32 8
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %msgbuf) #8
  %5 = call ptr @memset(ptr %msgbuf, i32 255, i32 32)
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1919250688, i32 %7)
  %cmp.not = icmp ne i32 %7, 1919250688
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %2)
  %cmp2 = icmp ult i32 %2, 12
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp2
  br i1 %or.cond, label %do.end, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %cmp440 = icmp ult ptr %add.ptr, %add.ptr1
  br i1 %cmp440, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev3 = getelementptr inbounds %struct.qcom_smd_rpm, ptr %4, i32 0, i32 2
  %8 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.5) #12
  br label %cleanup

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %status.043 = phi i32 [ %status.1, %sw.epilog.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %buf.041 = phi ptr [ %19, %sw.epilog.while.body_crit_edge ], [ %add.ptr, %while.cond.preheader.while.body_crit_edge ]
  %length5 = getelementptr inbounds %struct.qcom_rpm_message, ptr %buf.041, i32 0, i32 1
  %10 = ptrtoint ptr %length5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length5, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %buf.041 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf.041, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1701999104, i32 %14)
  %cond25 = icmp eq i32 %14, 1701999104
  br i1 %cond25, label %sw.bb, label %while.body.sw.epilog_crit_edge

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i32 %12, 3
  %and = and i32 %add, -4
  %15 = call i32 @llvm.umin.i32(i32 %and, i32 32)
  %16 = getelementptr inbounds %struct.qcom_rpm_message, ptr %buf.041, i32 0, i32 2
  call void @mmiocpy(ptr noundef nonnull %msgbuf, ptr noundef %16, i32 noundef %15) #8
  %sub = add nsw i32 %15, -1
  %arrayidx = getelementptr [32 x i8], ptr %msgbuf, i32 0, i32 %sub
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx, align 1
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(24) %msgbuf, ptr noundef nonnull dereferenceable(24) @.str.9, i32 24) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  %spec.select = select i1 %tobool.not, i32 -6, i32 -22
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %while.body.sw.epilog_crit_edge
  %status.1 = phi i32 [ %status.043, %while.body.sw.epilog_crit_edge ], [ %spec.select, %sw.bb ]
  %add.ptr12 = getelementptr i8, ptr %buf.041, i32 8
  %add.ptr13 = getelementptr i8, ptr %add.ptr12, i32 %12
  %18 = ptrtoint ptr %add.ptr13 to i32
  %add14 = add i32 %18, 3
  %and15 = and i32 %add14, -4
  %19 = inttoptr i32 %and15 to ptr
  %cmp4 = icmp ugt ptr %add.ptr1, %19
  br i1 %cmp4, label %sw.epilog.while.body_crit_edge, label %sw.epilog.while.end_crit_edge

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %status.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %status.1, %sw.epilog.while.end_crit_edge ]
  %ack_status = getelementptr inbounds %struct.qcom_smd_rpm, ptr %4, i32 0, i32 5
  %20 = ptrtoint ptr %ack_status to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %status.0.lcssa, ptr %ack_status, align 4
  %ack = getelementptr inbounds %struct.qcom_smd_rpm, ptr %4, i32 0, i32 3
  call void @complete(ptr noundef %ack) #8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %msgbuf) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !26, !28, !30, !31, !33, !34, !35, !36, !37, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @qcom_rpm_smd_write.msg_id, !1, !"msg_id", i1 false, i1 false}
!1 = !{!"../drivers/soc/qcom/smd-rpm.c", i32 102, i32 18}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/soc/qcom/smd-rpm.c", i32 113, i32 6}
!4 = !{ptr @__ksymtab_qcom_rpm_smd_write, !5, !"__ksymtab_qcom_rpm_smd_write", i1 false, i1 false}
!5 = !{!"../drivers/soc/qcom/smd-rpm.c", i32 147, i32 1}
!6 = !{ptr @__initcall__kmod_smd_rpm__229_268_qcom_smd_rpm_init3, !7, !"__initcall__kmod_smd_rpm__229_268_qcom_smd_rpm_init3", i1 false, i1 false}
!7 = !{!"../drivers/soc/qcom/smd-rpm.c", i32 268, i32 1}
!8 = !{ptr @__exitcall_qcom_smd_rpm_exit, !9, !"__exitcall_qcom_smd_rpm_exit", i1 false, i1 false}
!9 = !{!"../drivers/soc/qcom/smd-rpm.c", i32 274, i32 1}
!10 = !{ptr @__UNIQUE_ID_author230, !11, !"__UNIQUE_ID_author230", i1 false, i1 false}
!11 = !{!"../drivers/soc/qcom/smd-rpm.c", i32 276, i32 1}
!12 = !{ptr @__UNIQUE_ID_description231, !13, !"__UNIQUE_ID_description231", i1 false, i1 false}
!13 = !{!"../drivers/soc/qcom/smd-rpm.c", i32 277, i32 1}
!14 = !{ptr @__UNIQUE_ID_file232, !15, !"__UNIQUE_ID_file232", i1 false, i1 false}
!15 = !{!"../drivers/soc/qcom/smd-rpm.c", i32 278, i32 1}
!16 = !{ptr @__UNIQUE_ID_license233, !15, !"__UNIQUE_ID_license233", i1 false, i1 false}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/soc/qcom/smd-rpm.c", i32 259, i32 12}
!19 = !{ptr @qcom_smd_rpm_driver, !20, !"qcom_smd_rpm_driver", i1 false, i1 false}
!20 = !{!"../drivers/soc/qcom/smd-rpm.c", i32 254, i32 28}
!21 = !{ptr @qcom_smd_rpm_of_match, !22, !"qcom_smd_rpm_of_match", i1 false, i1 false}
!22 = !{!"../drivers/soc/qcom/smd-rpm.c", i32 233, i32 34}
!23 = !{ptr @qcom_smd_rpm_probe.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/soc/qcom/smd-rpm.c", i32 206, i32 2}
!25 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/soc/qcom/smd-rpm.c", i32 213, i32 56}
!28 = !{ptr @init_completion.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../include/linux/completion.h", i32 87, i32 2}
!30 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/soc/qcom/smd-rpm.c", i32 167, i32 3}
!33 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @qcom_smd_rpm_callback._entry, !32, !"_entry", i1 false, i1 false}
!37 = !{ptr @qcom_smd_rpm_callback._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/soc/qcom/smd-rpm.c", i32 182, i32 24}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"branch_weights", i32 1, i32 2000}
