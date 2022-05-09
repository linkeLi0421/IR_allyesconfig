; ModuleID = '/llk/IR_all_yes/drivers/soc/qcom/rpmpd.c_pt.bc'
source_filename = "../drivers/soc/qcom/rpmpd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rpmpd_desc = type { ptr, i32, i32 }
%struct.rpmpd = type { %struct.generic_pm_domain, ptr, i8, i32, i8, i32, i32, ptr, i32, i32 }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.43 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.43 = type { %struct.mutex }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.genpd_onecell_data = type { ptr, i32, ptr }
%struct.rpmpd_req = type { i32, i32, i32 }

@__initcall__kmod_rpmpd__174_649_rpmpd_init1 = internal global ptr @rpmpd_init, section ".initcall1.init", align 4
@__UNIQUE_ID_description175 = internal constant [70 x i8] c"rpmpd.description=Qualcomm Technologies, Inc. RPM Power Domain Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file176 = internal constant [34 x i8] c"rpmpd.file=drivers/soc/qcom/rpmpd\00", section ".modinfo", align 1
@__UNIQUE_ID_license177 = internal constant [21 x i8] c"rpmpd.license=GPL v2\00", section ".modinfo", align 1
@rpmpd_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rpmpd_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @rpmpd_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qcom-rpmpd\00", [21 x i8] zeroinitializer }, align 32
@rpmpd_match_table = internal constant { [14 x %struct.of_device_id], [680 x i8] } { [14 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,mdm9607-rpmpd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mdm9607_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8916-rpmpd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8916_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8939-rpmpd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8939_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8953-rpmpd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8953_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8976-rpmpd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8976_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8994-rpmpd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8994_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8996-rpmpd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8996_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8998-rpmpd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8998_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,qcm2290-rpmpd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @qcm2290_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,qcs404-rpmpd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @qcs404_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm660-rpmpd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdm660_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm6115-rpmpd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm6115_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm6125-rpmpd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm6125_desc }, %struct.of_device_id zeroinitializer], [680 x i8] zeroinitializer }, align 32
@rpmpd_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 596, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to retrieve handle to RPM\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rpmpd_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/soc/qcom/rpmpd.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rpmpd_probe._entry_ptr = internal global ptr @rpmpd_probe._entry, section ".printk_index", align 4
@rpmpd_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 618, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"rpmpds[] with empty entry at index=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rpmpd_probe._entry_ptr.9 = internal global ptr @rpmpd_probe._entry.6, section ".printk_index", align 4
@rpmpd_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @rpmpd_lock, i64 52), ptr getelementptr (i8, ptr @rpmpd_lock, i64 52) }, ptr @rpmpd_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rpmpd_lock.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rpmpd_lock\00", [21 x i8] zeroinitializer }, align 32
@mdm9607_desc = internal constant { %struct.rpmpd_desc, [20 x i8] } { %struct.rpmpd_desc { ptr @mdm9607_rpmpds, i32 6, i32 384 }, [20 x i8] zeroinitializer }, align 32
@msm8916_desc = internal constant { %struct.rpmpd_desc, [20 x i8] } { %struct.rpmpd_desc { ptr @msm8916_rpmpds, i32 5, i32 6 }, [20 x i8] zeroinitializer }, align 32
@msm8939_desc = internal constant { %struct.rpmpd_desc, [20 x i8] } { %struct.rpmpd_desc { ptr @msm8939_rpmpds, i32 8, i32 6 }, [20 x i8] zeroinitializer }, align 32
@msm8953_desc = internal constant { %struct.rpmpd_desc, [20 x i8] } { %struct.rpmpd_desc { ptr @msm8953_rpmpds, i32 7, i32 384 }, [20 x i8] zeroinitializer }, align 32
@msm8976_desc = internal constant { %struct.rpmpd_desc, [20 x i8] } { %struct.rpmpd_desc { ptr @msm8976_rpmpds, i32 6, i32 448 }, [20 x i8] zeroinitializer }, align 32
@msm8994_desc = internal constant { %struct.rpmpd_desc, [20 x i8] } { %struct.rpmpd_desc { ptr @msm8994_rpmpds, i32 7, i32 6 }, [20 x i8] zeroinitializer }, align 32
@msm8996_desc = internal constant { %struct.rpmpd_desc, [20 x i8] } { %struct.rpmpd_desc { ptr @msm8996_rpmpds, i32 7, i32 6 }, [20 x i8] zeroinitializer }, align 32
@msm8998_desc = internal constant { %struct.rpmpd_desc, [20 x i8] } { %struct.rpmpd_desc { ptr @msm8998_rpmpds, i32 10, i32 512 }, [20 x i8] zeroinitializer }, align 32
@qcm2290_desc = internal constant { %struct.rpmpd_desc, [20 x i8] } { %struct.rpmpd_desc { ptr @qcm2290_rpmpds, i32 8, i32 416 }, [20 x i8] zeroinitializer }, align 32
@qcs404_desc = internal constant { %struct.rpmpd_desc, [20 x i8] } { %struct.rpmpd_desc { ptr @qcs404_rpmpds, i32 7, i32 512 }, [20 x i8] zeroinitializer }, align 32
@sdm660_desc = internal constant { %struct.rpmpd_desc, [20 x i8] } { %struct.rpmpd_desc { ptr @sdm660_rpmpds, i32 10, i32 384 }, [20 x i8] zeroinitializer }, align 32
@sm6115_desc = internal constant { %struct.rpmpd_desc, [20 x i8] } { %struct.rpmpd_desc { ptr @sm6115_rpmpds, i32 8, i32 416 }, [20 x i8] zeroinitializer }, align 32
@sm6125_desc = internal constant { %struct.rpmpd_desc, [20 x i8] } { %struct.rpmpd_desc { ptr @sm6125_rpmpds, i32 6, i32 512 }, [20 x i8] zeroinitializer }, align 32
@mdm9607_rpmpds = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @mdm9607_vddcx, ptr @mdm9607_vddcx_ao, ptr @mdm9607_vddcx_vfl, ptr @mdm9607_vddmx, ptr @mdm9607_vddmx_ao, ptr @mdm9607_vddmx_vfl], [40 x i8] zeroinitializer }, align 32
@mdm9607_vddcx = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.12, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @mdm9607_vddcx_ao, i8 0, i32 0, i8 0, i32 1634758003, i32 3, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@mdm9607_vddcx_ao = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.13, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @mdm9607_vddcx, i8 1, i32 0, i8 0, i32 1634758003, i32 3, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@mdm9607_vddcx_vfl = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.14, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 1634758003, i32 3, ptr null, i32 0, i32 7104118 }, [336 x i8] zeroinitializer }, align 32
@mdm9607_vddmx = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.15, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @mdm9607_vddmx_ao, i8 0, i32 0, i8 0, i32 1634690156, i32 12, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@mdm9607_vddmx_ao = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.16, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @mdm9607_vddmx, i8 1, i32 0, i8 0, i32 1634690156, i32 12, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@mdm9607_vddmx_vfl = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.17, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 1634690156, i32 12, ptr null, i32 0, i32 7104118 }, [336 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddcx\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vddcx_ao\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vddcx_vfl\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddmx\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vddmx_ao\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vddmx_vfl\00", [22 x i8] zeroinitializer }, align 32
@msm8916_rpmpds = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @msm8916_vddcx, ptr @msm8916_vddcx_ao, ptr @msm8916_vddcx_vfc, ptr @msm8916_vddmx, ptr @msm8916_vddmx_ao], [44 x i8] zeroinitializer }, align 32
@msm8916_vddcx = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.12, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @msm8916_vddcx_ao, i8 0, i32 0, i8 0, i32 1634758003, i32 1, ptr null, i32 0, i32 1852993379 }, [336 x i8] zeroinitializer }, align 32
@msm8916_vddcx_ao = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.13, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @msm8916_vddcx, i8 1, i32 0, i8 0, i32 1634758003, i32 1, ptr null, i32 0, i32 1852993379 }, [336 x i8] zeroinitializer }, align 32
@msm8916_vddcx_vfc = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.18, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 1634758003, i32 1, ptr null, i32 0, i32 6514294 }, [336 x i8] zeroinitializer }, align 32
@msm8916_vddmx = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.15, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @msm8916_vddmx_ao, i8 0, i32 0, i8 0, i32 1634690156, i32 3, ptr null, i32 0, i32 1852993379 }, [336 x i8] zeroinitializer }, align 32
@msm8916_vddmx_ao = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.16, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @msm8916_vddmx, i8 1, i32 0, i8 0, i32 1634690156, i32 3, ptr null, i32 0, i32 1852993379 }, [336 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vddcx_vfc\00", [22 x i8] zeroinitializer }, align 32
@msm8939_rpmpds = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @msm8939_vddmd, ptr @msm8939_vddmd_ao, ptr @msm8939_vddmd_vfc, ptr @msm8939_vddcx, ptr @msm8939_vddcx_ao, ptr @msm8939_vddcx_vfc, ptr @msm8939_vddmx, ptr @msm8939_vddmx_ao], [32 x i8] zeroinitializer }, align 32
@msm8939_vddmd = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.19, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @msm8939_vddmd_ao, i8 0, i32 0, i8 0, i32 1634758003, i32 1, ptr null, i32 0, i32 1852993379 }, [336 x i8] zeroinitializer }, align 32
@msm8939_vddmd_ao = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.20, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @msm8939_vddmd, i8 1, i32 0, i8 0, i32 1634758003, i32 1, ptr null, i32 0, i32 1852993379 }, [336 x i8] zeroinitializer }, align 32
@msm8939_vddmd_vfc = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.21, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 1634758003, i32 1, ptr null, i32 0, i32 6514294 }, [336 x i8] zeroinitializer }, align 32
@msm8939_vddcx = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.12, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @msm8939_vddcx_ao, i8 0, i32 0, i8 0, i32 1634758003, i32 2, ptr null, i32 0, i32 1852993379 }, [336 x i8] zeroinitializer }, align 32
@msm8939_vddcx_ao = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.13, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @msm8939_vddcx, i8 1, i32 0, i8 0, i32 1634758003, i32 2, ptr null, i32 0, i32 1852993379 }, [336 x i8] zeroinitializer }, align 32
@msm8939_vddcx_vfc = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.18, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 1634758003, i32 2, ptr null, i32 0, i32 6514294 }, [336 x i8] zeroinitializer }, align 32
@msm8939_vddmx = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.15, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @msm8939_vddmx_ao, i8 0, i32 0, i8 0, i32 1634690156, i32 3, ptr null, i32 0, i32 1852993379 }, [336 x i8] zeroinitializer }, align 32
@msm8939_vddmx_ao = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.16, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @msm8939_vddmx, i8 1, i32 0, i8 0, i32 1634690156, i32 3, ptr null, i32 0, i32 1852993379 }, [336 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddmd\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vddmd_ao\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vddmd_vfc\00", [22 x i8] zeroinitializer }, align 32
@msm8953_rpmpds = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @msm8953_vddmd, ptr @msm8953_vddmd_ao, ptr @msm8953_vddcx, ptr @msm8953_vddcx_ao, ptr @msm8953_vddcx_vfl, ptr @msm8953_vddmx, ptr @msm8953_vddmx_ao], [36 x i8] zeroinitializer }, align 32
@msm8953_vddmd = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.19, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @msm8953_vddmd_ao, i8 0, i32 0, i8 0, i32 1634758003, i32 1, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@msm8953_vddmd_ao = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.20, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @msm8953_vddmd, i8 1, i32 0, i8 0, i32 1634758003, i32 1, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@msm8953_vddcx = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.12, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @msm8953_vddcx_ao, i8 0, i32 0, i8 0, i32 1634758003, i32 2, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@msm8953_vddcx_ao = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.13, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @msm8953_vddcx, i8 1, i32 0, i8 0, i32 1634758003, i32 2, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@msm8953_vddcx_vfl = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.14, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 1634758003, i32 2, ptr null, i32 0, i32 7104118 }, [336 x i8] zeroinitializer }, align 32
@msm8953_vddmx = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.15, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @msm8953_vddmx_ao, i8 0, i32 0, i8 0, i32 1634758003, i32 7, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@msm8953_vddmx_ao = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.16, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @msm8953_vddmx, i8 1, i32 0, i8 0, i32 1634758003, i32 7, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@msm8976_rpmpds = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @msm8976_vddcx, ptr @msm8976_vddcx_ao, ptr @msm8976_vddcx_vfl, ptr @msm8976_vddmx, ptr @msm8976_vddmx_ao, ptr @msm8976_vddmx_vfl], [40 x i8] zeroinitializer }, align 32
@msm8976_vddcx = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.12, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @msm8976_vddcx_ao, i8 0, i32 0, i8 0, i32 1634758003, i32 2, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@msm8976_vddcx_ao = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.13, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @msm8976_vddcx, i8 1, i32 0, i8 0, i32 1634758003, i32 2, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@msm8976_vddcx_vfl = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.14, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 1668511602, i32 2, ptr null, i32 0, i32 7104118 }, [336 x i8] zeroinitializer }, align 32
@msm8976_vddmx = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.15, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @msm8976_vddmx_ao, i8 0, i32 0, i8 0, i32 1634758003, i32 6, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@msm8976_vddmx_ao = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.16, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @msm8976_vddmx, i8 1, i32 0, i8 0, i32 1634758003, i32 6, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@msm8976_vddmx_vfl = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.17, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 1836283762, i32 6, ptr null, i32 0, i32 7104118 }, [336 x i8] zeroinitializer }, align 32
@msm8994_rpmpds = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @msm8994_vddcx, ptr @msm8994_vddcx_ao, ptr @msm8994_vddcx_vfc, ptr @msm8994_vddmx, ptr @msm8994_vddmx_ao, ptr @msm8994_vddgfx, ptr @msm8994_vddgfx_vfc], [36 x i8] zeroinitializer }, align 32
@msm8994_vddcx = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.12, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @msm8994_vddcx_ao, i8 0, i32 0, i8 0, i32 1634758003, i32 1, ptr null, i32 0, i32 1852993379 }, [336 x i8] zeroinitializer }, align 32
@msm8994_vddcx_ao = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.13, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @msm8994_vddcx, i8 1, i32 0, i8 0, i32 1634758003, i32 1, ptr null, i32 0, i32 1852993379 }, [336 x i8] zeroinitializer }, align 32
@msm8994_vddcx_vfc = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.18, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 1634758003, i32 1, ptr null, i32 0, i32 6514294 }, [336 x i8] zeroinitializer }, align 32
@msm8994_vddmx = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.15, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @msm8994_vddmx_ao, i8 0, i32 0, i8 0, i32 1634758003, i32 2, ptr null, i32 0, i32 1852993379 }, [336 x i8] zeroinitializer }, align 32
@msm8994_vddmx_ao = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.16, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @msm8994_vddmx, i8 1, i32 0, i8 0, i32 1634758003, i32 2, ptr null, i32 0, i32 1852993379 }, [336 x i8] zeroinitializer }, align 32
@msm8994_vddgfx = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.22, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 1651535219, i32 2, ptr null, i32 0, i32 1852993379 }, [336 x i8] zeroinitializer }, align 32
@msm8994_vddgfx_vfc = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.23, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 1651535219, i32 2, ptr null, i32 0, i32 6514294 }, [336 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vddgfx\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vddgfx_vfc\00", [21 x i8] zeroinitializer }, align 32
@msm8996_rpmpds = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @msm8996_vddcx, ptr @msm8996_vddcx_ao, ptr @msm8996_vddcx_vfc, ptr @msm8996_vddmx, ptr @msm8996_vddmx_ao, ptr @msm8996_vddsscx, ptr @msm8996_vddsscx_vfc], [36 x i8] zeroinitializer }, align 32
@msm8996_vddcx = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.12, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @msm8996_vddcx_ao, i8 0, i32 0, i8 0, i32 1634758003, i32 1, ptr null, i32 0, i32 1852993379 }, [336 x i8] zeroinitializer }, align 32
@msm8996_vddcx_ao = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.13, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @msm8996_vddcx, i8 1, i32 0, i8 0, i32 1634758003, i32 1, ptr null, i32 0, i32 1852993379 }, [336 x i8] zeroinitializer }, align 32
@msm8996_vddcx_vfc = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.18, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 1634758003, i32 1, ptr null, i32 0, i32 6514294 }, [336 x i8] zeroinitializer }, align 32
@msm8996_vddmx = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.15, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @msm8996_vddmx_ao, i8 0, i32 0, i8 0, i32 1634758003, i32 2, ptr null, i32 0, i32 1852993379 }, [336 x i8] zeroinitializer }, align 32
@msm8996_vddmx_ao = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.16, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @msm8996_vddmx, i8 1, i32 0, i8 0, i32 1634758003, i32 2, ptr null, i32 0, i32 1852993379 }, [336 x i8] zeroinitializer }, align 32
@msm8996_vddsscx = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.24, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 1634690156, i32 26, ptr null, i32 0, i32 1852993379 }, [336 x i8] zeroinitializer }, align 32
@msm8996_vddsscx_vfc = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.25, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 1634690156, i32 26, ptr null, i32 0, i32 6514294 }, [336 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vddsscx\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vddsscx_vfc\00", [20 x i8] zeroinitializer }, align 32
@msm8998_rpmpds = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @msm8998_vddcx, ptr @msm8998_vddcx_ao, ptr @msm8998_vddcx_vfl, ptr @msm8998_vddmx, ptr @msm8998_vddmx_ao, ptr @msm8998_vddmx_vfl, ptr @msm8998_vdd_ssccx, ptr @msm8998_vdd_ssccx_vfl, ptr @msm8998_vdd_sscmx, ptr @msm8998_vdd_sscmx_vfl], [56 x i8] zeroinitializer }, align 32
@msm8998_vddcx = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.12, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @msm8998_vddcx_ao, i8 0, i32 0, i8 0, i32 2019784562, i32 0, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@msm8998_vddcx_ao = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.13, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @msm8998_vddcx, i8 1, i32 0, i8 0, i32 2019784562, i32 0, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@msm8998_vddcx_vfl = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.14, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 2019784562, i32 0, ptr null, i32 0, i32 7104118 }, [336 x i8] zeroinitializer }, align 32
@msm8998_vddmx = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.15, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @msm8998_vddmx_ao, i8 0, i32 0, i8 0, i32 2020439922, i32 0, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@msm8998_vddmx_ao = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.16, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @msm8998_vddmx, i8 1, i32 0, i8 0, i32 2020439922, i32 0, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@msm8998_vddmx_vfl = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.17, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 2020439922, i32 0, ptr null, i32 0, i32 7104118 }, [336 x i8] zeroinitializer }, align 32
@msm8998_vdd_ssccx = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.26, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 1668511602, i32 0, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@msm8998_vdd_ssccx_vfl = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.27, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 1668511602, i32 0, ptr null, i32 0, i32 7104118 }, [336 x i8] zeroinitializer }, align 32
@msm8998_vdd_sscmx = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.28, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 1836283762, i32 0, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@msm8998_vdd_sscmx_vfl = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.29, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 1836283762, i32 0, ptr null, i32 0, i32 7104118 }, [336 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdd_ssccx\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vdd_ssccx_vfl\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdd_sscmx\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vdd_sscmx_vfl\00", [18 x i8] zeroinitializer }, align 32
@qcm2290_rpmpds = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @sm6115_vddcx, ptr @sm6115_vddcx_ao, ptr @sm6115_vddcx_vfl, ptr @sm6115_vddmx, ptr @sm6115_vddmx_ao, ptr @sm6115_vddmx_vfl, ptr @sm6115_vdd_lpi_cx, ptr @sm6115_vdd_lpi_mx], [32 x i8] zeroinitializer }, align 32
@sm6115_vddcx = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.12, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @sm6115_vddcx_ao, i8 0, i32 0, i8 0, i32 2019784562, i32 0, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@sm6115_vddcx_ao = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.13, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @sm6115_vddcx, i8 1, i32 0, i8 0, i32 2019784562, i32 0, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@sm6115_vddcx_vfl = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.14, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 2019784562, i32 0, ptr null, i32 0, i32 7104118 }, [336 x i8] zeroinitializer }, align 32
@sm6115_vddmx = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.15, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @sm6115_vddmx_ao, i8 0, i32 0, i8 0, i32 2020439922, i32 0, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@sm6115_vddmx_ao = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.16, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @sm6115_vddmx, i8 1, i32 0, i8 0, i32 2020439922, i32 0, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@sm6115_vddmx_vfl = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.17, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 2020439922, i32 0, ptr null, i32 0, i32 7104118 }, [336 x i8] zeroinitializer }, align 32
@sm6115_vdd_lpi_cx = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.30, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 1668052850, i32 0, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@sm6115_vdd_lpi_mx = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.31, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 1835825010, i32 0, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdd_lpi_cx\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdd_lpi_mx\00", [21 x i8] zeroinitializer }, align 32
@qcs404_rpmpds = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @qcs404_vddmx, ptr @qcs404_vddmx_ao, ptr @qcs404_vddmx_vfl, ptr @qcs404_vdd_lpicx, ptr @qcs404_vdd_lpicx_vfl, ptr @qcs404_vdd_lpimx, ptr @qcs404_vdd_lpimx_vfl], [36 x i8] zeroinitializer }, align 32
@qcs404_vddmx = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.15, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @qcs404_vddmx_ao, i8 0, i32 0, i8 0, i32 2020439922, i32 0, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@qcs404_vddmx_ao = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.16, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @qcs404_vddmx, i8 1, i32 0, i8 0, i32 2020439922, i32 0, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@qcs404_vddmx_vfl = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.17, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 2020439922, i32 0, ptr null, i32 0, i32 7104118 }, [336 x i8] zeroinitializer }, align 32
@qcs404_vdd_lpicx = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.32, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 1668052850, i32 0, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@qcs404_vdd_lpicx_vfl = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.33, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 1668052850, i32 0, ptr null, i32 0, i32 7104118 }, [336 x i8] zeroinitializer }, align 32
@qcs404_vdd_lpimx = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.34, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 1835825010, i32 0, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@qcs404_vdd_lpimx_vfl = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.35, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 1835825010, i32 0, ptr null, i32 0, i32 7104118 }, [336 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdd_lpicx\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vdd_lpicx_vfl\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdd_lpimx\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vdd_lpimx_vfl\00", [18 x i8] zeroinitializer }, align 32
@sdm660_rpmpds = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @sdm660_vddcx, ptr @sdm660_vddcx_ao, ptr @sdm660_vddcx_vfl, ptr @sdm660_vddmx, ptr @sdm660_vddmx_ao, ptr @sdm660_vddmx_vfl, ptr @sdm660_vdd_ssccx, ptr @sdm660_vdd_ssccx_vfl, ptr @sdm660_vdd_sscmx, ptr @sdm660_vdd_sscmx_vfl], [56 x i8] zeroinitializer }, align 32
@sdm660_vddcx = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.12, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @sdm660_vddcx_ao, i8 0, i32 0, i8 0, i32 2019784562, i32 0, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@sdm660_vddcx_ao = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.13, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @sdm660_vddcx, i8 1, i32 0, i8 0, i32 2019784562, i32 0, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@sdm660_vddcx_vfl = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.14, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 2019784562, i32 0, ptr null, i32 0, i32 7104118 }, [336 x i8] zeroinitializer }, align 32
@sdm660_vddmx = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.15, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @sdm660_vddmx_ao, i8 0, i32 0, i8 0, i32 2020439922, i32 0, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@sdm660_vddmx_ao = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.16, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @sdm660_vddmx, i8 1, i32 0, i8 0, i32 2020439922, i32 0, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@sdm660_vddmx_vfl = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.17, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 2020439922, i32 0, ptr null, i32 0, i32 7104118 }, [336 x i8] zeroinitializer }, align 32
@sdm660_vdd_ssccx = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.26, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 1668052850, i32 0, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@sdm660_vdd_ssccx_vfl = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.27, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 1668052850, i32 0, ptr null, i32 0, i32 7104118 }, [336 x i8] zeroinitializer }, align 32
@sdm660_vdd_sscmx = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.28, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 1835825010, i32 0, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@sdm660_vdd_sscmx_vfl = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.29, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 1835825010, i32 0, ptr null, i32 0, i32 7104118 }, [336 x i8] zeroinitializer }, align 32
@sm6115_rpmpds = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @sm6115_vddcx, ptr @sm6115_vddcx_ao, ptr @sm6115_vddcx_vfl, ptr @sm6115_vddmx, ptr @sm6115_vddmx_ao, ptr @sm6115_vddmx_vfl, ptr @sm6115_vdd_lpi_cx, ptr @sm6115_vdd_lpi_mx], [32 x i8] zeroinitializer }, align 32
@sm6125_rpmpds = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @sm6125_vddcx, ptr @sm6125_vddcx_ao, ptr @sm6125_vddcx_vfl, ptr @sm6125_vddmx, ptr @sm6125_vddmx_ao, ptr @sm6125_vddmx_vfl], [40 x i8] zeroinitializer }, align 32
@sm6125_vddcx = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.12, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @sm6125_vddcx_ao, i8 0, i32 0, i8 0, i32 2019784562, i32 0, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@sm6125_vddcx_ao = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.13, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @sm6125_vddcx, i8 1, i32 0, i8 0, i32 2019784562, i32 0, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@sm6125_vddcx_vfl = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.14, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 2019784562, i32 0, ptr null, i32 0, i32 7104118 }, [336 x i8] zeroinitializer }, align 32
@sm6125_vddmx = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.15, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @sm6125_vddmx_ao, i8 0, i32 0, i8 0, i32 2020439922, i32 0, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@sm6125_vddmx_ao = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.16, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @sm6125_vddmx, i8 1, i32 0, i8 0, i32 2020439922, i32 0, ptr null, i32 0, i32 1819700342 }, [336 x i8] zeroinitializer }, align 32
@sm6125_vddmx_vfl = internal global { %struct.rpmpd, [336 x i8] } { %struct.rpmpd { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.17, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, i8 0, i32 0, i8 0, i32 2020439922, i32 0, ptr null, i32 0, i32 7104118 }, [336 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 6514294, i64 7104118]
@___asan_gen_.36 = private unnamed_addr constant [13 x i8] c"rpmpd_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 636, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 638, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [18 x i8] c"rpmpd_match_table\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 437, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 596, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 617, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant [11 x i8] c"rpmpd_lock\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 118, i32 8 }
@___asan_gen_.81 = private unnamed_addr constant [13 x i8] c"mdm9607_desc\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 135, i32 32 }
@___asan_gen_.84 = private unnamed_addr constant [13 x i8] c"msm8916_desc\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 181, i32 32 }
@___asan_gen_.87 = private unnamed_addr constant [13 x i8] c"msm8939_desc\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 161, i32 32 }
@___asan_gen_.90 = private unnamed_addr constant [13 x i8] c"msm8953_desc\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 204, i32 32 }
@___asan_gen_.93 = private unnamed_addr constant [13 x i8] c"msm8976_desc\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 226, i32 32 }
@___asan_gen_.96 = private unnamed_addr constant [13 x i8] c"msm8994_desc\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 251, i32 32 }
@___asan_gen_.99 = private unnamed_addr constant [13 x i8] c"msm8996_desc\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 275, i32 32 }
@___asan_gen_.102 = private unnamed_addr constant [13 x i8] c"msm8998_desc\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 307, i32 32 }
@___asan_gen_.105 = private unnamed_addr constant [13 x i8] c"qcm2290_desc\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 431, i32 32 }
@___asan_gen_.108 = private unnamed_addr constant [12 x i8] c"qcs404_desc\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 333, i32 32 }
@___asan_gen_.111 = private unnamed_addr constant [12 x i8] c"sdm660_desc\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 365, i32 32 }
@___asan_gen_.114 = private unnamed_addr constant [12 x i8] c"sm6115_desc\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 392, i32 32 }
@___asan_gen_.117 = private unnamed_addr constant [12 x i8] c"sm6125_desc\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 414, i32 32 }
@___asan_gen_.120 = private unnamed_addr constant [15 x i8] c"mdm9607_rpmpds\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 126, i32 22 }
@___asan_gen_.123 = private unnamed_addr constant [14 x i8] c"mdm9607_vddcx\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"mdm9607_vddcx_ao\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [18 x i8] c"mdm9607_vddcx_vfl\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [14 x i8] c"mdm9607_vddmx\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"mdm9607_vddmx_ao\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [18 x i8] c"mdm9607_vddmx_vfl\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 121, i32 1 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 122, i32 1 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 124, i32 1 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 125, i32 1 }
@___asan_gen_.159 = private unnamed_addr constant [15 x i8] c"msm8916_rpmpds\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 173, i32 22 }
@___asan_gen_.162 = private unnamed_addr constant [14 x i8] c"msm8916_vddcx\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"msm8916_vddcx_ao\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 168, i32 1 }
@___asan_gen_.168 = private unnamed_addr constant [18 x i8] c"msm8916_vddcx_vfc\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [14 x i8] c"msm8916_vddmx\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"msm8916_vddmx_ao\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 169, i32 1 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 171, i32 1 }
@___asan_gen_.180 = private unnamed_addr constant [15 x i8] c"msm8939_rpmpds\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 150, i32 22 }
@___asan_gen_.183 = private unnamed_addr constant [14 x i8] c"msm8939_vddmd\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"msm8939_vddmd_ao\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [18 x i8] c"msm8939_vddmd_vfc\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [14 x i8] c"msm8939_vddcx\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [17 x i8] c"msm8939_vddcx_ao\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 145, i32 1 }
@___asan_gen_.198 = private unnamed_addr constant [18 x i8] c"msm8939_vddcx_vfc\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 146, i32 1 }
@___asan_gen_.201 = private unnamed_addr constant [14 x i8] c"msm8939_vddmx\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [17 x i8] c"msm8939_vddmx_ao\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 148, i32 1 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 142, i32 1 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 143, i32 1 }
@___asan_gen_.216 = private unnamed_addr constant [15 x i8] c"msm8953_rpmpds\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 194, i32 22 }
@___asan_gen_.219 = private unnamed_addr constant [14 x i8] c"msm8953_vddmd\00", align 1
@___asan_gen_.222 = private unnamed_addr constant [17 x i8] c"msm8953_vddmd_ao\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 188, i32 1 }
@___asan_gen_.225 = private unnamed_addr constant [14 x i8] c"msm8953_vddcx\00", align 1
@___asan_gen_.228 = private unnamed_addr constant [17 x i8] c"msm8953_vddcx_ao\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 189, i32 1 }
@___asan_gen_.231 = private unnamed_addr constant [18 x i8] c"msm8953_vddcx_vfl\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 192, i32 1 }
@___asan_gen_.234 = private unnamed_addr constant [14 x i8] c"msm8953_vddmx\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [17 x i8] c"msm8953_vddmx_ao\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 190, i32 1 }
@___asan_gen_.240 = private unnamed_addr constant [15 x i8] c"msm8976_rpmpds\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 217, i32 22 }
@___asan_gen_.243 = private unnamed_addr constant [14 x i8] c"msm8976_vddcx\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [17 x i8] c"msm8976_vddcx_ao\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 211, i32 1 }
@___asan_gen_.249 = private unnamed_addr constant [18 x i8] c"msm8976_vddcx_vfl\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 214, i32 1 }
@___asan_gen_.252 = private unnamed_addr constant [14 x i8] c"msm8976_vddmx\00", align 1
@___asan_gen_.255 = private unnamed_addr constant [17 x i8] c"msm8976_vddmx_ao\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 212, i32 1 }
@___asan_gen_.258 = private unnamed_addr constant [18 x i8] c"msm8976_vddmx_vfl\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 215, i32 1 }
@___asan_gen_.261 = private unnamed_addr constant [15 x i8] c"msm8994_rpmpds\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 241, i32 22 }
@___asan_gen_.264 = private unnamed_addr constant [14 x i8] c"msm8994_vddcx\00", align 1
@___asan_gen_.267 = private unnamed_addr constant [17 x i8] c"msm8994_vddcx_ao\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 233, i32 1 }
@___asan_gen_.270 = private unnamed_addr constant [18 x i8] c"msm8994_vddcx_vfc\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 238, i32 1 }
@___asan_gen_.273 = private unnamed_addr constant [14 x i8] c"msm8994_vddmx\00", align 1
@___asan_gen_.276 = private unnamed_addr constant [17 x i8] c"msm8994_vddmx_ao\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 234, i32 1 }
@___asan_gen_.279 = private unnamed_addr constant [15 x i8] c"msm8994_vddgfx\00", align 1
@___asan_gen_.282 = private unnamed_addr constant [19 x i8] c"msm8994_vddgfx_vfc\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 236, i32 1 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 239, i32 1 }
@___asan_gen_.291 = private unnamed_addr constant [15 x i8] c"msm8996_rpmpds\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 265, i32 22 }
@___asan_gen_.294 = private unnamed_addr constant [14 x i8] c"msm8996_vddcx\00", align 1
@___asan_gen_.297 = private unnamed_addr constant [17 x i8] c"msm8996_vddcx_ao\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 258, i32 1 }
@___asan_gen_.300 = private unnamed_addr constant [18 x i8] c"msm8996_vddcx_vfc\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 262, i32 1 }
@___asan_gen_.303 = private unnamed_addr constant [14 x i8] c"msm8996_vddmx\00", align 1
@___asan_gen_.306 = private unnamed_addr constant [17 x i8] c"msm8996_vddmx_ao\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 259, i32 1 }
@___asan_gen_.309 = private unnamed_addr constant [16 x i8] c"msm8996_vddsscx\00", align 1
@___asan_gen_.312 = private unnamed_addr constant [20 x i8] c"msm8996_vddsscx_vfc\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 260, i32 1 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 263, i32 1 }
@___asan_gen_.321 = private unnamed_addr constant [15 x i8] c"msm8998_rpmpds\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 294, i32 22 }
@___asan_gen_.324 = private unnamed_addr constant [14 x i8] c"msm8998_vddcx\00", align 1
@___asan_gen_.327 = private unnamed_addr constant [17 x i8] c"msm8998_vddcx_ao\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 282, i32 1 }
@___asan_gen_.330 = private unnamed_addr constant [18 x i8] c"msm8998_vddcx_vfl\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 283, i32 1 }
@___asan_gen_.333 = private unnamed_addr constant [14 x i8] c"msm8998_vddmx\00", align 1
@___asan_gen_.336 = private unnamed_addr constant [17 x i8] c"msm8998_vddmx_ao\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 285, i32 1 }
@___asan_gen_.339 = private unnamed_addr constant [18 x i8] c"msm8998_vddmx_vfl\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 286, i32 1 }
@___asan_gen_.342 = private unnamed_addr constant [18 x i8] c"msm8998_vdd_ssccx\00", align 1
@___asan_gen_.345 = private unnamed_addr constant [22 x i8] c"msm8998_vdd_ssccx_vfl\00", align 1
@___asan_gen_.348 = private unnamed_addr constant [18 x i8] c"msm8998_vdd_sscmx\00", align 1
@___asan_gen_.351 = private unnamed_addr constant [22 x i8] c"msm8998_vdd_sscmx_vfl\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 288, i32 1 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 289, i32 1 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 291, i32 1 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 292, i32 1 }
@___asan_gen_.366 = private unnamed_addr constant [15 x i8] c"qcm2290_rpmpds\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 420, i32 22 }
@___asan_gen_.369 = private unnamed_addr constant [13 x i8] c"sm6115_vddcx\00", align 1
@___asan_gen_.372 = private unnamed_addr constant [16 x i8] c"sm6115_vddcx_ao\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 372, i32 1 }
@___asan_gen_.375 = private unnamed_addr constant [17 x i8] c"sm6115_vddcx_vfl\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 373, i32 1 }
@___asan_gen_.378 = private unnamed_addr constant [13 x i8] c"sm6115_vddmx\00", align 1
@___asan_gen_.381 = private unnamed_addr constant [16 x i8] c"sm6115_vddmx_ao\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 375, i32 1 }
@___asan_gen_.384 = private unnamed_addr constant [17 x i8] c"sm6115_vddmx_vfl\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 376, i32 1 }
@___asan_gen_.387 = private unnamed_addr constant [18 x i8] c"sm6115_vdd_lpi_cx\00", align 1
@___asan_gen_.390 = private unnamed_addr constant [18 x i8] c"sm6115_vdd_lpi_mx\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 378, i32 1 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 379, i32 1 }
@___asan_gen_.399 = private unnamed_addr constant [14 x i8] c"qcs404_rpmpds\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 323, i32 22 }
@___asan_gen_.402 = private unnamed_addr constant [13 x i8] c"qcs404_vddmx\00", align 1
@___asan_gen_.405 = private unnamed_addr constant [16 x i8] c"qcs404_vddmx_ao\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 314, i32 1 }
@___asan_gen_.408 = private unnamed_addr constant [17 x i8] c"qcs404_vddmx_vfl\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 315, i32 1 }
@___asan_gen_.411 = private unnamed_addr constant [17 x i8] c"qcs404_vdd_lpicx\00", align 1
@___asan_gen_.414 = private unnamed_addr constant [21 x i8] c"qcs404_vdd_lpicx_vfl\00", align 1
@___asan_gen_.417 = private unnamed_addr constant [17 x i8] c"qcs404_vdd_lpimx\00", align 1
@___asan_gen_.420 = private unnamed_addr constant [21 x i8] c"qcs404_vdd_lpimx_vfl\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 317, i32 1 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 318, i32 1 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 320, i32 1 }
@___asan_gen_.432 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 321, i32 1 }
@___asan_gen_.435 = private unnamed_addr constant [14 x i8] c"sdm660_rpmpds\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 352, i32 22 }
@___asan_gen_.438 = private unnamed_addr constant [13 x i8] c"sdm660_vddcx\00", align 1
@___asan_gen_.441 = private unnamed_addr constant [16 x i8] c"sdm660_vddcx_ao\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 340, i32 1 }
@___asan_gen_.444 = private unnamed_addr constant [17 x i8] c"sdm660_vddcx_vfl\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 341, i32 1 }
@___asan_gen_.447 = private unnamed_addr constant [13 x i8] c"sdm660_vddmx\00", align 1
@___asan_gen_.450 = private unnamed_addr constant [16 x i8] c"sdm660_vddmx_ao\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 343, i32 1 }
@___asan_gen_.453 = private unnamed_addr constant [17 x i8] c"sdm660_vddmx_vfl\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 344, i32 1 }
@___asan_gen_.456 = private unnamed_addr constant [17 x i8] c"sdm660_vdd_ssccx\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 346, i32 1 }
@___asan_gen_.459 = private unnamed_addr constant [21 x i8] c"sdm660_vdd_ssccx_vfl\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 347, i32 1 }
@___asan_gen_.462 = private unnamed_addr constant [17 x i8] c"sdm660_vdd_sscmx\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 349, i32 1 }
@___asan_gen_.465 = private unnamed_addr constant [21 x i8] c"sdm660_vdd_sscmx_vfl\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 350, i32 1 }
@___asan_gen_.468 = private unnamed_addr constant [14 x i8] c"sm6115_rpmpds\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 381, i32 22 }
@___asan_gen_.471 = private unnamed_addr constant [14 x i8] c"sm6125_rpmpds\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 405, i32 22 }
@___asan_gen_.474 = private unnamed_addr constant [13 x i8] c"sm6125_vddcx\00", align 1
@___asan_gen_.477 = private unnamed_addr constant [16 x i8] c"sm6125_vddcx_ao\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 399, i32 1 }
@___asan_gen_.480 = private unnamed_addr constant [17 x i8] c"sm6125_vddcx_vfl\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 400, i32 1 }
@___asan_gen_.483 = private unnamed_addr constant [13 x i8] c"sm6125_vddmx\00", align 1
@___asan_gen_.486 = private unnamed_addr constant [16 x i8] c"sm6125_vddmx_ao\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 402, i32 1 }
@___asan_gen_.489 = private unnamed_addr constant [17 x i8] c"sm6125_vddmx_vfl\00", align 1
@___asan_gen_.490 = private constant [28 x i8] c"../drivers/soc/qcom/rpmpd.c\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 403, i32 1 }
@llvm.compiler.used = appending global [158 x ptr] [ptr @__UNIQUE_ID_description175, ptr @__UNIQUE_ID_file176, ptr @__UNIQUE_ID_license177, ptr @__initcall__kmod_rpmpd__174_649_rpmpd_init1, ptr @rpmpd_probe._entry, ptr @rpmpd_probe._entry.6, ptr @rpmpd_probe._entry_ptr, ptr @rpmpd_probe._entry_ptr.9, ptr @rpmpd_driver, ptr @.str, ptr @rpmpd_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @rpmpd_lock, ptr @.str.10, ptr @.str.11, ptr @mdm9607_desc, ptr @msm8916_desc, ptr @msm8939_desc, ptr @msm8953_desc, ptr @msm8976_desc, ptr @msm8994_desc, ptr @msm8996_desc, ptr @msm8998_desc, ptr @qcm2290_desc, ptr @qcs404_desc, ptr @sdm660_desc, ptr @sm6115_desc, ptr @sm6125_desc, ptr @mdm9607_rpmpds, ptr @mdm9607_vddcx, ptr @mdm9607_vddcx_ao, ptr @mdm9607_vddcx_vfl, ptr @mdm9607_vddmx, ptr @mdm9607_vddmx_ao, ptr @mdm9607_vddmx_vfl, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @msm8916_rpmpds, ptr @msm8916_vddcx, ptr @msm8916_vddcx_ao, ptr @msm8916_vddcx_vfc, ptr @msm8916_vddmx, ptr @msm8916_vddmx_ao, ptr @.str.18, ptr @msm8939_rpmpds, ptr @msm8939_vddmd, ptr @msm8939_vddmd_ao, ptr @msm8939_vddmd_vfc, ptr @msm8939_vddcx, ptr @msm8939_vddcx_ao, ptr @msm8939_vddcx_vfc, ptr @msm8939_vddmx, ptr @msm8939_vddmx_ao, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @msm8953_rpmpds, ptr @msm8953_vddmd, ptr @msm8953_vddmd_ao, ptr @msm8953_vddcx, ptr @msm8953_vddcx_ao, ptr @msm8953_vddcx_vfl, ptr @msm8953_vddmx, ptr @msm8953_vddmx_ao, ptr @msm8976_rpmpds, ptr @msm8976_vddcx, ptr @msm8976_vddcx_ao, ptr @msm8976_vddcx_vfl, ptr @msm8976_vddmx, ptr @msm8976_vddmx_ao, ptr @msm8976_vddmx_vfl, ptr @msm8994_rpmpds, ptr @msm8994_vddcx, ptr @msm8994_vddcx_ao, ptr @msm8994_vddcx_vfc, ptr @msm8994_vddmx, ptr @msm8994_vddmx_ao, ptr @msm8994_vddgfx, ptr @msm8994_vddgfx_vfc, ptr @.str.22, ptr @.str.23, ptr @msm8996_rpmpds, ptr @msm8996_vddcx, ptr @msm8996_vddcx_ao, ptr @msm8996_vddcx_vfc, ptr @msm8996_vddmx, ptr @msm8996_vddmx_ao, ptr @msm8996_vddsscx, ptr @msm8996_vddsscx_vfc, ptr @.str.24, ptr @.str.25, ptr @msm8998_rpmpds, ptr @msm8998_vddcx, ptr @msm8998_vddcx_ao, ptr @msm8998_vddcx_vfl, ptr @msm8998_vddmx, ptr @msm8998_vddmx_ao, ptr @msm8998_vddmx_vfl, ptr @msm8998_vdd_ssccx, ptr @msm8998_vdd_ssccx_vfl, ptr @msm8998_vdd_sscmx, ptr @msm8998_vdd_sscmx_vfl, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @qcm2290_rpmpds, ptr @sm6115_vddcx, ptr @sm6115_vddcx_ao, ptr @sm6115_vddcx_vfl, ptr @sm6115_vddmx, ptr @sm6115_vddmx_ao, ptr @sm6115_vddmx_vfl, ptr @sm6115_vdd_lpi_cx, ptr @sm6115_vdd_lpi_mx, ptr @.str.30, ptr @.str.31, ptr @qcs404_rpmpds, ptr @qcs404_vddmx, ptr @qcs404_vddmx_ao, ptr @qcs404_vddmx_vfl, ptr @qcs404_vdd_lpicx, ptr @qcs404_vdd_lpicx_vfl, ptr @qcs404_vdd_lpimx, ptr @qcs404_vdd_lpimx_vfl, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @sdm660_rpmpds, ptr @sdm660_vddcx, ptr @sdm660_vddcx_ao, ptr @sdm660_vddcx_vfl, ptr @sdm660_vddmx, ptr @sdm660_vddmx_ao, ptr @sdm660_vddmx_vfl, ptr @sdm660_vdd_ssccx, ptr @sdm660_vdd_ssccx_vfl, ptr @sdm660_vdd_sscmx, ptr @sdm660_vdd_sscmx_vfl, ptr @sm6115_rpmpds, ptr @sm6125_rpmpds, ptr @sm6125_vddcx, ptr @sm6125_vddcx_ao, ptr @sm6125_vddcx_vfl, ptr @sm6125_vddmx, ptr @sm6125_vddmx_ao, ptr @sm6125_vddmx_vfl], section "llvm.metadata"
@0 = internal global [152 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmpd_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmpd_match_table to i32), i32 2744, i32 3424, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmpd_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmpd_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmpd_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdm9607_desc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_desc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8939_desc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8953_desc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8976_desc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8994_desc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_desc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_desc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcm2290_desc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcs404_desc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm660_desc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6115_desc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6125_desc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdm9607_rpmpds to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdm9607_vddcx to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdm9607_vddcx_ao to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdm9607_vddcx_vfl to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdm9607_vddmx to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdm9607_vddmx_ao to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdm9607_vddmx_vfl to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_rpmpds to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_vddcx to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_vddcx_ao to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_vddcx_vfc to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_vddmx to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_vddmx_ao to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8939_rpmpds to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8939_vddmd to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8939_vddmd_ao to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8939_vddmd_vfc to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8939_vddcx to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8939_vddcx_ao to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8939_vddcx_vfc to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8939_vddmx to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8939_vddmx_ao to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8953_rpmpds to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8953_vddmd to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8953_vddmd_ao to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8953_vddcx to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8953_vddcx_ao to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8953_vddcx_vfl to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8953_vddmx to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8953_vddmx_ao to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8976_rpmpds to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8976_vddcx to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8976_vddcx_ao to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8976_vddcx_vfl to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8976_vddmx to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8976_vddmx_ao to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8976_vddmx_vfl to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8994_rpmpds to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8994_vddcx to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8994_vddcx_ao to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8994_vddcx_vfc to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8994_vddmx to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8994_vddmx_ao to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8994_vddgfx to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8994_vddgfx_vfc to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_rpmpds to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_vddcx to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_vddcx_ao to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_vddcx_vfc to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_vddmx to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_vddmx_ao to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_vddsscx to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_vddsscx_vfc to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_rpmpds to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_vddcx to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_vddcx_ao to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_vddcx_vfl to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_vddmx to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_vddmx_ao to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_vddmx_vfl to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_vdd_ssccx to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_vdd_ssccx_vfl to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_vdd_sscmx to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_vdd_sscmx_vfl to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcm2290_rpmpds to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6115_vddcx to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6115_vddcx_ao to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6115_vddcx_vfl to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6115_vddmx to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6115_vddmx_ao to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6115_vddmx_vfl to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6115_vdd_lpi_cx to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6115_vdd_lpi_mx to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcs404_rpmpds to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcs404_vddmx to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcs404_vddmx_ao to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcs404_vddmx_vfl to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcs404_vdd_lpicx to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcs404_vdd_lpicx_vfl to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcs404_vdd_lpimx to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcs404_vdd_lpimx_vfl to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm660_rpmpds to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm660_vddcx to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm660_vddcx_ao to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm660_vddcx_vfl to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm660_vddmx to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm660_vddmx_ao to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm660_vddmx_vfl to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm660_vdd_ssccx to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm660_vdd_ssccx_vfl to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm660_vdd_sscmx to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm660_vdd_sscmx_vfl to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6115_rpmpds to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6125_rpmpds to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6125_vddcx to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6125_vddcx_ao to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6125_vddcx_vfl to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6125_vddmx to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6125_vddmx_ao to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6125_vddmx_vfl to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmpd_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rpmpd_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmpd_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call3, align 4
  %num_pds = getelementptr inbounds %struct.rpmpd_desc, ptr %call3, i32 0, i32 1
  %6 = ptrtoint ptr %num_pds to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_pds, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #6
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.end6.cleanup_crit_edge, label %if.end12

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 4) #6
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !264

devm_kcalloc.exit.thread:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %call.i, align 4
  %num_domains87 = getelementptr inbounds %struct.genpd_onecell_data, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %num_domains87 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %7, ptr %num_domains87, align 4
  br label %for.body.lr.ph

devm_kcalloc.exit:                                ; preds = %if.end12
  %12 = extractvalue { i32, i1 } %8, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %12, i32 noundef 3520) #6
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5.i.i, ptr %call.i, align 4
  %num_domains = getelementptr inbounds %struct.genpd_onecell_data, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %num_domains to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %7, ptr %num_domains, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp83.not = icmp eq i32 %7, 0
  br i1 %cmp83.not, label %devm_kcalloc.exit.for.end_crit_edge, label %devm_kcalloc.exit.for.body.lr.ph_crit_edge

devm_kcalloc.exit.for.body.lr.ph_crit_edge:       ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.lr.ph

devm_kcalloc.exit.for.end_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %devm_kcalloc.exit.for.body.lr.ph_crit_edge, %devm_kcalloc.exit.thread
  %max_state = getelementptr inbounds %struct.rpmpd_desc, ptr %call3, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.084 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.084
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %tobool15.not = icmp eq ptr %16, null
  br i1 %tobool15.not, label %do.end19, label %if.end21

do.end19:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %i.084) #9
  br label %for.inc

if.end21:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %rpm23 = getelementptr inbounds %struct.rpmpd, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %rpm23 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %3, ptr %rpm23, align 8
  %18 = ptrtoint ptr %max_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_state, align 4
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %max_state25 = getelementptr inbounds %struct.rpmpd, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %max_state25 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %19, ptr %max_state25, align 4
  %23 = load ptr, ptr %arrayidx, align 4
  %power_off = getelementptr inbounds %struct.generic_pm_domain, ptr %23, i32 0, i32 18
  %24 = ptrtoint ptr %power_off to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @rpmpd_power_off, ptr %power_off, align 8
  %25 = load ptr, ptr %arrayidx, align 4
  %power_on = getelementptr inbounds %struct.generic_pm_domain, ptr %25, i32 0, i32 19
  %26 = ptrtoint ptr %power_on to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @rpmpd_power_on, ptr %power_on, align 4
  %27 = load ptr, ptr %arrayidx, align 4
  %set_performance_state = getelementptr inbounds %struct.generic_pm_domain, ptr %27, i32 0, i32 23
  %28 = ptrtoint ptr %set_performance_state to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @rpmpd_set_performance, ptr %set_performance_state, align 4
  %29 = load ptr, ptr %arrayidx, align 4
  %opp_to_performance_state = getelementptr inbounds %struct.generic_pm_domain, ptr %29, i32 0, i32 22
  %30 = ptrtoint ptr %opp_to_performance_state to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @rpmpd_get_performance, ptr %opp_to_performance_state, align 8
  %31 = load ptr, ptr %arrayidx, align 4
  %call35 = tail call i32 @pm_genpd_init(ptr noundef %31, ptr noundef null, i1 noundef zeroext true) #6
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 4
  %arrayidx39 = getelementptr ptr, ptr %35, i32 %i.084
  %36 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %arrayidx39, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end21, %do.end19
  %inc = add nuw i32 %i.084, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %devm_kcalloc.exit.for.end_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %37 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %of_node, align 8
  %call41 = tail call i32 @of_genpd_add_provider_onecell(ptr noundef %38, ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call41, %for.end ], [ -19, %do.end ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmpd_power_off(ptr nocapture noundef %domain) #2 align 64 {
entry:
  %req.i = alloca %struct.rpmpd_req, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @rpmpd_lock, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i) #6
  %0 = getelementptr inbounds %struct.rpmpd_req, ptr %req.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rpmpd_req, ptr %req.i, i32 0, i32 2
  %2 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1852143475, ptr %req.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 67108864, ptr %0, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %1, align 4
  %rpm.i = getelementptr inbounds %struct.rpmpd, ptr %domain, i32 0, i32 7
  %5 = ptrtoint ptr %rpm.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rpm.i, align 8
  %res_type.i = getelementptr inbounds %struct.rpmpd, ptr %domain, i32 0, i32 5
  %7 = ptrtoint ptr %res_type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %res_type.i, align 8
  %res_id.i = getelementptr inbounds %struct.rpmpd, ptr %domain, i32 0, i32 6
  %9 = ptrtoint ptr %res_id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %res_id.i, align 4
  %call.i = call i32 @qcom_rpm_smd_write(ptr noundef %6, i32 noundef 0, i32 noundef %8, i32 noundef %10, ptr noundef nonnull %req.i, i32 noundef 12) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %enabled = getelementptr inbounds %struct.rpmpd, ptr %domain, i32 0, i32 4
  %11 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %enabled, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @rpmpd_lock) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmpd_power_on(ptr nocapture noundef %domain) #2 align 64 {
entry:
  %req.i = alloca %struct.rpmpd_req, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @rpmpd_lock, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i) #6
  %0 = getelementptr inbounds %struct.rpmpd_req, ptr %req.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rpmpd_req, ptr %req.i, i32 0, i32 2
  %2 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1852143475, ptr %req.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 67108864, ptr %0, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16777216, ptr %1, align 4
  %rpm.i = getelementptr inbounds %struct.rpmpd, ptr %domain, i32 0, i32 7
  %5 = ptrtoint ptr %rpm.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rpm.i, align 8
  %res_type.i = getelementptr inbounds %struct.rpmpd, ptr %domain, i32 0, i32 5
  %7 = ptrtoint ptr %res_type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %res_type.i, align 8
  %res_id.i = getelementptr inbounds %struct.rpmpd, ptr %domain, i32 0, i32 6
  %9 = ptrtoint ptr %res_id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %res_id.i, align 4
  %call.i = call i32 @qcom_rpm_smd_write(ptr noundef %6, i32 noundef 0, i32 noundef %8, i32 noundef %10, ptr noundef nonnull %req.i, i32 noundef 12) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %enabled = getelementptr inbounds %struct.rpmpd, ptr %domain, i32 0, i32 4
  %11 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %enabled, align 4
  %corner = getelementptr inbounds %struct.rpmpd, ptr %domain, i32 0, i32 3
  %12 = ptrtoint ptr %corner to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %corner, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool1.not = icmp eq i32 %13, 0
  br i1 %tobool1.not, label %if.end.out_crit_edge, label %if.then2

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = call fastcc i32 @rpmpd_aggregate_corner(ptr noundef %domain)
  br label %out

out:                                              ; preds = %if.then2, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %entry.out_crit_edge ], [ %call3, %if.then2 ], [ 0, %if.end.out_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @rpmpd_lock) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmpd_set_performance(ptr nocapture noundef %domain, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %max_state = getelementptr inbounds %struct.rpmpd, ptr %domain, i32 0, i32 8
  %0 = ptrtoint ptr %max_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_state, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 %state)
  tail call void @mutex_lock_nested(ptr noundef nonnull @rpmpd_lock, i32 noundef 0) #6
  %corner = getelementptr inbounds %struct.rpmpd, ptr %domain, i32 0, i32 3
  %3 = ptrtoint ptr %corner to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %corner, align 8
  %enabled = getelementptr inbounds %struct.rpmpd, ptr %domain, i32 0, i32 4
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 4, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %key = getelementptr inbounds %struct.rpmpd, ptr %domain, i32 0, i32 9
  %6 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %key, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %land.lhs.true.out_crit_edge [
    i32 6514294, label %land.lhs.true.if.end7_crit_edge
    i32 7104118, label %land.lhs.true.if.end7_crit_edge16
  ]

land.lhs.true.if.end7_crit_edge16:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge16, %entry.if.end7_crit_edge
  %call = tail call fastcc i32 @rpmpd_aggregate_corner(ptr noundef %domain)
  br label %out

out:                                              ; preds = %if.end7, %land.lhs.true.out_crit_edge
  %ret.0 = phi i32 [ %call, %if.end7 ], [ 0, %land.lhs.true.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @rpmpd_lock) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmpd_get_performance(ptr nocapture noundef readnone %genpd, ptr noundef %opp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dev_pm_opp_get_level(ptr noundef %opp) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_onecell(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_rpm_smd_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rpmpd_aggregate_corner(ptr nocapture noundef readonly %pd) unnamed_addr #2 align 64 {
entry:
  %req.i41 = alloca %struct.rpmpd_req, align 4
  %req.i = alloca %struct.rpmpd_req, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %peer1 = getelementptr inbounds %struct.rpmpd, ptr %pd, i32 0, i32 1
  %0 = ptrtoint ptr %peer1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer1, align 8
  %corner = getelementptr inbounds %struct.rpmpd, ptr %pd, i32 0, i32 3
  %2 = ptrtoint ptr %corner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %corner, align 8
  %active_only.i = getelementptr inbounds %struct.rpmpd, ptr %pd, i32 0, i32 2
  %4 = ptrtoint ptr %active_only.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %active_only.i, align 4, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %corner..i = select i1 %tobool.not.i, i32 %3, i32 0
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %enabled = getelementptr inbounds %struct.rpmpd, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled, align 4, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %corner3 = getelementptr inbounds %struct.rpmpd, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %corner3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %corner3, align 8
  %active_only.i38 = getelementptr inbounds %struct.rpmpd, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %active_only.i38 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %active_only.i38, align 4, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i39 = icmp eq i8 %11, 0
  %corner..i40 = select i1 %tobool.not.i39, i32 %9, i32 0
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %peer_active_corner.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 0, %land.lhs.true.if.end_crit_edge ], [ %9, %if.then ]
  %peer_sleep_corner.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 0, %land.lhs.true.if.end_crit_edge ], [ %corner..i40, %if.then ]
  %12 = tail call i32 @llvm.umax.i32(i32 %3, i32 %peer_active_corner.0)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i) #6
  %13 = getelementptr inbounds %struct.rpmpd_req, ptr %req.i, i32 0, i32 1
  %14 = getelementptr inbounds %struct.rpmpd_req, ptr %req.i, i32 0, i32 2
  %key1.i = getelementptr inbounds %struct.rpmpd, ptr %pd, i32 0, i32 9
  %15 = ptrtoint ptr %key1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %key1.i, align 8
  %17 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %req.i, align 4
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 67108864, ptr %13, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %14, align 4
  %rpm.i = getelementptr inbounds %struct.rpmpd, ptr %pd, i32 0, i32 7
  %21 = ptrtoint ptr %rpm.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rpm.i, align 8
  %res_type.i = getelementptr inbounds %struct.rpmpd, ptr %pd, i32 0, i32 5
  %23 = ptrtoint ptr %res_type.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %res_type.i, align 8
  %res_id.i = getelementptr inbounds %struct.rpmpd, ptr %pd, i32 0, i32 6
  %25 = ptrtoint ptr %res_id.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %res_id.i, align 4
  %call.i = call i32 @qcom_rpm_smd_write(ptr noundef %22, i32 noundef 0, i32 noundef %24, i32 noundef %26, ptr noundef nonnull %req.i, i32 noundef 12) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %27 = call i32 @llvm.umax.i32(i32 %corner..i, i32 %peer_sleep_corner.0)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i41) #6
  %28 = getelementptr inbounds %struct.rpmpd_req, ptr %req.i41, i32 0, i32 1
  %29 = getelementptr inbounds %struct.rpmpd_req, ptr %req.i41, i32 0, i32 2
  %30 = ptrtoint ptr %key1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %key1.i, align 8
  %32 = ptrtoint ptr %req.i41 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %req.i41, align 4
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 67108864, ptr %28, align 4
  %34 = call i32 @llvm.bswap.i32(i32 %27) #6
  %35 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %29, align 4
  %36 = ptrtoint ptr %rpm.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rpm.i, align 8
  %38 = ptrtoint ptr %res_type.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %res_type.i, align 8
  %40 = ptrtoint ptr %res_id.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %res_id.i, align 4
  %call.i46 = call i32 @qcom_rpm_smd_write(ptr noundef %37, i32 noundef 1, i32 noundef %39, i32 noundef %41, ptr noundef nonnull %req.i41, i32 noundef 12) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i41) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i46, %if.end6 ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_level(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 152)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 152)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !37, !38, !39, !41, !42, !44, !45, !46, !47, !49, !50, !52, !54, !56, !57, !59, !60, !62, !63, !65, !67, !69, !70, !71, !72, !74, !75, !77, !78, !80, !82, !83, !85, !87, !89, !90, !92, !93, !95, !97, !98, !100, !102, !104, !105, !107, !109, !110, !112, !114, !116, !118, !119, !121, !123, !124, !126, !127, !129, !130, !132, !134, !136, !137, !139, !141, !142, !144, !145, !147, !148, !150, !152, !154, !155, !157, !159, !160, !162, !164, !165, !167, !168, !170, !171, !173, !174, !176, !178, !180, !181, !183, !185, !186, !188, !190, !191, !193, !194, !196, !198, !200, !201, !203, !205, !206, !208, !209, !211, !212, !214, !215, !217, !219, !221, !222, !224, !226, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !248, !250, !252, !253}
!llvm.module.flags = !{!255, !256, !257, !258, !259, !260, !261, !262}
!llvm.ident = !{!263}

!0 = !{ptr @__initcall__kmod_rpmpd__174_649_rpmpd_init1, !1, !"__initcall__kmod_rpmpd__174_649_rpmpd_init1", i1 false, i1 false}
!1 = !{!"../drivers/soc/qcom/rpmpd.c", i32 649, i32 1}
!2 = !{ptr @__UNIQUE_ID_description175, !3, !"__UNIQUE_ID_description175", i1 false, i1 false}
!3 = !{!"../drivers/soc/qcom/rpmpd.c", i32 651, i32 1}
!4 = !{ptr @__UNIQUE_ID_file176, !5, !"__UNIQUE_ID_file176", i1 false, i1 false}
!5 = !{!"../drivers/soc/qcom/rpmpd.c", i32 652, i32 1}
!6 = !{ptr @__UNIQUE_ID_license177, !5, !"__UNIQUE_ID_license177", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/soc/qcom/rpmpd.c", i32 638, i32 11}
!9 = !{ptr @rpmpd_driver, !10, !"rpmpd_driver", i1 false, i1 false}
!10 = !{!"../drivers/soc/qcom/rpmpd.c", i32 636, i32 31}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/soc/qcom/rpmpd.c", i32 596, i32 3}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @rpmpd_probe._entry, !12, !"_entry", i1 false, i1 false}
!18 = !{ptr @rpmpd_probe._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/soc/qcom/rpmpd.c", i32 617, i32 4}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @rpmpd_probe._entry.6, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @rpmpd_probe._entry_ptr.9, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/soc/qcom/rpmpd.c", i32 118, i32 8}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @rpmpd_lock, !25, !"rpmpd_lock", i1 false, i1 false}
!28 = !{ptr @rpmpd_match_table, !29, !"rpmpd_match_table", i1 false, i1 false}
!29 = !{!"../drivers/soc/qcom/rpmpd.c", i32 437, i32 34}
!30 = !{ptr @mdm9607_desc, !31, !"mdm9607_desc", i1 false, i1 false}
!31 = !{!"../drivers/soc/qcom/rpmpd.c", i32 135, i32 32}
!32 = !{ptr @mdm9607_rpmpds, !33, !"mdm9607_rpmpds", i1 false, i1 false}
!33 = !{!"../drivers/soc/qcom/rpmpd.c", i32 126, i32 22}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/soc/qcom/rpmpd.c", i32 121, i32 1}
!36 = !{ptr @mdm9607_vddcx, !35, !"mdm9607_vddcx", i1 false, i1 false}
!37 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @mdm9607_vddcx_ao, !35, !"mdm9607_vddcx_ao", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/soc/qcom/rpmpd.c", i32 122, i32 1}
!41 = !{ptr @mdm9607_vddcx_vfl, !40, !"mdm9607_vddcx_vfl", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/soc/qcom/rpmpd.c", i32 124, i32 1}
!44 = !{ptr @mdm9607_vddmx, !43, !"mdm9607_vddmx", i1 false, i1 false}
!45 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @mdm9607_vddmx_ao, !43, !"mdm9607_vddmx_ao", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/soc/qcom/rpmpd.c", i32 125, i32 1}
!49 = !{ptr @mdm9607_vddmx_vfl, !48, !"mdm9607_vddmx_vfl", i1 false, i1 false}
!50 = !{ptr @msm8916_desc, !51, !"msm8916_desc", i1 false, i1 false}
!51 = !{!"../drivers/soc/qcom/rpmpd.c", i32 181, i32 32}
!52 = !{ptr @msm8916_rpmpds, !53, !"msm8916_rpmpds", i1 false, i1 false}
!53 = !{!"../drivers/soc/qcom/rpmpd.c", i32 173, i32 22}
!54 = !{ptr @msm8916_vddcx, !55, !"msm8916_vddcx", i1 false, i1 false}
!55 = !{!"../drivers/soc/qcom/rpmpd.c", i32 168, i32 1}
!56 = !{ptr @msm8916_vddcx_ao, !55, !"msm8916_vddcx_ao", i1 false, i1 false}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/soc/qcom/rpmpd.c", i32 171, i32 1}
!59 = !{ptr @msm8916_vddcx_vfc, !58, !"msm8916_vddcx_vfc", i1 false, i1 false}
!60 = !{ptr @msm8916_vddmx, !61, !"msm8916_vddmx", i1 false, i1 false}
!61 = !{!"../drivers/soc/qcom/rpmpd.c", i32 169, i32 1}
!62 = !{ptr @msm8916_vddmx_ao, !61, !"msm8916_vddmx_ao", i1 false, i1 false}
!63 = !{ptr @msm8939_desc, !64, !"msm8939_desc", i1 false, i1 false}
!64 = !{!"../drivers/soc/qcom/rpmpd.c", i32 161, i32 32}
!65 = !{ptr @msm8939_rpmpds, !66, !"msm8939_rpmpds", i1 false, i1 false}
!66 = !{!"../drivers/soc/qcom/rpmpd.c", i32 150, i32 22}
!67 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/soc/qcom/rpmpd.c", i32 142, i32 1}
!69 = !{ptr @msm8939_vddmd, !68, !"msm8939_vddmd", i1 false, i1 false}
!70 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @msm8939_vddmd_ao, !68, !"msm8939_vddmd_ao", i1 false, i1 false}
!72 = !{ptr @.str.21, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/soc/qcom/rpmpd.c", i32 143, i32 1}
!74 = !{ptr @msm8939_vddmd_vfc, !73, !"msm8939_vddmd_vfc", i1 false, i1 false}
!75 = !{ptr @msm8939_vddcx, !76, !"msm8939_vddcx", i1 false, i1 false}
!76 = !{!"../drivers/soc/qcom/rpmpd.c", i32 145, i32 1}
!77 = !{ptr @msm8939_vddcx_ao, !76, !"msm8939_vddcx_ao", i1 false, i1 false}
!78 = !{ptr @msm8939_vddcx_vfc, !79, !"msm8939_vddcx_vfc", i1 false, i1 false}
!79 = !{!"../drivers/soc/qcom/rpmpd.c", i32 146, i32 1}
!80 = !{ptr @msm8939_vddmx, !81, !"msm8939_vddmx", i1 false, i1 false}
!81 = !{!"../drivers/soc/qcom/rpmpd.c", i32 148, i32 1}
!82 = !{ptr @msm8939_vddmx_ao, !81, !"msm8939_vddmx_ao", i1 false, i1 false}
!83 = !{ptr @msm8953_desc, !84, !"msm8953_desc", i1 false, i1 false}
!84 = !{!"../drivers/soc/qcom/rpmpd.c", i32 204, i32 32}
!85 = !{ptr @msm8953_rpmpds, !86, !"msm8953_rpmpds", i1 false, i1 false}
!86 = !{!"../drivers/soc/qcom/rpmpd.c", i32 194, i32 22}
!87 = !{ptr @msm8953_vddmd, !88, !"msm8953_vddmd", i1 false, i1 false}
!88 = !{!"../drivers/soc/qcom/rpmpd.c", i32 188, i32 1}
!89 = !{ptr @msm8953_vddmd_ao, !88, !"msm8953_vddmd_ao", i1 false, i1 false}
!90 = !{ptr @msm8953_vddcx, !91, !"msm8953_vddcx", i1 false, i1 false}
!91 = !{!"../drivers/soc/qcom/rpmpd.c", i32 189, i32 1}
!92 = !{ptr @msm8953_vddcx_ao, !91, !"msm8953_vddcx_ao", i1 false, i1 false}
!93 = !{ptr @msm8953_vddcx_vfl, !94, !"msm8953_vddcx_vfl", i1 false, i1 false}
!94 = !{!"../drivers/soc/qcom/rpmpd.c", i32 192, i32 1}
!95 = !{ptr @msm8953_vddmx, !96, !"msm8953_vddmx", i1 false, i1 false}
!96 = !{!"../drivers/soc/qcom/rpmpd.c", i32 190, i32 1}
!97 = !{ptr @msm8953_vddmx_ao, !96, !"msm8953_vddmx_ao", i1 false, i1 false}
!98 = !{ptr @msm8976_desc, !99, !"msm8976_desc", i1 false, i1 false}
!99 = !{!"../drivers/soc/qcom/rpmpd.c", i32 226, i32 32}
!100 = !{ptr @msm8976_rpmpds, !101, !"msm8976_rpmpds", i1 false, i1 false}
!101 = !{!"../drivers/soc/qcom/rpmpd.c", i32 217, i32 22}
!102 = !{ptr @msm8976_vddcx, !103, !"msm8976_vddcx", i1 false, i1 false}
!103 = !{!"../drivers/soc/qcom/rpmpd.c", i32 211, i32 1}
!104 = !{ptr @msm8976_vddcx_ao, !103, !"msm8976_vddcx_ao", i1 false, i1 false}
!105 = !{ptr @msm8976_vddcx_vfl, !106, !"msm8976_vddcx_vfl", i1 false, i1 false}
!106 = !{!"../drivers/soc/qcom/rpmpd.c", i32 214, i32 1}
!107 = !{ptr @msm8976_vddmx, !108, !"msm8976_vddmx", i1 false, i1 false}
!108 = !{!"../drivers/soc/qcom/rpmpd.c", i32 212, i32 1}
!109 = !{ptr @msm8976_vddmx_ao, !108, !"msm8976_vddmx_ao", i1 false, i1 false}
!110 = !{ptr @msm8976_vddmx_vfl, !111, !"msm8976_vddmx_vfl", i1 false, i1 false}
!111 = !{!"../drivers/soc/qcom/rpmpd.c", i32 215, i32 1}
!112 = !{ptr @msm8994_desc, !113, !"msm8994_desc", i1 false, i1 false}
!113 = !{!"../drivers/soc/qcom/rpmpd.c", i32 251, i32 32}
!114 = !{ptr @msm8994_rpmpds, !115, !"msm8994_rpmpds", i1 false, i1 false}
!115 = !{!"../drivers/soc/qcom/rpmpd.c", i32 241, i32 22}
!116 = !{ptr @msm8994_vddcx, !117, !"msm8994_vddcx", i1 false, i1 false}
!117 = !{!"../drivers/soc/qcom/rpmpd.c", i32 233, i32 1}
!118 = !{ptr @msm8994_vddcx_ao, !117, !"msm8994_vddcx_ao", i1 false, i1 false}
!119 = !{ptr @msm8994_vddcx_vfc, !120, !"msm8994_vddcx_vfc", i1 false, i1 false}
!120 = !{!"../drivers/soc/qcom/rpmpd.c", i32 238, i32 1}
!121 = !{ptr @msm8994_vddmx, !122, !"msm8994_vddmx", i1 false, i1 false}
!122 = !{!"../drivers/soc/qcom/rpmpd.c", i32 234, i32 1}
!123 = !{ptr @msm8994_vddmx_ao, !122, !"msm8994_vddmx_ao", i1 false, i1 false}
!124 = !{ptr @.str.22, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/soc/qcom/rpmpd.c", i32 236, i32 1}
!126 = !{ptr @msm8994_vddgfx, !125, !"msm8994_vddgfx", i1 false, i1 false}
!127 = !{ptr @.str.23, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/soc/qcom/rpmpd.c", i32 239, i32 1}
!129 = !{ptr @msm8994_vddgfx_vfc, !128, !"msm8994_vddgfx_vfc", i1 false, i1 false}
!130 = !{ptr @msm8996_desc, !131, !"msm8996_desc", i1 false, i1 false}
!131 = !{!"../drivers/soc/qcom/rpmpd.c", i32 275, i32 32}
!132 = !{ptr @msm8996_rpmpds, !133, !"msm8996_rpmpds", i1 false, i1 false}
!133 = !{!"../drivers/soc/qcom/rpmpd.c", i32 265, i32 22}
!134 = !{ptr @msm8996_vddcx, !135, !"msm8996_vddcx", i1 false, i1 false}
!135 = !{!"../drivers/soc/qcom/rpmpd.c", i32 258, i32 1}
!136 = !{ptr @msm8996_vddcx_ao, !135, !"msm8996_vddcx_ao", i1 false, i1 false}
!137 = !{ptr @msm8996_vddcx_vfc, !138, !"msm8996_vddcx_vfc", i1 false, i1 false}
!138 = !{!"../drivers/soc/qcom/rpmpd.c", i32 262, i32 1}
!139 = !{ptr @msm8996_vddmx, !140, !"msm8996_vddmx", i1 false, i1 false}
!140 = !{!"../drivers/soc/qcom/rpmpd.c", i32 259, i32 1}
!141 = !{ptr @msm8996_vddmx_ao, !140, !"msm8996_vddmx_ao", i1 false, i1 false}
!142 = !{ptr @.str.24, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/soc/qcom/rpmpd.c", i32 260, i32 1}
!144 = !{ptr @msm8996_vddsscx, !143, !"msm8996_vddsscx", i1 false, i1 false}
!145 = !{ptr @.str.25, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/soc/qcom/rpmpd.c", i32 263, i32 1}
!147 = !{ptr @msm8996_vddsscx_vfc, !146, !"msm8996_vddsscx_vfc", i1 false, i1 false}
!148 = !{ptr @msm8998_desc, !149, !"msm8998_desc", i1 false, i1 false}
!149 = !{!"../drivers/soc/qcom/rpmpd.c", i32 307, i32 32}
!150 = !{ptr @msm8998_rpmpds, !151, !"msm8998_rpmpds", i1 false, i1 false}
!151 = !{!"../drivers/soc/qcom/rpmpd.c", i32 294, i32 22}
!152 = !{ptr @msm8998_vddcx, !153, !"msm8998_vddcx", i1 false, i1 false}
!153 = !{!"../drivers/soc/qcom/rpmpd.c", i32 282, i32 1}
!154 = !{ptr @msm8998_vddcx_ao, !153, !"msm8998_vddcx_ao", i1 false, i1 false}
!155 = !{ptr @msm8998_vddcx_vfl, !156, !"msm8998_vddcx_vfl", i1 false, i1 false}
!156 = !{!"../drivers/soc/qcom/rpmpd.c", i32 283, i32 1}
!157 = !{ptr @msm8998_vddmx, !158, !"msm8998_vddmx", i1 false, i1 false}
!158 = !{!"../drivers/soc/qcom/rpmpd.c", i32 285, i32 1}
!159 = !{ptr @msm8998_vddmx_ao, !158, !"msm8998_vddmx_ao", i1 false, i1 false}
!160 = !{ptr @msm8998_vddmx_vfl, !161, !"msm8998_vddmx_vfl", i1 false, i1 false}
!161 = !{!"../drivers/soc/qcom/rpmpd.c", i32 286, i32 1}
!162 = !{ptr @.str.26, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/soc/qcom/rpmpd.c", i32 288, i32 1}
!164 = !{ptr @msm8998_vdd_ssccx, !163, !"msm8998_vdd_ssccx", i1 false, i1 false}
!165 = !{ptr @.str.27, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/soc/qcom/rpmpd.c", i32 289, i32 1}
!167 = !{ptr @msm8998_vdd_ssccx_vfl, !166, !"msm8998_vdd_ssccx_vfl", i1 false, i1 false}
!168 = !{ptr @.str.28, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/soc/qcom/rpmpd.c", i32 291, i32 1}
!170 = !{ptr @msm8998_vdd_sscmx, !169, !"msm8998_vdd_sscmx", i1 false, i1 false}
!171 = !{ptr @.str.29, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/soc/qcom/rpmpd.c", i32 292, i32 1}
!173 = !{ptr @msm8998_vdd_sscmx_vfl, !172, !"msm8998_vdd_sscmx_vfl", i1 false, i1 false}
!174 = !{ptr @qcm2290_desc, !175, !"qcm2290_desc", i1 false, i1 false}
!175 = !{!"../drivers/soc/qcom/rpmpd.c", i32 431, i32 32}
!176 = !{ptr @qcm2290_rpmpds, !177, !"qcm2290_rpmpds", i1 false, i1 false}
!177 = !{!"../drivers/soc/qcom/rpmpd.c", i32 420, i32 22}
!178 = !{ptr @sm6115_vddcx, !179, !"sm6115_vddcx", i1 false, i1 false}
!179 = !{!"../drivers/soc/qcom/rpmpd.c", i32 372, i32 1}
!180 = !{ptr @sm6115_vddcx_ao, !179, !"sm6115_vddcx_ao", i1 false, i1 false}
!181 = !{ptr @sm6115_vddcx_vfl, !182, !"sm6115_vddcx_vfl", i1 false, i1 false}
!182 = !{!"../drivers/soc/qcom/rpmpd.c", i32 373, i32 1}
!183 = !{ptr @sm6115_vddmx, !184, !"sm6115_vddmx", i1 false, i1 false}
!184 = !{!"../drivers/soc/qcom/rpmpd.c", i32 375, i32 1}
!185 = !{ptr @sm6115_vddmx_ao, !184, !"sm6115_vddmx_ao", i1 false, i1 false}
!186 = !{ptr @sm6115_vddmx_vfl, !187, !"sm6115_vddmx_vfl", i1 false, i1 false}
!187 = !{!"../drivers/soc/qcom/rpmpd.c", i32 376, i32 1}
!188 = !{ptr @.str.30, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/soc/qcom/rpmpd.c", i32 378, i32 1}
!190 = !{ptr @sm6115_vdd_lpi_cx, !189, !"sm6115_vdd_lpi_cx", i1 false, i1 false}
!191 = !{ptr @.str.31, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/soc/qcom/rpmpd.c", i32 379, i32 1}
!193 = !{ptr @sm6115_vdd_lpi_mx, !192, !"sm6115_vdd_lpi_mx", i1 false, i1 false}
!194 = !{ptr @qcs404_desc, !195, !"qcs404_desc", i1 false, i1 false}
!195 = !{!"../drivers/soc/qcom/rpmpd.c", i32 333, i32 32}
!196 = !{ptr @qcs404_rpmpds, !197, !"qcs404_rpmpds", i1 false, i1 false}
!197 = !{!"../drivers/soc/qcom/rpmpd.c", i32 323, i32 22}
!198 = !{ptr @qcs404_vddmx, !199, !"qcs404_vddmx", i1 false, i1 false}
!199 = !{!"../drivers/soc/qcom/rpmpd.c", i32 314, i32 1}
!200 = !{ptr @qcs404_vddmx_ao, !199, !"qcs404_vddmx_ao", i1 false, i1 false}
!201 = !{ptr @qcs404_vddmx_vfl, !202, !"qcs404_vddmx_vfl", i1 false, i1 false}
!202 = !{!"../drivers/soc/qcom/rpmpd.c", i32 315, i32 1}
!203 = !{ptr @.str.32, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/soc/qcom/rpmpd.c", i32 317, i32 1}
!205 = !{ptr @qcs404_vdd_lpicx, !204, !"qcs404_vdd_lpicx", i1 false, i1 false}
!206 = !{ptr @.str.33, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/soc/qcom/rpmpd.c", i32 318, i32 1}
!208 = !{ptr @qcs404_vdd_lpicx_vfl, !207, !"qcs404_vdd_lpicx_vfl", i1 false, i1 false}
!209 = !{ptr @.str.34, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/soc/qcom/rpmpd.c", i32 320, i32 1}
!211 = !{ptr @qcs404_vdd_lpimx, !210, !"qcs404_vdd_lpimx", i1 false, i1 false}
!212 = !{ptr @.str.35, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/soc/qcom/rpmpd.c", i32 321, i32 1}
!214 = !{ptr @qcs404_vdd_lpimx_vfl, !213, !"qcs404_vdd_lpimx_vfl", i1 false, i1 false}
!215 = !{ptr @sdm660_desc, !216, !"sdm660_desc", i1 false, i1 false}
!216 = !{!"../drivers/soc/qcom/rpmpd.c", i32 365, i32 32}
!217 = !{ptr @sdm660_rpmpds, !218, !"sdm660_rpmpds", i1 false, i1 false}
!218 = !{!"../drivers/soc/qcom/rpmpd.c", i32 352, i32 22}
!219 = !{ptr @sdm660_vddcx, !220, !"sdm660_vddcx", i1 false, i1 false}
!220 = !{!"../drivers/soc/qcom/rpmpd.c", i32 340, i32 1}
!221 = !{ptr @sdm660_vddcx_ao, !220, !"sdm660_vddcx_ao", i1 false, i1 false}
!222 = !{ptr @sdm660_vddcx_vfl, !223, !"sdm660_vddcx_vfl", i1 false, i1 false}
!223 = !{!"../drivers/soc/qcom/rpmpd.c", i32 341, i32 1}
!224 = !{ptr @sdm660_vddmx, !225, !"sdm660_vddmx", i1 false, i1 false}
!225 = !{!"../drivers/soc/qcom/rpmpd.c", i32 343, i32 1}
!226 = !{ptr @sdm660_vddmx_ao, !225, !"sdm660_vddmx_ao", i1 false, i1 false}
!227 = !{ptr @sdm660_vddmx_vfl, !228, !"sdm660_vddmx_vfl", i1 false, i1 false}
!228 = !{!"../drivers/soc/qcom/rpmpd.c", i32 344, i32 1}
!229 = !{ptr @sdm660_vdd_ssccx, !230, !"sdm660_vdd_ssccx", i1 false, i1 false}
!230 = !{!"../drivers/soc/qcom/rpmpd.c", i32 346, i32 1}
!231 = !{ptr @sdm660_vdd_ssccx_vfl, !232, !"sdm660_vdd_ssccx_vfl", i1 false, i1 false}
!232 = !{!"../drivers/soc/qcom/rpmpd.c", i32 347, i32 1}
!233 = !{ptr @sdm660_vdd_sscmx, !234, !"sdm660_vdd_sscmx", i1 false, i1 false}
!234 = !{!"../drivers/soc/qcom/rpmpd.c", i32 349, i32 1}
!235 = !{ptr @sdm660_vdd_sscmx_vfl, !236, !"sdm660_vdd_sscmx_vfl", i1 false, i1 false}
!236 = !{!"../drivers/soc/qcom/rpmpd.c", i32 350, i32 1}
!237 = !{ptr @sm6115_desc, !238, !"sm6115_desc", i1 false, i1 false}
!238 = !{!"../drivers/soc/qcom/rpmpd.c", i32 392, i32 32}
!239 = !{ptr @sm6115_rpmpds, !240, !"sm6115_rpmpds", i1 false, i1 false}
!240 = !{!"../drivers/soc/qcom/rpmpd.c", i32 381, i32 22}
!241 = !{ptr @sm6125_desc, !242, !"sm6125_desc", i1 false, i1 false}
!242 = !{!"../drivers/soc/qcom/rpmpd.c", i32 414, i32 32}
!243 = !{ptr @sm6125_rpmpds, !244, !"sm6125_rpmpds", i1 false, i1 false}
!244 = !{!"../drivers/soc/qcom/rpmpd.c", i32 405, i32 22}
!245 = !{ptr @sm6125_vddcx, !246, !"sm6125_vddcx", i1 false, i1 false}
!246 = !{!"../drivers/soc/qcom/rpmpd.c", i32 399, i32 1}
!247 = !{ptr @sm6125_vddcx_ao, !246, !"sm6125_vddcx_ao", i1 false, i1 false}
!248 = !{ptr @sm6125_vddcx_vfl, !249, !"sm6125_vddcx_vfl", i1 false, i1 false}
!249 = !{!"../drivers/soc/qcom/rpmpd.c", i32 400, i32 1}
!250 = !{ptr @sm6125_vddmx, !251, !"sm6125_vddmx", i1 false, i1 false}
!251 = !{!"../drivers/soc/qcom/rpmpd.c", i32 402, i32 1}
!252 = !{ptr @sm6125_vddmx_ao, !251, !"sm6125_vddmx_ao", i1 false, i1 false}
!253 = !{ptr @sm6125_vddmx_vfl, !254, !"sm6125_vddmx_vfl", i1 false, i1 false}
!254 = !{!"../drivers/soc/qcom/rpmpd.c", i32 403, i32 1}
!255 = !{i32 1, !"wchar_size", i32 2}
!256 = !{i32 1, !"min_enum_size", i32 4}
!257 = !{i32 8, !"branch-target-enforcement", i32 0}
!258 = !{i32 8, !"sign-return-address", i32 0}
!259 = !{i32 8, !"sign-return-address-all", i32 0}
!260 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!261 = !{i32 7, !"uwtable", i32 1}
!262 = !{i32 7, !"frame-pointer", i32 2}
!263 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!264 = !{!"branch_weights", i32 1, i32 2000}
!265 = !{i8 0, i8 2}
