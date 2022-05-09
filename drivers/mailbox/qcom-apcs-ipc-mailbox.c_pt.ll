; ModuleID = '/llk/IR_all_yes/drivers/mailbox/qcom-apcs-ipc-mailbox.c_pt.bc'
source_filename = "../drivers/mailbox/qcom-apcs-ipc-mailbox.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.mbox_chan_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.qcom_apcs_ipc_data = type { i32, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
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
%struct.qcom_apcs_ipc = type { %struct.mbox_controller, [32 x %struct.mbox_chan], ptr, i32, ptr }
%struct.mbox_controller = type { ptr, ptr, ptr, i32, i8, i8, i32, ptr, %struct.hrtimer, %struct.list_head }
%struct.mbox_chan = type { ptr, i32, ptr, %struct.completion, ptr, i32, i32, [20 x ptr], %struct.spinlock, ptr }

@__initcall__kmod_qcom_apcs_ipc_mailbox__183_179_qcom_apcs_ipc_init2 = internal global ptr @qcom_apcs_ipc_init, section ".initcall2.init", align 4
@qcom_apcs_ipc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_apcs_ipc_probe, ptr @qcom_apcs_ipc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qcom_apcs_ipc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qcom_apcs_ipc_exit = internal global ptr @qcom_apcs_ipc_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file184 = internal constant [65 x i8] c"qcom_apcs_ipc_mailbox.file=drivers/mailbox/qcom-apcs-ipc-mailbox\00", section ".modinfo", align 1
@__UNIQUE_ID_license185 = internal constant [37 x i8] c"qcom_apcs_ipc_mailbox.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description186 = internal constant [59 x i8] c"qcom_apcs_ipc_mailbox.description=Qualcomm APCS IPC driver\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qcom_apcs_ipc\00", [18 x i8] zeroinitializer }, align 32
@qcom_apcs_ipc_of_match = internal constant { [19 x %struct.of_device_id], [948 x i8] } { [19 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,ipq6018-apcs-apps-global\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipq6018_apcs_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,ipq8074-apcs-apps-global\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8994_apcs_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8916-apcs-kpss-global\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8916_apcs_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8939-apcs-kpss-global\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8916_apcs_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8953-apcs-kpss-global\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8994_apcs_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8994-apcs-kpss-global\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8994_apcs_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8996-apcs-hmss-global\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8996_apcs_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8998-apcs-hmss-global\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8994_apcs_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,qcm2290-apcs-hmss-global\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8994_apcs_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,qcs404-apcs-apps-global\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8916_apcs_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7180-apss-shared\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @apps_shared_apcs_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc8180x-apss-shared\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @apps_shared_apcs_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm660-apcs-hmss-global\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8994_apcs_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm845-apss-shared\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @apps_shared_apcs_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm6125-apcs-hmss-global\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8994_apcs_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8150-apss-shared\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @apps_shared_apcs_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm6115-apcs-hmss-global\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8994_apcs_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdx55-apcs-gcc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdx55_apcs_data }, %struct.of_device_id zeroinitializer], [948 x i8] zeroinitializer }, align 32
@qcom_apcs_ipc_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@apcs_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 4104, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"qcom_apcs_ipc_mailbox:94:(&apcs_regmap_config)->lock\00", [43 x i8] zeroinitializer }, align 32
@qcom_apcs_ipc_ops = internal constant { %struct.mbox_chan_ops, [40 x i8] } { %struct.mbox_chan_ops { ptr @qcom_apcs_ipc_send_data, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qcom_apcs_ipc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 114, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to register APCS IPC controller\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom_apcs_ipc_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/mailbox/qcom-apcs-ipc-mailbox.c\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_apcs_ipc_probe._entry_ptr = internal global ptr @qcom_apcs_ipc_probe._entry, section ".printk_index", align 4
@qcom_apcs_ipc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 124, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to register APCS clk\0A\00", [35 x i8] zeroinitializer }, align 32
@qcom_apcs_ipc_probe._entry_ptr.9 = internal global ptr @qcom_apcs_ipc_probe._entry.7, section ".printk_index", align 4
@ipq6018_apcs_data = internal constant { %struct.qcom_apcs_ipc_data, [24 x i8] } { %struct.qcom_apcs_ipc_data { i32 8, ptr @.str.10 }, [24 x i8] zeroinitializer }, align 32
@msm8994_apcs_data = internal constant { %struct.qcom_apcs_ipc_data, [24 x i8] } { %struct.qcom_apcs_ipc_data { i32 8, ptr null }, [24 x i8] zeroinitializer }, align 32
@msm8916_apcs_data = internal constant { %struct.qcom_apcs_ipc_data, [24 x i8] } { %struct.qcom_apcs_ipc_data { i32 8, ptr @.str.11 }, [24 x i8] zeroinitializer }, align 32
@msm8996_apcs_data = internal constant { %struct.qcom_apcs_ipc_data, [24 x i8] } { %struct.qcom_apcs_ipc_data { i32 16, ptr null }, [24 x i8] zeroinitializer }, align 32
@apps_shared_apcs_data = internal constant { %struct.qcom_apcs_ipc_data, [24 x i8] } { %struct.qcom_apcs_ipc_data { i32 12, ptr null }, [24 x i8] zeroinitializer }, align 32
@sdx55_apcs_data = internal constant { %struct.qcom_apcs_ipc_data, [24 x i8] } { %struct.qcom_apcs_ipc_data { i32 4104, ptr @.str.12 }, [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qcom,apss-ipq6018-clk\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qcom-apcs-msm8916-clk\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom-sdx55-acps-clk\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [21 x i8] c"qcom_apcs_ipc_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 166, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 170, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [23 x i8] c"qcom_apcs_ipc_of_match\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 143, i32 34 }
@___asan_gen_.22 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [19 x i8] c"apcs_regmap_config\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 56, i32 35 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 94, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [18 x i8] c"qcom_apcs_ipc_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 73, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 114, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 124, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant [18 x i8] c"ipq6018_apcs_data\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 32, i32 40 }
@___asan_gen_.61 = private unnamed_addr constant [18 x i8] c"msm8994_apcs_data\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 40, i32 40 }
@___asan_gen_.64 = private unnamed_addr constant [18 x i8] c"msm8916_apcs_data\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 36, i32 40 }
@___asan_gen_.67 = private unnamed_addr constant [18 x i8] c"msm8996_apcs_data\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 44, i32 40 }
@___asan_gen_.70 = private unnamed_addr constant [22 x i8] c"apps_shared_apcs_data\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 48, i32 40 }
@___asan_gen_.73 = private unnamed_addr constant [16 x i8] c"sdx55_apcs_data\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 52, i32 40 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 33, i32 27 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 37, i32 27 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private constant [43 x i8] c"../drivers/mailbox/qcom-apcs-ipc-mailbox.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 53, i32 32 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_description186, ptr @__UNIQUE_ID_file184, ptr @__UNIQUE_ID_license185, ptr @__exitcall_qcom_apcs_ipc_exit, ptr @__initcall__kmod_qcom_apcs_ipc_mailbox__183_179_qcom_apcs_ipc_init2, ptr @qcom_apcs_ipc_exit, ptr @qcom_apcs_ipc_probe._entry, ptr @qcom_apcs_ipc_probe._entry.7, ptr @qcom_apcs_ipc_probe._entry_ptr, ptr @qcom_apcs_ipc_probe._entry_ptr.9, ptr @qcom_apcs_ipc_driver, ptr @.str, ptr @qcom_apcs_ipc_of_match, ptr @qcom_apcs_ipc_probe._key, ptr @apcs_regmap_config, ptr @.str.1, ptr @qcom_apcs_ipc_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @ipq6018_apcs_data, ptr @msm8994_apcs_data, ptr @msm8916_apcs_data, ptr @msm8996_apcs_data, ptr @apps_shared_apcs_data, ptr @sdx55_apcs_data, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_apcs_ipc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_apcs_ipc_of_match to i32), i32 3724, i32 4672, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_apcs_ipc_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apcs_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_apcs_ipc_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_apcs_ipc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_apcs_ipc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq6018_apcs_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8994_apcs_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_apcs_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_apcs_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apps_shared_apcs_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdx55_apcs_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_apcs_ipc_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_apcs_ipc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_apcs_ipc_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_apcs_ipc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_apcs_ipc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 6760, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call7 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call1, ptr noundef nonnull @apcs_regmap_config, ptr noundef nonnull @qcom_apcs_ipc_probe._key, ptr noundef nonnull @.str.1) #5
  %cmp.i79 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %call13 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #5
  %regmap14 = getelementptr inbounds %struct.qcom_apcs_ipc, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %regmap14 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7, ptr %regmap14, align 8
  %3 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call13, align 4
  %offset15 = getelementptr inbounds %struct.qcom_apcs_ipc, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %offset15 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %offset15, align 4
  %con_priv = getelementptr %struct.qcom_apcs_ipc, ptr %call.i, i32 0, i32 1, i32 0, i32 9
  %6 = ptrtoint ptr %con_priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %con_priv, align 4
  %con_priv.1 = getelementptr %struct.qcom_apcs_ipc, ptr %call.i, i32 0, i32 1, i32 1, i32 9
  %7 = ptrtoint ptr %con_priv.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 1 to ptr), ptr %con_priv.1, align 4
  %con_priv.2 = getelementptr %struct.qcom_apcs_ipc, ptr %call.i, i32 0, i32 1, i32 2, i32 9
  %8 = ptrtoint ptr %con_priv.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 2 to ptr), ptr %con_priv.2, align 4
  %con_priv.3 = getelementptr %struct.qcom_apcs_ipc, ptr %call.i, i32 0, i32 1, i32 3, i32 9
  %9 = ptrtoint ptr %con_priv.3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 3 to ptr), ptr %con_priv.3, align 4
  %con_priv.4 = getelementptr %struct.qcom_apcs_ipc, ptr %call.i, i32 0, i32 1, i32 4, i32 9
  %10 = ptrtoint ptr %con_priv.4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 4 to ptr), ptr %con_priv.4, align 4
  %con_priv.5 = getelementptr %struct.qcom_apcs_ipc, ptr %call.i, i32 0, i32 1, i32 5, i32 9
  %11 = ptrtoint ptr %con_priv.5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 5 to ptr), ptr %con_priv.5, align 4
  %con_priv.6 = getelementptr %struct.qcom_apcs_ipc, ptr %call.i, i32 0, i32 1, i32 6, i32 9
  %12 = ptrtoint ptr %con_priv.6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 6 to ptr), ptr %con_priv.6, align 4
  %con_priv.7 = getelementptr %struct.qcom_apcs_ipc, ptr %call.i, i32 0, i32 1, i32 7, i32 9
  %13 = ptrtoint ptr %con_priv.7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 7 to ptr), ptr %con_priv.7, align 4
  %con_priv.8 = getelementptr %struct.qcom_apcs_ipc, ptr %call.i, i32 0, i32 1, i32 8, i32 9
  %14 = ptrtoint ptr %con_priv.8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 8 to ptr), ptr %con_priv.8, align 4
  %con_priv.9 = getelementptr %struct.qcom_apcs_ipc, ptr %call.i, i32 0, i32 1, i32 9, i32 9
  %15 = ptrtoint ptr %con_priv.9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 9 to ptr), ptr %con_priv.9, align 4
  %con_priv.10 = getelementptr %struct.qcom_apcs_ipc, ptr %call.i, i32 0, i32 1, i32 10, i32 9
  %16 = ptrtoint ptr %con_priv.10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 10 to ptr), ptr %con_priv.10, align 4
  %con_priv.11 = getelementptr %struct.qcom_apcs_ipc, ptr %call.i, i32 0, i32 1, i32 11, i32 9
  %17 = ptrtoint ptr %con_priv.11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 11 to ptr), ptr %con_priv.11, align 4
  %con_priv.12 = getelementptr %struct.qcom_apcs_ipc, ptr %call.i, i32 0, i32 1, i32 12, i32 9
  %18 = ptrtoint ptr %con_priv.12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 12 to ptr), ptr %con_priv.12, align 4
  %con_priv.13 = getelementptr %struct.qcom_apcs_ipc, ptr %call.i, i32 0, i32 1, i32 13, i32 9
  %19 = ptrtoint ptr %con_priv.13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 13 to ptr), ptr %con_priv.13, align 4
  %con_priv.14 = getelementptr %struct.qcom_apcs_ipc, ptr %call.i, i32 0, i32 1, i32 14, i32 9
  %20 = ptrtoint ptr %con_priv.14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 14 to ptr), ptr %con_priv.14, align 4
  %con_priv.15 = getelementptr %struct.qcom_apcs_ipc, ptr %call.i, i32 0, i32 1, i32 15, i32 9
  %21 = ptrtoint ptr %con_priv.15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 15 to ptr), ptr %con_priv.15, align 4
  %con_priv.16 = getelementptr %struct.qcom_apcs_ipc, ptr %call.i, i32 0, i32 1, i32 16, i32 9
  %22 = ptrtoint ptr %con_priv.16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 16 to ptr), ptr %con_priv.16, align 4
  %con_priv.17 = getelementptr %struct.qcom_apcs_ipc, ptr %call.i, i32 0, i32 1, i32 17, i32 9
  %23 = ptrtoint ptr %con_priv.17 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 17 to ptr), ptr %con_priv.17, align 4
  %con_priv.18 = getelementptr %struct.qcom_apcs_ipc, ptr %call.i, i32 0, i32 1, i32 18, i32 9
  %24 = ptrtoint ptr %con_priv.18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 18 to ptr), ptr %con_priv.18, align 4
  %con_priv.19 = getelementptr %struct.qcom_apcs_ipc, ptr %call.i, i32 0, i32 1, i32 19, i32 9
  %25 = ptrtoint ptr %con_priv.19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 19 to ptr), ptr %con_priv.19, align 4
  %con_priv.20 = getelementptr %struct.qcom_apcs_ipc, ptr %call.i, i32 0, i32 1, i32 20, i32 9
  %26 = ptrtoint ptr %con_priv.20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 20 to ptr), ptr %con_priv.20, align 4
  %con_priv.21 = getelementptr %struct.qcom_apcs_ipc, ptr %call.i, i32 0, i32 1, i32 21, i32 9
  %27 = ptrtoint ptr %con_priv.21 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 21 to ptr), ptr %con_priv.21, align 4
  %con_priv.22 = getelementptr %struct.qcom_apcs_ipc, ptr %call.i, i32 0, i32 1, i32 22, i32 9
  %28 = ptrtoint ptr %con_priv.22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 22 to ptr), ptr %con_priv.22, align 4
  %con_priv.23 = getelementptr %struct.qcom_apcs_ipc, ptr %call.i, i32 0, i32 1, i32 23, i32 9
  %29 = ptrtoint ptr %con_priv.23 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 23 to ptr), ptr %con_priv.23, align 4
  %con_priv.24 = getelementptr %struct.qcom_apcs_ipc, ptr %call.i, i32 0, i32 1, i32 24, i32 9
  %30 = ptrtoint ptr %con_priv.24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 24 to ptr), ptr %con_priv.24, align 4
  %con_priv.25 = getelementptr %struct.qcom_apcs_ipc, ptr %call.i, i32 0, i32 1, i32 25, i32 9
  %31 = ptrtoint ptr %con_priv.25 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 25 to ptr), ptr %con_priv.25, align 4
  %con_priv.26 = getelementptr %struct.qcom_apcs_ipc, ptr %call.i, i32 0, i32 1, i32 26, i32 9
  %32 = ptrtoint ptr %con_priv.26 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 26 to ptr), ptr %con_priv.26, align 4
  %con_priv.27 = getelementptr %struct.qcom_apcs_ipc, ptr %call.i, i32 0, i32 1, i32 27, i32 9
  %33 = ptrtoint ptr %con_priv.27 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 27 to ptr), ptr %con_priv.27, align 4
  %con_priv.28 = getelementptr %struct.qcom_apcs_ipc, ptr %call.i, i32 0, i32 1, i32 28, i32 9
  %34 = ptrtoint ptr %con_priv.28 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 28 to ptr), ptr %con_priv.28, align 4
  %con_priv.29 = getelementptr %struct.qcom_apcs_ipc, ptr %call.i, i32 0, i32 1, i32 29, i32 9
  %35 = ptrtoint ptr %con_priv.29 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 29 to ptr), ptr %con_priv.29, align 4
  %con_priv.30 = getelementptr %struct.qcom_apcs_ipc, ptr %call.i, i32 0, i32 1, i32 30, i32 9
  %36 = ptrtoint ptr %con_priv.30 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 30 to ptr), ptr %con_priv.30, align 4
  %con_priv.31 = getelementptr %struct.qcom_apcs_ipc, ptr %call.i, i32 0, i32 1, i32 31, i32 9
  %37 = ptrtoint ptr %con_priv.31 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 31 to ptr), ptr %con_priv.31, align 4
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %dev, ptr %call.i, align 8
  %ops = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 1
  %39 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @qcom_apcs_ipc_ops, ptr %ops, align 4
  %mbox_chans19 = getelementptr inbounds %struct.qcom_apcs_ipc, ptr %call.i, i32 0, i32 1
  %chans = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 2
  %40 = ptrtoint ptr %chans to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %mbox_chans19, ptr %chans, align 8
  %num_chans = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 3
  %41 = ptrtoint ptr %num_chans to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 32, ptr %num_chans, align 4
  %call24 = tail call i32 @devm_mbox_controller_register(ptr noundef %dev, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end28, label %do.end

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end28:                                         ; preds = %if.end11
  %clk_name = getelementptr inbounds %struct.qcom_apcs_ipc_data, ptr %call13, i32 0, i32 1
  %42 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clk_name, align 4
  %tobool29.not = icmp eq ptr %43, null
  br i1 %tobool29.not, label %if.end28.if.end42_crit_edge, label %if.then30

if.end28.if.end42_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then30:                                        ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #5
  %44 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %45 = call ptr @memset(ptr %44, i32 255, i32 48)
  %46 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %dev, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %fwnode.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %44, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %49 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %43, ptr %name2.i.i, align 4
  %id3.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 4
  %50 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -2, ptr %id3.i.i, align 8
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %51 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %52 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %properties.i.i, align 8
  %53 = call ptr @memset(ptr %res4.i.i, i32 0, i32 16)
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #5
  %clk = getelementptr inbounds %struct.qcom_apcs_ipc, ptr %call.i, i32 0, i32 4
  %54 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i.i, ptr %clk, align 8
  %cmp.i80 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i80, label %do.end39, label %if.then30.if.end42_crit_edge

if.then30.if.end42_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

do.end39:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #8
  br label %if.end42

if.end42:                                         ; preds = %do.end39, %if.then30.if.end42_crit_edge, %if.end28.if.end42_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %55 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %do.end, %if.then9, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then3 ], [ %1, %if.then9 ], [ %call24, %do.end ], [ 0, %if.end42 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_apcs_ipc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk1 = getelementptr inbounds %struct.qcom_apcs_ipc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk1, align 8
  tail call void @platform_device_unregister(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mbox_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_apcs_ipc_send_data(ptr nocapture noundef readonly %chan, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %2 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %con_priv, align 4
  %4 = ptrtoint ptr %3 to i32
  %regmap = getelementptr inbounds %struct.qcom_apcs_ipc, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 8
  %offset = getelementptr inbounds %struct.qcom_apcs_ipc, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset, align 4
  %shl = shl nuw i32 1, %4
  %call = tail call i32 @regmap_write(ptr noundef %6, i32 noundef %8, i32 noundef %shl) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__initcall__kmod_qcom_apcs_ipc_mailbox__183_179_qcom_apcs_ipc_init2, !1, !"__initcall__kmod_qcom_apcs_ipc_mailbox__183_179_qcom_apcs_ipc_init2", i1 false, i1 false}
!1 = !{!"../drivers/mailbox/qcom-apcs-ipc-mailbox.c", i32 179, i32 1}
!2 = !{ptr @__exitcall_qcom_apcs_ipc_exit, !3, !"__exitcall_qcom_apcs_ipc_exit", i1 false, i1 false}
!3 = !{!"../drivers/mailbox/qcom-apcs-ipc-mailbox.c", i32 185, i32 1}
!4 = !{ptr @__UNIQUE_ID_file184, !5, !"__UNIQUE_ID_file184", i1 false, i1 false}
!5 = !{!"../drivers/mailbox/qcom-apcs-ipc-mailbox.c", i32 187, i32 1}
!6 = !{ptr @__UNIQUE_ID_license185, !5, !"__UNIQUE_ID_license185", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description186, !8, !"__UNIQUE_ID_description186", i1 false, i1 false}
!8 = !{!"../drivers/mailbox/qcom-apcs-ipc-mailbox.c", i32 188, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/mailbox/qcom-apcs-ipc-mailbox.c", i32 170, i32 11}
!11 = !{ptr @qcom_apcs_ipc_driver, !12, !"qcom_apcs_ipc_driver", i1 false, i1 false}
!12 = !{!"../drivers/mailbox/qcom-apcs-ipc-mailbox.c", i32 166, i32 31}
!13 = !{ptr @qcom_apcs_ipc_probe._key, !14, !"_key", i1 false, i1 false}
!14 = !{!"../drivers/mailbox/qcom-apcs-ipc-mailbox.c", i32 94, i32 11}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mailbox/qcom-apcs-ipc-mailbox.c", i32 114, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @qcom_apcs_ipc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @qcom_apcs_ipc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mailbox/qcom-apcs-ipc-mailbox.c", i32 124, i32 4}
!26 = !{ptr @qcom_apcs_ipc_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @qcom_apcs_ipc_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @apcs_regmap_config, !29, !"apcs_regmap_config", i1 false, i1 false}
!29 = !{!"../drivers/mailbox/qcom-apcs-ipc-mailbox.c", i32 56, i32 35}
!30 = !{ptr @qcom_apcs_ipc_ops, !31, !"qcom_apcs_ipc_ops", i1 false, i1 false}
!31 = !{!"../drivers/mailbox/qcom-apcs-ipc-mailbox.c", i32 73, i32 35}
!32 = !{ptr @qcom_apcs_ipc_of_match, !33, !"qcom_apcs_ipc_of_match", i1 false, i1 false}
!33 = !{!"../drivers/mailbox/qcom-apcs-ipc-mailbox.c", i32 143, i32 34}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mailbox/qcom-apcs-ipc-mailbox.c", i32 33, i32 27}
!36 = !{ptr @ipq6018_apcs_data, !37, !"ipq6018_apcs_data", i1 false, i1 false}
!37 = !{!"../drivers/mailbox/qcom-apcs-ipc-mailbox.c", i32 32, i32 40}
!38 = !{ptr @msm8994_apcs_data, !39, !"msm8994_apcs_data", i1 false, i1 false}
!39 = !{!"../drivers/mailbox/qcom-apcs-ipc-mailbox.c", i32 40, i32 40}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mailbox/qcom-apcs-ipc-mailbox.c", i32 37, i32 27}
!42 = !{ptr @msm8916_apcs_data, !43, !"msm8916_apcs_data", i1 false, i1 false}
!43 = !{!"../drivers/mailbox/qcom-apcs-ipc-mailbox.c", i32 36, i32 40}
!44 = !{ptr @msm8996_apcs_data, !45, !"msm8996_apcs_data", i1 false, i1 false}
!45 = !{!"../drivers/mailbox/qcom-apcs-ipc-mailbox.c", i32 44, i32 40}
!46 = !{ptr @apps_shared_apcs_data, !47, !"apps_shared_apcs_data", i1 false, i1 false}
!47 = !{!"../drivers/mailbox/qcom-apcs-ipc-mailbox.c", i32 48, i32 40}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mailbox/qcom-apcs-ipc-mailbox.c", i32 53, i32 32}
!50 = !{ptr @sdx55_apcs_data, !51, !"sdx55_apcs_data", i1 false, i1 false}
!51 = !{!"../drivers/mailbox/qcom-apcs-ipc-mailbox.c", i32 52, i32 40}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
