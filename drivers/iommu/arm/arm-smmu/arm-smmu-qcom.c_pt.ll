; ModuleID = '/llk/IR_all_yes/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c_pt.bc'
source_filename = "../drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_smmu_impl = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.arm_smmu_device = type { ptr, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, [4 x i32], ptr, %struct.atomic_t, i32, i16, i16, ptr, ptr, %struct.mutex, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.spinlock, %struct.iommu_device }
%struct.iommu_device = type { %struct.list_head, ptr, ptr, ptr }
%struct.arm_smmu_domain = type { ptr, ptr, i32, ptr, %struct.arm_smmu_cfg, i32, %struct.mutex, %struct.spinlock, %struct.iommu_domain }
%struct.arm_smmu_cfg = type { i8, i8, %union.anon.70, i32, i32, i8 }
%union.anon.70 = type { i16 }
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }
%struct.dev_iommu = type { %struct.mutex, ptr, ptr, ptr, ptr, ptr }
%struct.iommu_fwspec = type { ptr, ptr, i32, i32, [0 x i32] }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qcom_smmu = type { %struct.arm_smmu_device, i8, i8, i32 }
%struct.arm_smmu_cb = type { [2 x i64], [2 x i32], [2 x i32], ptr }
%struct.io_pgtable_cfg = type { i32, i32, i32, i32, i8, ptr, ptr, %union.anon.71 }
%union.anon.71 = type { %struct.anon.78 }
%struct.anon.78 = type { [4 x i64], i32 }
%struct.adreno_smmu_fault_info = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.arm_smmu_smr = type { i16, i16, i8, i8 }
%struct.arm_smmu_s2cr = type { ptr, i32, i32, i32, i8 }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom,adreno-smmu\00", [47 x i8] zeroinitializer }, align 32
@qcom_adreno_smmu_impl = internal constant { %struct.arm_smmu_impl, [36 x i8] } { %struct.arm_smmu_impl { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qcom_smmu500_reset, ptr @qcom_adreno_smmu_init_context, ptr null, ptr @qcom_smmu_def_domain_type, ptr null, ptr null, ptr @qcom_adreno_smmu_alloc_context_bank, ptr null, ptr @qcom_adreno_smmu_write_sctlr, ptr null }, [36 x i8] zeroinitializer }, align 32
@qcom_smmu_impl_of_match = internal constant { [14 x %struct.of_device_id], [680 x i8] } { [14 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8998-smmu-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,qcm2290-smmu-500\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7180-smmu-500\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7280-smmu-500\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc8180x-smmu-500\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm630-smmu-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm845-smmu-500\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm6125-smmu-500\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm6350-smmu-500\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8150-smmu-500\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8250-smmu-500\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8350-smmu-500\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8450-smmu-500\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [680 x i8] zeroinitializer }, align 32
@qcom_smmu_impl = internal constant { %struct.arm_smmu_impl, [36 x i8] } { %struct.arm_smmu_impl { ptr null, ptr null, ptr null, ptr null, ptr @qcom_smmu_cfg_probe, ptr @qcom_smmu500_reset, ptr @qcom_smmu_init_context, ptr null, ptr @qcom_smmu_def_domain_type, ptr null, ptr null, ptr null, ptr @qcom_smmu_write_s2cr, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qcom,sdm845-smmu-500\00", [43 x i8] zeroinitializer }, align 32
@qcom_sdm845_smmu500_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 354, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to turn off SAFE logic\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qcom_sdm845_smmu500_reset\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_sdm845_smmu500_reset._entry_ptr = internal global ptr @qcom_sdm845_smmu500_reset._entry, section ".printk_index", align 4
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qcom,msm8996-smmu-v2\00", [43 x i8] zeroinitializer }, align 32
@qcom_smmu_client_of_match = internal constant { [11 x %struct.of_device_id], [532 x i8] } { [11 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,adreno\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,mdp4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,mdss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7180-mdss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7180-mss-pil\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7280-mdss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7280-mss-pil\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc8180x-mdss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm845-mdss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm845-mss-pil\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [532 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 448, i32 34 }
@___asan_gen_.11 = private unnamed_addr constant [22 x i8] c"qcom_adreno_smmu_impl\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 379, i32 35 }
@___asan_gen_.14 = private unnamed_addr constant [24 x i8] c"qcom_smmu_impl_of_match\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 405, i32 49 }
@___asan_gen_.17 = private unnamed_addr constant [15 x i8] c"qcom_smmu_impl\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 371, i32 35 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 365, i32 34 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 354, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 185, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant [26 x i8] c"qcom_smmu_client_of_match\00", align 1
@___asan_gen_.45 = private constant [46 x i8] c"../drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 227, i32 34 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @qcom_sdm845_smmu500_reset._entry, ptr @qcom_sdm845_smmu500_reset._entry_ptr, ptr @.str, ptr @qcom_adreno_smmu_impl, ptr @qcom_smmu_impl_of_match, ptr @qcom_smmu_impl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @qcom_smmu_client_of_match], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_adreno_smmu_impl to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smmu_impl_of_match to i32), i32 2744, i32 3424, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smmu_impl to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_sdm845_smmu500_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smmu_client_of_match to i32), i32 2156, i32 2688, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qcom_smmu_impl_init(ptr noundef %smmu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smmu, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @of_device_is_compatible(ptr noundef %3, ptr noundef nonnull @.str) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call zeroext i1 @qcom_scm_is_available() #7
  br i1 %call.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %4 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smmu, align 4
  %call2.i = tail call ptr @devm_krealloc(ptr noundef %5, ptr noundef %smmu, i32 noundef 280, i32 noundef 3264) #7
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_match_node(ptr noundef nonnull @qcom_smmu_impl_of_match, ptr noundef %3) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %call.i11 = tail call zeroext i1 @qcom_scm_is_available() #7
  br i1 %call.i11, label %if.end.i14, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i14:                                       ; preds = %if.then4
  %6 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %smmu, align 4
  %call2.i12 = tail call ptr @devm_krealloc(ptr noundef %7, ptr noundef %smmu, i32 noundef 280, i32 noundef 3264) #7
  %tobool.not.i13 = icmp eq ptr %call2.i12, null
  br i1 %tobool.not.i13, label %if.end.i14.cleanup_crit_edge, label %if.end.i14.cleanup.sink.split_crit_edge

if.end.i14.cleanup.sink.split_crit_edge:          ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.i14.cleanup_crit_edge:                     ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.i14.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge
  %call2.i12.sink = phi ptr [ %call2.i, %if.end.i.cleanup.sink.split_crit_edge ], [ %call2.i12, %if.end.i14.cleanup.sink.split_crit_edge ]
  %qcom_smmu_impl.sink = phi ptr [ @qcom_adreno_smmu_impl, %if.end.i.cleanup.sink.split_crit_edge ], [ @qcom_smmu_impl, %if.end.i14.cleanup.sink.split_crit_edge ]
  %impl7.i15 = getelementptr inbounds %struct.arm_smmu_device, ptr %call2.i12.sink, i32 0, i32 7
  %8 = ptrtoint ptr %impl7.i15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %qcom_smmu_impl.sink, ptr %impl7.i15, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i14.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %smmu, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -517 to ptr), %if.then.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.cleanup_crit_edge ], [ inttoptr (i32 -517 to ptr), %if.then4.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i14.cleanup_crit_edge ], [ %call2.i12.sink, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qcom_scm_is_available() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_krealloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_smmu500_reset(ptr noundef %smmu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smmu, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @arm_mmu500_reset(ptr noundef %smmu) #7
  %call1 = tail call i32 @of_device_is_compatible(ptr noundef %3, ptr noundef nonnull @.str.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @qcom_scm_qsmmu500_wait_safe_toggle(i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %do.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smmu, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.2) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ %call.i, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_adreno_smmu_init_context(ptr noundef %smmu_domain, ptr nocapture noundef %pgtbl_cfg, ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flush_walk_prefer_tlbiasid = getelementptr inbounds %struct.arm_smmu_domain, ptr %smmu_domain, i32 0, i32 4, i32 5
  %0 = ptrtoint ptr %flush_walk_prefer_tlbiasid to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %flush_walk_prefer_tlbiasid, align 4
  %iommu.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %1 = ptrtoint ptr %iommu.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iommu.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %entry.dev_iommu_fwspec_get.exit.i_crit_edge, label %if.then.i.i

entry.dev_iommu_fwspec_get.exit.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_iommu_fwspec_get.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %fwspec.i.i = getelementptr inbounds %struct.dev_iommu, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %fwspec.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fwspec.i.i, align 4
  br label %dev_iommu_fwspec_get.exit.i

dev_iommu_fwspec_get.exit.i:                      ; preds = %if.then.i.i, %entry.dev_iommu_fwspec_get.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %4, %if.then.i.i ], [ null, %entry.dev_iommu_fwspec_get.exit.i_crit_edge ]
  %num_ids.i = getelementptr inbounds %struct.iommu_fwspec, ptr %retval.0.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %num_ids.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_ids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp21.not.i = icmp eq i32 %6, 0
  br i1 %cmp21.not.i, label %dev_iommu_fwspec_get.exit.i.cleanup_crit_edge, label %for.body.i.preheader

dev_iommu_fwspec_get.exit.i.cleanup_crit_edge:    ; preds = %dev_iommu_fwspec_get.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i.preheader:                             ; preds = %dev_iommu_fwspec_get.exit.i
  %arrayidx.i19 = getelementptr %struct.iommu_fwspec, ptr %retval.0.i.i, i32 0, i32 4, i32 0
  %7 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i19, align 4
  %conv13.i20 = and i32 %8, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv13.i20)
  %cmp14.i21 = icmp eq i32 %conv13.i20, 0
  br i1 %cmp14.i21, label %for.body.i.preheader.if.end_crit_edge, label %for.body.i.preheader.for.cond.i_crit_edge

for.body.i.preheader.for.cond.i_crit_edge:        ; preds = %for.body.i.preheader
  br label %for.cond.i

for.body.i.preheader.if.end_crit_edge:            ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.i.preheader.for.cond.i_crit_edge
  %i.022.i22 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.i.preheader.for.cond.i_crit_edge ]
  %inc.i = add nuw i32 %i.022.i22, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %6)
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %for.cond.i.qcom_adreno_smmu_is_gpu_device.exit_crit_edge, label %for.body.i

for.cond.i.qcom_adreno_smmu_is_gpu_device.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qcom_adreno_smmu_is_gpu_device.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr %struct.iommu_fwspec, ptr %retval.0.i.i, i32 0, i32 4, i32 %inc.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %conv13.i = and i32 %10, 65535
  %cmp14.i = icmp eq i32 %conv13.i, 0
  br i1 %cmp14.i, label %for.body.i.qcom_adreno_smmu_is_gpu_device.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

for.body.i.qcom_adreno_smmu_is_gpu_device.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qcom_adreno_smmu_is_gpu_device.exit

qcom_adreno_smmu_is_gpu_device.exit:              ; preds = %for.body.i.qcom_adreno_smmu_is_gpu_device.exit_crit_edge, %for.cond.i.qcom_adreno_smmu_is_gpu_device.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %6)
  %cmp.i.le = icmp ult i32 %inc.i, %6
  br i1 %cmp.i.le, label %qcom_adreno_smmu_is_gpu_device.exit.if.end_crit_edge, label %qcom_adreno_smmu_is_gpu_device.exit.cleanup_crit_edge

qcom_adreno_smmu_is_gpu_device.exit.cleanup_crit_edge: ; preds = %qcom_adreno_smmu_is_gpu_device.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

qcom_adreno_smmu_is_gpu_device.exit.if.end_crit_edge: ; preds = %qcom_adreno_smmu_is_gpu_device.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %qcom_adreno_smmu_is_gpu_device.exit.if.end_crit_edge, %for.body.i.preheader.if.end_crit_edge
  %11 = ptrtoint ptr %smmu_domain to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %smmu_domain, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call i32 @of_device_is_compatible(ptr noundef %16, ptr noundef nonnull @.str.7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %stage = getelementptr inbounds %struct.arm_smmu_domain, ptr %smmu_domain, i32 0, i32 5
  %17 = ptrtoint ptr %stage to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %land.lhs.true2, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

land.lhs.true2:                                   ; preds = %land.lhs.true
  %fmt = getelementptr inbounds %struct.arm_smmu_domain, ptr %smmu_domain, i32 0, i32 4, i32 4
  %19 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp4 = icmp eq i32 %20, 1
  br i1 %cmp4, label %if.then5, label %land.lhs.true2.if.end6_crit_edge

land.lhs.true2.if.end6_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then5:                                         ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %pgtbl_cfg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pgtbl_cfg, align 8
  %or = or i32 %22, 32
  store i32 %or, ptr %pgtbl_cfg, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %land.lhs.true2.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %23 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver_data.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %smmu_domain, ptr %24, align 4
  %get_ttbr1_cfg = getelementptr inbounds %struct.adreno_smmu_priv, ptr %24, i32 0, i32 1
  %26 = ptrtoint ptr %get_ttbr1_cfg to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @qcom_adreno_smmu_get_ttbr1_cfg, ptr %get_ttbr1_cfg, align 4
  %set_ttbr0_cfg = getelementptr inbounds %struct.adreno_smmu_priv, ptr %24, i32 0, i32 2
  %27 = ptrtoint ptr %set_ttbr0_cfg to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @qcom_adreno_smmu_set_ttbr0_cfg, ptr %set_ttbr0_cfg, align 4
  %get_fault_info = getelementptr inbounds %struct.adreno_smmu_priv, ptr %24, i32 0, i32 3
  %28 = ptrtoint ptr %get_fault_info to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @qcom_adreno_smmu_get_fault_info, ptr %get_fault_info, align 4
  %set_stall = getelementptr inbounds %struct.adreno_smmu_priv, ptr %24, i32 0, i32 4
  %29 = ptrtoint ptr %set_stall to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @qcom_adreno_smmu_set_stall, ptr %set_stall, align 4
  %resume_translation = getelementptr inbounds %struct.adreno_smmu_priv, ptr %24, i32 0, i32 5
  %30 = ptrtoint ptr %resume_translation to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @qcom_adreno_smmu_resume_translation, ptr %resume_translation, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %qcom_adreno_smmu_is_gpu_device.exit.cleanup_crit_edge, %dev_iommu_fwspec_get.exit.i.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_smmu_def_domain_type(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_match_device(ptr noundef nonnull @qcom_smmu_client_of_match, ptr noundef %dev) #7
  %tobool.not = icmp eq ptr %call, null
  %cond = select i1 %tobool.not, i32 0, i32 4
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_adreno_smmu_alloc_context_bank(ptr nocapture noundef readnone %smmu_domain, ptr noundef %smmu, ptr nocapture noundef readonly %dev, i32 noundef %start) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.dev_iommu_fwspec_get.exit.i_crit_edge, label %if.then.i.i

entry.dev_iommu_fwspec_get.exit.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_iommu_fwspec_get.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %fwspec.i.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fwspec.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fwspec.i.i, align 4
  br label %dev_iommu_fwspec_get.exit.i

dev_iommu_fwspec_get.exit.i:                      ; preds = %if.then.i.i, %entry.dev_iommu_fwspec_get.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %3, %if.then.i.i ], [ null, %entry.dev_iommu_fwspec_get.exit.i_crit_edge ]
  %num_ids.i = getelementptr inbounds %struct.iommu_fwspec, ptr %retval.0.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %num_ids.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_ids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp21.not.i = icmp eq i32 %5, 0
  br i1 %cmp21.not.i, label %dev_iommu_fwspec_get.exit.i.if.else_crit_edge, label %for.body.i.preheader

dev_iommu_fwspec_get.exit.i.if.else_crit_edge:    ; preds = %dev_iommu_fwspec_get.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

for.body.i.preheader:                             ; preds = %dev_iommu_fwspec_get.exit.i
  %arrayidx.i5 = getelementptr %struct.iommu_fwspec, ptr %retval.0.i.i, i32 0, i32 4, i32 0
  %6 = ptrtoint ptr %arrayidx.i5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i5, align 4
  %conv13.i6 = and i32 %7, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv13.i6)
  %cmp14.i7 = icmp eq i32 %conv13.i6, 0
  br i1 %cmp14.i7, label %for.body.i.preheader.if.end_crit_edge, label %for.body.i.preheader.for.cond.i_crit_edge

for.body.i.preheader.for.cond.i_crit_edge:        ; preds = %for.body.i.preheader
  br label %for.cond.i

for.body.i.preheader.if.end_crit_edge:            ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.i.preheader.for.cond.i_crit_edge
  %i.022.i8 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.i.preheader.for.cond.i_crit_edge ]
  %inc.i = add nuw i32 %i.022.i8, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %5)
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.cond.i.qcom_adreno_smmu_is_gpu_device.exit_crit_edge, label %for.body.i

for.cond.i.qcom_adreno_smmu_is_gpu_device.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qcom_adreno_smmu_is_gpu_device.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr %struct.iommu_fwspec, ptr %retval.0.i.i, i32 0, i32 4, i32 %inc.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %conv13.i = and i32 %9, 65535
  %cmp14.i = icmp eq i32 %conv13.i, 0
  br i1 %cmp14.i, label %for.body.i.qcom_adreno_smmu_is_gpu_device.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

for.body.i.qcom_adreno_smmu_is_gpu_device.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qcom_adreno_smmu_is_gpu_device.exit

qcom_adreno_smmu_is_gpu_device.exit:              ; preds = %for.body.i.qcom_adreno_smmu_is_gpu_device.exit_crit_edge, %for.cond.i.qcom_adreno_smmu_is_gpu_device.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %5)
  %cmp.i.le = icmp ult i32 %inc.i, %5
  br i1 %cmp.i.le, label %qcom_adreno_smmu_is_gpu_device.exit.if.end_crit_edge, label %qcom_adreno_smmu_is_gpu_device.exit.if.else_crit_edge

qcom_adreno_smmu_is_gpu_device.exit.if.else_crit_edge: ; preds = %qcom_adreno_smmu_is_gpu_device.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

qcom_adreno_smmu_is_gpu_device.exit.if.end_crit_edge: ; preds = %qcom_adreno_smmu_is_gpu_device.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %qcom_adreno_smmu_is_gpu_device.exit.if.else_crit_edge, %dev_iommu_fwspec_get.exit.i.if.else_crit_edge
  %num_context_banks = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 8
  %10 = ptrtoint ptr %num_context_banks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_context_banks, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %qcom_adreno_smmu_is_gpu_device.exit.if.end_crit_edge, %for.body.i.preheader.if.end_crit_edge
  %start.addr.0 = phi i32 [ 1, %if.else ], [ 0, %qcom_adreno_smmu_is_gpu_device.exit.if.end_crit_edge ], [ 0, %for.body.i.preheader.if.end_crit_edge ]
  %count.0 = phi i32 [ %11, %if.else ], [ 1, %qcom_adreno_smmu_is_gpu_device.exit.if.end_crit_edge ], [ 1, %for.body.i.preheader.if.end_crit_edge ]
  %context_map = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 10
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end
  %call.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %context_map, i32 noundef %count.0, i32 noundef %start.addr.0) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %count.0)
  %cmp.i3 = icmp eq i32 %call.i, %count.0
  br i1 %cmp.i3, label %do.body.i.__arm_smmu_alloc_bitmap.exit_crit_edge, label %do.cond.i

do.body.i.__arm_smmu_alloc_bitmap.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__arm_smmu_alloc_bitmap.exit

do.cond.i:                                        ; preds = %do.body.i
  %call1.i = tail call i32 @_test_and_set_bit(i32 noundef %call.i, ptr noundef %context_map) #7
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %do.cond.i.__arm_smmu_alloc_bitmap.exit_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.cond.i.__arm_smmu_alloc_bitmap.exit_crit_edge: ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__arm_smmu_alloc_bitmap.exit

__arm_smmu_alloc_bitmap.exit:                     ; preds = %do.cond.i.__arm_smmu_alloc_bitmap.exit_crit_edge, %do.body.i.__arm_smmu_alloc_bitmap.exit_crit_edge
  %retval.0.i = phi i32 [ -28, %do.body.i.__arm_smmu_alloc_bitmap.exit_crit_edge ], [ %call.i, %do.cond.i.__arm_smmu_alloc_bitmap.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_adreno_smmu_write_sctlr(ptr noundef %smmu, i32 noundef %idx, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %stall_enabled = getelementptr inbounds %struct.qcom_smmu, ptr %smmu, i32 0, i32 3
  %0 = ptrtoint ptr %stall_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stall_enabled, align 4
  %shl = shl nuw i32 1, %idx
  %and = and i32 %1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select.v = select i1 %tobool.not, i32 256, i32 384
  %spec.select = or i32 %spec.select.v, %reg
  %numpage = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 2
  %2 = ptrtoint ptr %numpage to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %numpage, align 4
  %add = add i32 %3, %idx
  %impl.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 7
  %4 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %impl.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.if.else.i_crit_edge, label %land.lhs.true.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %write_reg.i = getelementptr inbounds %struct.arm_smmu_impl, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_reg.i, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i, !prof !31

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %7(ptr noundef %smmu, i32 noundef %add, i32 noundef 0, i32 noundef %spec.select) #7
  br label %arm_smmu_writel.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %8 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #7
  %base.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %9 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i, align 4
  %pgshift.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 3
  %11 = ptrtoint ptr %pgshift.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pgshift.i.i, align 4
  %shl.i.i = shl i32 %add, %12
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %shl.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %8) #7, !srcloc !32
  br label %arm_smmu_writel.exit

arm_smmu_writel.exit:                             ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_mmu500_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_qsmmu500_wait_safe_toggle(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @qcom_adreno_smmu_get_ttbr1_cfg(ptr nocapture noundef readonly %cookie) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pgtbl_ops = getelementptr inbounds %struct.arm_smmu_domain, ptr %cookie, i32 0, i32 1
  %0 = ptrtoint ptr %pgtbl_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pgtbl_ops, align 4
  %cfg = getelementptr i8, ptr %1, i32 -72
  ret ptr %cfg
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_adreno_smmu_set_ttbr0_cfg(ptr nocapture noundef readonly %cookie, ptr noundef readonly %pgtbl_cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pgtbl_ops = getelementptr inbounds %struct.arm_smmu_domain, ptr %cookie, i32 0, i32 1
  %0 = ptrtoint ptr %pgtbl_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pgtbl_ops, align 4
  %cfg1 = getelementptr inbounds %struct.arm_smmu_domain, ptr %cookie, i32 0, i32 4
  %2 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cookie, align 4
  %cbs = getelementptr inbounds %struct.arm_smmu_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %cbs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cbs, align 4
  %6 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cfg1, align 4
  %idxprom = zext i8 %7 to i32
  %arrayidx = getelementptr %struct.arm_smmu_cb, ptr %5, i32 %idxprom
  %tcr = getelementptr %struct.arm_smmu_cb, ptr %5, i32 %idxprom, i32 1
  %8 = ptrtoint ptr %tcr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tcr, align 8
  %and = and i32 %9, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup90_crit_edge

entry.cleanup90_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup90

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %pgtbl_cfg, null
  %and7 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool3.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  br i1 %tobool8.not, label %if.end10, label %if.then4.cleanup90_crit_edge

if.then4.cleanup90_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup90

if.end10:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %cfg11 = getelementptr i8, ptr %1, i32 -72
  %tcr5.i = getelementptr i8, ptr %1, i32 -32
  %10 = ptrtoint ptr %tcr5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load.i = load i32, ptr %tcr5.i, align 8
  %11 = lshr i32 %bf.load.i, 13
  %or132.i = and i32 %11, 65280
  %bf.lshr142.i = lshr i32 %bf.load.i, 15
  %bf.clear143.i = and i32 %bf.lshr142.i, 63
  %or169.i = or i32 %or132.i, %bf.clear143.i
  %12 = ptrtoint ptr %cfg11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cfg11, align 8
  %and170.i = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170.i)
  %tobool171.not.i = icmp eq i32 %and170.i, 0
  %shl173.i = shl nuw i32 %or169.i, 16
  %or175.i = or i32 %shl173.i, 128
  %or176.i = or i32 %or169.i, 8388608
  %tcr.0.i = select i1 %tobool171.not.i, i32 %or176.i, i32 %or175.i
  %14 = ptrtoint ptr %tcr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %tcr.0.i, ptr %tcr, align 8
  %cfg18 = getelementptr %struct.arm_smmu_cb, ptr %5, i32 %idxprom, i32 3
  %15 = ptrtoint ptr %cfg18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfg18, align 8
  %17 = getelementptr inbounds %struct.arm_smmu_cfg, ptr %16, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %17, align 2
  %conv34 = zext i16 %19 to i64
  %shl = shl nuw i64 %conv34, 48
  br label %if.end85

if.else:                                          ; preds = %if.end
  br i1 %tobool8.not, label %if.else.cleanup90_crit_edge, label %if.end45

if.else.cleanup90_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup90

if.end45:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %tcr5.i116 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %pgtbl_cfg, i32 0, i32 7, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %tcr5.i116 to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load.i117 = load i32, ptr %tcr5.i116, align 8
  %21 = lshr i32 %bf.load.i117, 13
  %or132.i118 = and i32 %21, 65280
  %bf.lshr142.i119 = lshr i32 %bf.load.i117, 15
  %bf.clear143.i120 = and i32 %bf.lshr142.i119, 63
  %or169.i121 = or i32 %or132.i118, %bf.clear143.i120
  %22 = ptrtoint ptr %pgtbl_cfg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pgtbl_cfg, align 8
  %and170.i122 = and i32 %23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170.i122)
  %tobool171.not.i123 = icmp eq i32 %and170.i122, 0
  %shl173.i124 = shl nuw i32 %or169.i121, 16
  %tcr.0.i127 = select i1 %tobool171.not.i123, i32 %or169.i121, i32 %shl173.i124
  %.masked = and i32 %9, -8388737
  %and47 = or i32 %tcr.0.i127, %.masked
  %24 = ptrtoint ptr %tcr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and47, ptr %tcr, align 8
  %25 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %pgtbl_cfg, i32 0, i32 7
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %25, align 8
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %arrayidx, align 8
  %cfg60 = getelementptr %struct.arm_smmu_cb, ptr %5, i32 %idxprom, i32 3
  %29 = ptrtoint ptr %cfg60 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cfg60, align 8
  %31 = getelementptr inbounds %struct.arm_smmu_cfg, ptr %30, i32 0, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %31, align 2
  %conv79 = zext i16 %33 to i64
  %shl80 = shl nuw i64 %conv79, 48
  %or84 = or i64 %shl80, %27
  br label %if.end85

if.end85:                                         ; preds = %if.end45, %if.end10
  %storemerge = phi i64 [ %or84, %if.end45 ], [ %shl, %if.end10 ]
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %storemerge, ptr %arrayidx, align 8
  %35 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cookie, align 4
  %cfg87 = getelementptr %struct.arm_smmu_cb, ptr %5, i32 %idxprom, i32 3
  %37 = ptrtoint ptr %cfg87 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cfg87, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %38, align 4
  %conv89 = zext i8 %40 to i32
  tail call void @arm_smmu_write_context_bank(ptr noundef %36, i32 noundef %conv89) #7
  br label %cleanup90

cleanup90:                                        ; preds = %if.end85, %if.else.cleanup90_crit_edge, %if.then4.cleanup90_crit_edge, %entry.cleanup90_crit_edge
  %retval.1 = phi i32 [ 0, %if.end85 ], [ -22, %entry.cleanup90_crit_edge ], [ -22, %if.then4.cleanup90_crit_edge ], [ -22, %if.else.cleanup90_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_adreno_smmu_get_fault_info(ptr nocapture noundef readonly %cookie, ptr nocapture noundef writeonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg1 = getelementptr inbounds %struct.arm_smmu_domain, ptr %cookie, i32 0, i32 4
  %0 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cookie, align 4
  %numpage = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %numpage to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %numpage, align 4
  %4 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cfg1, align 4
  %conv = zext i8 %5 to i32
  %add = add i32 %3, %conv
  %impl.i = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %impl.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i, !prof !31

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %9(ptr noundef %1, i32 noundef %add, i32 noundef 88) #7
  br label %arm_smmu_readl.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %base.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 4
  %pgshift.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %pgshift.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pgshift.i.i, align 4
  %shl.i.i = shl i32 %add, %13
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %shl.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 88
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !33
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  br label %arm_smmu_readl.exit

arm_smmu_readl.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %15, %if.end.i ]
  %fsr = getelementptr inbounds %struct.adreno_smmu_fault_info, ptr %info, i32 0, i32 3
  %16 = ptrtoint ptr %fsr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %retval.0.i, ptr %fsr, align 4
  %17 = ptrtoint ptr %numpage to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %numpage, align 4
  %19 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cfg1, align 4
  %conv5 = zext i8 %20 to i32
  %add6 = add i32 %18, %conv5
  %21 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %impl.i, align 4
  %tobool.not.i58 = icmp eq ptr %22, null
  br i1 %tobool.not.i58, label %arm_smmu_readl.exit.if.end.i68_crit_edge, label %land.lhs.true.i60

arm_smmu_readl.exit.if.end.i68_crit_edge:         ; preds = %arm_smmu_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i68

land.lhs.true.i60:                                ; preds = %arm_smmu_readl.exit
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %tobool2.not.i59 = icmp eq ptr %24, null
  br i1 %tobool2.not.i59, label %land.lhs.true.i60.if.end.i68_crit_edge, label %if.then.i62, !prof !31

land.lhs.true.i60.if.end.i68_crit_edge:           ; preds = %land.lhs.true.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i68

if.then.i62:                                      ; preds = %land.lhs.true.i60
  call void @__sanitizer_cov_trace_pc() #9
  %call.i61 = tail call i32 %24(ptr noundef %1, i32 noundef %add6, i32 noundef 104) #7
  br label %arm_smmu_readl.exit70

if.end.i68:                                       ; preds = %land.lhs.true.i60.if.end.i68_crit_edge, %arm_smmu_readl.exit.if.end.i68_crit_edge
  %base.i.i63 = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %base.i.i63 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i63, align 4
  %pgshift.i.i64 = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %pgshift.i.i64 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pgshift.i.i64, align 4
  %shl.i.i65 = shl i32 %add6, %28
  %add.ptr.i.i66 = getelementptr i8, ptr %26, i32 %shl.i.i65
  %add.ptr.i67 = getelementptr i8, ptr %add.ptr.i.i66, i32 104
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67) #7, !srcloc !33
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #7
  br label %arm_smmu_readl.exit70

arm_smmu_readl.exit70:                            ; preds = %if.end.i68, %if.then.i62
  %retval.0.i69 = phi i32 [ %call.i61, %if.then.i62 ], [ %30, %if.end.i68 ]
  %fsynr0 = getelementptr inbounds %struct.adreno_smmu_fault_info, ptr %info, i32 0, i32 4
  %31 = ptrtoint ptr %fsynr0 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %retval.0.i69, ptr %fsynr0, align 8
  %32 = ptrtoint ptr %numpage to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %numpage, align 4
  %34 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %cfg1, align 4
  %conv10 = zext i8 %35 to i32
  %add11 = add i32 %33, %conv10
  %36 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %impl.i, align 4
  %tobool.not.i72 = icmp eq ptr %37, null
  br i1 %tobool.not.i72, label %arm_smmu_readl.exit70.if.end.i82_crit_edge, label %land.lhs.true.i74

arm_smmu_readl.exit70.if.end.i82_crit_edge:       ; preds = %arm_smmu_readl.exit70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i82

land.lhs.true.i74:                                ; preds = %arm_smmu_readl.exit70
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %tobool2.not.i73 = icmp eq ptr %39, null
  br i1 %tobool2.not.i73, label %land.lhs.true.i74.if.end.i82_crit_edge, label %if.then.i76, !prof !31

land.lhs.true.i74.if.end.i82_crit_edge:           ; preds = %land.lhs.true.i74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i82

if.then.i76:                                      ; preds = %land.lhs.true.i74
  call void @__sanitizer_cov_trace_pc() #9
  %call.i75 = tail call i32 %39(ptr noundef %1, i32 noundef %add11, i32 noundef 108) #7
  br label %arm_smmu_readl.exit84

if.end.i82:                                       ; preds = %land.lhs.true.i74.if.end.i82_crit_edge, %arm_smmu_readl.exit70.if.end.i82_crit_edge
  %base.i.i77 = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %base.i.i77 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i77, align 4
  %pgshift.i.i78 = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 3
  %42 = ptrtoint ptr %pgshift.i.i78 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pgshift.i.i78, align 4
  %shl.i.i79 = shl i32 %add11, %43
  %add.ptr.i.i80 = getelementptr i8, ptr %41, i32 %shl.i.i79
  %add.ptr.i81 = getelementptr i8, ptr %add.ptr.i.i80, i32 108
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i81) #7, !srcloc !33
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #7
  br label %arm_smmu_readl.exit84

arm_smmu_readl.exit84:                            ; preds = %if.end.i82, %if.then.i76
  %retval.0.i83 = phi i32 [ %call.i75, %if.then.i76 ], [ %45, %if.end.i82 ]
  %fsynr1 = getelementptr inbounds %struct.adreno_smmu_fault_info, ptr %info, i32 0, i32 5
  %46 = ptrtoint ptr %fsynr1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %retval.0.i83, ptr %fsynr1, align 4
  %47 = ptrtoint ptr %numpage to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %numpage, align 4
  %49 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %cfg1, align 4
  %conv15 = zext i8 %50 to i32
  %add16 = add i32 %48, %conv15
  %51 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %impl.i, align 4
  %tobool.not.i86 = icmp eq ptr %52, null
  br i1 %tobool.not.i86, label %arm_smmu_readl.exit84.if.end.i96_crit_edge, label %land.lhs.true.i88

arm_smmu_readl.exit84.if.end.i96_crit_edge:       ; preds = %arm_smmu_readl.exit84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i96

land.lhs.true.i88:                                ; preds = %arm_smmu_readl.exit84
  %read_reg64.i = getelementptr inbounds %struct.arm_smmu_impl, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %read_reg64.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read_reg64.i, align 4
  %tobool2.not.i87 = icmp eq ptr %54, null
  br i1 %tobool2.not.i87, label %land.lhs.true.i88.if.end.i96_crit_edge, label %if.then.i90, !prof !31

land.lhs.true.i88.if.end.i96_crit_edge:           ; preds = %land.lhs.true.i88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i96

if.then.i90:                                      ; preds = %land.lhs.true.i88
  call void @__sanitizer_cov_trace_pc() #9
  %call.i89 = tail call i64 %54(ptr noundef %1, i32 noundef %add16, i32 noundef 96) #7
  br label %arm_smmu_readq.exit

if.end.i96:                                       ; preds = %land.lhs.true.i88.if.end.i96_crit_edge, %arm_smmu_readl.exit84.if.end.i96_crit_edge
  %base.i.i91 = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 1
  %55 = ptrtoint ptr %base.i.i91 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i.i91, align 4
  %pgshift.i.i92 = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 3
  %57 = ptrtoint ptr %pgshift.i.i92 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pgshift.i.i92, align 4
  %shl.i.i93 = shl i32 %add16, %58
  %add.ptr.i.i94 = getelementptr i8, ptr %56, i32 %shl.i.i93
  %add.ptr.i95 = getelementptr i8, ptr %add.ptr.i.i94, i32 96
  %add.ptr.i16.i = getelementptr i32, ptr %add.ptr.i95, i32 1
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.i) #7, !srcloc !33
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i95) #7, !srcloc !33
  %61 = zext i32 %59 to i64
  %62 = zext i32 %60 to i64
  %63 = shl nuw i64 %62, 32
  %64 = or i64 %63, %61
  %65 = tail call i64 @llvm.bswap.i64(i64 %64) #7
  br label %arm_smmu_readq.exit

arm_smmu_readq.exit:                              ; preds = %if.end.i96, %if.then.i90
  %retval.0.i97 = phi i64 [ %call.i89, %if.then.i90 ], [ %65, %if.end.i96 ]
  %66 = ptrtoint ptr %info to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %retval.0.i97, ptr %info, align 8
  %67 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %cfg1, align 4
  %conv19 = zext i8 %68 to i32
  %shl = shl nuw nsw i32 %conv19, 2
  %add20 = or i32 %shl, 1024
  %69 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %impl.i, align 4
  %tobool.not.i99 = icmp eq ptr %70, null
  br i1 %tobool.not.i99, label %arm_smmu_readq.exit.if.end.i109_crit_edge, label %land.lhs.true.i101

arm_smmu_readq.exit.if.end.i109_crit_edge:        ; preds = %arm_smmu_readq.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i109

land.lhs.true.i101:                               ; preds = %arm_smmu_readq.exit
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %tobool2.not.i100 = icmp eq ptr %72, null
  br i1 %tobool2.not.i100, label %land.lhs.true.i101.if.end.i109_crit_edge, label %if.then.i103, !prof !31

land.lhs.true.i101.if.end.i109_crit_edge:         ; preds = %land.lhs.true.i101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i109

if.then.i103:                                     ; preds = %land.lhs.true.i101
  call void @__sanitizer_cov_trace_pc() #9
  %call.i102 = tail call i32 %72(ptr noundef %1, i32 noundef 1, i32 noundef %add20) #7
  br label %arm_smmu_readl.exit111

if.end.i109:                                      ; preds = %land.lhs.true.i101.if.end.i109_crit_edge, %arm_smmu_readq.exit.if.end.i109_crit_edge
  %base.i.i104 = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 1
  %73 = ptrtoint ptr %base.i.i104 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i.i104, align 4
  %pgshift.i.i105 = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 3
  %75 = ptrtoint ptr %pgshift.i.i105 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pgshift.i.i105, align 4
  %shl.i.i106 = shl nuw i32 1, %76
  %add.ptr.i.i107 = getelementptr i8, ptr %74, i32 %shl.i.i106
  %add.ptr.i108 = getelementptr i8, ptr %add.ptr.i.i107, i32 %add20
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i108) #7, !srcloc !33
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #7
  br label %arm_smmu_readl.exit111

arm_smmu_readl.exit111:                           ; preds = %if.end.i109, %if.then.i103
  %retval.0.i110 = phi i32 [ %call.i102, %if.then.i103 ], [ %78, %if.end.i109 ]
  %cbfrsynra = getelementptr inbounds %struct.adreno_smmu_fault_info, ptr %info, i32 0, i32 6
  %79 = ptrtoint ptr %cbfrsynra to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %retval.0.i110, ptr %cbfrsynra, align 8
  %80 = ptrtoint ptr %numpage to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %numpage, align 4
  %82 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %cfg1, align 4
  %conv24 = zext i8 %83 to i32
  %add25 = add i32 %81, %conv24
  %84 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %impl.i, align 4
  %tobool.not.i113 = icmp eq ptr %85, null
  br i1 %tobool.not.i113, label %arm_smmu_readl.exit111.if.end.i125_crit_edge, label %land.lhs.true.i116

arm_smmu_readl.exit111.if.end.i125_crit_edge:     ; preds = %arm_smmu_readl.exit111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i125

land.lhs.true.i116:                               ; preds = %arm_smmu_readl.exit111
  %read_reg64.i114 = getelementptr inbounds %struct.arm_smmu_impl, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %read_reg64.i114 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %read_reg64.i114, align 4
  %tobool2.not.i115 = icmp eq ptr %87, null
  br i1 %tobool2.not.i115, label %land.lhs.true.i116.if.end.i125_crit_edge, label %if.then.i118, !prof !31

land.lhs.true.i116.if.end.i125_crit_edge:         ; preds = %land.lhs.true.i116
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i125

if.then.i118:                                     ; preds = %land.lhs.true.i116
  call void @__sanitizer_cov_trace_pc() #9
  %call.i117 = tail call i64 %87(ptr noundef %1, i32 noundef %add25, i32 noundef 32) #7
  br label %arm_smmu_readq.exit127

if.end.i125:                                      ; preds = %land.lhs.true.i116.if.end.i125_crit_edge, %arm_smmu_readl.exit111.if.end.i125_crit_edge
  %base.i.i119 = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 1
  %88 = ptrtoint ptr %base.i.i119 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base.i.i119, align 4
  %pgshift.i.i120 = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 3
  %90 = ptrtoint ptr %pgshift.i.i120 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pgshift.i.i120, align 4
  %shl.i.i121 = shl i32 %add25, %91
  %add.ptr.i.i122 = getelementptr i8, ptr %89, i32 %shl.i.i121
  %add.ptr.i123 = getelementptr i8, ptr %add.ptr.i.i122, i32 32
  %add.ptr.i16.i124 = getelementptr i32, ptr %add.ptr.i123, i32 1
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.i124) #7, !srcloc !33
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i123) #7, !srcloc !33
  %94 = zext i32 %92 to i64
  %95 = zext i32 %93 to i64
  %96 = shl nuw i64 %95, 32
  %97 = or i64 %96, %94
  %98 = tail call i64 @llvm.bswap.i64(i64 %97) #7
  br label %arm_smmu_readq.exit127

arm_smmu_readq.exit127:                           ; preds = %if.end.i125, %if.then.i118
  %retval.0.i126 = phi i64 [ %call.i117, %if.then.i118 ], [ %98, %if.end.i125 ]
  %ttbr0 = getelementptr inbounds %struct.adreno_smmu_fault_info, ptr %info, i32 0, i32 1
  %99 = ptrtoint ptr %ttbr0 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %retval.0.i126, ptr %ttbr0, align 8
  %100 = ptrtoint ptr %numpage to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %numpage, align 4
  %102 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %cfg1, align 4
  %conv29 = zext i8 %103 to i32
  %add30 = add i32 %101, %conv29
  %104 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %impl.i, align 4
  %tobool.not.i129 = icmp eq ptr %105, null
  br i1 %tobool.not.i129, label %arm_smmu_readq.exit127.if.end.i139_crit_edge, label %land.lhs.true.i131

arm_smmu_readq.exit127.if.end.i139_crit_edge:     ; preds = %arm_smmu_readq.exit127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i139

land.lhs.true.i131:                               ; preds = %arm_smmu_readq.exit127
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  %tobool2.not.i130 = icmp eq ptr %107, null
  br i1 %tobool2.not.i130, label %land.lhs.true.i131.if.end.i139_crit_edge, label %if.then.i133, !prof !31

land.lhs.true.i131.if.end.i139_crit_edge:         ; preds = %land.lhs.true.i131
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i139

if.then.i133:                                     ; preds = %land.lhs.true.i131
  call void @__sanitizer_cov_trace_pc() #9
  %call.i132 = tail call i32 %107(ptr noundef %1, i32 noundef %add30, i32 noundef 52) #7
  br label %arm_smmu_readl.exit141

if.end.i139:                                      ; preds = %land.lhs.true.i131.if.end.i139_crit_edge, %arm_smmu_readq.exit127.if.end.i139_crit_edge
  %base.i.i134 = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 1
  %108 = ptrtoint ptr %base.i.i134 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %base.i.i134, align 4
  %pgshift.i.i135 = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 3
  %110 = ptrtoint ptr %pgshift.i.i135 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %pgshift.i.i135, align 4
  %shl.i.i136 = shl i32 %add30, %111
  %add.ptr.i.i137 = getelementptr i8, ptr %109, i32 %shl.i.i136
  %add.ptr.i138 = getelementptr i8, ptr %add.ptr.i.i137, i32 52
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i138) #7, !srcloc !33
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #7
  br label %arm_smmu_readl.exit141

arm_smmu_readl.exit141:                           ; preds = %if.end.i139, %if.then.i133
  %retval.0.i140 = phi i32 [ %call.i132, %if.then.i133 ], [ %113, %if.end.i139 ]
  %contextidr = getelementptr inbounds %struct.adreno_smmu_fault_info, ptr %info, i32 0, i32 2
  %114 = ptrtoint ptr %contextidr to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %retval.0.i140, ptr %contextidr, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @qcom_adreno_smmu_set_stall(ptr nocapture noundef readonly %cookie, i1 noundef zeroext %enabled) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg1 = getelementptr inbounds %struct.arm_smmu_domain, ptr %cookie, i32 0, i32 4
  %0 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cookie, align 4
  %2 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cfg1, align 4
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  br i1 %enabled, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %stall_enabled = getelementptr inbounds %struct.qcom_smmu, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %stall_enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stall_enabled, align 4
  %or = or i32 %shl, %5
  store i32 %or, ptr %stall_enabled, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %neg = xor i32 %shl, -1
  %stall_enabled5 = getelementptr inbounds %struct.qcom_smmu, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %stall_enabled5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stall_enabled5, align 4
  %and = and i32 %7, %neg
  store i32 %and, ptr %stall_enabled5, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_adreno_smmu_resume_translation(ptr nocapture noundef readonly %cookie, i1 noundef zeroext %terminate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cookie, align 4
  %spec.select = zext i1 %terminate to i32
  %cfg1 = getelementptr inbounds %struct.arm_smmu_domain, ptr %cookie, i32 0, i32 4
  %numpage = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %numpage to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %numpage, align 4
  %4 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cfg1, align 4
  %conv = zext i8 %5 to i32
  %add = add i32 %3, %conv
  %impl.i = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %impl.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.if.else.i_crit_edge, label %land.lhs.true.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %write_reg.i = getelementptr inbounds %struct.arm_smmu_impl, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_reg.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i, !prof !31

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %9(ptr noundef %1, i32 noundef %add, i32 noundef 8, i32 noundef %spec.select) #7
  br label %arm_smmu_writel.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %10 = select i1 %terminate, i32 16777216, i32 0
  %base.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i, align 4
  %pgshift.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %pgshift.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pgshift.i.i, align 4
  %shl.i.i = shl i32 %add, %14
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %shl.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #7, !srcloc !32
  br label %arm_smmu_writel.exit

arm_smmu_writel.exit:                             ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_smmu_write_context_bank(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_smmu_cfg_probe(ptr noundef %smmu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_mapping_groups = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 13
  %0 = ptrtoint ptr %num_mapping_groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_mapping_groups, align 4
  %sub = shl i32 %1, 2
  %add = add i32 %sub, 3068
  %impl.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 7
  %2 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %impl.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.else.i_crit_edge, label %land.lhs.true.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %write_reg.i = getelementptr inbounds %struct.arm_smmu_impl, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_reg.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i, !prof !31

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %5(ptr noundef %smmu, i32 noundef 0, i32 noundef %add, i32 noundef 65791) #7
  br label %arm_smmu_writel.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %base.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -16776960) #7, !srcloc !32
  br label %arm_smmu_writel.exit

arm_smmu_writel.exit:                             ; preds = %if.else.i, %if.then.i
  %8 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %impl.i, align 4
  %tobool.not.i198 = icmp eq ptr %9, null
  br i1 %tobool.not.i198, label %arm_smmu_writel.exit.if.end.i_crit_edge, label %land.lhs.true.i200

arm_smmu_writel.exit.if.end.i_crit_edge:          ; preds = %arm_smmu_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i200:                               ; preds = %arm_smmu_writel.exit
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool2.not.i199 = icmp eq ptr %11, null
  br i1 %tobool2.not.i199, label %land.lhs.true.i200.if.end.i_crit_edge, label %if.then.i201, !prof !31

land.lhs.true.i200.if.end.i_crit_edge:            ; preds = %land.lhs.true.i200
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i201:                                     ; preds = %land.lhs.true.i200
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %11(ptr noundef %smmu, i32 noundef 0, i32 noundef %add) #7
  br label %arm_smmu_readl.exit

if.end.i:                                         ; preds = %land.lhs.true.i200.if.end.i_crit_edge, %arm_smmu_writel.exit.if.end.i_crit_edge
  %base.i.i202 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %12 = ptrtoint ptr %base.i.i202 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i202, align 4
  %add.ptr.i204 = getelementptr i8, ptr %13, i32 %add
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i204) #7, !srcloc !33
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  br label %arm_smmu_readl.exit

arm_smmu_readl.exit:                              ; preds = %if.end.i, %if.then.i201
  %retval.0.i = phi i32 [ %call.i, %if.then.i201 ], [ %15, %if.end.i ]
  %16 = and i32 %retval.0.i, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %16)
  %cmp.not = icmp eq i32 %16, 65536
  br i1 %cmp.not, label %arm_smmu_readl.exit.if.end_crit_edge, label %if.then

arm_smmu_readl.exit.if.end_crit_edge:             ; preds = %arm_smmu_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %arm_smmu_readl.exit
  %bypass_quirk = getelementptr inbounds %struct.qcom_smmu, ptr %smmu, i32 0, i32 1
  %17 = ptrtoint ptr %bypass_quirk to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %bypass_quirk, align 4
  %num_context_banks = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 8
  %18 = ptrtoint ptr %num_context_banks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_context_banks, align 4
  %20 = trunc i32 %19 to i8
  %conv = add i8 %20, -1
  %bypass_cbndx = getelementptr inbounds %struct.qcom_smmu, ptr %smmu, i32 0, i32 2
  %21 = ptrtoint ptr %bypass_cbndx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv, ptr %bypass_cbndx, align 1
  %conv65 = zext i8 %conv to i32
  %context_map = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 10
  tail call void @_set_bit(i32 noundef %conv65, ptr noundef %context_map) #7
  %numpage = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 2
  %22 = ptrtoint ptr %numpage to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %numpage, align 4
  %24 = ptrtoint ptr %bypass_cbndx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bypass_cbndx, align 1
  %conv67 = zext i8 %25 to i32
  %add68 = add i32 %23, %conv67
  %26 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %impl.i, align 4
  %tobool.not.i206 = icmp eq ptr %27, null
  br i1 %tobool.not.i206, label %if.then.if.else.i213_crit_edge, label %land.lhs.true.i209

if.then.if.else.i213_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i213

land.lhs.true.i209:                               ; preds = %if.then
  %write_reg.i207 = getelementptr inbounds %struct.arm_smmu_impl, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %write_reg.i207 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_reg.i207, align 4
  %tobool2.not.i208 = icmp eq ptr %29, null
  br i1 %tobool2.not.i208, label %land.lhs.true.i209.if.else.i213_crit_edge, label %if.then.i210, !prof !31

land.lhs.true.i209.if.else.i213_crit_edge:        ; preds = %land.lhs.true.i209
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i213

if.then.i210:                                     ; preds = %land.lhs.true.i209
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %29(ptr noundef %smmu, i32 noundef %add68, i32 noundef 0, i32 noundef 0) #7
  br label %arm_smmu_writel.exit215

if.else.i213:                                     ; preds = %land.lhs.true.i209.if.else.i213_crit_edge, %if.then.if.else.i213_crit_edge
  %base.i.i211 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %30 = ptrtoint ptr %base.i.i211 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i211, align 4
  %pgshift.i.i212 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 3
  %32 = ptrtoint ptr %pgshift.i.i212 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pgshift.i.i212, align 4
  %shl.i.i = shl i32 %add68, %33
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 %shl.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !32
  br label %arm_smmu_writel.exit215

arm_smmu_writel.exit215:                          ; preds = %if.else.i213, %if.then.i210
  %34 = ptrtoint ptr %bypass_cbndx to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bypass_cbndx, align 1
  %conv86 = zext i8 %35 to i32
  %shl87 = shl nuw nsw i32 %conv86, 2
  %36 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %impl.i, align 4
  %tobool.not.i217 = icmp eq ptr %37, null
  br i1 %tobool.not.i217, label %arm_smmu_writel.exit215.if.else.i227_crit_edge, label %land.lhs.true.i220

arm_smmu_writel.exit215.if.else.i227_crit_edge:   ; preds = %arm_smmu_writel.exit215
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i227

land.lhs.true.i220:                               ; preds = %arm_smmu_writel.exit215
  %write_reg.i218 = getelementptr inbounds %struct.arm_smmu_impl, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %write_reg.i218 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write_reg.i218, align 4
  %tobool2.not.i219 = icmp eq ptr %39, null
  br i1 %tobool2.not.i219, label %land.lhs.true.i220.if.else.i227_crit_edge, label %if.then.i221, !prof !31

land.lhs.true.i220.if.else.i227_crit_edge:        ; preds = %land.lhs.true.i220
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i227

if.then.i221:                                     ; preds = %land.lhs.true.i220
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %39(ptr noundef %smmu, i32 noundef 1, i32 noundef %shl87, i32 noundef 65536) #7
  br label %if.end

if.else.i227:                                     ; preds = %land.lhs.true.i220.if.else.i227_crit_edge, %arm_smmu_writel.exit215.if.else.i227_crit_edge
  %base.i.i222 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %40 = ptrtoint ptr %base.i.i222 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i222, align 4
  %pgshift.i.i223 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 3
  %42 = ptrtoint ptr %pgshift.i.i223 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pgshift.i.i223, align 4
  %shl.i.i224 = shl nuw i32 1, %43
  %add.ptr.i.i225 = getelementptr i8, ptr %41, i32 %shl.i.i224
  %add.ptr.i226 = getelementptr i8, ptr %add.ptr.i.i225, i32 %shl87
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i226, i32 256) #7, !srcloc !32
  br label %if.end

if.end:                                           ; preds = %if.else.i227, %if.then.i221, %arm_smmu_readl.exit.if.end_crit_edge
  %44 = ptrtoint ptr %num_mapping_groups to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_mapping_groups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp90242.not = icmp eq i32 %45, 0
  br i1 %cmp90242.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %base.i.i236 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %smrs = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 16
  %s2crs = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0243 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl92 = shl i32 %i.0243, 2
  %add93 = add i32 %shl92, 2048
  %46 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %impl.i, align 4
  %tobool.not.i231 = icmp eq ptr %47, null
  br i1 %tobool.not.i231, label %for.body.if.end.i239_crit_edge, label %land.lhs.true.i233

for.body.if.end.i239_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i239

land.lhs.true.i233:                               ; preds = %for.body
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %tobool2.not.i232 = icmp eq ptr %49, null
  br i1 %tobool2.not.i232, label %land.lhs.true.i233.if.end.i239_crit_edge, label %if.then.i235, !prof !31

land.lhs.true.i233.if.end.i239_crit_edge:         ; preds = %land.lhs.true.i233
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i239

if.then.i235:                                     ; preds = %land.lhs.true.i233
  call void @__sanitizer_cov_trace_pc() #9
  %call.i234 = tail call i32 %49(ptr noundef %smmu, i32 noundef 0, i32 noundef %add93) #7
  br label %arm_smmu_readl.exit241

if.end.i239:                                      ; preds = %land.lhs.true.i233.if.end.i239_crit_edge, %for.body.if.end.i239_crit_edge
  %50 = ptrtoint ptr %base.i.i236 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i.i236, align 4
  %add.ptr.i238 = getelementptr i8, ptr %51, i32 %add93
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i238) #7, !srcloc !33
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #7
  br label %arm_smmu_readl.exit241

arm_smmu_readl.exit241:                           ; preds = %if.end.i239, %if.then.i235
  %retval.0.i240 = phi i32 [ %call.i234, %if.then.i235 ], [ %53, %if.end.i239 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i240)
  %tobool.not = icmp sgt i32 %retval.0.i240, -1
  br i1 %tobool.not, label %arm_smmu_readl.exit241.for.inc_crit_edge, label %if.then113

arm_smmu_readl.exit241.for.inc_crit_edge:         ; preds = %arm_smmu_readl.exit241
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then113:                                       ; preds = %arm_smmu_readl.exit241
  call void @__sanitizer_cov_trace_pc() #9
  %conv133 = trunc i32 %retval.0.i240 to i16
  %54 = ptrtoint ptr %smrs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %smrs, align 4
  %id = getelementptr %struct.arm_smmu_smr, ptr %55, i32 %i.0243, i32 1
  %56 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv133, ptr %id, align 2
  %and150 = lshr i32 %retval.0.i240, 16
  %57 = trunc i32 %and150 to i16
  %conv152 = and i16 %57, 32767
  %58 = load ptr, ptr %smrs, align 4
  %arrayidx154 = getelementptr %struct.arm_smmu_smr, ptr %58, i32 %i.0243
  %59 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv152, ptr %arrayidx154, align 2
  %60 = load ptr, ptr %smrs, align 4
  %valid = getelementptr %struct.arm_smmu_smr, ptr %60, i32 %i.0243, i32 2
  %61 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %valid, align 2
  %62 = ptrtoint ptr %s2crs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %s2crs, align 4
  %type = getelementptr %struct.arm_smmu_s2cr, ptr %63, i32 %i.0243, i32 2
  %64 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %type, align 4
  %65 = load ptr, ptr %s2crs, align 4
  %privcfg = getelementptr %struct.arm_smmu_s2cr, ptr %65, i32 %i.0243, i32 3
  %66 = ptrtoint ptr %privcfg to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %privcfg, align 4
  %67 = load ptr, ptr %s2crs, align 4
  %cbndx = getelementptr %struct.arm_smmu_s2cr, ptr %67, i32 %i.0243, i32 4
  %68 = ptrtoint ptr %cbndx to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -1, ptr %cbndx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then113, %arm_smmu_readl.exit241.for.inc_crit_edge
  %inc = add nuw i32 %i.0243, 1
  %69 = ptrtoint ptr %num_mapping_groups to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_mapping_groups, align 4
  %cmp90 = icmp ult i32 %inc, %70
  br i1 %cmp90, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @qcom_smmu_init_context(ptr nocapture noundef writeonly %smmu_domain, ptr nocapture noundef readnone %pgtbl_cfg, ptr nocapture noundef readnone %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flush_walk_prefer_tlbiasid = getelementptr inbounds %struct.arm_smmu_domain, ptr %smmu_domain, i32 0, i32 4, i32 5
  %0 = ptrtoint ptr %flush_walk_prefer_tlbiasid to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %flush_walk_prefer_tlbiasid, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_smmu_write_s2cr(ptr noundef %smmu, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s2crs = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 17
  %0 = ptrtoint ptr %s2crs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s2crs, align 4
  %cbndx1 = getelementptr %struct.arm_smmu_s2cr, ptr %1, i32 %idx, i32 4
  %2 = ptrtoint ptr %cbndx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cbndx1, align 4
  %type2 = getelementptr %struct.arm_smmu_s2cr, ptr %1, i32 %idx, i32 2
  %4 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type2, align 4
  %bypass_quirk = getelementptr inbounds %struct.qcom_smmu, ptr %smmu, i32 0, i32 1
  %6 = ptrtoint ptr %bypass_quirk to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bypass_quirk, align 4, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.do.body14_crit_edge, label %if.then

entry.do.body14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body14

if.then:                                          ; preds = %entry
  %8 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.then.do.body14_crit_edge [
    i32 1, label %if.then4
    i32 2, label %if.then8
  ]

if.then.do.body14_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body14

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %bypass_cbndx = getelementptr inbounds %struct.qcom_smmu, ptr %smmu, i32 0, i32 2
  %9 = ptrtoint ptr %bypass_cbndx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bypass_cbndx, align 1
  br label %do.body14

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body14

do.body14:                                        ; preds = %if.then8, %if.then4, %if.then.do.body14_crit_edge, %entry.do.body14_crit_edge
  %type.0 = phi i32 [ 0, %if.then4 ], [ 1, %if.then8 ], [ %5, %entry.do.body14_crit_edge ], [ %5, %if.then.do.body14_crit_edge ]
  %cbndx.0.shrunk = phi i8 [ %10, %if.then4 ], [ -1, %if.then8 ], [ %3, %entry.do.body14_crit_edge ], [ %3, %if.then.do.body14_crit_edge ]
  %cbndx.0 = zext i8 %cbndx.0.shrunk to i32
  %privcfg = getelementptr %struct.arm_smmu_s2cr, ptr %1, i32 %idx, i32 3
  %11 = ptrtoint ptr %privcfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %privcfg, align 4
  %shl = shl i32 %type.0, 16
  %and26 = and i32 %shl, 196608
  %or = or i32 %and26, %cbndx.0
  %shl75 = shl i32 %12, 24
  %and76 = and i32 %shl75, 50331648
  %or77 = or i32 %or, %and76
  %shl78 = shl i32 %idx, 2
  %add = add i32 %shl78, 3072
  %impl.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 7
  %13 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %impl.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %do.body14.if.else.i_crit_edge, label %land.lhs.true.i

do.body14.if.else.i_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %do.body14
  %write_reg.i = getelementptr inbounds %struct.arm_smmu_impl, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_reg.i, align 4
  %tobool2.not.i = icmp eq ptr %16, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i, !prof !31

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %16(ptr noundef %smmu, i32 noundef 0, i32 noundef %add, i32 noundef %or77) #7
  br label %arm_smmu_writel.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %do.body14.if.else.i_crit_edge
  %17 = tail call i32 @llvm.bswap.i32(i32 %or77) #7
  %base.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %18 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %17) #7, !srcloc !32
  br label %arm_smmu_writel.exit

arm_smmu_writel.exit:                             ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c", i32 448, i32 34}
!2 = !{ptr @qcom_adreno_smmu_impl, !3, !"qcom_adreno_smmu_impl", i1 false, i1 false}
!3 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c", i32 379, i32 35}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c", i32 365, i32 34}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c", i32 354, i32 3}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @qcom_sdm845_smmu500_reset._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @qcom_sdm845_smmu500_reset._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c", i32 185, i32 34}
!16 = !{ptr @qcom_smmu_client_of_match, !17, !"qcom_smmu_client_of_match", i1 false, i1 false}
!17 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c", i32 227, i32 34}
!18 = !{ptr @qcom_smmu_impl_of_match, !19, !"qcom_smmu_impl_of_match", i1 false, i1 false}
!19 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c", i32 405, i32 49}
!20 = !{ptr @qcom_smmu_impl, !21, !"qcom_smmu_impl", i1 false, i1 false}
!21 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c", i32 371, i32 35}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{i64 6908020}
!33 = !{i64 6908438}
!34 = !{i8 0, i8 2}
