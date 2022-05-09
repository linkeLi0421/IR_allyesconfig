; ModuleID = '/llk/IR_all_yes/drivers/remoteproc/qcom_q6v5_pas.c_pt.bc'
source_filename = "../drivers/remoteproc/qcom_q6v5_pas.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rproc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.adsp_data = type { i32, ptr, i32, i32, i8, i8, ptr, ptr, ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.rproc = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.device, %struct.atomic_t, i32, i32, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, %struct.list_head, i64, %struct.list_head, %struct.list_head, %struct.idr, i32, %struct.work_struct, i32, i8, i32, ptr, ptr, ptr, i32, i8, i8, %struct.list_head, i32, i8, i16, %struct.cdev, i8 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.qcom_adsp = type { ptr, ptr, %struct.qcom_q6v5, ptr, ptr, ptr, ptr, [3 x ptr], i32, i32, i32, i32, i8, ptr, %struct.completion, %struct.completion, i32, i32, ptr, i32, %struct.qcom_rproc_glink, %struct.qcom_rproc_subdev, %struct.qcom_rproc_ssr, ptr }
%struct.qcom_q6v5 = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i8, %struct.completion, %struct.completion, i32, i8, ptr, ptr }
%struct.qcom_rproc_glink = type { %struct.rproc_subdev, ptr, ptr, ptr, ptr }
%struct.rproc_subdev = type { %struct.list_head, ptr, ptr, ptr, ptr }
%struct.qcom_rproc_subdev = type { %struct.rproc_subdev, ptr, ptr, ptr }
%struct.qcom_rproc_ssr = type { %struct.rproc_subdev, ptr }

@__initcall__kmod_qcom_q6v5_pas__289_869_adsp_driver_init6 = internal global ptr @adsp_driver_init, section ".initcall6.init", align 4
@adsp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @adsp_probe, ptr @adsp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adsp_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_adsp_driver_exit = internal global ptr @adsp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description290 = internal constant [87 x i8] c"qcom_q6v5_pas.description=Qualcomm Hexagon v5 Peripheral Authentication Service driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [52 x i8] c"qcom_q6v5_pas.file=drivers/remoteproc/qcom_q6v5_pas\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [29 x i8] c"qcom_q6v5_pas.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qcom_q6v5_pas\00", [18 x i8] zeroinitializer }, align 32
@adsp_of_match = internal constant { [32 x %struct.of_device_id], [1568 x i8] } { [32 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8974-adsp-pil\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @adsp_resource_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8996-adsp-pil\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8996_adsp_resource }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8996-slpi-pil\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @slpi_resource_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8998-adsp-pas\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8996_adsp_resource }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8998-slpi-pas\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @slpi_resource_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,qcs404-adsp-pas\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @adsp_resource_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,qcs404-cdsp-pas\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cdsp_resource_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,qcs404-wcss-pas\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wcss_resource_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7180-mpss-pas\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mpss_resource_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7280-mpss-pas\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mpss_resource_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc8180x-adsp-pas\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8150_adsp_resource }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc8180x-cdsp-pas\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8150_cdsp_resource }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc8180x-mpss-pas\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc8180x_mpss_resource }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm660-adsp-pas\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @adsp_resource_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm845-adsp-pas\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdm845_adsp_resource_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm845-cdsp-pas\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdm845_cdsp_resource_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdx55-mpss-pas\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdx55_mpss_resource }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm6350-adsp-pas\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm6350_adsp_resource }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm6350-cdsp-pas\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm6350_cdsp_resource }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm6350-mpss-pas\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mpss_resource_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8150-adsp-pas\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8150_adsp_resource }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8150-cdsp-pas\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8150_cdsp_resource }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8150-mpss-pas\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mpss_resource_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8150-slpi-pas\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8150_slpi_resource }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8250-adsp-pas\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8250_adsp_resource }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8250-cdsp-pas\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8250_cdsp_resource }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8250-slpi-pas\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8250_slpi_resource }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8350-adsp-pas\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8350_adsp_resource }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8350-cdsp-pas\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8350_cdsp_resource }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8350-slpi-pas\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8350_slpi_resource }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8350-mpss-pas\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mpss_resource_init }, %struct.of_device_id zeroinitializer], [1568 x i8] zeroinitializer }, align 32
@adsp_ops = internal constant { %struct.rproc_ops, [60 x i8] } { %struct.rproc_ops { ptr null, ptr null, ptr @adsp_start, ptr @adsp_stop, ptr null, ptr null, ptr null, ptr @adsp_da_to_va, ptr @qcom_register_dump_segments, ptr null, ptr null, ptr null, ptr @adsp_load, ptr null, ptr null, ptr @adsp_panic, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"firmware-name\00", [18 x i8] zeroinitializer }, align 32
@adsp_minidump_ops = internal constant { %struct.rproc_ops, [60 x i8] } { %struct.rproc_ops { ptr null, ptr null, ptr @adsp_start, ptr @adsp_stop, ptr null, ptr null, ptr null, ptr @adsp_da_to_va, ptr null, ptr null, ptr null, ptr null, ptr @adsp_load, ptr null, ptr null, ptr @adsp_panic, ptr @adsp_minidump }, [60 x i8] zeroinitializer }, align 32
@adsp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 422, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to allocate remoteproc\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"adsp_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/remoteproc/qcom_q6v5_pas.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adsp_probe._entry_ptr = internal global ptr @adsp_probe._entry, section ".printk_index", align 4
@adsp_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 177, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to authenticate image and release reset\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"adsp_start\00", [21 x i8] zeroinitializer }, align 32
@adsp_start._entry_ptr = internal global ptr @adsp_start._entry, section ".printk_index", align 4
@adsp_start._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.4, i32 183, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"start timed out\0A\00", [47 x i8] zeroinitializer }, align 32
@adsp_start._entry_ptr.11 = internal global ptr @adsp_start._entry.9, section ".printk_index", align 4
@adsp_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 225, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"timed out on wait\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"adsp_stop\00", [22 x i8] zeroinitializer }, align 32
@adsp_stop._entry_ptr = internal global ptr @adsp_stop._entry, section ".printk_index", align 4
@adsp_stop._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.4, i32 229, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to shutdown: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@adsp_stop._entry_ptr.16 = internal global ptr @adsp_stop._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"memory-region\00", [18 x i8] zeroinitializer }, align 32
@adsp_alloc_memory_region._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 374, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no memory-region specified\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"adsp_alloc_memory_region\00", [39 x i8] zeroinitializer }, align 32
@adsp_alloc_memory_region._entry_ptr = internal global ptr @adsp_alloc_memory_region._entry, section ".printk_index", align 4
@adsp_alloc_memory_region._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.4, i32 387, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unable to map memory region: %pa+%zx\0A\00", [58 x i8] zeroinitializer }, align 32
@adsp_alloc_memory_region._entry_ptr.22 = internal global ptr @adsp_alloc_memory_region._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"xo\00", [29 x i8] zeroinitializer }, align 32
@adsp_init_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 283, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get xo clock\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"adsp_init_clock\00", [16 x i8] zeroinitializer }, align 32
@adsp_init_clock._entry_ptr = internal global ptr @adsp_init_clock._entry, section ".printk_index", align 4
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"aggre2\00", [25 x i8] zeroinitializer }, align 32
@adsp_init_clock._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.4, i32 293, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get aggre2 clock\00", [37 x i8] zeroinitializer }, align 32
@adsp_init_clock._entry_ptr.29 = internal global ptr @adsp_init_clock._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"cx\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"px\00", [29 x i8] zeroinitializer }, align 32
@adsp_resource_init = internal constant { %struct.adsp_data, [56 x i8] } { %struct.adsp_data { i32 423, ptr @.str.32, i32 1, i32 0, i8 0, i8 1, ptr null, ptr null, ptr @.str.33, ptr @.str.34, i32 20 }, [56 x i8] zeroinitializer }, align 32
@msm8996_adsp_resource = internal constant { %struct.adsp_data, [56 x i8] } { %struct.adsp_data { i32 423, ptr @.str.32, i32 1, i32 0, i8 0, i8 1, ptr @.compoundliteral, ptr null, ptr @.str.33, ptr @.str.34, i32 20 }, [56 x i8] zeroinitializer }, align 32
@slpi_resource_init = internal constant { %struct.adsp_data, [56 x i8] } { %struct.adsp_data { i32 424, ptr @.str.35, i32 12, i32 0, i8 1, i8 1, ptr @.compoundliteral.37, ptr null, ptr @.str.38, ptr @.str.39, i32 22 }, [56 x i8] zeroinitializer }, align 32
@cdsp_resource_init = internal constant { %struct.adsp_data, [56 x i8] } { %struct.adsp_data { i32 601, ptr @.str.40, i32 18, i32 0, i8 0, i8 1, ptr null, ptr null, ptr @.str.41, ptr @.str.41, i32 23 }, [56 x i8] zeroinitializer }, align 32
@wcss_resource_init = internal constant { %struct.adsp_data, [56 x i8] } { %struct.adsp_data { i32 421, ptr @.str.42, i32 6, i32 0, i8 0, i8 1, ptr null, ptr null, ptr @.str.43, ptr @.str.44, i32 18 }, [56 x i8] zeroinitializer }, align 32
@mpss_resource_init = internal constant { %struct.adsp_data, [56 x i8] } { %struct.adsp_data { i32 421, ptr @.str.45, i32 4, i32 3, i8 0, i8 0, ptr @.compoundliteral.47, ptr @.str.48, ptr @.str.43, ptr @.str.48, i32 18 }, [56 x i8] zeroinitializer }, align 32
@sm8150_adsp_resource = internal constant { %struct.adsp_data, [56 x i8] } { %struct.adsp_data { i32 423, ptr @.str.32, i32 1, i32 0, i8 0, i8 1, ptr @.compoundliteral.49, ptr @.str.34, ptr @.str.33, ptr @.str.34, i32 20 }, [56 x i8] zeroinitializer }, align 32
@sm8150_cdsp_resource = internal constant { %struct.adsp_data, [56 x i8] } { %struct.adsp_data { i32 601, ptr @.str.40, i32 18, i32 0, i8 0, i8 1, ptr @.compoundliteral.50, ptr @.str.41, ptr @.str.41, ptr @.str.41, i32 23 }, [56 x i8] zeroinitializer }, align 32
@sc8180x_mpss_resource = internal constant { %struct.adsp_data, [56 x i8] } { %struct.adsp_data { i32 421, ptr @.str.45, i32 4, i32 0, i8 0, i8 0, ptr @.compoundliteral.51, ptr @.str.48, ptr @.str.43, ptr @.str.48, i32 18 }, [56 x i8] zeroinitializer }, align 32
@sdm845_adsp_resource_init = internal constant { %struct.adsp_data, [56 x i8] } { %struct.adsp_data { i32 423, ptr @.str.32, i32 1, i32 0, i8 0, i8 1, ptr null, ptr @.str.34, ptr @.str.33, ptr @.str.34, i32 20 }, [56 x i8] zeroinitializer }, align 32
@sdm845_cdsp_resource_init = internal constant { %struct.adsp_data, [56 x i8] } { %struct.adsp_data { i32 601, ptr @.str.40, i32 18, i32 0, i8 0, i8 1, ptr null, ptr @.str.41, ptr @.str.41, ptr @.str.41, i32 23 }, [56 x i8] zeroinitializer }, align 32
@sdx55_mpss_resource = internal constant { %struct.adsp_data, [56 x i8] } { %struct.adsp_data { i32 421, ptr @.str.45, i32 4, i32 0, i8 0, i8 1, ptr @.compoundliteral.52, ptr null, ptr @.str.43, ptr @.str.48, i32 34 }, [56 x i8] zeroinitializer }, align 32
@sm6350_adsp_resource = internal constant { %struct.adsp_data, [56 x i8] } { %struct.adsp_data { i32 423, ptr @.str.32, i32 1, i32 0, i8 0, i8 1, ptr @.compoundliteral.55, ptr @.str.34, ptr @.str.33, ptr @.str.34, i32 20 }, [56 x i8] zeroinitializer }, align 32
@sm6350_cdsp_resource = internal constant { %struct.adsp_data, [56 x i8] } { %struct.adsp_data { i32 601, ptr @.str.40, i32 18, i32 0, i8 0, i8 1, ptr @.compoundliteral.57, ptr @.str.41, ptr @.str.41, ptr @.str.41, i32 23 }, [56 x i8] zeroinitializer }, align 32
@sm8150_slpi_resource = internal constant { %struct.adsp_data, [56 x i8] } { %struct.adsp_data { i32 424, ptr @.str.35, i32 12, i32 0, i8 0, i8 1, ptr @.compoundliteral.58, ptr @.str.39, ptr @.str.38, ptr @.str.39, i32 22 }, [56 x i8] zeroinitializer }, align 32
@sm8250_adsp_resource = internal constant { %struct.adsp_data, [56 x i8] } { %struct.adsp_data { i32 423, ptr @.str.32, i32 1, i32 0, i8 0, i8 1, ptr @.compoundliteral.59, ptr @.str.34, ptr @.str.33, ptr @.str.34, i32 20 }, [56 x i8] zeroinitializer }, align 32
@sm8250_cdsp_resource = internal constant { %struct.adsp_data, [56 x i8] } { %struct.adsp_data { i32 601, ptr @.str.40, i32 18, i32 0, i8 0, i8 1, ptr @.compoundliteral.60, ptr @.str.41, ptr @.str.41, ptr @.str.41, i32 23 }, [56 x i8] zeroinitializer }, align 32
@sm8250_slpi_resource = internal constant { %struct.adsp_data, [56 x i8] } { %struct.adsp_data { i32 424, ptr @.str.35, i32 12, i32 0, i8 0, i8 1, ptr @.compoundliteral.61, ptr @.str.39, ptr @.str.38, ptr @.str.39, i32 22 }, [56 x i8] zeroinitializer }, align 32
@sm8350_adsp_resource = internal constant { %struct.adsp_data, [56 x i8] } { %struct.adsp_data { i32 423, ptr @.str.32, i32 1, i32 0, i8 0, i8 1, ptr @.compoundliteral.62, ptr @.str.34, ptr @.str.33, ptr @.str.34, i32 20 }, [56 x i8] zeroinitializer }, align 32
@sm8350_cdsp_resource = internal constant { %struct.adsp_data, [56 x i8] } { %struct.adsp_data { i32 601, ptr @.str.40, i32 18, i32 0, i8 0, i8 1, ptr @.compoundliteral.64, ptr @.str.41, ptr @.str.41, ptr @.str.41, i32 23 }, [56 x i8] zeroinitializer }, align 32
@sm8350_slpi_resource = internal constant { %struct.adsp_data, [56 x i8] } { %struct.adsp_data { i32 424, ptr @.str.35, i32 12, i32 0, i8 0, i8 1, ptr @.compoundliteral.65, ptr @.str.39, ptr @.str.38, ptr @.str.39, i32 22 }, [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"adsp.mdt\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lpass\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adsp\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.30, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"slpi.mdt\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ssc_cx\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.36, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dsps\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"slpi\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cdsp.mdt\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cdsp\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wcnss.mdt\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpss\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wcnss\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"modem.mdt\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mss\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.30, ptr @.str.46, ptr null], [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"modem\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.30, ptr null], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.30, ptr null], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.30, ptr null], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.30, ptr @.str.46, ptr null], [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lcx\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lmx\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.53, ptr @.str.54, ptr null], [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mx\00", [29 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.30, ptr @.str.56, ptr null], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.58 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.53, ptr @.str.54, ptr null], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.53, ptr @.str.54, ptr null], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.60 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.30, ptr null], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.53, ptr @.str.54, ptr null], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.62 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.53, ptr @.str.54, ptr null], [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mxc\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.30, ptr @.str.63, ptr null], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.53, ptr @.str.54, ptr null], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.66 = private unnamed_addr constant [12 x i8] c"adsp_driver\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 860, i32 31 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 864, i32 11 }
@___asan_gen_.72 = private unnamed_addr constant [14 x i8] c"adsp_of_match\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 824, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant [9 x i8] c"adsp_ops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 257, i32 31 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 411, i32 51 }
@___asan_gen_.81 = private unnamed_addr constant [18 x i8] c"adsp_minidump_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 266, i32 31 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 422, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 176, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 183, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 225, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 229, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 372, i32 46 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 374, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 386, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 279, i32 37 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 283, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 288, i32 46 }
@___asan_gen_.165 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 292, i32 5 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 303, i32 50 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 309, i32 50 }
@___asan_gen_.177 = private unnamed_addr constant [19 x i8] c"adsp_resource_init\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 504, i32 31 }
@___asan_gen_.180 = private unnamed_addr constant [22 x i8] c"msm8996_adsp_resource\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 594, i32 31 }
@___asan_gen_.183 = private unnamed_addr constant [19 x i8] c"slpi_resource_init\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 732, i32 31 }
@___asan_gen_.186 = private unnamed_addr constant [19 x i8] c"cdsp_resource_init\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 609, i32 31 }
@___asan_gen_.189 = private unnamed_addr constant [19 x i8] c"wcss_resource_init\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 798, i32 31 }
@___asan_gen_.192 = private unnamed_addr constant [19 x i8] c"mpss_resource_init\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 698, i32 31 }
@___asan_gen_.195 = private unnamed_addr constant [21 x i8] c"sm8150_adsp_resource\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 544, i32 31 }
@___asan_gen_.198 = private unnamed_addr constant [21 x i8] c"sm8150_cdsp_resource\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 649, i32 31 }
@___asan_gen_.201 = private unnamed_addr constant [22 x i8] c"sc8180x_mpss_resource\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 716, i32 31 }
@___asan_gen_.204 = private unnamed_addr constant [26 x i8] c"sdm845_adsp_resource_init\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 515, i32 31 }
@___asan_gen_.207 = private unnamed_addr constant [26 x i8] c"sdm845_cdsp_resource_init\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 620, i32 31 }
@___asan_gen_.210 = private unnamed_addr constant [20 x i8] c"sdx55_mpss_resource\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 808, i32 31 }
@___asan_gen_.213 = private unnamed_addr constant [21 x i8] c"sm6350_adsp_resource\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 527, i32 31 }
@___asan_gen_.216 = private unnamed_addr constant [21 x i8] c"sm6350_cdsp_resource\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 632, i32 31 }
@___asan_gen_.219 = private unnamed_addr constant [21 x i8] c"sm8150_slpi_resource\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 747, i32 31 }
@___asan_gen_.222 = private unnamed_addr constant [21 x i8] c"sm8250_adsp_resource\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 560, i32 31 }
@___asan_gen_.225 = private unnamed_addr constant [21 x i8] c"sm8250_cdsp_resource\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 665, i32 31 }
@___asan_gen_.228 = private unnamed_addr constant [21 x i8] c"sm8250_slpi_resource\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 764, i32 31 }
@___asan_gen_.231 = private unnamed_addr constant [21 x i8] c"sm8350_adsp_resource\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 577, i32 31 }
@___asan_gen_.234 = private unnamed_addr constant [21 x i8] c"sm8350_cdsp_resource\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 681, i32 31 }
@___asan_gen_.237 = private unnamed_addr constant [21 x i8] c"sm8350_slpi_resource\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 781, i32 31 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 506, i32 20 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 510, i32 15 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 511, i32 18 }
@___asan_gen_.249 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 734, i32 20 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 739, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 742, i32 15 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 743, i32 18 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 611, i32 19 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 615, i32 14 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 800, i32 19 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 803, i32 14 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 804, i32 17 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 700, i32 19 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 707, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 710, i32 16 }
@___asan_gen_.288 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.289 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.291 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 534, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 535, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 640, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.303 = private unnamed_addr constant [20 x i8] c".compoundliteral.58\00", align 1
@___asan_gen_.304 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [20 x i8] c".compoundliteral.60\00", align 1
@___asan_gen_.306 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.307 = private unnamed_addr constant [20 x i8] c".compoundliteral.62\00", align 1
@___asan_gen_.308 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.309 = private constant [38 x i8] c"../drivers/remoteproc/qcom_q6v5_pas.c\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 689, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.312 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@llvm.compiler.used = appending global [108 x ptr] [ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_adsp_driver_exit, ptr @__initcall__kmod_qcom_q6v5_pas__289_869_adsp_driver_init6, ptr @adsp_alloc_memory_region._entry, ptr @adsp_alloc_memory_region._entry.20, ptr @adsp_alloc_memory_region._entry_ptr, ptr @adsp_alloc_memory_region._entry_ptr.22, ptr @adsp_driver_exit, ptr @adsp_init_clock._entry, ptr @adsp_init_clock._entry.27, ptr @adsp_init_clock._entry_ptr, ptr @adsp_init_clock._entry_ptr.29, ptr @adsp_probe._entry, ptr @adsp_probe._entry_ptr, ptr @adsp_start._entry, ptr @adsp_start._entry.9, ptr @adsp_start._entry_ptr, ptr @adsp_start._entry_ptr.11, ptr @adsp_stop._entry, ptr @adsp_stop._entry.14, ptr @adsp_stop._entry_ptr, ptr @adsp_stop._entry_ptr.16, ptr @adsp_driver, ptr @.str, ptr @adsp_of_match, ptr @adsp_ops, ptr @.str.1, ptr @adsp_minidump_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @adsp_resource_init, ptr @msm8996_adsp_resource, ptr @slpi_resource_init, ptr @cdsp_resource_init, ptr @wcss_resource_init, ptr @mpss_resource_init, ptr @sm8150_adsp_resource, ptr @sm8150_cdsp_resource, ptr @sc8180x_mpss_resource, ptr @sdm845_adsp_resource_init, ptr @sdm845_cdsp_resource_init, ptr @sdx55_mpss_resource, ptr @sm6350_adsp_resource, ptr @sm6350_cdsp_resource, ptr @sm8150_slpi_resource, ptr @sm8250_adsp_resource, ptr @sm8250_cdsp_resource, ptr @sm8250_slpi_resource, ptr @sm8350_adsp_resource, ptr @sm8350_cdsp_resource, ptr @sm8350_slpi_resource, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.compoundliteral, ptr @.str.35, ptr @.str.36, ptr @.compoundliteral.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.compoundliteral.47, ptr @.str.48, ptr @.compoundliteral.49, ptr @.compoundliteral.50, ptr @.compoundliteral.51, ptr @.compoundliteral.52, ptr @.str.53, ptr @.str.54, ptr @.compoundliteral.55, ptr @.str.56, ptr @.compoundliteral.57, ptr @.compoundliteral.58, ptr @.compoundliteral.59, ptr @.compoundliteral.60, ptr @.compoundliteral.61, ptr @.compoundliteral.62, ptr @.str.63, ptr @.compoundliteral.64, ptr @.compoundliteral.65], section "llvm.metadata"
@0 = internal global [93 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_of_match to i32), i32 6272, i32 7840, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_minidump_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_start._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_stop._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_alloc_memory_region._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_alloc_memory_region._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_init_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_init_clock._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_resource_init to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_adsp_resource to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slpi_resource_init to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdsp_resource_init to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcss_resource_init to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpss_resource_init to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_adsp_resource to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_cdsp_resource to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc8180x_mpss_resource to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_adsp_resource_init to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_cdsp_resource_init to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdx55_mpss_resource to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6350_adsp_resource to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6350_cdsp_resource to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_slpi_resource to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_adsp_resource to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_cdsp_resource to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_slpi_resource to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8350_adsp_resource to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8350_cdsp_resource to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8350_slpi_resource to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adsp_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @adsp_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adsp_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @adsp_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adsp_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %r.i = alloca %struct.resource, align 4
  %fw_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_name) #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i1 @qcom_scm_is_available() #7
  br i1 %call1, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %firmware_name = getelementptr inbounds %struct.adsp_data, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %firmware_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %firmware_name, align 4
  %2 = ptrtoint ptr %fw_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %fw_name, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call5 = call i32 @of_property_read_string(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef nonnull %fw_name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5)
  %cmp = icmp sgt i32 %call5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, -22
  %or.cond = or i1 %cmp, %cmp6.not
  br i1 %or.cond, label %if.end8, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %minidump_id = getelementptr inbounds %struct.adsp_data, ptr %call, i32 0, i32 3
  %5 = ptrtoint ptr %minidump_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %minidump_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool9.not = icmp eq i32 %6, 0
  %spec.select = select i1 %tobool9.not, ptr @adsp_ops, ptr @adsp_minidump_ops
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  %9 = ptrtoint ptr %fw_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw_name, align 4
  %call13 = call ptr @rproc_alloc(ptr noundef %dev, ptr noundef %8, ptr noundef nonnull %spec.select, ptr noundef %10, i32 noundef 468) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %do.end, label %if.end17

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %auto_boot = getelementptr inbounds %struct.adsp_data, ptr %call, i32 0, i32 5
  %11 = ptrtoint ptr %auto_boot to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %auto_boot, align 1, !range !163
  %auto_boot19 = getelementptr inbounds %struct.rproc, ptr %call13, i32 0, i32 30
  %13 = ptrtoint ptr %auto_boot19 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %auto_boot19, align 1
  %call20 = call i32 @rproc_coredump_set_elf_info(ptr noundef nonnull %call13, i8 noundef zeroext 1, i16 noundef zeroext 0) #7
  %priv = getelementptr inbounds %struct.rproc, ptr %call13, i32 0, i32 4
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev, ptr %15, align 4
  %rproc23 = getelementptr inbounds %struct.qcom_adsp, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %rproc23 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call13, ptr %rproc23, align 4
  %18 = ptrtoint ptr %minidump_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %minidump_id, align 4
  %minidump_id25 = getelementptr inbounds %struct.qcom_adsp, ptr %15, i32 0, i32 10
  %20 = ptrtoint ptr %minidump_id25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %minidump_id25, align 4
  %pas_id = getelementptr inbounds %struct.adsp_data, ptr %call, i32 0, i32 2
  %21 = ptrtoint ptr %pas_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pas_id, align 4
  %pas_id26 = getelementptr inbounds %struct.qcom_adsp, ptr %15, i32 0, i32 9
  %23 = ptrtoint ptr %pas_id26 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %pas_id26, align 4
  %has_aggre2_clk = getelementptr inbounds %struct.adsp_data, ptr %call, i32 0, i32 4
  %24 = ptrtoint ptr %has_aggre2_clk to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %has_aggre2_clk, align 4, !range !163
  %has_aggre2_clk28 = getelementptr inbounds %struct.qcom_adsp, ptr %15, i32 0, i32 12
  %26 = ptrtoint ptr %has_aggre2_clk28 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %has_aggre2_clk28, align 4
  %sysmon_name = getelementptr inbounds %struct.adsp_data, ptr %call, i32 0, i32 9
  %27 = ptrtoint ptr %sysmon_name to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sysmon_name, align 4
  %info_name = getelementptr inbounds %struct.qcom_adsp, ptr %15, i32 0, i32 13
  %29 = ptrtoint ptr %info_name to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %info_name, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %15, ptr %driver_data.i.i, align 4
  %31 = load ptr, ptr %15, align 4
  %call31 = call i32 @device_wakeup_enable(ptr noundef %31) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %r.i) #7
  %32 = getelementptr inbounds %struct.resource, ptr %r.i, i32 0, i32 1
  %33 = call ptr @memset(ptr %r.i, i32 255, i32 32)
  %34 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %15, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 27
  %36 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #7
  %38 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %37, ptr noundef nonnull @.str.17, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  br label %do.end.i

of_parse_phandle.exit.i:                          ; preds = %if.end17
  %39 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %of_parse_phandle.exit.i.do.end.i_crit_edge, label %if.end.i

of_parse_phandle.exit.i.do.end.i_crit_edge:       ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %of_parse_phandle.exit.i.do.end.i_crit_edge, %of_parse_phandle.exit.thread.i
  %41 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %15, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.18) #10
  br label %adsp_alloc_memory_region.exit.thread

if.end.i:                                         ; preds = %of_parse_phandle.exit.i
  %call2.i = call i32 @of_address_to_resource(ptr noundef nonnull %40, i32 noundef 0, ptr noundef nonnull %r.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.adsp_alloc_memory_region.exit.thread_crit_edge

if.end.i.adsp_alloc_memory_region.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adsp_alloc_memory_region.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %43 = ptrtoint ptr %r.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %r.i, align 4
  %mem_reloc.i = getelementptr inbounds %struct.qcom_adsp, ptr %15, i32 0, i32 17
  %45 = ptrtoint ptr %mem_reloc.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %mem_reloc.i, align 4
  %mem_phys.i = getelementptr inbounds %struct.qcom_adsp, ptr %15, i32 0, i32 16
  %46 = ptrtoint ptr %mem_phys.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %44, ptr %mem_phys.i, align 4
  %47 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %32, align 4
  %sub.i.i = sub i32 1, %44
  %add.i.i = add i32 %48, %sub.i.i
  %mem_size.i = getelementptr inbounds %struct.qcom_adsp, ptr %15, i32 0, i32 19
  %49 = ptrtoint ptr %mem_size.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add.i.i, ptr %mem_size.i, align 4
  %50 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %15, align 4
  %call10.i = call ptr @devm_ioremap_wc(ptr noundef %51, i32 noundef %44, i32 noundef %add.i.i) #7
  %mem_region.i = getelementptr inbounds %struct.qcom_adsp, ptr %15, i32 0, i32 18
  %52 = ptrtoint ptr %mem_region.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call10.i, ptr %mem_region.i, align 4
  %tobool12.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool12.not.i, label %do.end16.i, label %if.end35

do.end16.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %15, align 4
  %55 = ptrtoint ptr %mem_size.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mem_size.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.21, ptr noundef nonnull %r.i, i32 noundef %56) #10
  br label %adsp_alloc_memory_region.exit.thread

adsp_alloc_memory_region.exit.thread:             ; preds = %do.end16.i, %if.end.i.adsp_alloc_memory_region.exit.thread_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ %call2.i, %if.end.i.adsp_alloc_memory_region.exit.thread_crit_edge ], [ -22, %do.end.i ], [ -16, %do.end16.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %r.i) #7
  br label %free_rproc

if.end35:                                         ; preds = %if.end5.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %r.i) #7
  %57 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %15, align 4
  %call.i = call ptr @devm_clk_get(ptr noundef %58, ptr noundef nonnull @.str.23) #7
  %xo.i = getelementptr inbounds %struct.qcom_adsp, ptr %15, i32 0, i32 3
  %59 = ptrtoint ptr %xo.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i, ptr %xo.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end7.i

if.then.i:                                        ; preds = %if.end35
  %cmp.not.i = icmp eq ptr %call.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not.i, label %if.then.i.free_rproc_crit_edge, label %if.then.i.adsp_init_clock.exit_crit_edge

if.then.i.adsp_init_clock.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adsp_init_clock.exit

if.then.i.free_rproc_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_rproc

if.end7.i:                                        ; preds = %if.end35
  %60 = ptrtoint ptr %has_aggre2_clk28 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %has_aggre2_clk28, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i139 = icmp eq i8 %61, 0
  br i1 %tobool.not.i139, label %if.end7.i.if.end39_crit_edge, label %if.then8.i

if.end7.i.if.end39_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then8.i:                                       ; preds = %if.end7.i
  %62 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %15, align 4
  %call10.i140 = call ptr @devm_clk_get(ptr noundef %63, ptr noundef nonnull @.str.26) #7
  %aggre2_clk.i = getelementptr inbounds %struct.qcom_adsp, ptr %15, i32 0, i32 4
  %64 = ptrtoint ptr %aggre2_clk.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call10.i140, ptr %aggre2_clk.i, align 4
  %cmp.i38.i = icmp ugt ptr %call10.i140, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i38.i, label %if.then13.i, label %if.then8.i.if.end39_crit_edge

if.then8.i.if.end39_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then13.i:                                      ; preds = %if.then8.i
  %cmp16.not.i = icmp eq ptr %call10.i140, inttoptr (i32 -517 to ptr)
  br i1 %cmp16.not.i, label %if.then13.i.free_rproc_crit_edge, label %if.then13.i.adsp_init_clock.exit_crit_edge

if.then13.i.adsp_init_clock.exit_crit_edge:       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adsp_init_clock.exit

if.then13.i.free_rproc_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_rproc

adsp_init_clock.exit:                             ; preds = %if.then13.i.adsp_init_clock.exit_crit_edge, %if.then.i.adsp_init_clock.exit_crit_edge
  %call10.sink.i = phi ptr [ %call.i, %if.then.i.adsp_init_clock.exit_crit_edge ], [ %call10.i140, %if.then13.i.adsp_init_clock.exit_crit_edge ]
  %.str.28.sink.i = phi ptr [ @.str.24, %if.then.i.adsp_init_clock.exit_crit_edge ], [ @.str.28, %if.then13.i.adsp_init_clock.exit_crit_edge ]
  %65 = ptrtoint ptr %call10.sink.i to i32
  %66 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %15, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull %.str.28.sink.i) #10
  br label %free_rproc

if.end39:                                         ; preds = %if.then8.i.if.end39_crit_edge, %if.end7.i.if.end39_crit_edge
  %68 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %15, align 4
  %call.i142 = call ptr @devm_regulator_get(ptr noundef %69, ptr noundef nonnull @.str.30) #7
  %cx_supply.i = getelementptr inbounds %struct.qcom_adsp, ptr %15, i32 0, i32 5
  %70 = ptrtoint ptr %cx_supply.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call.i142, ptr %cx_supply.i, align 4
  %cmp.i.i143 = icmp ugt ptr %call.i142, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i143, label %if.end39.adsp_init_regulator.exit_crit_edge, label %if.end.i145

if.end39.adsp_init_regulator.exit_crit_edge:      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %adsp_init_regulator.exit

if.end.i145:                                      ; preds = %if.end39
  %call6.i = call i32 @regulator_set_load(ptr noundef %call.i142, i32 noundef 100000) #7
  %71 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %15, align 4
  %call8.i = call ptr @devm_regulator_get(ptr noundef %72, ptr noundef nonnull @.str.31) #7
  %px_supply.i = getelementptr inbounds %struct.qcom_adsp, ptr %15, i32 0, i32 6
  %73 = ptrtoint ptr %px_supply.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call8.i, ptr %px_supply.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end.i145.adsp_init_regulator.exit_crit_edge, label %if.end.i145.if.end43_crit_edge

if.end.i145.if.end43_crit_edge:                   ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.end.i145.adsp_init_regulator.exit_crit_edge:   ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #9
  br label %adsp_init_regulator.exit

adsp_init_regulator.exit:                         ; preds = %if.end.i145.adsp_init_regulator.exit_crit_edge, %if.end39.adsp_init_regulator.exit_crit_edge
  %retval.0.i146.in = phi ptr [ %call8.i, %if.end.i145.adsp_init_regulator.exit_crit_edge ], [ %call.i142, %if.end39.adsp_init_regulator.exit_crit_edge ]
  %retval.0.i146 = ptrtoint ptr %retval.0.i146.in to i32
  %tobool41.not = icmp eq ptr %retval.0.i146.in, null
  br i1 %tobool41.not, label %adsp_init_regulator.exit.if.end43_crit_edge, label %adsp_init_regulator.exit.free_rproc_crit_edge

adsp_init_regulator.exit.free_rproc_crit_edge:    ; preds = %adsp_init_regulator.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_rproc

adsp_init_regulator.exit.if.end43_crit_edge:      ; preds = %adsp_init_regulator.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.end43:                                         ; preds = %adsp_init_regulator.exit.if.end43_crit_edge, %if.end.i145.if.end43_crit_edge
  %proxy_pds = getelementptr inbounds %struct.qcom_adsp, ptr %15, i32 0, i32 7
  %proxy_pd_names = getelementptr inbounds %struct.adsp_data, ptr %call, i32 0, i32 6
  %74 = ptrtoint ptr %proxy_pd_names to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %proxy_pd_names, align 4
  %call45 = call fastcc i32 @adsp_pds_attach(ptr noundef %dev, ptr noundef %proxy_pds, ptr noundef %75)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end43.free_rproc_crit_edge, label %if.end48

if.end43.free_rproc_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_rproc

if.end48:                                         ; preds = %if.end43
  %proxy_pd_count = getelementptr inbounds %struct.qcom_adsp, ptr %15, i32 0, i32 8
  %76 = ptrtoint ptr %proxy_pd_count to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %call45, ptr %proxy_pd_count, align 4
  %q6v5 = getelementptr inbounds %struct.qcom_adsp, ptr %15, i32 0, i32 2
  %77 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %call, align 4
  %load_state = getelementptr inbounds %struct.adsp_data, ptr %call, i32 0, i32 7
  %79 = ptrtoint ptr %load_state to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %load_state, align 4
  %call49 = call i32 @qcom_q6v5_init(ptr noundef %q6v5, ptr noundef %pdev, ptr noundef nonnull %call13, i32 noundef %78, ptr noundef %80, ptr noundef nonnull @qcom_pas_handover) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end48.detach_proxy_pds_crit_edge

if.end48.detach_proxy_pds_crit_edge:              ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %detach_proxy_pds

if.end52:                                         ; preds = %if.end48
  %glink_subdev = getelementptr inbounds %struct.qcom_adsp, ptr %15, i32 0, i32 20
  %ssr_name = getelementptr inbounds %struct.adsp_data, ptr %call, i32 0, i32 8
  %81 = ptrtoint ptr %ssr_name to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ssr_name, align 4
  call void @qcom_add_glink_subdev(ptr noundef nonnull %call13, ptr noundef %glink_subdev, ptr noundef %82) #7
  %smd_subdev = getelementptr inbounds %struct.qcom_adsp, ptr %15, i32 0, i32 21
  call void @qcom_add_smd_subdev(ptr noundef nonnull %call13, ptr noundef %smd_subdev) #7
  %ssr_subdev = getelementptr inbounds %struct.qcom_adsp, ptr %15, i32 0, i32 22
  %83 = ptrtoint ptr %ssr_name to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ssr_name, align 4
  call void @qcom_add_ssr_subdev(ptr noundef nonnull %call13, ptr noundef %ssr_subdev, ptr noundef %84) #7
  %85 = ptrtoint ptr %sysmon_name to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sysmon_name, align 4
  %ssctl_id = getelementptr inbounds %struct.adsp_data, ptr %call, i32 0, i32 10
  %87 = ptrtoint ptr %ssctl_id to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %ssctl_id, align 4
  %call55 = call ptr @qcom_add_sysmon_subdev(ptr noundef nonnull %call13, ptr noundef %86, i32 noundef %88) #7
  %sysmon = getelementptr inbounds %struct.qcom_adsp, ptr %15, i32 0, i32 23
  %89 = ptrtoint ptr %sysmon to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call55, ptr %sysmon, align 4
  %cmp.i = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then58, label %if.end61

if.then58:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %90 = ptrtoint ptr %call55 to i32
  br label %detach_proxy_pds

if.end61:                                         ; preds = %if.end52
  %call62 = call i32 @rproc_add(ptr noundef nonnull %call13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end61.cleanup_crit_edge, label %if.end61.detach_proxy_pds_crit_edge

if.end61.detach_proxy_pds_crit_edge:              ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %detach_proxy_pds

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

detach_proxy_pds:                                 ; preds = %if.end61.detach_proxy_pds_crit_edge, %if.then58, %if.end48.detach_proxy_pds_crit_edge
  %ret.0 = phi i32 [ %call49, %if.end48.detach_proxy_pds_crit_edge ], [ %90, %if.then58 ], [ %call62, %if.end61.detach_proxy_pds_crit_edge ]
  %91 = ptrtoint ptr %proxy_pd_count to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %proxy_pd_count, align 4
  call fastcc void @adsp_pds_detach(ptr noundef %15, ptr noundef %proxy_pds, i32 noundef %92)
  br label %free_rproc

free_rproc:                                       ; preds = %detach_proxy_pds, %if.end43.free_rproc_crit_edge, %adsp_init_regulator.exit.free_rproc_crit_edge, %adsp_init_clock.exit, %if.then13.i.free_rproc_crit_edge, %if.then.i.free_rproc_crit_edge, %adsp_alloc_memory_region.exit.thread
  %ret.1 = phi i32 [ %65, %adsp_init_clock.exit ], [ %retval.0.i146, %adsp_init_regulator.exit.free_rproc_crit_edge ], [ %call45, %if.end43.free_rproc_crit_edge ], [ %ret.0, %detach_proxy_pds ], [ %retval.0.i.ph, %adsp_alloc_memory_region.exit.thread ], [ -517, %if.then.i.free_rproc_crit_edge ], [ -517, %if.then13.i.free_rproc_crit_edge ]
  call void @rproc_free(ptr noundef nonnull %call13) #7
  br label %cleanup

cleanup:                                          ; preds = %free_rproc, %if.end61.cleanup_crit_edge, %do.end, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %free_rproc ], [ -12, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -517, %if.end.cleanup_crit_edge ], [ %call5, %if.end3.cleanup_crit_edge ], [ 0, %if.end61.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_name) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adsp_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rproc = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rproc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rproc, align 4
  %call1 = tail call i32 @rproc_del(ptr noundef %3) #7
  %q6v5 = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 2
  tail call void @qcom_q6v5_deinit(ptr noundef %q6v5) #7
  %4 = ptrtoint ptr %rproc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rproc, align 4
  %glink_subdev = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 20
  tail call void @qcom_remove_glink_subdev(ptr noundef %5, ptr noundef %glink_subdev) #7
  %sysmon = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 23
  %6 = ptrtoint ptr %sysmon to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sysmon, align 4
  tail call void @qcom_remove_sysmon_subdev(ptr noundef %7) #7
  %8 = ptrtoint ptr %rproc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rproc, align 4
  %smd_subdev = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 21
  tail call void @qcom_remove_smd_subdev(ptr noundef %9, ptr noundef %smd_subdev) #7
  %10 = ptrtoint ptr %rproc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rproc, align 4
  %ssr_subdev = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 22
  tail call void @qcom_remove_ssr_subdev(ptr noundef %11, ptr noundef %ssr_subdev) #7
  %12 = ptrtoint ptr %rproc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rproc, align 4
  tail call void @rproc_free(ptr noundef %13) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qcom_scm_is_available() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_coredump_set_elf_info(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adsp_pds_attach(ptr noundef %dev, ptr nocapture noundef %devs, ptr noundef readonly %pd_names) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pd_names, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pm_domain = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 13
  %0 = ptrtoint ptr %pm_domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pm_domain, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.while.cond_crit_edge, label %if.then2

if.end.while.cond_crit_edge:                      ; preds = %if.end
  br label %while.cond

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %devs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %devs, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev) #7
  br label %cleanup

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end.while.cond_crit_edge
  %num_pds.0 = phi i32 [ %inc, %while.cond.while.cond_crit_edge ], [ 0, %if.end.while.cond_crit_edge ]
  %arrayidx4 = getelementptr ptr, ptr %pd_names, i32 %num_pds.0
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx4, align 4
  %tobool5.not = icmp eq ptr %4, null
  %inc = add i32 %num_pds.0, 1
  br i1 %tobool5.not, label %for.cond.preheader, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

for.cond.preheader:                               ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_pds.0)
  %cmp48.not = icmp eq i32 %num_pds.0, 0
  br i1 %cmp48.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.049 = phi i32 [ %inc15, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx6 = getelementptr ptr, ptr %pd_names, i32 %i.049
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx6, align 4
  %call = tail call ptr @dev_pm_domain_attach_by_name(ptr noundef %dev, ptr noundef %6) #7
  %arrayidx7 = getelementptr ptr, ptr %devs, i32 %i.049
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %arrayidx7, align 4
  %tobool.not.i = icmp eq ptr %call, null
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.then10, label %for.inc

if.then10:                                        ; preds = %for.body
  %8 = ptrtoint ptr %call to i32
  %call12. = select i1 %tobool.not.i, i32 -61, i32 %8
  %i.150 = add i32 %i.049, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.150)
  %cmp1751 = icmp sgt i32 %i.150, -1
  br i1 %cmp1751, label %if.then10.for.body18_crit_edge, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.for.body18_crit_edge:                   ; preds = %if.then10
  br label %for.body18

for.inc:                                          ; preds = %for.body
  %inc15 = add nuw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc15, %num_pds.0
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %if.then10.for.body18_crit_edge
  %i.152 = phi i32 [ %i.1, %for.body18.for.body18_crit_edge ], [ %i.150, %if.then10.for.body18_crit_edge ]
  %arrayidx19 = getelementptr ptr, ptr %devs, i32 %i.152
  %9 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx19, align 4
  tail call void @dev_pm_domain_detach(ptr noundef %10, i1 noundef zeroext false) #7
  %i.1 = add nsw i32 %i.152, -1
  %cmp17 = icmp sgt i32 %i.152, 0
  br i1 %cmp17, label %for.body18.for.body18_crit_edge, label %for.body18.cleanup_crit_edge

for.body18.cleanup_crit_edge:                     ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body18

cleanup:                                          ; preds = %for.body18.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then2 ], [ 0, %entry.cleanup_crit_edge ], [ %call12., %if.then10.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call12., %for.body18.cleanup_crit_edge ], [ %num_pds.0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_q6v5_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_pas_handover(ptr nocapture noundef readonly %q6v5) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %px_supply = getelementptr i8, ptr %q6v5, i32 184
  %0 = ptrtoint ptr %px_supply to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %px_supply, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %1) #7
  %cx_supply = getelementptr i8, ptr %q6v5, i32 180
  %2 = ptrtoint ptr %cx_supply to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cx_supply, align 4
  %call1 = tail call i32 @regulator_disable(ptr noundef %3) #7
  %aggre2_clk = getelementptr i8, ptr %q6v5, i32 176
  %4 = ptrtoint ptr %aggre2_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aggre2_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  %xo = getelementptr i8, ptr %q6v5, i32 172
  %6 = ptrtoint ptr %xo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xo, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  %proxy_pds = getelementptr i8, ptr %q6v5, i32 188
  %proxy_pd_count = getelementptr i8, ptr %q6v5, i32 200
  %8 = ptrtoint ptr %proxy_pd_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %proxy_pd_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1.not.i = icmp eq i32 %9, 0
  br i1 %cmp1.not.i, label %entry.adsp_pds_disable.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.adsp_pds_disable.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %adsp_pds_disable.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %proxy_pds, i32 %i.02.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @dev_pm_genpd_set_performance_state(ptr noundef %11, i32 noundef 0) #7
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %13, i32 noundef 5) #7
  %inc.i = add nuw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.body.i.adsp_pds_disable.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.adsp_pds_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adsp_pds_disable.exit

adsp_pds_disable.exit:                            ; preds = %for.body.i.adsp_pds_disable.exit_crit_edge, %entry.adsp_pds_disable.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_add_glink_subdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_add_smd_subdev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_add_ssr_subdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_add_sysmon_subdev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adsp_pds_detach(ptr nocapture noundef readonly %adsp, ptr nocapture noundef readonly %pds, i32 noundef %pd_count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adsp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adsp, align 4
  %pm_domain = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %pm_domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm_domain, align 8
  %tobool.not = icmp eq ptr %3, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pd_count)
  %tobool2.not = icmp eq i32 %pd_count, 0
  %or.cond = or i1 %tobool2.not, %tobool.not
  br i1 %or.cond, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  br i1 %tobool2.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__pm_runtime_disable(ptr noundef %1, i1 noundef zeroext true) #7
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %pds, i32 %i.09
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @dev_pm_domain_detach(ptr noundef %5, i1 noundef zeroext false) #7
  %inc = add nuw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, %pd_count
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.then, %for.cond.preheader.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adsp_start(ptr nocapture noundef readonly %rproc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %q6v5 = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 2
  %call = tail call i32 @qcom_q6v5_prepare(ptr noundef %q6v5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %proxy_pds = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 7
  %proxy_pd_count = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %proxy_pd_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %proxy_pd_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp4.not.i = icmp eq i32 %3, 0
  br i1 %cmp4.not.i, label %if.end.if.end3_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %proxy_pds, i32 %i.05.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @dev_pm_genpd_set_performance_state(ptr noundef %5, i32 noundef 2147483647) #7
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %arrayidx.i.le = getelementptr ptr, ptr %proxy_pds, i32 %i.05.i
  %8 = ptrtoint ptr %arrayidx.i.le to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.le, align 4
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !164
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !165
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.pm_runtime_put_noidle.exit.i_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.pm_runtime_put_noidle.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pm_runtime_put_noidle.exit.i

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !166
  br label %pm_runtime_put_noidle.exit.i

pm_runtime_put_noidle.exit.i:                     ; preds = %do.end11.i.i.i.i.i, %if.then.i.pm_runtime_put_noidle.exit.i_crit_edge
  %11 = ptrtoint ptr %arrayidx.i.le to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.le, align 4
  %call6.i = tail call i32 @dev_pm_genpd_set_performance_state(ptr noundef %12, i32 noundef 0) #7
  %i.16.i = add i32 %i.05.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.16.i)
  %cmp87.i = icmp sgt i32 %i.16.i, -1
  br i1 %cmp87.i, label %pm_runtime_put_noidle.exit.i.for.body9.i_crit_edge, label %pm_runtime_put_noidle.exit.i.disable_irqs_crit_edge

pm_runtime_put_noidle.exit.i.disable_irqs_crit_edge: ; preds = %pm_runtime_put_noidle.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_irqs

pm_runtime_put_noidle.exit.i.for.body9.i_crit_edge: ; preds = %pm_runtime_put_noidle.exit.i
  br label %for.body9.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.if.end3_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.end3_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

for.body9.i:                                      ; preds = %for.body9.i.for.body9.i_crit_edge, %pm_runtime_put_noidle.exit.i.for.body9.i_crit_edge
  %i.18.i = phi i32 [ %i.1.i, %for.body9.i.for.body9.i_crit_edge ], [ %i.16.i, %pm_runtime_put_noidle.exit.i.for.body9.i_crit_edge ]
  %arrayidx10.i = getelementptr ptr, ptr %proxy_pds, i32 %i.18.i
  %13 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx10.i, align 4
  %call11.i = tail call i32 @dev_pm_genpd_set_performance_state(ptr noundef %14, i32 noundef 0) #7
  %15 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx10.i, align 4
  %call.i1.i = tail call i32 @__pm_runtime_idle(ptr noundef %16, i32 noundef 5) #7
  %i.1.i = add nsw i32 %i.18.i, -1
  %cmp8.i.not = icmp eq i32 %i.18.i, 0
  br i1 %cmp8.i.not, label %for.body9.i.disable_irqs_crit_edge, label %for.body9.i.for.body9.i_crit_edge

for.body9.i.for.body9.i_crit_edge:                ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body9.i

for.body9.i.disable_irqs_crit_edge:               ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_irqs

if.end3:                                          ; preds = %for.inc.i.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %xo = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %xo to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xo, align 4
  %call.i77 = tail call i32 @clk_prepare(ptr noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool.not.i = icmp eq i32 %call.i77, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end3.disable_proxy_pds_crit_edge

if.end3.disable_proxy_pds_crit_edge:              ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_proxy_pds

if.end.i:                                         ; preds = %if.end3
  %call1.i = tail call i32 @clk_enable(ptr noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end7, label %if.end.i.disable_proxy_pds.sink.split_crit_edge

if.end.i.disable_proxy_pds.sink.split_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_proxy_pds.sink.split

if.end7:                                          ; preds = %if.end.i
  %aggre2_clk = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %aggre2_clk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %aggre2_clk, align 4
  %call.i79 = tail call i32 @clk_prepare(ptr noundef %20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool.not.i80 = icmp eq i32 %call.i79, 0
  br i1 %tobool.not.i80, label %if.end.i83, label %if.end7.disable_xo_clk_crit_edge

if.end7.disable_xo_clk_crit_edge:                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_xo_clk

if.end.i83:                                       ; preds = %if.end7
  %call1.i81 = tail call i32 @clk_enable(ptr noundef %20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i81)
  %tobool2.not.i82 = icmp eq i32 %call1.i81, 0
  br i1 %tobool2.not.i82, label %if.end11, label %if.end.i83.disable_xo_clk.sink.split_crit_edge

if.end.i83.disable_xo_clk.sink.split_crit_edge:   ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_xo_clk.sink.split

if.end11:                                         ; preds = %if.end.i83
  %cx_supply = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %cx_supply to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cx_supply, align 4
  %call12 = tail call i32 @regulator_enable(ptr noundef %22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.disable_aggre2_clk_crit_edge

if.end11.disable_aggre2_clk_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_aggre2_clk

if.end15:                                         ; preds = %if.end11
  %px_supply = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %px_supply to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %px_supply, align 4
  %call16 = tail call i32 @regulator_enable(ptr noundef %24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.disable_cx_supply_crit_edge

if.end15.disable_cx_supply_crit_edge:             ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_cx_supply

if.end19:                                         ; preds = %if.end15
  %pas_id = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 9
  %25 = ptrtoint ptr %pas_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pas_id, align 4
  %call20 = tail call i32 @qcom_scm_pas_auth_and_reset(i32 noundef %26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %do.end

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.7) #10
  br label %disable_px_supply

if.end23:                                         ; preds = %if.end19
  %call26 = tail call i32 @qcom_q6v5_wait_for_start(ptr noundef %q6v5, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call26)
  %cmp27 = icmp eq i32 %call26, -110
  br i1 %cmp27, label %do.end31, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.10) #10
  %31 = ptrtoint ptr %pas_id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pas_id, align 4
  %call34 = tail call i32 @qcom_scm_pas_shutdown(i32 noundef %32) #7
  br label %disable_px_supply

disable_px_supply:                                ; preds = %do.end31, %do.end
  %ret.0 = phi i32 [ %call20, %do.end ], [ -110, %do.end31 ]
  %33 = ptrtoint ptr %px_supply to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %px_supply, align 4
  %call37 = tail call i32 @regulator_disable(ptr noundef %34) #7
  br label %disable_cx_supply

disable_cx_supply:                                ; preds = %disable_px_supply, %if.end15.disable_cx_supply_crit_edge
  %ret.1 = phi i32 [ %call16, %if.end15.disable_cx_supply_crit_edge ], [ %ret.0, %disable_px_supply ]
  %35 = ptrtoint ptr %cx_supply to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cx_supply, align 4
  %call39 = tail call i32 @regulator_disable(ptr noundef %36) #7
  br label %disable_aggre2_clk

disable_aggre2_clk:                               ; preds = %disable_cx_supply, %if.end11.disable_aggre2_clk_crit_edge
  %ret.2 = phi i32 [ %call12, %if.end11.disable_aggre2_clk_crit_edge ], [ %ret.1, %disable_cx_supply ]
  %37 = ptrtoint ptr %aggre2_clk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %aggre2_clk, align 4
  tail call void @clk_disable(ptr noundef %38) #7
  br label %disable_xo_clk.sink.split

disable_xo_clk.sink.split:                        ; preds = %disable_aggre2_clk, %if.end.i83.disable_xo_clk.sink.split_crit_edge
  %.sink = phi ptr [ %38, %disable_aggre2_clk ], [ %20, %if.end.i83.disable_xo_clk.sink.split_crit_edge ]
  %ret.3.ph = phi i32 [ %ret.2, %disable_aggre2_clk ], [ %call1.i81, %if.end.i83.disable_xo_clk.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #7
  br label %disable_xo_clk

disable_xo_clk:                                   ; preds = %disable_xo_clk.sink.split, %if.end7.disable_xo_clk_crit_edge
  %ret.3 = phi i32 [ %call.i79, %if.end7.disable_xo_clk_crit_edge ], [ %ret.3.ph, %disable_xo_clk.sink.split ]
  %39 = ptrtoint ptr %xo to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %xo, align 4
  tail call void @clk_disable(ptr noundef %40) #7
  br label %disable_proxy_pds.sink.split

disable_proxy_pds.sink.split:                     ; preds = %disable_xo_clk, %if.end.i.disable_proxy_pds.sink.split_crit_edge
  %.sink113 = phi ptr [ %40, %disable_xo_clk ], [ %18, %if.end.i.disable_proxy_pds.sink.split_crit_edge ]
  %ret.4.ph = phi i32 [ %ret.3, %disable_xo_clk ], [ %call1.i, %if.end.i.disable_proxy_pds.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink113) #7
  br label %disable_proxy_pds

disable_proxy_pds:                                ; preds = %disable_proxy_pds.sink.split, %if.end3.disable_proxy_pds_crit_edge
  %ret.4 = phi i32 [ %call.i77, %if.end3.disable_proxy_pds_crit_edge ], [ %ret.4.ph, %disable_proxy_pds.sink.split ]
  %41 = ptrtoint ptr %proxy_pd_count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %proxy_pd_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp1.not.i = icmp eq i32 %42, 0
  br i1 %cmp1.not.i, label %disable_proxy_pds.disable_irqs_crit_edge, label %disable_proxy_pds.for.body.i92_crit_edge

disable_proxy_pds.for.body.i92_crit_edge:         ; preds = %disable_proxy_pds
  br label %for.body.i92

disable_proxy_pds.disable_irqs_crit_edge:         ; preds = %disable_proxy_pds
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_irqs

for.body.i92:                                     ; preds = %for.body.i92.for.body.i92_crit_edge, %disable_proxy_pds.for.body.i92_crit_edge
  %i.02.i = phi i32 [ %inc.i90, %for.body.i92.for.body.i92_crit_edge ], [ 0, %disable_proxy_pds.for.body.i92_crit_edge ]
  %arrayidx.i87 = getelementptr ptr, ptr %proxy_pds, i32 %i.02.i
  %43 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i87, align 4
  %call.i88 = tail call i32 @dev_pm_genpd_set_performance_state(ptr noundef %44, i32 noundef 0) #7
  %45 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i87, align 4
  %call.i.i89 = tail call i32 @__pm_runtime_idle(ptr noundef %46, i32 noundef 5) #7
  %inc.i90 = add nuw i32 %i.02.i, 1
  %exitcond.not.i91 = icmp eq i32 %inc.i90, %42
  br i1 %exitcond.not.i91, label %for.body.i92.disable_irqs_crit_edge, label %for.body.i92.for.body.i92_crit_edge

for.body.i92.for.body.i92_crit_edge:              ; preds = %for.body.i92
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i92

for.body.i92.disable_irqs_crit_edge:              ; preds = %for.body.i92
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_irqs

disable_irqs:                                     ; preds = %for.body.i92.disable_irqs_crit_edge, %disable_proxy_pds.disable_irqs_crit_edge, %for.body9.i.disable_irqs_crit_edge, %pm_runtime_put_noidle.exit.i.disable_irqs_crit_edge
  %ret.5 = phi i32 [ %ret.4, %disable_proxy_pds.disable_irqs_crit_edge ], [ %call.i.i, %pm_runtime_put_noidle.exit.i.disable_irqs_crit_edge ], [ %ret.4, %for.body.i92.disable_irqs_crit_edge ], [ %call.i.i, %for.body9.i.disable_irqs_crit_edge ]
  %call46 = tail call i32 @qcom_q6v5_unprepare(ptr noundef %q6v5) #7
  br label %cleanup

cleanup:                                          ; preds = %disable_irqs, %if.end23.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.5, %disable_irqs ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adsp_stop(ptr nocapture noundef readonly %rproc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %q6v5 = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 2
  %sysmon = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %sysmon to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysmon, align 4
  %call = tail call i32 @qcom_q6v5_request_stop(ptr noundef %q6v5, ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call)
  %cmp = icmp eq i32 %call, -110
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.12) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %pas_id = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %pas_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pas_id, align 4
  %call1 = tail call i32 @qcom_scm_pas_shutdown(i32 noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %do.end5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.15, i32 noundef %call1) #10
  br label %if.end7

if.end7:                                          ; preds = %do.end5, %if.end.if.end7_crit_edge
  %call9 = tail call i32 @qcom_q6v5_unprepare(ptr noundef %q6v5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end7.if.end13_crit_edge, label %if.then11

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @qcom_pas_handover(ptr noundef %q6v5)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end7.if.end13_crit_edge
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @adsp_da_to_va(ptr nocapture noundef readonly %rproc, i64 noundef %da, i32 noundef %len, ptr nocapture noundef readnone %is_iomem) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %mem_reloc = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %mem_reloc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mem_reloc, align 4
  %4 = trunc i64 %da to i32
  %conv1 = sub i32 %4, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1)
  %cmp = icmp slt i32 %conv1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %add = add i32 %conv1, %len
  %mem_size = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 19
  %5 = ptrtoint ptr %mem_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mem_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %6)
  %cmp3 = icmp ugt i32 %add, %6
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %mem_region = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 18
  %7 = ptrtoint ptr %mem_region to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mem_region, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %conv1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_register_dump_segments(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adsp_load(ptr nocapture noundef readonly %rproc, ptr noundef %fw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %firmware = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 3
  %4 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %firmware, align 8
  %pas_id = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %pas_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pas_id, align 4
  %mem_region = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 18
  %8 = ptrtoint ptr %mem_region to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mem_region, align 4
  %mem_phys = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %mem_phys to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mem_phys, align 4
  %mem_size = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 19
  %12 = ptrtoint ptr %mem_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mem_size, align 4
  %mem_reloc = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 17
  %call = tail call i32 @qcom_mdt_load(ptr noundef %3, ptr noundef %fw, ptr noundef %5, i32 noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef %13, ptr noundef %mem_reloc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %info_name = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %info_name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %info_name, align 4
  %16 = ptrtoint ptr %mem_phys to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mem_phys, align 4
  %18 = ptrtoint ptr %mem_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mem_size, align 4
  %call3 = tail call i32 @qcom_pil_info_store(ptr noundef %15, i32 noundef %17, i32 noundef %19) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adsp_panic(ptr nocapture noundef readonly %rproc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %q6v5 = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 2
  %call = tail call i32 @qcom_q6v5_panic(ptr noundef %q6v5) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_q6v5_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_pas_auth_and_reset(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_q6v5_wait_for_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_pas_shutdown(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_q6v5_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_genpd_set_performance_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_q6v5_request_stop(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_mdt_load(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_pil_info_store(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_q6v5_panic(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adsp_minidump(ptr noundef %rproc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %minidump_id = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %minidump_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %minidump_id, align 4
  tail call void @qcom_minidump(ptr noundef %rproc, i32 noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_minidump(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_wc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_load(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_domain_attach_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_domain_detach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_q6v5_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_remove_glink_subdev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_remove_sysmon_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_remove_smd_subdev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_remove_ssr_subdev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !46, !48, !49, !50, !51, !53, !54, !55, !57, !59, !60, !61, !62, !64, !66, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152}
!llvm.module.flags = !{!154, !155, !156, !157, !158, !159, !160, !161}
!llvm.ident = !{!162}

!0 = !{ptr @__initcall__kmod_qcom_q6v5_pas__289_869_adsp_driver_init6, !1, !"__initcall__kmod_qcom_q6v5_pas__289_869_adsp_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 869, i32 1}
!2 = !{ptr @__exitcall_adsp_driver_exit, !1, !"__exitcall_adsp_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description290, !4, !"__UNIQUE_ID_description290", i1 false, i1 false}
!4 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 870, i32 1}
!5 = !{ptr @__UNIQUE_ID_file291, !6, !"__UNIQUE_ID_file291", i1 false, i1 false}
!6 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 871, i32 1}
!7 = !{ptr @__UNIQUE_ID_license292, !6, !"__UNIQUE_ID_license292", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 864, i32 11}
!10 = !{ptr @adsp_driver, !11, !"adsp_driver", i1 false, i1 false}
!11 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 860, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 411, i32 51}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 422, i32 3}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @adsp_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @adsp_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @adsp_ops, !23, !"adsp_ops", i1 false, i1 false}
!23 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 257, i32 31}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 176, i32 3}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @adsp_start._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @adsp_start._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 183, i32 3}
!31 = !{ptr @adsp_start._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @adsp_start._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 225, i32 3}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @adsp_stop._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @adsp_stop._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 229, i32 3}
!40 = !{ptr @adsp_stop._entry.14, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @adsp_stop._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @adsp_minidump_ops, !43, !"adsp_minidump_ops", i1 false, i1 false}
!43 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 266, i32 31}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 372, i32 46}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 374, i32 3}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @adsp_alloc_memory_region._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @adsp_alloc_memory_region._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 386, i32 3}
!53 = !{ptr @adsp_alloc_memory_region._entry.20, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @adsp_alloc_memory_region._entry_ptr.22, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 279, i32 37}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 283, i32 4}
!59 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @adsp_init_clock._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @adsp_init_clock._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 288, i32 46}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 292, i32 5}
!66 = !{ptr @adsp_init_clock._entry.27, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @adsp_init_clock._entry_ptr.29, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 303, i32 50}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 309, i32 50}
!72 = !{ptr @adsp_of_match, !73, !"adsp_of_match", i1 false, i1 false}
!73 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 824, i32 34}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 506, i32 20}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 510, i32 15}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 511, i32 18}
!80 = !{ptr @adsp_resource_init, !81, !"adsp_resource_init", i1 false, i1 false}
!81 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 504, i32 31}
!82 = !{ptr @msm8996_adsp_resource, !83, !"msm8996_adsp_resource", i1 false, i1 false}
!83 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 594, i32 31}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 734, i32 20}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 739, i32 4}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 742, i32 15}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 743, i32 18}
!92 = !{ptr @slpi_resource_init, !93, !"slpi_resource_init", i1 false, i1 false}
!93 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 732, i32 31}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 611, i32 19}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 615, i32 14}
!98 = !{ptr @cdsp_resource_init, !99, !"cdsp_resource_init", i1 false, i1 false}
!99 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 609, i32 31}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 800, i32 19}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 803, i32 14}
!104 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 804, i32 17}
!106 = !{ptr @wcss_resource_init, !107, !"wcss_resource_init", i1 false, i1 false}
!107 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 798, i32 31}
!108 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 700, i32 19}
!110 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 707, i32 3}
!112 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 710, i32 16}
!114 = !{ptr @mpss_resource_init, !115, !"mpss_resource_init", i1 false, i1 false}
!115 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 698, i32 31}
!116 = !{ptr @sm8150_adsp_resource, !117, !"sm8150_adsp_resource", i1 false, i1 false}
!117 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 544, i32 31}
!118 = !{ptr @sm8150_cdsp_resource, !119, !"sm8150_cdsp_resource", i1 false, i1 false}
!119 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 649, i32 31}
!120 = !{ptr @sc8180x_mpss_resource, !121, !"sc8180x_mpss_resource", i1 false, i1 false}
!121 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 716, i32 31}
!122 = !{ptr @sdm845_adsp_resource_init, !123, !"sdm845_adsp_resource_init", i1 false, i1 false}
!123 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 515, i32 31}
!124 = !{ptr @sdm845_cdsp_resource_init, !125, !"sdm845_cdsp_resource_init", i1 false, i1 false}
!125 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 620, i32 31}
!126 = !{ptr @sdx55_mpss_resource, !127, !"sdx55_mpss_resource", i1 false, i1 false}
!127 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 808, i32 31}
!128 = !{ptr @.str.53, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 534, i32 3}
!130 = !{ptr @.str.54, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 535, i32 3}
!132 = !{ptr @sm6350_adsp_resource, !133, !"sm6350_adsp_resource", i1 false, i1 false}
!133 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 527, i32 31}
!134 = !{ptr @.str.56, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 640, i32 3}
!136 = !{ptr @sm6350_cdsp_resource, !137, !"sm6350_cdsp_resource", i1 false, i1 false}
!137 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 632, i32 31}
!138 = !{ptr @sm8150_slpi_resource, !139, !"sm8150_slpi_resource", i1 false, i1 false}
!139 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 747, i32 31}
!140 = !{ptr @sm8250_adsp_resource, !141, !"sm8250_adsp_resource", i1 false, i1 false}
!141 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 560, i32 31}
!142 = !{ptr @sm8250_cdsp_resource, !143, !"sm8250_cdsp_resource", i1 false, i1 false}
!143 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 665, i32 31}
!144 = !{ptr @sm8250_slpi_resource, !145, !"sm8250_slpi_resource", i1 false, i1 false}
!145 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 764, i32 31}
!146 = !{ptr @sm8350_adsp_resource, !147, !"sm8350_adsp_resource", i1 false, i1 false}
!147 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 577, i32 31}
!148 = !{ptr @.str.63, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 689, i32 3}
!150 = !{ptr @sm8350_cdsp_resource, !151, !"sm8350_cdsp_resource", i1 false, i1 false}
!151 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 681, i32 31}
!152 = !{ptr @sm8350_slpi_resource, !153, !"sm8350_slpi_resource", i1 false, i1 false}
!153 = !{!"../drivers/remoteproc/qcom_q6v5_pas.c", i32 781, i32 31}
!154 = !{i32 1, !"wchar_size", i32 2}
!155 = !{i32 1, !"min_enum_size", i32 4}
!156 = !{i32 8, !"branch-target-enforcement", i32 0}
!157 = !{i32 8, !"sign-return-address", i32 0}
!158 = !{i32 8, !"sign-return-address-all", i32 0}
!159 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!160 = !{i32 7, !"uwtable", i32 1}
!161 = !{i32 7, !"frame-pointer", i32 2}
!162 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!163 = !{i8 0, i8 2}
!164 = !{i64 2148257791}
!165 = !{i64 742614, i64 742639, i64 742661, i64 742677, i64 742689, i64 742709, i64 742733, i64 742749, i64 742761}
!166 = !{i64 2148257979}
