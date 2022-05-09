; ModuleID = '/llk/IR_all_yes/drivers/clk/qcom/clk-smd-rpm.c_pt.bc'
source_filename = "../drivers/clk/qcom/clk-smd-rpm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_smd_rpm_req = type { i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.rpm_smd_clk_desc = type { ptr, i32 }
%struct.clk_smd_rpm = type { i32, i32, i32, i32, i8, i8, i8, ptr, %struct.clk_hw, i32, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_clk_smd_rpm__179_1226_rpm_smd_clk_init1 = internal global ptr @rpm_smd_clk_init, section ".initcall1.init", align 4
@rpm_smd_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rpm_smd_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rpm_smd_clk_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rpm_smd_clk_exit = internal global ptr @rpm_smd_clk_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description180 = internal constant [70 x i8] c"clk_smd_rpm.description=Qualcomm RPM over SMD Clock Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file181 = internal constant [46 x i8] c"clk_smd_rpm.file=drivers/clk/qcom/clk-smd-rpm\00", section ".modinfo", align 1
@__UNIQUE_ID_license182 = internal constant [27 x i8] c"clk_smd_rpm.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias183 = internal constant [44 x i8] c"clk_smd_rpm.alias=platform:qcom-clk-smd-rpm\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom-clk-smd-rpm\00", [47 x i8] zeroinitializer }, align 32
@rpm_smd_clk_match_table = internal constant { [17 x %struct.of_device_id], [860 x i8] } { [17 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpmcc-mdm9607\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_clk_mdm9607 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpmcc-msm8226\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_clk_msm8974 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpmcc-msm8916\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_clk_msm8916 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpmcc-msm8936\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_clk_msm8936 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpmcc-msm8953\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_clk_msm8953 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpmcc-msm8974\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_clk_msm8974 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpmcc-msm8976\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_clk_msm8976 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpmcc-msm8992\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_clk_msm8992 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpmcc-msm8994\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_clk_msm8994 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpmcc-msm8996\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_clk_msm8996 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpmcc-msm8998\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_clk_msm8998 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpmcc-qcm2290\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_clk_qcm2290 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpmcc-qcs404\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_clk_qcs404 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpmcc-sdm660\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_clk_sdm660 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpmcc-sm6115\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_clk_sm6115 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpmcc-sm6125\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_clk_sm6125 }, %struct.of_device_id zeroinitializer], [860 x i8] zeroinitializer }, align 32
@rpm_smd_clk_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1168, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to retrieve handle to RPM\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rpm_smd_clk_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/clk/qcom/clk-smd-rpm.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rpm_smd_clk_probe._entry_ptr = internal global ptr @rpm_smd_clk_probe._entry, section ".printk_index", align 4
@rpm_smd_clk_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1210, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Error registering SMD clock driver (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@rpm_smd_clk_probe._entry_ptr.8 = internal global ptr @rpm_smd_clk_probe._entry.6, section ".printk_index", align 4
@__const.clk_smd_rpm_enable_scaling.req = private unnamed_addr constant %struct.clk_smd_rpm_req { i32 1164861794, i32 67108864, i32 16777216 }, align 4
@clk_smd_rpm_enable_scaling._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013RPM clock scaling (sleep set) not enabled!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"clk_smd_rpm_enable_scaling\00", [37 x i8] zeroinitializer }, align 32
@clk_smd_rpm_enable_scaling._entry_ptr = internal global ptr @clk_smd_rpm_enable_scaling._entry, section ".printk_index", align 4
@clk_smd_rpm_enable_scaling._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.3, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013RPM clock scaling (active set) not enabled!\0A\00", [49 x i8] zeroinitializer }, align 32
@clk_smd_rpm_enable_scaling._entry_ptr.13 = internal global ptr @clk_smd_rpm_enable_scaling._entry.11, section ".printk_index", align 4
@clk_smd_rpm_enable_scaling.__UNIQUE_ID_ddebug178 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.10, ptr @.str.3, ptr @.str.15, i8 0, i8 99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_smd_rpm\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: RPM clock scaling is enabled\0A\00", [62 x i8] zeroinitializer }, align 32
@qcom_smdrpm_clk_hw_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 1151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: invalid index %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qcom_smdrpm_clk_hw_get\00", [41 x i8] zeroinitializer }, align 32
@qcom_smdrpm_clk_hw_get._entry_ptr = internal global ptr @qcom_smdrpm_clk_hw_get._entry, section ".printk_index", align 4
@rpm_clk_mdm9607 = internal constant { %struct.rpm_smd_clk_desc, [24 x i8] } { %struct.rpm_smd_clk_desc { ptr @mdm9607_clks, i32 80 }, [24 x i8] zeroinitializer }, align 32
@rpm_clk_msm8974 = internal constant { %struct.rpm_smd_clk_desc, [24 x i8] } { %struct.rpm_smd_clk_desc { ptr @msm8974_clks, i32 62 }, [24 x i8] zeroinitializer }, align 32
@rpm_clk_msm8916 = internal constant { %struct.rpm_smd_clk_desc, [24 x i8] } { %struct.rpm_smd_clk_desc { ptr @msm8916_clks, i32 26 }, [24 x i8] zeroinitializer }, align 32
@rpm_clk_msm8936 = internal constant { %struct.rpm_smd_clk_desc, [24 x i8] } { %struct.rpm_smd_clk_desc { ptr @msm8936_clks, i32 102 }, [24 x i8] zeroinitializer }, align 32
@rpm_clk_msm8953 = internal constant { %struct.rpm_smd_clk_desc, [24 x i8] } { %struct.rpm_smd_clk_desc { ptr @msm8953_clks, i32 102 }, [24 x i8] zeroinitializer }, align 32
@rpm_clk_msm8976 = internal constant { %struct.rpm_smd_clk_desc, [24 x i8] } { %struct.rpm_smd_clk_desc { ptr @msm8976_clks, i32 70 }, [24 x i8] zeroinitializer }, align 32
@rpm_clk_msm8992 = internal constant { %struct.rpm_smd_clk_desc, [24 x i8] } { %struct.rpm_smd_clk_desc { ptr @msm8992_clks, i32 104 }, [24 x i8] zeroinitializer }, align 32
@rpm_clk_msm8994 = internal constant { %struct.rpm_smd_clk_desc, [24 x i8] } { %struct.rpm_smd_clk_desc { ptr @msm8994_clks, i32 106 }, [24 x i8] zeroinitializer }, align 32
@rpm_clk_msm8996 = internal constant { %struct.rpm_smd_clk_desc, [24 x i8] } { %struct.rpm_smd_clk_desc { ptr @msm8996_clks, i32 76 }, [24 x i8] zeroinitializer }, align 32
@rpm_clk_msm8998 = internal constant { %struct.rpm_smd_clk_desc, [24 x i8] } { %struct.rpm_smd_clk_desc { ptr @msm8998_clks, i32 90 }, [24 x i8] zeroinitializer }, align 32
@rpm_clk_qcm2290 = internal constant { %struct.rpm_smd_clk_desc, [24 x i8] } { %struct.rpm_smd_clk_desc { ptr @qcm2290_clks, i32 122 }, [24 x i8] zeroinitializer }, align 32
@rpm_clk_qcs404 = internal constant { %struct.rpm_smd_clk_desc, [24 x i8] } { %struct.rpm_smd_clk_desc { ptr @qcs404_clks, i32 80 }, [24 x i8] zeroinitializer }, align 32
@rpm_clk_sdm660 = internal constant { %struct.rpm_smd_clk_desc, [24 x i8] } { %struct.rpm_smd_clk_desc { ptr @sdm660_clks, i32 100 }, [24 x i8] zeroinitializer }, align 32
@rpm_clk_sm6115 = internal constant { %struct.rpm_smd_clk_desc, [24 x i8] } { %struct.rpm_smd_clk_desc { ptr @sm6115_clks, i32 116 }, [24 x i8] zeroinitializer }, align 32
@rpm_clk_sm6125 = internal constant { %struct.rpm_smd_clk_desc, [24 x i8] } { %struct.rpm_smd_clk_desc { ptr @sm6125_clks, i32 116 }, [24 x i8] zeroinitializer }, align 32
@mdm9607_clks = internal global { [80 x ptr], [64 x i8] } { [80 x ptr] [ptr @sdm660_bi_tcxo, ptr @sdm660_bi_tcxo_a, ptr @msm8916_pcnoc_clk, ptr @msm8916_pcnoc_a_clk, ptr null, ptr null, ptr @msm8916_bimc_clk, ptr @msm8916_bimc_a_clk, ptr @msm8916_qdss_clk, ptr @msm8916_qdss_a_clk, ptr @msm8916_bb_clk1, ptr @msm8916_bb_clk1_a, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm8916_bb_clk1_pin, ptr @msm8916_bb_clk1_a_pin, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qcs404_qpic_clk, ptr @qcs404_qpic_a_clk], [64 x i8] zeroinitializer }, align 32
@sdm660_bi_tcxo = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 812346467, i32 1650552389, i32 0, i32 0, i8 0, i8 0, i8 1, ptr @sdm660_bi_tcxo_a, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.21 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@sdm660_bi_tcxo_a = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 812346467, i32 1650552389, i32 0, i32 0, i8 1, i8 0, i8 1, ptr @sdm660_bi_tcxo, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.26 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8916_pcnoc_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 829123683, i32 8013899, i32 0, i32 0, i8 0, i8 0, i8 0, ptr @msm8916_pcnoc_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.29 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8916_pcnoc_a_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 829123683, i32 8013899, i32 0, i32 0, i8 1, i8 0, i8 0, ptr @msm8916_pcnoc_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.32 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8916_bimc_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 845900899, i32 8013899, i32 0, i32 0, i8 0, i8 0, i8 0, ptr @msm8916_bimc_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.35 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8916_bimc_a_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 845900899, i32 8013899, i32 0, i32 0, i8 1, i8 0, i8 0, ptr @msm8916_bimc_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.38 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8916_qdss_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 812346467, i32 1413567571, i32 1, i32 0, i8 0, i8 0, i8 0, ptr @msm8916_qdss_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.41 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8916_qdss_a_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 812346467, i32 1413567571, i32 1, i32 0, i8 1, i8 0, i8 0, ptr @msm8916_qdss_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.44 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8916_bb_clk1 = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1852143475, i32 1, i32 0, i8 0, i8 0, i8 1, ptr @msm8916_bb_clk1_a, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.47 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8916_bb_clk1_a = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1852143475, i32 1, i32 0, i8 1, i8 0, i8 1, ptr @msm8916_bb_clk1, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.50 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8916_bb_clk1_pin = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1650680688, i32 1, i32 0, i8 0, i8 0, i8 1, ptr @msm8916_bb_clk1_a_pin, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.53 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8916_bb_clk1_a_pin = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1650680688, i32 1, i32 0, i8 1, i8 0, i8 1, ptr @msm8916_bb_clk1_pin, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.56 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@qcs404_qpic_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1667854449, i32 8013899, i32 0, i32 0, i8 0, i8 0, i8 0, ptr @qcs404_qpic_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.59 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@qcs404_qpic_a_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1667854449, i32 8013899, i32 0, i32 0, i8 1, i8 0, i8 0, ptr @qcs404_qpic_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.62 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bi_tcxo\00", [24 x i8] zeroinitializer }, align 32
@clk_smd_rpm_branch_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_smd_rpm_prepare, ptr @clk_smd_rpm_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_smd_rpm_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"xo\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xo_board\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.18, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@rpm_smd_clk_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @rpm_smd_clk_lock, i64 52), ptr getelementptr (i8, ptr @rpm_smd_clk_lock, i64 52) }, ptr @rpm_smd_clk_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rpm_smd_clk_lock.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rpm_smd_clk_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bi_tcxo_a\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.24, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.25, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pcnoc_clk\00", [22 x i8] zeroinitializer }, align 32
@clk_smd_rpm_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_smd_rpm_prepare, ptr @clk_smd_rpm_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_smd_rpm_recalc_rate, ptr @clk_smd_rpm_round_rate, ptr null, ptr null, ptr null, ptr @clk_smd_rpm_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.27, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.28, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pcnoc_a_clk\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.30, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.31, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bimc_clk\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.33, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.34, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bimc_a_clk\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.36, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.37, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qdss_clk\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.39, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.40, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qdss_a_clk\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.42, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.43, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bb_clk1\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.45, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.46, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bb_clk1_a\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.48, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.49, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bb_clk1_pin\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.51, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.52, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bb_clk1_a_pin\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.56 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.54, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.55, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qpic_clk\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.58 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.57, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.58, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qpic_a_clk\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.62 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.60, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.61, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@msm8974_clks = internal global { [62 x ptr], [40 x i8] } { [62 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr @msm8916_snoc_clk, ptr @msm8916_snoc_a_clk, ptr @msm8916_bimc_clk, ptr @msm8916_bimc_a_clk, ptr @msm8916_qdss_clk, ptr @msm8916_qdss_a_clk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm8916_pcnoc_clk, ptr @msm8916_pcnoc_a_clk, ptr @msm8974_cnoc_clk, ptr @msm8974_cnoc_a_clk, ptr @msm8974_mmssnoc_ahb_clk, ptr @msm8974_mmssnoc_ahb_a_clk, ptr @msm8974_gfx3d_clk_src, ptr @msm8974_gfx3d_a_clk_src, ptr @msm8974_ocmemgx_clk, ptr @msm8974_ocmemgx_a_clk, ptr @msm8974_cxo_d0, ptr @msm8974_cxo_d0_a, ptr @msm8974_cxo_d1, ptr @msm8974_cxo_d1_a, ptr @msm8974_cxo_a0, ptr @msm8974_cxo_a0_a, ptr @msm8974_cxo_a1, ptr @msm8974_cxo_a1_a, ptr @msm8974_cxo_a2, ptr @msm8974_cxo_a2_a, ptr @msm8974_div_clk1, ptr @msm8974_div_a_clk1, ptr @msm8974_div_clk2, ptr @msm8974_div_a_clk2, ptr @msm8974_diff_clk, ptr @msm8974_diff_a_clk, ptr @msm8974_cxo_d0_pin, ptr @msm8974_cxo_d0_a_pin, ptr @msm8974_cxo_d1_pin, ptr @msm8974_cxo_d1_a_pin, ptr @msm8974_cxo_a0_pin, ptr @msm8974_cxo_a0_a_pin, ptr @msm8974_cxo_a1_pin, ptr @msm8974_cxo_a1_a_pin, ptr @msm8974_cxo_a2_pin, ptr @msm8974_cxo_a2_a_pin], [40 x i8] zeroinitializer }, align 32
@msm8916_snoc_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 829123683, i32 8013899, i32 1, i32 0, i8 0, i8 0, i8 0, ptr @msm8916_snoc_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.65 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8916_snoc_a_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 829123683, i32 8013899, i32 1, i32 0, i8 1, i8 0, i8 0, ptr @msm8916_snoc_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.68 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8974_cnoc_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 829123683, i32 8013899, i32 2, i32 0, i8 0, i8 0, i8 0, ptr @msm8974_cnoc_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.71 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8974_cnoc_a_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 829123683, i32 8013899, i32 2, i32 0, i8 1, i8 0, i8 0, ptr @msm8974_cnoc_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.74 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8974_mmssnoc_ahb_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 829123683, i32 8013899, i32 3, i32 0, i8 0, i8 0, i8 0, ptr @msm8974_mmssnoc_ahb_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.77 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8974_mmssnoc_ahb_a_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 829123683, i32 8013899, i32 3, i32 0, i8 1, i8 0, i8 0, ptr @msm8974_mmssnoc_ahb_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.80 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8974_gfx3d_clk_src = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 845900899, i32 8013899, i32 1, i32 0, i8 0, i8 0, i8 0, ptr @msm8974_gfx3d_a_clk_src, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.83 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8974_gfx3d_a_clk_src = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 845900899, i32 8013899, i32 1, i32 0, i8 1, i8 0, i8 0, ptr @msm8974_gfx3d_clk_src, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.86 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8974_ocmemgx_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 845900899, i32 8013899, i32 2, i32 0, i8 0, i8 0, i8 0, ptr @msm8974_ocmemgx_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.89 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8974_ocmemgx_a_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 845900899, i32 8013899, i32 2, i32 0, i8 1, i8 0, i8 0, ptr @msm8974_ocmemgx_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.92 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8974_cxo_d0 = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1852143475, i32 1, i32 0, i8 0, i8 0, i8 1, ptr @msm8974_cxo_d0_a, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.95 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8974_cxo_d0_a = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1852143475, i32 1, i32 0, i8 1, i8 0, i8 1, ptr @msm8974_cxo_d0, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.98 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8974_cxo_d1 = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1852143475, i32 2, i32 0, i8 0, i8 0, i8 1, ptr @msm8974_cxo_d1_a, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.101 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8974_cxo_d1_a = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1852143475, i32 2, i32 0, i8 1, i8 0, i8 1, ptr @msm8974_cxo_d1, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.104 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8974_cxo_a0 = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1852143475, i32 4, i32 0, i8 0, i8 0, i8 1, ptr @msm8974_cxo_a0_a, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.107 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8974_cxo_a0_a = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1852143475, i32 4, i32 0, i8 1, i8 0, i8 1, ptr @msm8974_cxo_a0, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.110 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8974_cxo_a1 = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1852143475, i32 5, i32 0, i8 0, i8 0, i8 1, ptr @msm8974_cxo_a1_a, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.113 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8974_cxo_a1_a = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1852143475, i32 5, i32 0, i8 1, i8 0, i8 1, ptr @msm8974_cxo_a1, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.116 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8974_cxo_a2 = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1852143475, i32 6, i32 0, i8 0, i8 0, i8 1, ptr @msm8974_cxo_a2_a, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.119 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8974_cxo_a2_a = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1852143475, i32 6, i32 0, i8 1, i8 0, i8 1, ptr @msm8974_cxo_a2, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.122 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8974_div_clk1 = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1852143475, i32 11, i32 0, i8 0, i8 0, i8 1, ptr @msm8974_div_a_clk1, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.125 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8974_div_a_clk1 = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1852143475, i32 11, i32 0, i8 1, i8 0, i8 1, ptr @msm8974_div_clk1, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.128 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8974_div_clk2 = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1852143475, i32 12, i32 0, i8 0, i8 0, i8 1, ptr @msm8974_div_a_clk2, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.131 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8974_div_a_clk2 = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1852143475, i32 12, i32 0, i8 1, i8 0, i8 1, ptr @msm8974_div_clk2, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.134 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8974_diff_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1852143475, i32 7, i32 0, i8 0, i8 0, i8 1, ptr @msm8974_diff_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.137 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8974_diff_a_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1852143475, i32 7, i32 0, i8 1, i8 0, i8 1, ptr @msm8974_diff_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.140 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8974_cxo_d0_pin = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1650680688, i32 1, i32 0, i8 0, i8 0, i8 1, ptr @msm8974_cxo_d0_a_pin, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.143 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8974_cxo_d0_a_pin = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1650680688, i32 1, i32 0, i8 1, i8 0, i8 1, ptr @msm8974_cxo_d0_pin, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.146 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8974_cxo_d1_pin = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1650680688, i32 2, i32 0, i8 0, i8 0, i8 1, ptr @msm8974_cxo_d1_a_pin, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.149 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8974_cxo_d1_a_pin = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1650680688, i32 2, i32 0, i8 1, i8 0, i8 1, ptr @msm8974_cxo_d1_pin, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.152 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8974_cxo_a0_pin = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1650680688, i32 4, i32 0, i8 0, i8 0, i8 1, ptr @msm8974_cxo_a0_a_pin, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.155 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8974_cxo_a0_a_pin = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1650680688, i32 4, i32 0, i8 1, i8 0, i8 1, ptr @msm8974_cxo_a0_pin, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.158 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8974_cxo_a1_pin = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1650680688, i32 5, i32 0, i8 0, i8 0, i8 1, ptr @msm8974_cxo_a1_a_pin, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.161 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8974_cxo_a1_a_pin = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1650680688, i32 5, i32 0, i8 1, i8 0, i8 1, ptr @msm8974_cxo_a1_pin, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.164 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8974_cxo_a2_pin = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1650680688, i32 6, i32 0, i8 0, i8 0, i8 1, ptr @msm8974_cxo_a2_a_pin, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.167 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8974_cxo_a2_a_pin = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1650680688, i32 6, i32 0, i8 1, i8 0, i8 1, ptr @msm8974_cxo_a2_pin, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.170 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"snoc_clk\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.63, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.64, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"snoc_a_clk\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.68 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.66, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.67, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cnoc_clk\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.71 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.69, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.70, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cnoc_a_clk\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.73 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.72, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.73, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mmssnoc_ahb_clk\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.77 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.75, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.76, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mmssnoc_ahb_a_clk\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.79 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.80 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.78, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.79, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gfx3d_clk_src\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.83 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.81, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.82, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gfx3d_a_clk_src\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.85 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.86 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.84, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.85, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ocmemgx_clk\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.88 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.89 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.87, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.88, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ocmemgx_a_clk\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.91 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.92 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.90, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.91, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cxo_d0\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.94 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.95 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.93, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.94, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cxo_d0_a\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.97 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.98 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.96, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.97, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cxo_d1\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.100 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.101 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.99, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.100, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cxo_d1_a\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.103 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.104 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.102, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.103, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cxo_a0\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.106 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.107 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.105, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.106, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cxo_a0_a\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.109 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.110 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.108, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.109, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cxo_a1\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.112 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.113 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.111, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.112, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cxo_a1_a\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.115 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.116 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.114, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.115, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cxo_a2\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.118 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.119 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.117, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.118, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cxo_a2_a\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.121 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.122 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.120, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.121, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"div_clk1\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.124 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.125 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.123, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.124, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"div_a_clk1\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.127 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.128 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.126, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.127, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"div_clk2\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.130 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.131 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.129, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.130, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"div_a_clk2\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.133 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.134 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.132, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.133, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"diff_clk\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.136 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.137 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.135, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.136, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"diff_a_clk\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.139 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.140 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.138, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.139, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cxo_d0_pin\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.142 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.143 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.141, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.142, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cxo_d0_a_pin\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.145 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.146 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.144, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.145, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cxo_d1_pin\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.148 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.149 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.147, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.148, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cxo_d1_a_pin\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.151 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.152 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.150, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.151, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cxo_a0_pin\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.154 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.155 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.153, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.154, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cxo_a0_a_pin\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.157 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.158 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.156, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.157, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cxo_a1_pin\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.160 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.161 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.159, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.160, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cxo_a1_a_pin\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.163 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.164 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.162, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.163, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cxo_a2_pin\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.166 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.167 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.165, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.166, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cxo_a2_a_pin\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.169 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.170 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.168, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.169, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@msm8916_clks = internal global { [26 x ptr], [56 x i8] } { [26 x ptr] [ptr null, ptr null, ptr @msm8916_pcnoc_clk, ptr @msm8916_pcnoc_a_clk, ptr @msm8916_snoc_clk, ptr @msm8916_snoc_a_clk, ptr @msm8916_bimc_clk, ptr @msm8916_bimc_a_clk, ptr @msm8916_qdss_clk, ptr @msm8916_qdss_a_clk, ptr @msm8916_bb_clk1, ptr @msm8916_bb_clk1_a, ptr @msm8916_bb_clk2, ptr @msm8916_bb_clk2_a, ptr @msm8916_rf_clk1, ptr @msm8916_rf_clk1_a, ptr @msm8916_rf_clk2, ptr @msm8916_rf_clk2_a, ptr @msm8916_bb_clk1_pin, ptr @msm8916_bb_clk1_a_pin, ptr @msm8916_bb_clk2_pin, ptr @msm8916_bb_clk2_a_pin, ptr @msm8916_rf_clk1_pin, ptr @msm8916_rf_clk1_a_pin, ptr @msm8916_rf_clk2_pin, ptr @msm8916_rf_clk2_a_pin], [56 x i8] zeroinitializer }, align 32
@msm8916_bb_clk2 = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1852143475, i32 2, i32 0, i8 0, i8 0, i8 1, ptr @msm8916_bb_clk2_a, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.173 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8916_bb_clk2_a = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1852143475, i32 2, i32 0, i8 1, i8 0, i8 1, ptr @msm8916_bb_clk2, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.176 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8916_rf_clk1 = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1852143475, i32 4, i32 0, i8 0, i8 0, i8 1, ptr @msm8916_rf_clk1_a, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.179 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8916_rf_clk1_a = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1852143475, i32 4, i32 0, i8 1, i8 0, i8 1, ptr @msm8916_rf_clk1, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.182 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8916_rf_clk2 = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1852143475, i32 5, i32 0, i8 0, i8 0, i8 1, ptr @msm8916_rf_clk2_a, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.185 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8916_rf_clk2_a = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1852143475, i32 5, i32 0, i8 1, i8 0, i8 1, ptr @msm8916_rf_clk2, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.188 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8916_bb_clk2_pin = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1650680688, i32 2, i32 0, i8 0, i8 0, i8 1, ptr @msm8916_bb_clk2_a_pin, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.191 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8916_bb_clk2_a_pin = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1650680688, i32 2, i32 0, i8 1, i8 0, i8 1, ptr @msm8916_bb_clk2_pin, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.194 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8916_rf_clk1_pin = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1650680688, i32 4, i32 0, i8 0, i8 0, i8 1, ptr @msm8916_rf_clk1_a_pin, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.197 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8916_rf_clk1_a_pin = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1650680688, i32 4, i32 0, i8 1, i8 0, i8 1, ptr @msm8916_rf_clk1_pin, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.200 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8916_rf_clk2_pin = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1650680688, i32 5, i32 0, i8 0, i8 0, i8 1, ptr @msm8916_rf_clk2_a_pin, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.203 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8916_rf_clk2_a_pin = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1650680688, i32 5, i32 0, i8 1, i8 0, i8 1, ptr @msm8916_rf_clk2_pin, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.206 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bb_clk2\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.172 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.173 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.171, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.172, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bb_clk2_a\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.175 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.176 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.174, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.175, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rf_clk1\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.178 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.179 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.177, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.178, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rf_clk1_a\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.181 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.182 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.180, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.181, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rf_clk2\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.184 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.185 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.183, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.184, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rf_clk2_a\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.187 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.188 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.186, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.187, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bb_clk2_pin\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.190 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.191 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.189, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.190, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bb_clk2_a_pin\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.193 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.194 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.192, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.193, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rf_clk1_pin\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.196 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.197 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.195, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.196, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rf_clk1_a_pin\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.199 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.200 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.198, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.199, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rf_clk2_pin\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.202 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.203 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.201, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.202, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rf_clk2_a_pin\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.205 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.206 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.204, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.205, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@msm8936_clks = internal global { [102 x ptr], [104 x i8] } { [102 x ptr] [ptr null, ptr null, ptr @msm8916_pcnoc_clk, ptr @msm8916_pcnoc_a_clk, ptr @msm8916_snoc_clk, ptr @msm8916_snoc_a_clk, ptr @msm8916_bimc_clk, ptr @msm8916_bimc_a_clk, ptr @msm8916_qdss_clk, ptr @msm8916_qdss_a_clk, ptr @msm8916_bb_clk1, ptr @msm8916_bb_clk1_a, ptr @msm8916_bb_clk2, ptr @msm8916_bb_clk2_a, ptr @msm8916_rf_clk1, ptr @msm8916_rf_clk1_a, ptr @msm8916_rf_clk2, ptr @msm8916_rf_clk2_a, ptr @msm8916_bb_clk1_pin, ptr @msm8916_bb_clk1_a_pin, ptr @msm8916_bb_clk2_pin, ptr @msm8916_bb_clk2_a_pin, ptr @msm8916_rf_clk1_pin, ptr @msm8916_rf_clk1_a_pin, ptr @msm8916_rf_clk2_pin, ptr @msm8916_rf_clk2_a_pin, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm8936_sysmmnoc_clk, ptr @msm8936_sysmmnoc_a_clk], [104 x i8] zeroinitializer }, align 32
@msm8936_sysmmnoc_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 829123683, i32 8013899, i32 2, i32 0, i8 0, i8 0, i8 0, ptr @msm8936_sysmmnoc_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.209 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8936_sysmmnoc_a_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 829123683, i32 8013899, i32 2, i32 0, i8 1, i8 0, i8 0, ptr @msm8936_sysmmnoc_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.212 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sysmmnoc_clk\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.208 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.209 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.207, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.208, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sysmmnoc_a_clk\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.211 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.212 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.210, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.211, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@msm8953_clks = internal global { [102 x ptr], [104 x i8] } { [102 x ptr] [ptr @sdm660_bi_tcxo, ptr @sdm660_bi_tcxo_a, ptr @msm8916_pcnoc_clk, ptr @msm8916_pcnoc_a_clk, ptr @msm8916_snoc_clk, ptr @msm8916_snoc_a_clk, ptr @msm8916_bimc_clk, ptr @msm8916_bimc_a_clk, ptr @msm8916_qdss_clk, ptr @msm8916_qdss_a_clk, ptr @msm8916_bb_clk1, ptr @msm8916_bb_clk1_a, ptr @msm8916_bb_clk2, ptr @msm8916_bb_clk2_a, ptr null, ptr null, ptr @msm8916_rf_clk2, ptr @msm8916_rf_clk2_a, ptr @msm8916_bb_clk1_pin, ptr @msm8916_bb_clk1_a_pin, ptr @msm8916_bb_clk2_pin, ptr @msm8916_bb_clk2_a_pin, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm8974_div_clk2, ptr @msm8974_div_a_clk2, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm8976_ipa_clk, ptr @msm8976_ipa_a_clk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm8992_ln_bb_clk, ptr @msm8992_ln_bb_a_clk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm8936_sysmmnoc_clk, ptr @msm8936_sysmmnoc_a_clk], [104 x i8] zeroinitializer }, align 32
@msm8976_ipa_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 6385769, i32 8013899, i32 0, i32 0, i8 0, i8 0, i8 0, ptr @msm8976_ipa_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.215 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8976_ipa_a_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 6385769, i32 8013899, i32 0, i32 0, i8 1, i8 0, i8 0, ptr @msm8976_ipa_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.218 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8992_ln_bb_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1852143475, i32 8, i32 0, i8 0, i8 0, i8 1, ptr @msm8992_ln_bb_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.221 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8992_ln_bb_a_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1852143475, i32 8, i32 0, i8 1, i8 0, i8 1, ptr @msm8992_ln_bb_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.224 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ipa_clk\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.214 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.215 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.213, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.214, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ipa_a_clk\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.217 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.218 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.216, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.217, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ln_bb_clk\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.220 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.221 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.219, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.220, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ln_bb_a_clk\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.223 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.224 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.222, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.223, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@msm8976_clks = internal global { [70 x ptr], [72 x i8] } { [70 x ptr] [ptr null, ptr null, ptr @msm8916_pcnoc_clk, ptr @msm8916_pcnoc_a_clk, ptr @msm8916_snoc_clk, ptr @msm8916_snoc_a_clk, ptr @msm8916_bimc_clk, ptr @msm8916_bimc_a_clk, ptr @msm8916_qdss_clk, ptr @msm8916_qdss_a_clk, ptr @msm8916_bb_clk1, ptr @msm8916_bb_clk1_a, ptr @msm8916_bb_clk2, ptr @msm8916_bb_clk2_a, ptr null, ptr null, ptr @msm8916_rf_clk2, ptr @msm8916_rf_clk2_a, ptr @msm8916_bb_clk1_pin, ptr @msm8916_bb_clk1_a_pin, ptr @msm8916_bb_clk2_pin, ptr @msm8916_bb_clk2_a_pin, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm8976_mmssnoc_ahb_clk, ptr @msm8976_mmssnoc_ahb_a_clk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm8974_div_clk2, ptr @msm8974_div_a_clk2, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm8976_ipa_clk, ptr @msm8976_ipa_a_clk], [72 x i8] zeroinitializer }, align 32
@msm8976_mmssnoc_ahb_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 829123683, i32 8013899, i32 2, i32 0, i8 0, i8 0, i8 0, ptr @msm8976_mmssnoc_ahb_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.226 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8976_mmssnoc_ahb_a_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 829123683, i32 8013899, i32 2, i32 0, i8 1, i8 0, i8 0, ptr @msm8976_mmssnoc_ahb_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.228 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@.compoundliteral.225 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.226 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.75, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.225, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.227 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.228 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.78, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.227, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@msm8992_clks = internal global { [104 x ptr], [96 x i8] } { [104 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr @msm8916_snoc_clk, ptr @msm8916_snoc_a_clk, ptr @msm8916_bimc_clk, ptr @msm8916_bimc_a_clk, ptr @msm8916_qdss_clk, ptr @msm8916_qdss_a_clk, ptr @msm8916_bb_clk1, ptr @msm8916_bb_clk1_a, ptr @msm8916_bb_clk2, ptr @msm8916_bb_clk2_a, ptr @msm8916_rf_clk1, ptr @msm8916_rf_clk1_a, ptr @msm8916_rf_clk2, ptr @msm8916_rf_clk2_a, ptr @msm8916_bb_clk1_pin, ptr @msm8916_bb_clk1_a_pin, ptr @msm8916_bb_clk2_pin, ptr @msm8916_bb_clk2_a_pin, ptr @msm8916_rf_clk1_pin, ptr @msm8916_rf_clk1_a_pin, ptr @msm8916_rf_clk2_pin, ptr @msm8916_rf_clk2_a_pin, ptr @msm8916_pcnoc_clk, ptr @msm8916_pcnoc_a_clk, ptr @msm8974_cnoc_clk, ptr @msm8974_cnoc_a_clk, ptr @msm8974_mmssnoc_ahb_clk, ptr @msm8974_mmssnoc_ahb_a_clk, ptr @msm8974_gfx3d_clk_src, ptr @msm8974_gfx3d_a_clk_src, ptr @msm8974_ocmemgx_clk, ptr @msm8974_ocmemgx_a_clk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm8974_div_clk1, ptr @msm8974_div_a_clk1, ptr @msm8974_div_clk2, ptr @msm8974_div_a_clk2, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm8976_ipa_clk, ptr @msm8976_ipa_a_clk, ptr @msm8992_ce1_clk, ptr @msm8992_ce1_a_clk, ptr @msm8992_div_clk3, ptr @msm8992_div_clk3_a, ptr @msm8992_ln_bb_clk, ptr @msm8992_ln_bb_a_clk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm8992_ce2_clk, ptr @msm8992_ce2_a_clk], [96 x i8] zeroinitializer }, align 32
@msm8992_ce1_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 25955, i32 8013899, i32 0, i32 0, i8 0, i8 0, i8 0, ptr @msm8992_ce1_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.231 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8992_ce1_a_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 25955, i32 8013899, i32 0, i32 0, i8 1, i8 0, i8 0, ptr @msm8992_ce1_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.234 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8992_div_clk3 = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1852143475, i32 13, i32 0, i8 0, i8 0, i8 1, ptr @msm8992_div_clk3_a, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.237 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8992_div_clk3_a = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1852143475, i32 13, i32 0, i8 1, i8 0, i8 1, ptr @msm8992_div_clk3, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.240 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8992_ce2_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 25955, i32 8013899, i32 1, i32 0, i8 0, i8 0, i8 0, ptr @msm8992_ce2_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.243 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8992_ce2_a_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 25955, i32 8013899, i32 1, i32 0, i8 1, i8 0, i8 0, ptr @msm8992_ce2_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.246 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ce1_clk\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.230 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.231 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.229, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.230, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ce1_a_clk\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.233 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.234 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.232, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.233, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"div_clk3\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.236 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.237 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.235, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.236, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"div_clk3_a\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.239 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.240 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.238, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.239, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ce2_clk\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.242 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.243 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.241, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.242, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ce2_a_clk\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.245 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.246 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.244, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.245, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@msm8994_clks = internal global { [106 x ptr], [120 x i8] } { [106 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr @msm8916_snoc_clk, ptr @msm8916_snoc_a_clk, ptr @msm8916_bimc_clk, ptr @msm8916_bimc_a_clk, ptr @msm8916_qdss_clk, ptr @msm8916_qdss_a_clk, ptr @msm8916_bb_clk1, ptr @msm8916_bb_clk1_a, ptr @msm8916_bb_clk2, ptr @msm8916_bb_clk2_a, ptr @msm8916_rf_clk1, ptr @msm8916_rf_clk1_a, ptr @msm8916_rf_clk2, ptr @msm8916_rf_clk2_a, ptr @msm8916_bb_clk1_pin, ptr @msm8916_bb_clk1_a_pin, ptr @msm8916_bb_clk2_pin, ptr @msm8916_bb_clk2_a_pin, ptr @msm8916_rf_clk1_pin, ptr @msm8916_rf_clk1_a_pin, ptr @msm8916_rf_clk2_pin, ptr @msm8916_rf_clk2_a_pin, ptr @msm8916_pcnoc_clk, ptr @msm8916_pcnoc_a_clk, ptr @msm8974_cnoc_clk, ptr @msm8974_cnoc_a_clk, ptr @msm8974_mmssnoc_ahb_clk, ptr @msm8974_mmssnoc_ahb_a_clk, ptr @msm8974_gfx3d_clk_src, ptr @msm8974_gfx3d_a_clk_src, ptr @msm8974_ocmemgx_clk, ptr @msm8974_ocmemgx_a_clk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm8974_div_clk1, ptr @msm8974_div_a_clk1, ptr @msm8974_div_clk2, ptr @msm8974_div_a_clk2, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm8976_ipa_clk, ptr @msm8976_ipa_a_clk, ptr @msm8992_ce1_clk, ptr @msm8992_ce1_a_clk, ptr @msm8992_div_clk3, ptr @msm8992_div_clk3_a, ptr @msm8992_ln_bb_clk, ptr @msm8992_ln_bb_a_clk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm8992_ce2_clk, ptr @msm8992_ce2_a_clk, ptr @msm8994_ce3_clk, ptr @msm8994_ce3_a_clk], [120 x i8] zeroinitializer }, align 32
@msm8994_ce3_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 25955, i32 8013899, i32 2, i32 0, i8 0, i8 0, i8 0, ptr @msm8994_ce3_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.249 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8994_ce3_a_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 25955, i32 8013899, i32 2, i32 0, i8 1, i8 0, i8 0, ptr @msm8994_ce3_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.252 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ce3_clk\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.248 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.249 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.247, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.248, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ce3_a_clk\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.251 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.252 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.250, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.251, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@msm8996_clks = internal global { [76 x ptr], [80 x i8] } { [76 x ptr] [ptr null, ptr null, ptr @msm8916_pcnoc_clk, ptr @msm8916_pcnoc_a_clk, ptr @msm8916_snoc_clk, ptr @msm8916_snoc_a_clk, ptr @msm8916_bimc_clk, ptr @msm8916_bimc_a_clk, ptr @msm8916_qdss_clk, ptr @msm8916_qdss_a_clk, ptr @msm8916_bb_clk1, ptr @msm8916_bb_clk1_a, ptr @msm8916_bb_clk2, ptr @msm8916_bb_clk2_a, ptr @msm8916_rf_clk1, ptr @msm8916_rf_clk1_a, ptr @msm8916_rf_clk2, ptr @msm8916_rf_clk2_a, ptr @msm8916_bb_clk1_pin, ptr @msm8916_bb_clk1_a_pin, ptr @msm8916_bb_clk2_pin, ptr @msm8916_bb_clk2_a_pin, ptr @msm8916_rf_clk1_pin, ptr @msm8916_rf_clk1_a_pin, ptr @msm8916_rf_clk2_pin, ptr @msm8916_rf_clk2_a_pin, ptr null, ptr null, ptr @msm8974_cnoc_clk, ptr @msm8974_cnoc_a_clk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm8974_div_clk1, ptr @msm8974_div_a_clk1, ptr @msm8974_div_clk2, ptr @msm8974_div_a_clk2, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm8996_aggre1_noc_clk, ptr @msm8996_aggre1_noc_a_clk, ptr @msm8996_aggre2_noc_clk, ptr @msm8996_aggre2_noc_a_clk, ptr @msm8996_mmssnoc_axi_rpm_clk, ptr @msm8996_mmssnoc_axi_rpm_a_clk, ptr @msm8976_ipa_clk, ptr @msm8976_ipa_a_clk, ptr @msm8992_ce1_clk, ptr @msm8992_ce1_a_clk, ptr @msm8992_div_clk3, ptr @msm8992_div_clk3_a, ptr @msm8992_ln_bb_clk, ptr @msm8992_ln_bb_a_clk], [80 x i8] zeroinitializer }, align 32
@msm8996_aggre1_noc_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1919379297, i32 1650552389, i32 1, i32 0, i8 0, i8 0, i8 1, ptr @msm8996_aggre1_noc_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.255 }, i32 1000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8996_aggre1_noc_a_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1919379297, i32 1650552389, i32 1, i32 0, i8 1, i8 0, i8 1, ptr @msm8996_aggre1_noc_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.258 }, i32 1000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8996_aggre2_noc_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1919379297, i32 1650552389, i32 2, i32 0, i8 0, i8 0, i8 1, ptr @msm8996_aggre2_noc_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.261 }, i32 1000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8996_aggre2_noc_a_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1919379297, i32 1650552389, i32 2, i32 0, i8 1, i8 0, i8 1, ptr @msm8996_aggre2_noc_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.264 }, i32 1000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8996_mmssnoc_axi_rpm_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1769500013, i32 8013899, i32 0, i32 0, i8 0, i8 0, i8 0, ptr @msm8996_mmssnoc_axi_rpm_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.267 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8996_mmssnoc_axi_rpm_a_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1769500013, i32 8013899, i32 0, i32 0, i8 1, i8 0, i8 0, ptr @msm8996_mmssnoc_axi_rpm_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.270 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aggre1_noc_clk\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.254 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.255 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.253, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.254, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aggre1_noc_a_clk\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.257 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.258 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.256, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.257, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aggre2_noc_clk\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.260 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.261 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.259, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.260, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aggre2_noc_a_clk\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.263 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.264 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.262, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.263, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mmssnoc_axi_rpm_clk\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.266 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.267 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.265, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.266, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mmssnoc_axi_rpm_a_clk\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.269 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.270 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.268, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.269, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@msm8998_clks = internal global { [90 x ptr], [88 x i8] } { [90 x ptr] [ptr null, ptr null, ptr @msm8916_pcnoc_clk, ptr @msm8916_pcnoc_a_clk, ptr @msm8916_snoc_clk, ptr @msm8916_snoc_a_clk, ptr @msm8916_bimc_clk, ptr @msm8916_bimc_a_clk, ptr @msm8916_qdss_clk, ptr @msm8916_qdss_a_clk, ptr null, ptr null, ptr null, ptr null, ptr @msm8916_rf_clk1, ptr @msm8916_rf_clk1_a, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm8916_rf_clk2_pin, ptr @msm8916_rf_clk2_a_pin, ptr null, ptr null, ptr @msm8974_cnoc_clk, ptr @msm8974_cnoc_a_clk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm8974_div_clk1, ptr @msm8974_div_a_clk1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm8998_aggre1_noc_clk, ptr @msm8998_aggre1_noc_a_clk, ptr @msm8998_aggre2_noc_clk, ptr @msm8998_aggre2_noc_a_clk, ptr @msm8996_mmssnoc_axi_rpm_clk, ptr @msm8996_mmssnoc_axi_rpm_a_clk, ptr @msm8976_ipa_clk, ptr @msm8976_ipa_a_clk, ptr @msm8992_ce1_clk, ptr @msm8992_ce1_a_clk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm8916_bb_clk1, ptr @msm8916_bb_clk1_a, ptr @msm8916_bb_clk2, ptr @msm8916_bb_clk2_a, ptr @msm8998_ln_bb_clk3_pin, ptr @msm8998_ln_bb_clk3_a_pin, ptr @msm8998_rf_clk3, ptr @msm8998_rf_clk3_a, ptr @msm8998_rf_clk3_pin, ptr @msm8998_rf_clk3_a_pin], [88 x i8] zeroinitializer }, align 32
@msm8998_aggre1_noc_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1919379297, i32 8013899, i32 1, i32 0, i8 0, i8 0, i8 0, ptr @msm8998_aggre1_noc_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.272 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8998_aggre1_noc_a_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1919379297, i32 8013899, i32 1, i32 0, i8 1, i8 0, i8 0, ptr @msm8998_aggre1_noc_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.274 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8998_aggre2_noc_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1919379297, i32 8013899, i32 2, i32 0, i8 0, i8 0, i8 0, ptr @msm8998_aggre2_noc_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.276 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8998_aggre2_noc_a_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1919379297, i32 8013899, i32 2, i32 0, i8 1, i8 0, i8 0, ptr @msm8998_aggre2_noc_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.278 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8998_ln_bb_clk3_pin = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1650680688, i32 3, i32 0, i8 0, i8 0, i8 1, ptr @msm8998_ln_bb_clk3_a_pin, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.281 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8998_ln_bb_clk3_a_pin = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1650680688, i32 3, i32 0, i8 1, i8 0, i8 1, ptr @msm8998_ln_bb_clk3_pin, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.284 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8998_rf_clk3 = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1852143475, i32 6, i32 0, i8 0, i8 0, i8 1, ptr @msm8998_rf_clk3_a, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.287 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8998_rf_clk3_a = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1852143475, i32 6, i32 0, i8 1, i8 0, i8 1, ptr @msm8998_rf_clk3, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.290 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8998_rf_clk3_pin = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1650680688, i32 6, i32 0, i8 0, i8 0, i8 1, ptr @msm8998_rf_clk3_a_pin, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.293 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8998_rf_clk3_a_pin = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1650680688, i32 6, i32 0, i8 1, i8 0, i8 1, ptr @msm8998_rf_clk3_pin, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.296 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@.compoundliteral.271 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.272 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.253, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.271, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.273 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.274 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.256, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.273, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.275 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.276 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.259, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.275, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.277 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.278 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.262, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.277, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ln_bb_clk3_pin\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.280 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.281 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.279, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.280, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ln_bb_clk3_a_pin\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.283 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.284 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.282, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.283, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rf_clk3\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.286 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.287 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.285, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.286, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rf_clk3_a\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.289 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.290 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.288, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.289, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rf_clk3_pin\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.292 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.293 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.291, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.292, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rf_clk3_a_pin\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.295 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.296 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.294, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.295, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@qcm2290_clks = internal global { [122 x ptr], [120 x i8] } { [122 x ptr] [ptr @sdm660_bi_tcxo, ptr @sdm660_bi_tcxo_a, ptr null, ptr null, ptr @sm6125_snoc_clk, ptr @sm6125_snoc_a_clk, ptr @msm8916_bimc_clk, ptr @msm8916_bimc_a_clk, ptr @sm6125_qdss_clk, ptr @sm6125_qdss_a_clk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sm6125_cnoc_clk, ptr @sm6125_cnoc_a_clk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm8976_ipa_clk, ptr @msm8976_ipa_a_clk, ptr @msm8992_ce1_clk, ptr @msm8992_ce1_a_clk, ptr null, ptr null, ptr null, ptr null, ptr @qcm2290_bimc_gpu_clk, ptr @qcm2290_bimc_gpu_a_clk, ptr @qcm2290_qpic_clk, ptr @qcm2290_qpic_a_clk, ptr null, ptr null, ptr @qcm2290_ln_bb_clk2, ptr @qcm2290_ln_bb_clk2_a, ptr null, ptr null, ptr @qcm2290_rf_clk3, ptr @qcm2290_rf_clk3_a, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sm6125_qup_clk, ptr @sm6125_qup_a_clk, ptr @sm6125_mmrt_clk, ptr @sm6125_mmrt_a_clk, ptr @sm6125_mmnrt_clk, ptr @sm6125_mmnrt_a_clk, ptr @sm6125_snoc_periph_clk, ptr @sm6125_snoc_periph_a_clk, ptr @sm6125_snoc_lpass_clk, ptr @sm6125_snoc_lpass_a_clk, ptr @qcm2290_hwkm_clk, ptr @qcm2290_hwkm_a_clk, ptr @qcm2290_pka_clk, ptr @qcm2290_pka_a_clk, ptr @qcm2290_cpuss_gnoc_clk, ptr @qcm2290_cpuss_gnoc_a_clk], [120 x i8] zeroinitializer }, align 32
@sm6125_snoc_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 829123683, i32 8013899, i32 2, i32 0, i8 0, i8 0, i8 0, ptr @sm6125_snoc_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.298 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@sm6125_snoc_a_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 829123683, i32 8013899, i32 2, i32 0, i8 1, i8 0, i8 0, ptr @sm6125_snoc_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.300 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@sm6125_qdss_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 812346467, i32 1650552389, i32 1, i32 0, i8 0, i8 0, i8 1, ptr @sm6125_qdss_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.302 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@sm6125_qdss_a_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 812346467, i32 1650552389, i32 1, i32 0, i8 1, i8 0, i8 1, ptr @sm6125_qdss_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.304 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@sm6125_cnoc_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 829123683, i32 8013899, i32 1, i32 0, i8 0, i8 0, i8 0, ptr @sm6125_cnoc_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.306 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@sm6125_cnoc_a_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 829123683, i32 8013899, i32 1, i32 0, i8 1, i8 0, i8 0, ptr @sm6125_cnoc_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.308 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@qcm2290_bimc_gpu_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 845900899, i32 8013899, i32 2, i32 0, i8 0, i8 0, i8 0, ptr @qcm2290_bimc_gpu_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.311 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@qcm2290_bimc_gpu_a_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 845900899, i32 8013899, i32 2, i32 0, i8 1, i8 0, i8 0, ptr @qcm2290_bimc_gpu_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.314 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@qcm2290_qpic_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1667854449, i32 8013899, i32 0, i32 0, i8 0, i8 0, i8 0, ptr @qcm2290_qpic_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.316 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@qcm2290_qpic_a_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1667854449, i32 8013899, i32 0, i32 0, i8 1, i8 0, i8 0, ptr @qcm2290_qpic_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.318 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@qcm2290_ln_bb_clk2 = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1852143475, i32 2, i32 0, i8 0, i8 0, i8 1, ptr @qcm2290_ln_bb_clk2_a, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.321 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@qcm2290_ln_bb_clk2_a = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1852143475, i32 2, i32 0, i8 1, i8 0, i8 1, ptr @qcm2290_ln_bb_clk2, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.324 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@qcm2290_rf_clk3 = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1852143475, i32 6, i32 0, i8 0, i8 0, i8 1, ptr @qcm2290_rf_clk3_a, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.326 }, i32 38400000, ptr null }, [52 x i8] zeroinitializer }, align 32
@qcm2290_rf_clk3_a = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1852143475, i32 6, i32 0, i8 1, i8 0, i8 1, ptr @qcm2290_rf_clk3, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.328 }, i32 38400000, ptr null }, [52 x i8] zeroinitializer }, align 32
@sm6125_qup_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 7370097, i32 8013899, i32 0, i32 0, i8 0, i8 0, i8 0, ptr @sm6125_qup_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.331 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@sm6125_qup_a_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 7370097, i32 8013899, i32 0, i32 0, i8 1, i8 0, i8 0, ptr @sm6125_qup_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.334 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@sm6125_mmrt_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1769500013, i32 8013899, i32 1, i32 0, i8 0, i8 0, i8 0, ptr @sm6125_mmrt_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.337 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@sm6125_mmrt_a_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1769500013, i32 8013899, i32 1, i32 0, i8 1, i8 0, i8 0, ptr @sm6125_mmrt_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.340 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@sm6125_mmnrt_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1769500013, i32 8013899, i32 0, i32 0, i8 0, i8 0, i8 0, ptr @sm6125_mmnrt_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.343 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@sm6125_mmnrt_a_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1769500013, i32 8013899, i32 0, i32 0, i8 1, i8 0, i8 0, ptr @sm6125_mmnrt_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.346 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@sm6125_snoc_periph_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 829123683, i32 8013899, i32 0, i32 0, i8 0, i8 0, i8 0, ptr @sm6125_snoc_periph_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.349 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@sm6125_snoc_periph_a_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 829123683, i32 8013899, i32 0, i32 0, i8 1, i8 0, i8 0, ptr @sm6125_snoc_periph_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.352 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@sm6125_snoc_lpass_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 829123683, i32 8013899, i32 5, i32 0, i8 0, i8 0, i8 0, ptr @sm6125_snoc_lpass_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.355 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@sm6125_snoc_lpass_a_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 829123683, i32 8013899, i32 5, i32 0, i8 1, i8 0, i8 0, ptr @sm6125_snoc_lpass_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.358 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@qcm2290_hwkm_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1835759464, i32 8013899, i32 0, i32 0, i8 0, i8 0, i8 0, ptr @qcm2290_hwkm_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.361 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@qcm2290_hwkm_a_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1835759464, i32 8013899, i32 0, i32 0, i8 1, i8 0, i8 0, ptr @qcm2290_hwkm_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.364 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@qcm2290_pka_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 6384496, i32 8013899, i32 0, i32 0, i8 0, i8 0, i8 0, ptr @qcm2290_pka_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.367 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@qcm2290_pka_a_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 6384496, i32 8013899, i32 0, i32 0, i8 1, i8 0, i8 0, ptr @qcm2290_pka_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.370 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@qcm2290_cpuss_gnoc_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 845900899, i32 8013899, i32 1, i32 0, i8 0, i8 0, i8 0, ptr @qcm2290_cpuss_gnoc_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.373 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@qcm2290_cpuss_gnoc_a_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 845900899, i32 8013899, i32 1, i32 0, i8 1, i8 0, i8 0, ptr @qcm2290_cpuss_gnoc_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.376 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@.compoundliteral.297 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.298 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.63, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.297, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.299 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.300 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.66, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.299, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.301 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.302 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.39, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.301, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.303 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.304 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.42, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.303, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.305 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.306 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.69, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.305, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.307 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.308 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.72, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.307, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bimc_gpu_clk\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.310 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.311 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.309, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.310, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bimc_gpu_a_clk\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.313 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.314 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.312, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.313, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.315 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.316 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.57, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.315, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.317 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.318 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.60, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.317, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ln_bb_clk2\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.320 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.321 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.319, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.320, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ln_bb_clk2_a\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.323 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.324 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.322, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.323, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.325 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.326 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.285, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.325, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.327 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.328 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.288, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.327, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qup_clk\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.330 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.331 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.329, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.330, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qup_a_clk\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.333 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.334 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.332, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.333, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmrt_clk\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.336 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.337 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.335, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.336, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmrt_a_clk\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.339 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.340 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.338, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.339, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmnrt_clk\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.342 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.343 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.341, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.342, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmnrt_a_clk\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.345 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.346 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.344, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.345, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.347 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snoc_periph_clk\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.348 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.349 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.347, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.348, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.350 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snoc_periph_a_clk\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.351 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.352 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.350, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.351, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.353 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snoc_lpass_clk\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.354 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.355 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.353, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.354, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.356 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snoc_lpass_a_clk\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.357 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.358 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.356, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.357, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.359 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hwkm_clk\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.360 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.361 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.359, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.360, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.362 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hwkm_a_clk\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.363 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.364 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.362, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.363, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.365 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pka_clk\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.366 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.367 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.365, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.366, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.368 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pka_a_clk\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.369 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.370 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.368, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.369, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.371 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cpuss_gnoc_clk\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.372 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.373 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.371, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.372, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.374 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cpuss_gnoc_a_clk\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.375 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.376 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.374, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.375, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@qcs404_clks = internal global { [80 x ptr], [64 x i8] } { [80 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr @msm8916_snoc_clk, ptr @msm8916_snoc_a_clk, ptr @msm8916_bimc_clk, ptr @msm8916_bimc_a_clk, ptr @msm8916_qdss_clk, ptr @msm8916_qdss_a_clk, ptr null, ptr null, ptr null, ptr null, ptr @msm8916_rf_clk1, ptr @msm8916_rf_clk1_a, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm8916_pcnoc_clk, ptr @msm8916_pcnoc_a_clk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm8992_ce1_clk, ptr @msm8992_ce1_a_clk, ptr null, ptr null, ptr @msm8992_ln_bb_clk, ptr @msm8992_ln_bb_a_clk, ptr @qcs404_bimc_gpu_clk, ptr @qcs404_bimc_gpu_a_clk, ptr @qcs404_qpic_clk, ptr @qcs404_qpic_a_clk], [64 x i8] zeroinitializer }, align 32
@qcs404_bimc_gpu_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 845900899, i32 8013899, i32 2, i32 0, i8 0, i8 0, i8 0, ptr @qcs404_bimc_gpu_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.378 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@qcs404_bimc_gpu_a_clk = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 845900899, i32 8013899, i32 2, i32 0, i8 1, i8 0, i8 0, ptr @qcs404_bimc_gpu_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.380 }, i32 2147483647, ptr null }, [52 x i8] zeroinitializer }, align 32
@.compoundliteral.377 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.378 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.309, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.377, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.379 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.380 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.312, ptr @clk_smd_rpm_ops, ptr null, ptr @.compoundliteral.379, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@sdm660_clks = internal global { [100 x ptr], [112 x i8] } { [100 x ptr] [ptr @sdm660_bi_tcxo, ptr @sdm660_bi_tcxo_a, ptr null, ptr null, ptr @msm8916_snoc_clk, ptr @msm8916_snoc_a_clk, ptr @msm8916_bimc_clk, ptr @msm8916_bimc_a_clk, ptr @msm8916_qdss_clk, ptr @msm8916_qdss_a_clk, ptr null, ptr null, ptr null, ptr null, ptr @msm8916_rf_clk1, ptr @msm8916_rf_clk1_a, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm8916_rf_clk1_pin, ptr @msm8916_rf_clk1_a_pin, ptr null, ptr null, ptr null, ptr null, ptr @msm8974_cnoc_clk, ptr @msm8974_cnoc_a_clk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm8974_div_clk1, ptr @msm8974_div_a_clk1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm8998_aggre2_noc_clk, ptr @msm8998_aggre2_noc_a_clk, ptr null, ptr null, ptr @msm8976_ipa_clk, ptr @msm8976_ipa_a_clk, ptr @msm8992_ce1_clk, ptr @msm8992_ce1_a_clk, ptr null, ptr null, ptr @msm8916_bb_clk1, ptr @msm8916_bb_clk1_a, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm8916_bb_clk2, ptr @msm8916_bb_clk2_a, ptr @sdm660_ln_bb_clk3_pin, ptr @sdm660_ln_bb_clk3_pin_a, ptr null, ptr null, ptr null, ptr null, ptr @msm8996_mmssnoc_axi_rpm_clk, ptr @msm8996_mmssnoc_axi_rpm_a_clk, ptr @msm8916_pcnoc_clk, ptr @msm8916_pcnoc_a_clk, ptr @sdm660_ln_bb_clk3, ptr @sdm660_ln_bb_clk3_a, ptr @msm8916_bb_clk1_pin, ptr @msm8916_bb_clk1_a_pin, ptr @msm8916_bb_clk2_pin, ptr @msm8916_bb_clk2_a_pin], [112 x i8] zeroinitializer }, align 32
@sdm660_ln_bb_clk3_pin = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1650680688, i32 3, i32 0, i8 0, i8 0, i8 1, ptr @sdm660_ln_bb_clk3_pin_a, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.382 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@sdm660_ln_bb_clk3_pin_a = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1650680688, i32 3, i32 0, i8 1, i8 0, i8 1, ptr @sdm660_ln_bb_clk3_pin, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.385 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@sdm660_ln_bb_clk3 = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1852143475, i32 3, i32 0, i8 0, i8 0, i8 1, ptr @sdm660_ln_bb_clk3_a, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.388 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@sdm660_ln_bb_clk3_a = internal global { %struct.clk_smd_rpm, [52 x i8] } { %struct.clk_smd_rpm { i32 1634430051, i32 1852143475, i32 3, i32 0, i8 1, i8 0, i8 1, ptr @sdm660_ln_bb_clk3, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.391 }, i32 19200000, ptr null }, [52 x i8] zeroinitializer }, align 32
@.compoundliteral.381 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.382 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.279, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.381, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.383 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ln_bb_clk3_pin_a\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.384 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.385 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.383, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.384, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.386 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ln_bb_clk3\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.387 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.388 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.386, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.387, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.389 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ln_bb_clk3_a\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.390 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.20, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.391 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.389, ptr @clk_smd_rpm_branch_ops, ptr null, ptr @.compoundliteral.390, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@sm6115_clks = internal global { [116 x ptr], [112 x i8] } { [116 x ptr] [ptr @sdm660_bi_tcxo, ptr @sdm660_bi_tcxo_a, ptr null, ptr null, ptr @sm6125_snoc_clk, ptr @sm6125_snoc_a_clk, ptr @msm8916_bimc_clk, ptr @msm8916_bimc_a_clk, ptr @sm6125_qdss_clk, ptr @sm6125_qdss_a_clk, ptr null, ptr null, ptr null, ptr null, ptr @msm8916_rf_clk1, ptr @msm8916_rf_clk1_a, ptr @msm8916_rf_clk2, ptr @msm8916_rf_clk2_a, ptr null, ptr null, ptr null, ptr null, ptr @msm8916_rf_clk1_pin, ptr @msm8916_rf_clk1_a_pin, ptr @msm8916_rf_clk2_pin, ptr @msm8916_rf_clk2_a_pin, ptr null, ptr null, ptr @sm6125_cnoc_clk, ptr @sm6125_cnoc_a_clk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm8976_ipa_clk, ptr @msm8976_ipa_a_clk, ptr @msm8992_ce1_clk, ptr @msm8992_ce1_a_clk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sm6125_qup_clk, ptr @sm6125_qup_a_clk, ptr @sm6125_mmrt_clk, ptr @sm6125_mmrt_a_clk, ptr @sm6125_mmnrt_clk, ptr @sm6125_mmnrt_a_clk, ptr @sm6125_snoc_periph_clk, ptr @sm6125_snoc_periph_a_clk, ptr @sm6125_snoc_lpass_clk, ptr @sm6125_snoc_lpass_a_clk], [112 x i8] zeroinitializer }, align 32
@sm6125_clks = internal global { [116 x ptr], [112 x i8] } { [116 x ptr] [ptr @sdm660_bi_tcxo, ptr @sdm660_bi_tcxo_a, ptr null, ptr null, ptr @sm6125_snoc_clk, ptr @sm6125_snoc_a_clk, ptr @msm8916_bimc_clk, ptr @msm8916_bimc_a_clk, ptr @sm6125_qdss_clk, ptr @sm6125_qdss_a_clk, ptr null, ptr null, ptr null, ptr null, ptr @msm8916_rf_clk1, ptr @msm8916_rf_clk1_a, ptr @msm8916_rf_clk2, ptr @msm8916_rf_clk2_a, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sm6125_cnoc_clk, ptr @sm6125_cnoc_a_clk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm8976_ipa_clk, ptr @msm8976_ipa_a_clk, ptr @msm8992_ce1_clk, ptr @msm8992_ce1_a_clk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm8916_bb_clk1, ptr @msm8916_bb_clk1_a, ptr @msm8916_bb_clk2, ptr @msm8916_bb_clk2_a, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdm660_ln_bb_clk3, ptr @sdm660_ln_bb_clk3_a, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sm6125_qup_clk, ptr @sm6125_qup_a_clk, ptr @sm6125_mmrt_clk, ptr @sm6125_mmrt_a_clk, ptr @sm6125_mmnrt_clk, ptr @sm6125_mmnrt_a_clk, ptr @sm6125_snoc_periph_clk, ptr @sm6125_snoc_periph_a_clk, ptr @sm6125_snoc_lpass_clk, ptr @sm6125_snoc_lpass_a_clk], [112 x i8] zeroinitializer }, align 32
@___asan_gen_.392 = private unnamed_addr constant [19 x i8] c"rpm_smd_clk_driver\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 1214, i32 31 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 1216, i32 11 }
@___asan_gen_.398 = private unnamed_addr constant [24 x i8] c"rpm_smd_clk_match_table\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 1123, i32 34 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 1168, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 1210, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 386, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 394, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 398, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 1151, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant [16 x i8] c"rpm_clk_mdm9607\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 928, i32 38 }
@___asan_gen_.458 = private unnamed_addr constant [16 x i8] c"rpm_clk_msm8974\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 560, i32 38 }
@___asan_gen_.461 = private unnamed_addr constant [16 x i8] c"rpm_clk_msm8916\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 456, i32 38 }
@___asan_gen_.464 = private unnamed_addr constant [16 x i8] c"rpm_clk_msm8936\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 492, i32 38 }
@___asan_gen_.467 = private unnamed_addr constant [16 x i8] c"rpm_clk_msm8953\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 964, i32 38 }
@___asan_gen_.470 = private unnamed_addr constant [16 x i8] c"rpm_clk_msm8976\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 596, i32 38 }
@___asan_gen_.473 = private unnamed_addr constant [16 x i8] c"rpm_clk_msm8992\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 656, i32 38 }
@___asan_gen_.476 = private unnamed_addr constant [16 x i8] c"rpm_clk_msm8994\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 714, i32 38 }
@___asan_gen_.479 = private unnamed_addr constant [16 x i8] c"rpm_clk_msm8996\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 773, i32 38 }
@___asan_gen_.482 = private unnamed_addr constant [16 x i8] c"rpm_clk_msm8998\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 855, i32 38 }
@___asan_gen_.485 = private unnamed_addr constant [16 x i8] c"rpm_clk_qcm2290\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 1118, i32 38 }
@___asan_gen_.488 = private unnamed_addr constant [15 x i8] c"rpm_clk_qcs404\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 803, i32 38 }
@___asan_gen_.491 = private unnamed_addr constant [15 x i8] c"rpm_clk_sdm660\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 906, i32 38 }
@___asan_gen_.494 = private unnamed_addr constant [15 x i8] c"rpm_clk_sm6115\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 1060, i32 38 }
@___asan_gen_.497 = private unnamed_addr constant [15 x i8] c"rpm_clk_sm6125\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 1019, i32 38 }
@___asan_gen_.500 = private unnamed_addr constant [13 x i8] c"mdm9607_clks\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 911, i32 28 }
@___asan_gen_.503 = private unnamed_addr constant [15 x i8] c"sdm660_bi_tcxo\00", align 1
@___asan_gen_.506 = private unnamed_addr constant [17 x i8] c"sdm660_bi_tcxo_a\00", align 1
@___asan_gen_.509 = private unnamed_addr constant [18 x i8] c"msm8916_pcnoc_clk\00", align 1
@___asan_gen_.512 = private unnamed_addr constant [20 x i8] c"msm8916_pcnoc_a_clk\00", align 1
@___asan_gen_.515 = private unnamed_addr constant [17 x i8] c"msm8916_bimc_clk\00", align 1
@___asan_gen_.518 = private unnamed_addr constant [19 x i8] c"msm8916_bimc_a_clk\00", align 1
@___asan_gen_.521 = private unnamed_addr constant [17 x i8] c"msm8916_qdss_clk\00", align 1
@___asan_gen_.524 = private unnamed_addr constant [19 x i8] c"msm8916_qdss_a_clk\00", align 1
@___asan_gen_.527 = private unnamed_addr constant [16 x i8] c"msm8916_bb_clk1\00", align 1
@___asan_gen_.530 = private unnamed_addr constant [18 x i8] c"msm8916_bb_clk1_a\00", align 1
@___asan_gen_.533 = private unnamed_addr constant [20 x i8] c"msm8916_bb_clk1_pin\00", align 1
@___asan_gen_.536 = private unnamed_addr constant [22 x i8] c"msm8916_bb_clk1_a_pin\00", align 1
@___asan_gen_.539 = private unnamed_addr constant [16 x i8] c"qcs404_qpic_clk\00", align 1
@___asan_gen_.542 = private unnamed_addr constant [18 x i8] c"qcs404_qpic_a_clk\00", align 1
@___asan_gen_.548 = private unnamed_addr constant [23 x i8] c"clk_smd_rpm_branch_ops\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 410, i32 29 }
@___asan_gen_.557 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.558 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.559 = private unnamed_addr constant [17 x i8] c"rpm_smd_clk_lock\00", align 1
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 158, i32 8 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 860, i32 1 }
@___asan_gen_.571 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.572 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.576 = private unnamed_addr constant [16 x i8] c"clk_smd_rpm_ops\00", align 1
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 402, i32 29 }
@___asan_gen_.579 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.580 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 416, i32 1 }
@___asan_gen_.584 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.585 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.589 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.590 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 418, i32 1 }
@___asan_gen_.594 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.595 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.599 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.600 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 419, i32 1 }
@___asan_gen_.604 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.605 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.609 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.610 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 420, i32 1 }
@___asan_gen_.614 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.615 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.619 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.620 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 424, i32 1 }
@___asan_gen_.624 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.625 = private unnamed_addr constant [20 x i8] c".compoundliteral.56\00", align 1
@___asan_gen_.629 = private unnamed_addr constant [20 x i8] c".compoundliteral.58\00", align 1
@___asan_gen_.630 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 779, i32 1 }
@___asan_gen_.634 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.635 = private unnamed_addr constant [20 x i8] c".compoundliteral.62\00", align 1
@___asan_gen_.636 = private unnamed_addr constant [13 x i8] c"msm8974_clks\00", align 1
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 515, i32 28 }
@___asan_gen_.639 = private unnamed_addr constant [17 x i8] c"msm8916_snoc_clk\00", align 1
@___asan_gen_.642 = private unnamed_addr constant [19 x i8] c"msm8916_snoc_a_clk\00", align 1
@___asan_gen_.645 = private unnamed_addr constant [17 x i8] c"msm8974_cnoc_clk\00", align 1
@___asan_gen_.648 = private unnamed_addr constant [19 x i8] c"msm8974_cnoc_a_clk\00", align 1
@___asan_gen_.651 = private unnamed_addr constant [24 x i8] c"msm8974_mmssnoc_ahb_clk\00", align 1
@___asan_gen_.654 = private unnamed_addr constant [26 x i8] c"msm8974_mmssnoc_ahb_a_clk\00", align 1
@___asan_gen_.657 = private unnamed_addr constant [22 x i8] c"msm8974_gfx3d_clk_src\00", align 1
@___asan_gen_.660 = private unnamed_addr constant [24 x i8] c"msm8974_gfx3d_a_clk_src\00", align 1
@___asan_gen_.663 = private unnamed_addr constant [20 x i8] c"msm8974_ocmemgx_clk\00", align 1
@___asan_gen_.666 = private unnamed_addr constant [22 x i8] c"msm8974_ocmemgx_a_clk\00", align 1
@___asan_gen_.669 = private unnamed_addr constant [15 x i8] c"msm8974_cxo_d0\00", align 1
@___asan_gen_.672 = private unnamed_addr constant [17 x i8] c"msm8974_cxo_d0_a\00", align 1
@___asan_gen_.675 = private unnamed_addr constant [15 x i8] c"msm8974_cxo_d1\00", align 1
@___asan_gen_.678 = private unnamed_addr constant [17 x i8] c"msm8974_cxo_d1_a\00", align 1
@___asan_gen_.681 = private unnamed_addr constant [15 x i8] c"msm8974_cxo_a0\00", align 1
@___asan_gen_.684 = private unnamed_addr constant [17 x i8] c"msm8974_cxo_a0_a\00", align 1
@___asan_gen_.687 = private unnamed_addr constant [15 x i8] c"msm8974_cxo_a1\00", align 1
@___asan_gen_.690 = private unnamed_addr constant [17 x i8] c"msm8974_cxo_a1_a\00", align 1
@___asan_gen_.693 = private unnamed_addr constant [15 x i8] c"msm8974_cxo_a2\00", align 1
@___asan_gen_.696 = private unnamed_addr constant [17 x i8] c"msm8974_cxo_a2_a\00", align 1
@___asan_gen_.699 = private unnamed_addr constant [17 x i8] c"msm8974_div_clk1\00", align 1
@___asan_gen_.702 = private unnamed_addr constant [19 x i8] c"msm8974_div_a_clk1\00", align 1
@___asan_gen_.705 = private unnamed_addr constant [17 x i8] c"msm8974_div_clk2\00", align 1
@___asan_gen_.708 = private unnamed_addr constant [19 x i8] c"msm8974_div_a_clk2\00", align 1
@___asan_gen_.711 = private unnamed_addr constant [17 x i8] c"msm8974_diff_clk\00", align 1
@___asan_gen_.714 = private unnamed_addr constant [19 x i8] c"msm8974_diff_a_clk\00", align 1
@___asan_gen_.717 = private unnamed_addr constant [19 x i8] c"msm8974_cxo_d0_pin\00", align 1
@___asan_gen_.720 = private unnamed_addr constant [21 x i8] c"msm8974_cxo_d0_a_pin\00", align 1
@___asan_gen_.723 = private unnamed_addr constant [19 x i8] c"msm8974_cxo_d1_pin\00", align 1
@___asan_gen_.726 = private unnamed_addr constant [21 x i8] c"msm8974_cxo_d1_a_pin\00", align 1
@___asan_gen_.729 = private unnamed_addr constant [19 x i8] c"msm8974_cxo_a0_pin\00", align 1
@___asan_gen_.732 = private unnamed_addr constant [21 x i8] c"msm8974_cxo_a0_a_pin\00", align 1
@___asan_gen_.735 = private unnamed_addr constant [19 x i8] c"msm8974_cxo_a1_pin\00", align 1
@___asan_gen_.738 = private unnamed_addr constant [21 x i8] c"msm8974_cxo_a1_a_pin\00", align 1
@___asan_gen_.741 = private unnamed_addr constant [19 x i8] c"msm8974_cxo_a2_pin\00", align 1
@___asan_gen_.744 = private unnamed_addr constant [21 x i8] c"msm8974_cxo_a2_a_pin\00", align 1
@___asan_gen_.750 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.751 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 417, i32 1 }
@___asan_gen_.755 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.756 = private unnamed_addr constant [20 x i8] c".compoundliteral.68\00", align 1
@___asan_gen_.760 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.761 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 497, i32 1 }
@___asan_gen_.765 = private unnamed_addr constant [20 x i8] c".compoundliteral.73\00", align 1
@___asan_gen_.766 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.770 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.771 = private unnamed_addr constant [20 x i8] c".compoundliteral.77\00", align 1
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 498, i32 1 }
@___asan_gen_.775 = private unnamed_addr constant [20 x i8] c".compoundliteral.79\00", align 1
@___asan_gen_.776 = private unnamed_addr constant [20 x i8] c".compoundliteral.80\00", align 1
@___asan_gen_.780 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.781 = private unnamed_addr constant [20 x i8] c".compoundliteral.83\00", align 1
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 499, i32 1 }
@___asan_gen_.785 = private unnamed_addr constant [20 x i8] c".compoundliteral.85\00", align 1
@___asan_gen_.786 = private unnamed_addr constant [20 x i8] c".compoundliteral.86\00", align 1
@___asan_gen_.790 = private unnamed_addr constant [20 x i8] c".compoundliteral.88\00", align 1
@___asan_gen_.791 = private unnamed_addr constant [20 x i8] c".compoundliteral.89\00", align 1
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 500, i32 1 }
@___asan_gen_.795 = private unnamed_addr constant [20 x i8] c".compoundliteral.91\00", align 1
@___asan_gen_.796 = private unnamed_addr constant [20 x i8] c".compoundliteral.92\00", align 1
@___asan_gen_.800 = private unnamed_addr constant [20 x i8] c".compoundliteral.94\00", align 1
@___asan_gen_.801 = private unnamed_addr constant [20 x i8] c".compoundliteral.95\00", align 1
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 501, i32 1 }
@___asan_gen_.805 = private unnamed_addr constant [20 x i8] c".compoundliteral.97\00", align 1
@___asan_gen_.806 = private unnamed_addr constant [20 x i8] c".compoundliteral.98\00", align 1
@___asan_gen_.810 = private unnamed_addr constant [21 x i8] c".compoundliteral.100\00", align 1
@___asan_gen_.811 = private unnamed_addr constant [21 x i8] c".compoundliteral.101\00", align 1
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 502, i32 1 }
@___asan_gen_.815 = private unnamed_addr constant [21 x i8] c".compoundliteral.103\00", align 1
@___asan_gen_.816 = private unnamed_addr constant [21 x i8] c".compoundliteral.104\00", align 1
@___asan_gen_.820 = private unnamed_addr constant [21 x i8] c".compoundliteral.106\00", align 1
@___asan_gen_.821 = private unnamed_addr constant [21 x i8] c".compoundliteral.107\00", align 1
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 503, i32 1 }
@___asan_gen_.825 = private unnamed_addr constant [21 x i8] c".compoundliteral.109\00", align 1
@___asan_gen_.826 = private unnamed_addr constant [21 x i8] c".compoundliteral.110\00", align 1
@___asan_gen_.830 = private unnamed_addr constant [21 x i8] c".compoundliteral.112\00", align 1
@___asan_gen_.831 = private unnamed_addr constant [21 x i8] c".compoundliteral.113\00", align 1
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 504, i32 1 }
@___asan_gen_.835 = private unnamed_addr constant [21 x i8] c".compoundliteral.115\00", align 1
@___asan_gen_.836 = private unnamed_addr constant [21 x i8] c".compoundliteral.116\00", align 1
@___asan_gen_.840 = private unnamed_addr constant [21 x i8] c".compoundliteral.118\00", align 1
@___asan_gen_.841 = private unnamed_addr constant [21 x i8] c".compoundliteral.119\00", align 1
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 505, i32 1 }
@___asan_gen_.845 = private unnamed_addr constant [21 x i8] c".compoundliteral.121\00", align 1
@___asan_gen_.846 = private unnamed_addr constant [21 x i8] c".compoundliteral.122\00", align 1
@___asan_gen_.850 = private unnamed_addr constant [21 x i8] c".compoundliteral.124\00", align 1
@___asan_gen_.851 = private unnamed_addr constant [21 x i8] c".compoundliteral.125\00", align 1
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 507, i32 1 }
@___asan_gen_.855 = private unnamed_addr constant [21 x i8] c".compoundliteral.127\00", align 1
@___asan_gen_.856 = private unnamed_addr constant [21 x i8] c".compoundliteral.128\00", align 1
@___asan_gen_.860 = private unnamed_addr constant [21 x i8] c".compoundliteral.130\00", align 1
@___asan_gen_.861 = private unnamed_addr constant [21 x i8] c".compoundliteral.131\00", align 1
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 508, i32 1 }
@___asan_gen_.865 = private unnamed_addr constant [21 x i8] c".compoundliteral.133\00", align 1
@___asan_gen_.866 = private unnamed_addr constant [21 x i8] c".compoundliteral.134\00", align 1
@___asan_gen_.870 = private unnamed_addr constant [21 x i8] c".compoundliteral.136\00", align 1
@___asan_gen_.871 = private unnamed_addr constant [21 x i8] c".compoundliteral.137\00", align 1
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 506, i32 1 }
@___asan_gen_.875 = private unnamed_addr constant [21 x i8] c".compoundliteral.139\00", align 1
@___asan_gen_.876 = private unnamed_addr constant [21 x i8] c".compoundliteral.140\00", align 1
@___asan_gen_.880 = private unnamed_addr constant [21 x i8] c".compoundliteral.142\00", align 1
@___asan_gen_.881 = private unnamed_addr constant [21 x i8] c".compoundliteral.143\00", align 1
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 509, i32 1 }
@___asan_gen_.885 = private unnamed_addr constant [21 x i8] c".compoundliteral.145\00", align 1
@___asan_gen_.886 = private unnamed_addr constant [21 x i8] c".compoundliteral.146\00", align 1
@___asan_gen_.890 = private unnamed_addr constant [21 x i8] c".compoundliteral.148\00", align 1
@___asan_gen_.891 = private unnamed_addr constant [21 x i8] c".compoundliteral.149\00", align 1
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 510, i32 1 }
@___asan_gen_.895 = private unnamed_addr constant [21 x i8] c".compoundliteral.151\00", align 1
@___asan_gen_.896 = private unnamed_addr constant [21 x i8] c".compoundliteral.152\00", align 1
@___asan_gen_.900 = private unnamed_addr constant [21 x i8] c".compoundliteral.154\00", align 1
@___asan_gen_.901 = private unnamed_addr constant [21 x i8] c".compoundliteral.155\00", align 1
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 511, i32 1 }
@___asan_gen_.905 = private unnamed_addr constant [21 x i8] c".compoundliteral.157\00", align 1
@___asan_gen_.906 = private unnamed_addr constant [21 x i8] c".compoundliteral.158\00", align 1
@___asan_gen_.910 = private unnamed_addr constant [21 x i8] c".compoundliteral.160\00", align 1
@___asan_gen_.911 = private unnamed_addr constant [21 x i8] c".compoundliteral.161\00", align 1
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 512, i32 1 }
@___asan_gen_.915 = private unnamed_addr constant [21 x i8] c".compoundliteral.163\00", align 1
@___asan_gen_.916 = private unnamed_addr constant [21 x i8] c".compoundliteral.164\00", align 1
@___asan_gen_.920 = private unnamed_addr constant [21 x i8] c".compoundliteral.166\00", align 1
@___asan_gen_.921 = private unnamed_addr constant [21 x i8] c".compoundliteral.167\00", align 1
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 513, i32 1 }
@___asan_gen_.925 = private unnamed_addr constant [21 x i8] c".compoundliteral.169\00", align 1
@___asan_gen_.926 = private unnamed_addr constant [21 x i8] c".compoundliteral.170\00", align 1
@___asan_gen_.927 = private unnamed_addr constant [13 x i8] c"msm8916_clks\00", align 1
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 429, i32 28 }
@___asan_gen_.930 = private unnamed_addr constant [16 x i8] c"msm8916_bb_clk2\00", align 1
@___asan_gen_.933 = private unnamed_addr constant [18 x i8] c"msm8916_bb_clk2_a\00", align 1
@___asan_gen_.936 = private unnamed_addr constant [16 x i8] c"msm8916_rf_clk1\00", align 1
@___asan_gen_.939 = private unnamed_addr constant [18 x i8] c"msm8916_rf_clk1_a\00", align 1
@___asan_gen_.942 = private unnamed_addr constant [16 x i8] c"msm8916_rf_clk2\00", align 1
@___asan_gen_.945 = private unnamed_addr constant [18 x i8] c"msm8916_rf_clk2_a\00", align 1
@___asan_gen_.948 = private unnamed_addr constant [20 x i8] c"msm8916_bb_clk2_pin\00", align 1
@___asan_gen_.951 = private unnamed_addr constant [22 x i8] c"msm8916_bb_clk2_a_pin\00", align 1
@___asan_gen_.954 = private unnamed_addr constant [20 x i8] c"msm8916_rf_clk1_pin\00", align 1
@___asan_gen_.957 = private unnamed_addr constant [22 x i8] c"msm8916_rf_clk1_a_pin\00", align 1
@___asan_gen_.960 = private unnamed_addr constant [20 x i8] c"msm8916_rf_clk2_pin\00", align 1
@___asan_gen_.963 = private unnamed_addr constant [22 x i8] c"msm8916_rf_clk2_a_pin\00", align 1
@___asan_gen_.969 = private unnamed_addr constant [21 x i8] c".compoundliteral.172\00", align 1
@___asan_gen_.970 = private unnamed_addr constant [21 x i8] c".compoundliteral.173\00", align 1
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 421, i32 1 }
@___asan_gen_.974 = private unnamed_addr constant [21 x i8] c".compoundliteral.175\00", align 1
@___asan_gen_.975 = private unnamed_addr constant [21 x i8] c".compoundliteral.176\00", align 1
@___asan_gen_.979 = private unnamed_addr constant [21 x i8] c".compoundliteral.178\00", align 1
@___asan_gen_.980 = private unnamed_addr constant [21 x i8] c".compoundliteral.179\00", align 1
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 422, i32 1 }
@___asan_gen_.984 = private unnamed_addr constant [21 x i8] c".compoundliteral.181\00", align 1
@___asan_gen_.985 = private unnamed_addr constant [21 x i8] c".compoundliteral.182\00", align 1
@___asan_gen_.989 = private unnamed_addr constant [21 x i8] c".compoundliteral.184\00", align 1
@___asan_gen_.990 = private unnamed_addr constant [21 x i8] c".compoundliteral.185\00", align 1
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 423, i32 1 }
@___asan_gen_.994 = private unnamed_addr constant [21 x i8] c".compoundliteral.187\00", align 1
@___asan_gen_.995 = private unnamed_addr constant [21 x i8] c".compoundliteral.188\00", align 1
@___asan_gen_.999 = private unnamed_addr constant [21 x i8] c".compoundliteral.190\00", align 1
@___asan_gen_.1000 = private unnamed_addr constant [21 x i8] c".compoundliteral.191\00", align 1
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 425, i32 1 }
@___asan_gen_.1004 = private unnamed_addr constant [21 x i8] c".compoundliteral.193\00", align 1
@___asan_gen_.1005 = private unnamed_addr constant [21 x i8] c".compoundliteral.194\00", align 1
@___asan_gen_.1009 = private unnamed_addr constant [21 x i8] c".compoundliteral.196\00", align 1
@___asan_gen_.1010 = private unnamed_addr constant [21 x i8] c".compoundliteral.197\00", align 1
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 426, i32 1 }
@___asan_gen_.1014 = private unnamed_addr constant [21 x i8] c".compoundliteral.199\00", align 1
@___asan_gen_.1015 = private unnamed_addr constant [21 x i8] c".compoundliteral.200\00", align 1
@___asan_gen_.1019 = private unnamed_addr constant [21 x i8] c".compoundliteral.202\00", align 1
@___asan_gen_.1020 = private unnamed_addr constant [21 x i8] c".compoundliteral.203\00", align 1
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 427, i32 1 }
@___asan_gen_.1024 = private unnamed_addr constant [21 x i8] c".compoundliteral.205\00", align 1
@___asan_gen_.1025 = private unnamed_addr constant [21 x i8] c".compoundliteral.206\00", align 1
@___asan_gen_.1026 = private unnamed_addr constant [13 x i8] c"msm8936_clks\00", align 1
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 463, i32 28 }
@___asan_gen_.1029 = private unnamed_addr constant [21 x i8] c"msm8936_sysmmnoc_clk\00", align 1
@___asan_gen_.1032 = private unnamed_addr constant [23 x i8] c"msm8936_sysmmnoc_a_clk\00", align 1
@___asan_gen_.1038 = private unnamed_addr constant [21 x i8] c".compoundliteral.208\00", align 1
@___asan_gen_.1039 = private unnamed_addr constant [21 x i8] c".compoundliteral.209\00", align 1
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 461, i32 1 }
@___asan_gen_.1043 = private unnamed_addr constant [21 x i8] c".compoundliteral.211\00", align 1
@___asan_gen_.1044 = private unnamed_addr constant [21 x i8] c".compoundliteral.212\00", align 1
@___asan_gen_.1045 = private unnamed_addr constant [13 x i8] c"msm8953_clks\00", align 1
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 933, i32 28 }
@___asan_gen_.1048 = private unnamed_addr constant [16 x i8] c"msm8976_ipa_clk\00", align 1
@___asan_gen_.1051 = private unnamed_addr constant [18 x i8] c"msm8976_ipa_a_clk\00", align 1
@___asan_gen_.1054 = private unnamed_addr constant [18 x i8] c"msm8992_ln_bb_clk\00", align 1
@___asan_gen_.1057 = private unnamed_addr constant [20 x i8] c"msm8992_ln_bb_a_clk\00", align 1
@___asan_gen_.1063 = private unnamed_addr constant [21 x i8] c".compoundliteral.214\00", align 1
@___asan_gen_.1064 = private unnamed_addr constant [21 x i8] c".compoundliteral.215\00", align 1
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 567, i32 1 }
@___asan_gen_.1068 = private unnamed_addr constant [21 x i8] c".compoundliteral.217\00", align 1
@___asan_gen_.1069 = private unnamed_addr constant [21 x i8] c".compoundliteral.218\00", align 1
@___asan_gen_.1073 = private unnamed_addr constant [21 x i8] c".compoundliteral.220\00", align 1
@___asan_gen_.1074 = private unnamed_addr constant [21 x i8] c".compoundliteral.221\00", align 1
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 602, i32 1 }
@___asan_gen_.1078 = private unnamed_addr constant [21 x i8] c".compoundliteral.223\00", align 1
@___asan_gen_.1079 = private unnamed_addr constant [21 x i8] c".compoundliteral.224\00", align 1
@___asan_gen_.1080 = private unnamed_addr constant [13 x i8] c"msm8976_clks\00", align 1
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 569, i32 28 }
@___asan_gen_.1083 = private unnamed_addr constant [24 x i8] c"msm8976_mmssnoc_ahb_clk\00", align 1
@___asan_gen_.1086 = private unnamed_addr constant [26 x i8] c"msm8976_mmssnoc_ahb_a_clk\00", align 1
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 565, i32 1 }
@___asan_gen_.1089 = private unnamed_addr constant [21 x i8] c".compoundliteral.225\00", align 1
@___asan_gen_.1090 = private unnamed_addr constant [21 x i8] c".compoundliteral.226\00", align 1
@___asan_gen_.1091 = private unnamed_addr constant [21 x i8] c".compoundliteral.227\00", align 1
@___asan_gen_.1092 = private unnamed_addr constant [21 x i8] c".compoundliteral.228\00", align 1
@___asan_gen_.1093 = private unnamed_addr constant [13 x i8] c"msm8992_clks\00", align 1
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 607, i32 28 }
@___asan_gen_.1096 = private unnamed_addr constant [16 x i8] c"msm8992_ce1_clk\00", align 1
@___asan_gen_.1099 = private unnamed_addr constant [18 x i8] c"msm8992_ce1_a_clk\00", align 1
@___asan_gen_.1102 = private unnamed_addr constant [17 x i8] c"msm8992_div_clk3\00", align 1
@___asan_gen_.1105 = private unnamed_addr constant [19 x i8] c"msm8992_div_clk3_a\00", align 1
@___asan_gen_.1108 = private unnamed_addr constant [16 x i8] c"msm8992_ce2_clk\00", align 1
@___asan_gen_.1111 = private unnamed_addr constant [18 x i8] c"msm8992_ce2_a_clk\00", align 1
@___asan_gen_.1117 = private unnamed_addr constant [21 x i8] c".compoundliteral.230\00", align 1
@___asan_gen_.1118 = private unnamed_addr constant [21 x i8] c".compoundliteral.231\00", align 1
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 604, i32 1 }
@___asan_gen_.1122 = private unnamed_addr constant [21 x i8] c".compoundliteral.233\00", align 1
@___asan_gen_.1123 = private unnamed_addr constant [21 x i8] c".compoundliteral.234\00", align 1
@___asan_gen_.1127 = private unnamed_addr constant [21 x i8] c".compoundliteral.236\00", align 1
@___asan_gen_.1128 = private unnamed_addr constant [21 x i8] c".compoundliteral.237\00", align 1
@___asan_gen_.1131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 601, i32 1 }
@___asan_gen_.1132 = private unnamed_addr constant [21 x i8] c".compoundliteral.239\00", align 1
@___asan_gen_.1133 = private unnamed_addr constant [21 x i8] c".compoundliteral.240\00", align 1
@___asan_gen_.1137 = private unnamed_addr constant [21 x i8] c".compoundliteral.242\00", align 1
@___asan_gen_.1138 = private unnamed_addr constant [21 x i8] c".compoundliteral.243\00", align 1
@___asan_gen_.1141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 605, i32 1 }
@___asan_gen_.1142 = private unnamed_addr constant [21 x i8] c".compoundliteral.245\00", align 1
@___asan_gen_.1143 = private unnamed_addr constant [21 x i8] c".compoundliteral.246\00", align 1
@___asan_gen_.1144 = private unnamed_addr constant [13 x i8] c"msm8994_clks\00", align 1
@___asan_gen_.1146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 663, i32 28 }
@___asan_gen_.1147 = private unnamed_addr constant [16 x i8] c"msm8994_ce3_clk\00", align 1
@___asan_gen_.1150 = private unnamed_addr constant [18 x i8] c"msm8994_ce3_a_clk\00", align 1
@___asan_gen_.1156 = private unnamed_addr constant [21 x i8] c".compoundliteral.248\00", align 1
@___asan_gen_.1157 = private unnamed_addr constant [21 x i8] c".compoundliteral.249\00", align 1
@___asan_gen_.1160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 661, i32 1 }
@___asan_gen_.1161 = private unnamed_addr constant [21 x i8] c".compoundliteral.251\00", align 1
@___asan_gen_.1162 = private unnamed_addr constant [21 x i8] c".compoundliteral.252\00", align 1
@___asan_gen_.1163 = private unnamed_addr constant [13 x i8] c"msm8996_clks\00", align 1
@___asan_gen_.1165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 726, i32 28 }
@___asan_gen_.1166 = private unnamed_addr constant [23 x i8] c"msm8996_aggre1_noc_clk\00", align 1
@___asan_gen_.1169 = private unnamed_addr constant [25 x i8] c"msm8996_aggre1_noc_a_clk\00", align 1
@___asan_gen_.1172 = private unnamed_addr constant [23 x i8] c"msm8996_aggre2_noc_clk\00", align 1
@___asan_gen_.1175 = private unnamed_addr constant [25 x i8] c"msm8996_aggre2_noc_a_clk\00", align 1
@___asan_gen_.1178 = private unnamed_addr constant [28 x i8] c"msm8996_mmssnoc_axi_rpm_clk\00", align 1
@___asan_gen_.1181 = private unnamed_addr constant [30 x i8] c"msm8996_mmssnoc_axi_rpm_a_clk\00", align 1
@___asan_gen_.1187 = private unnamed_addr constant [21 x i8] c".compoundliteral.254\00", align 1
@___asan_gen_.1188 = private unnamed_addr constant [21 x i8] c".compoundliteral.255\00", align 1
@___asan_gen_.1191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 721, i32 1 }
@___asan_gen_.1192 = private unnamed_addr constant [21 x i8] c".compoundliteral.257\00", align 1
@___asan_gen_.1193 = private unnamed_addr constant [21 x i8] c".compoundliteral.258\00", align 1
@___asan_gen_.1197 = private unnamed_addr constant [21 x i8] c".compoundliteral.260\00", align 1
@___asan_gen_.1198 = private unnamed_addr constant [21 x i8] c".compoundliteral.261\00", align 1
@___asan_gen_.1201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 723, i32 1 }
@___asan_gen_.1202 = private unnamed_addr constant [21 x i8] c".compoundliteral.263\00", align 1
@___asan_gen_.1203 = private unnamed_addr constant [21 x i8] c".compoundliteral.264\00", align 1
@___asan_gen_.1207 = private unnamed_addr constant [21 x i8] c".compoundliteral.266\00", align 1
@___asan_gen_.1208 = private unnamed_addr constant [21 x i8] c".compoundliteral.267\00", align 1
@___asan_gen_.1211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 719, i32 1 }
@___asan_gen_.1212 = private unnamed_addr constant [21 x i8] c".compoundliteral.269\00", align 1
@___asan_gen_.1213 = private unnamed_addr constant [21 x i8] c".compoundliteral.270\00", align 1
@___asan_gen_.1214 = private unnamed_addr constant [13 x i8] c"msm8998_clks\00", align 1
@___asan_gen_.1216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 816, i32 28 }
@___asan_gen_.1217 = private unnamed_addr constant [23 x i8] c"msm8998_aggre1_noc_clk\00", align 1
@___asan_gen_.1220 = private unnamed_addr constant [25 x i8] c"msm8998_aggre1_noc_a_clk\00", align 1
@___asan_gen_.1222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 810, i32 1 }
@___asan_gen_.1223 = private unnamed_addr constant [23 x i8] c"msm8998_aggre2_noc_clk\00", align 1
@___asan_gen_.1226 = private unnamed_addr constant [25 x i8] c"msm8998_aggre2_noc_a_clk\00", align 1
@___asan_gen_.1228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 812, i32 1 }
@___asan_gen_.1229 = private unnamed_addr constant [23 x i8] c"msm8998_ln_bb_clk3_pin\00", align 1
@___asan_gen_.1232 = private unnamed_addr constant [25 x i8] c"msm8998_ln_bb_clk3_a_pin\00", align 1
@___asan_gen_.1235 = private unnamed_addr constant [16 x i8] c"msm8998_rf_clk3\00", align 1
@___asan_gen_.1238 = private unnamed_addr constant [18 x i8] c"msm8998_rf_clk3_a\00", align 1
@___asan_gen_.1241 = private unnamed_addr constant [20 x i8] c"msm8998_rf_clk3_pin\00", align 1
@___asan_gen_.1244 = private unnamed_addr constant [22 x i8] c"msm8998_rf_clk3_a_pin\00", align 1
@___asan_gen_.1247 = private unnamed_addr constant [21 x i8] c".compoundliteral.271\00", align 1
@___asan_gen_.1248 = private unnamed_addr constant [21 x i8] c".compoundliteral.272\00", align 1
@___asan_gen_.1249 = private unnamed_addr constant [21 x i8] c".compoundliteral.273\00", align 1
@___asan_gen_.1250 = private unnamed_addr constant [21 x i8] c".compoundliteral.274\00", align 1
@___asan_gen_.1251 = private unnamed_addr constant [21 x i8] c".compoundliteral.275\00", align 1
@___asan_gen_.1252 = private unnamed_addr constant [21 x i8] c".compoundliteral.276\00", align 1
@___asan_gen_.1253 = private unnamed_addr constant [21 x i8] c".compoundliteral.277\00", align 1
@___asan_gen_.1254 = private unnamed_addr constant [21 x i8] c".compoundliteral.278\00", align 1
@___asan_gen_.1258 = private unnamed_addr constant [21 x i8] c".compoundliteral.280\00", align 1
@___asan_gen_.1259 = private unnamed_addr constant [21 x i8] c".compoundliteral.281\00", align 1
@___asan_gen_.1262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 808, i32 1 }
@___asan_gen_.1263 = private unnamed_addr constant [21 x i8] c".compoundliteral.283\00", align 1
@___asan_gen_.1264 = private unnamed_addr constant [21 x i8] c".compoundliteral.284\00", align 1
@___asan_gen_.1268 = private unnamed_addr constant [21 x i8] c".compoundliteral.286\00", align 1
@___asan_gen_.1269 = private unnamed_addr constant [21 x i8] c".compoundliteral.287\00", align 1
@___asan_gen_.1272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 814, i32 1 }
@___asan_gen_.1273 = private unnamed_addr constant [21 x i8] c".compoundliteral.289\00", align 1
@___asan_gen_.1274 = private unnamed_addr constant [21 x i8] c".compoundliteral.290\00", align 1
@___asan_gen_.1278 = private unnamed_addr constant [21 x i8] c".compoundliteral.292\00", align 1
@___asan_gen_.1279 = private unnamed_addr constant [21 x i8] c".compoundliteral.293\00", align 1
@___asan_gen_.1282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 815, i32 1 }
@___asan_gen_.1283 = private unnamed_addr constant [21 x i8] c".compoundliteral.295\00", align 1
@___asan_gen_.1284 = private unnamed_addr constant [21 x i8] c".compoundliteral.296\00", align 1
@___asan_gen_.1285 = private unnamed_addr constant [13 x i8] c"qcm2290_clks\00", align 1
@___asan_gen_.1287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 1077, i32 28 }
@___asan_gen_.1288 = private unnamed_addr constant [16 x i8] c"sm6125_snoc_clk\00", align 1
@___asan_gen_.1291 = private unnamed_addr constant [18 x i8] c"sm6125_snoc_a_clk\00", align 1
@___asan_gen_.1293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 971, i32 1 }
@___asan_gen_.1294 = private unnamed_addr constant [16 x i8] c"sm6125_qdss_clk\00", align 1
@___asan_gen_.1297 = private unnamed_addr constant [18 x i8] c"sm6125_qdss_a_clk\00", align 1
@___asan_gen_.1299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 972, i32 1 }
@___asan_gen_.1300 = private unnamed_addr constant [16 x i8] c"sm6125_cnoc_clk\00", align 1
@___asan_gen_.1303 = private unnamed_addr constant [18 x i8] c"sm6125_cnoc_a_clk\00", align 1
@___asan_gen_.1305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 970, i32 1 }
@___asan_gen_.1306 = private unnamed_addr constant [21 x i8] c"qcm2290_bimc_gpu_clk\00", align 1
@___asan_gen_.1309 = private unnamed_addr constant [23 x i8] c"qcm2290_bimc_gpu_a_clk\00", align 1
@___asan_gen_.1312 = private unnamed_addr constant [17 x i8] c"qcm2290_qpic_clk\00", align 1
@___asan_gen_.1315 = private unnamed_addr constant [19 x i8] c"qcm2290_qpic_a_clk\00", align 1
@___asan_gen_.1317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 1069, i32 1 }
@___asan_gen_.1318 = private unnamed_addr constant [19 x i8] c"qcm2290_ln_bb_clk2\00", align 1
@___asan_gen_.1321 = private unnamed_addr constant [21 x i8] c"qcm2290_ln_bb_clk2_a\00", align 1
@___asan_gen_.1324 = private unnamed_addr constant [16 x i8] c"qcm2290_rf_clk3\00", align 1
@___asan_gen_.1327 = private unnamed_addr constant [18 x i8] c"qcm2290_rf_clk3_a\00", align 1
@___asan_gen_.1329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 1067, i32 1 }
@___asan_gen_.1330 = private unnamed_addr constant [15 x i8] c"sm6125_qup_clk\00", align 1
@___asan_gen_.1333 = private unnamed_addr constant [17 x i8] c"sm6125_qup_a_clk\00", align 1
@___asan_gen_.1336 = private unnamed_addr constant [16 x i8] c"sm6125_mmrt_clk\00", align 1
@___asan_gen_.1339 = private unnamed_addr constant [18 x i8] c"sm6125_mmrt_a_clk\00", align 1
@___asan_gen_.1342 = private unnamed_addr constant [17 x i8] c"sm6125_mmnrt_clk\00", align 1
@___asan_gen_.1345 = private unnamed_addr constant [19 x i8] c"sm6125_mmnrt_a_clk\00", align 1
@___asan_gen_.1348 = private unnamed_addr constant [23 x i8] c"sm6125_snoc_periph_clk\00", align 1
@___asan_gen_.1351 = private unnamed_addr constant [25 x i8] c"sm6125_snoc_periph_a_clk\00", align 1
@___asan_gen_.1354 = private unnamed_addr constant [22 x i8] c"sm6125_snoc_lpass_clk\00", align 1
@___asan_gen_.1357 = private unnamed_addr constant [24 x i8] c"sm6125_snoc_lpass_a_clk\00", align 1
@___asan_gen_.1360 = private unnamed_addr constant [17 x i8] c"qcm2290_hwkm_clk\00", align 1
@___asan_gen_.1363 = private unnamed_addr constant [19 x i8] c"qcm2290_hwkm_a_clk\00", align 1
@___asan_gen_.1366 = private unnamed_addr constant [16 x i8] c"qcm2290_pka_clk\00", align 1
@___asan_gen_.1369 = private unnamed_addr constant [18 x i8] c"qcm2290_pka_a_clk\00", align 1
@___asan_gen_.1372 = private unnamed_addr constant [23 x i8] c"qcm2290_cpuss_gnoc_clk\00", align 1
@___asan_gen_.1375 = private unnamed_addr constant [25 x i8] c"qcm2290_cpuss_gnoc_a_clk\00", align 1
@___asan_gen_.1378 = private unnamed_addr constant [21 x i8] c".compoundliteral.297\00", align 1
@___asan_gen_.1379 = private unnamed_addr constant [21 x i8] c".compoundliteral.298\00", align 1
@___asan_gen_.1380 = private unnamed_addr constant [21 x i8] c".compoundliteral.299\00", align 1
@___asan_gen_.1381 = private unnamed_addr constant [21 x i8] c".compoundliteral.300\00", align 1
@___asan_gen_.1382 = private unnamed_addr constant [21 x i8] c".compoundliteral.301\00", align 1
@___asan_gen_.1383 = private unnamed_addr constant [21 x i8] c".compoundliteral.302\00", align 1
@___asan_gen_.1384 = private unnamed_addr constant [21 x i8] c".compoundliteral.303\00", align 1
@___asan_gen_.1385 = private unnamed_addr constant [21 x i8] c".compoundliteral.304\00", align 1
@___asan_gen_.1386 = private unnamed_addr constant [21 x i8] c".compoundliteral.305\00", align 1
@___asan_gen_.1387 = private unnamed_addr constant [21 x i8] c".compoundliteral.306\00", align 1
@___asan_gen_.1388 = private unnamed_addr constant [21 x i8] c".compoundliteral.307\00", align 1
@___asan_gen_.1389 = private unnamed_addr constant [21 x i8] c".compoundliteral.308\00", align 1
@___asan_gen_.1393 = private unnamed_addr constant [21 x i8] c".compoundliteral.310\00", align 1
@___asan_gen_.1394 = private unnamed_addr constant [21 x i8] c".compoundliteral.311\00", align 1
@___asan_gen_.1397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 1074, i32 1 }
@___asan_gen_.1398 = private unnamed_addr constant [21 x i8] c".compoundliteral.313\00", align 1
@___asan_gen_.1399 = private unnamed_addr constant [21 x i8] c".compoundliteral.314\00", align 1
@___asan_gen_.1400 = private unnamed_addr constant [21 x i8] c".compoundliteral.315\00", align 1
@___asan_gen_.1401 = private unnamed_addr constant [21 x i8] c".compoundliteral.316\00", align 1
@___asan_gen_.1402 = private unnamed_addr constant [21 x i8] c".compoundliteral.317\00", align 1
@___asan_gen_.1403 = private unnamed_addr constant [21 x i8] c".compoundliteral.318\00", align 1
@___asan_gen_.1407 = private unnamed_addr constant [21 x i8] c".compoundliteral.320\00", align 1
@___asan_gen_.1408 = private unnamed_addr constant [21 x i8] c".compoundliteral.321\00", align 1
@___asan_gen_.1411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 1066, i32 1 }
@___asan_gen_.1412 = private unnamed_addr constant [21 x i8] c".compoundliteral.323\00", align 1
@___asan_gen_.1413 = private unnamed_addr constant [21 x i8] c".compoundliteral.324\00", align 1
@___asan_gen_.1414 = private unnamed_addr constant [21 x i8] c".compoundliteral.325\00", align 1
@___asan_gen_.1415 = private unnamed_addr constant [21 x i8] c".compoundliteral.326\00", align 1
@___asan_gen_.1416 = private unnamed_addr constant [21 x i8] c".compoundliteral.327\00", align 1
@___asan_gen_.1417 = private unnamed_addr constant [21 x i8] c".compoundliteral.328\00", align 1
@___asan_gen_.1421 = private unnamed_addr constant [21 x i8] c".compoundliteral.330\00", align 1
@___asan_gen_.1422 = private unnamed_addr constant [21 x i8] c".compoundliteral.331\00", align 1
@___asan_gen_.1425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 974, i32 1 }
@___asan_gen_.1426 = private unnamed_addr constant [21 x i8] c".compoundliteral.333\00", align 1
@___asan_gen_.1427 = private unnamed_addr constant [21 x i8] c".compoundliteral.334\00", align 1
@___asan_gen_.1431 = private unnamed_addr constant [21 x i8] c".compoundliteral.336\00", align 1
@___asan_gen_.1432 = private unnamed_addr constant [21 x i8] c".compoundliteral.337\00", align 1
@___asan_gen_.1435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 976, i32 1 }
@___asan_gen_.1436 = private unnamed_addr constant [21 x i8] c".compoundliteral.339\00", align 1
@___asan_gen_.1437 = private unnamed_addr constant [21 x i8] c".compoundliteral.340\00", align 1
@___asan_gen_.1441 = private unnamed_addr constant [21 x i8] c".compoundliteral.342\00", align 1
@___asan_gen_.1442 = private unnamed_addr constant [21 x i8] c".compoundliteral.343\00", align 1
@___asan_gen_.1445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 975, i32 1 }
@___asan_gen_.1446 = private unnamed_addr constant [21 x i8] c".compoundliteral.345\00", align 1
@___asan_gen_.1447 = private unnamed_addr constant [21 x i8] c".compoundliteral.346\00", align 1
@___asan_gen_.1451 = private unnamed_addr constant [21 x i8] c".compoundliteral.348\00", align 1
@___asan_gen_.1452 = private unnamed_addr constant [21 x i8] c".compoundliteral.349\00", align 1
@___asan_gen_.1455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 977, i32 1 }
@___asan_gen_.1456 = private unnamed_addr constant [21 x i8] c".compoundliteral.351\00", align 1
@___asan_gen_.1457 = private unnamed_addr constant [21 x i8] c".compoundliteral.352\00", align 1
@___asan_gen_.1461 = private unnamed_addr constant [21 x i8] c".compoundliteral.354\00", align 1
@___asan_gen_.1462 = private unnamed_addr constant [21 x i8] c".compoundliteral.355\00", align 1
@___asan_gen_.1465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 979, i32 1 }
@___asan_gen_.1466 = private unnamed_addr constant [21 x i8] c".compoundliteral.357\00", align 1
@___asan_gen_.1467 = private unnamed_addr constant [21 x i8] c".compoundliteral.358\00", align 1
@___asan_gen_.1471 = private unnamed_addr constant [21 x i8] c".compoundliteral.360\00", align 1
@___asan_gen_.1472 = private unnamed_addr constant [21 x i8] c".compoundliteral.361\00", align 1
@___asan_gen_.1475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 1070, i32 1 }
@___asan_gen_.1476 = private unnamed_addr constant [21 x i8] c".compoundliteral.363\00", align 1
@___asan_gen_.1477 = private unnamed_addr constant [21 x i8] c".compoundliteral.364\00", align 1
@___asan_gen_.1481 = private unnamed_addr constant [21 x i8] c".compoundliteral.366\00", align 1
@___asan_gen_.1482 = private unnamed_addr constant [21 x i8] c".compoundliteral.367\00", align 1
@___asan_gen_.1485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 1071, i32 1 }
@___asan_gen_.1486 = private unnamed_addr constant [21 x i8] c".compoundliteral.369\00", align 1
@___asan_gen_.1487 = private unnamed_addr constant [21 x i8] c".compoundliteral.370\00", align 1
@___asan_gen_.1491 = private unnamed_addr constant [21 x i8] c".compoundliteral.372\00", align 1
@___asan_gen_.1492 = private unnamed_addr constant [21 x i8] c".compoundliteral.373\00", align 1
@___asan_gen_.1495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 1072, i32 1 }
@___asan_gen_.1496 = private unnamed_addr constant [21 x i8] c".compoundliteral.375\00", align 1
@___asan_gen_.1497 = private unnamed_addr constant [21 x i8] c".compoundliteral.376\00", align 1
@___asan_gen_.1498 = private unnamed_addr constant [12 x i8] c"qcs404_clks\00", align 1
@___asan_gen_.1500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 782, i32 28 }
@___asan_gen_.1501 = private unnamed_addr constant [20 x i8] c"qcs404_bimc_gpu_clk\00", align 1
@___asan_gen_.1504 = private unnamed_addr constant [22 x i8] c"qcs404_bimc_gpu_a_clk\00", align 1
@___asan_gen_.1506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 778, i32 1 }
@___asan_gen_.1507 = private unnamed_addr constant [21 x i8] c".compoundliteral.377\00", align 1
@___asan_gen_.1508 = private unnamed_addr constant [21 x i8] c".compoundliteral.378\00", align 1
@___asan_gen_.1509 = private unnamed_addr constant [21 x i8] c".compoundliteral.379\00", align 1
@___asan_gen_.1510 = private unnamed_addr constant [21 x i8] c".compoundliteral.380\00", align 1
@___asan_gen_.1511 = private unnamed_addr constant [12 x i8] c"sdm660_clks\00", align 1
@___asan_gen_.1513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 865, i32 28 }
@___asan_gen_.1514 = private unnamed_addr constant [22 x i8] c"sdm660_ln_bb_clk3_pin\00", align 1
@___asan_gen_.1517 = private unnamed_addr constant [24 x i8] c"sdm660_ln_bb_clk3_pin_a\00", align 1
@___asan_gen_.1520 = private unnamed_addr constant [18 x i8] c"sdm660_ln_bb_clk3\00", align 1
@___asan_gen_.1523 = private unnamed_addr constant [20 x i8] c"sdm660_ln_bb_clk3_a\00", align 1
@___asan_gen_.1526 = private unnamed_addr constant [21 x i8] c".compoundliteral.381\00", align 1
@___asan_gen_.1527 = private unnamed_addr constant [21 x i8] c".compoundliteral.382\00", align 1
@___asan_gen_.1530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 863, i32 1 }
@___asan_gen_.1531 = private unnamed_addr constant [21 x i8] c".compoundliteral.384\00", align 1
@___asan_gen_.1532 = private unnamed_addr constant [21 x i8] c".compoundliteral.385\00", align 1
@___asan_gen_.1536 = private unnamed_addr constant [21 x i8] c".compoundliteral.387\00", align 1
@___asan_gen_.1537 = private unnamed_addr constant [21 x i8] c".compoundliteral.388\00", align 1
@___asan_gen_.1538 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 862, i32 1 }
@___asan_gen_.1541 = private unnamed_addr constant [21 x i8] c".compoundliteral.390\00", align 1
@___asan_gen_.1542 = private unnamed_addr constant [21 x i8] c".compoundliteral.391\00", align 1
@___asan_gen_.1543 = private unnamed_addr constant [12 x i8] c"sm6115_clks\00", align 1
@___asan_gen_.1545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 1025, i32 28 }
@___asan_gen_.1546 = private unnamed_addr constant [12 x i8] c"sm6125_clks\00", align 1
@___asan_gen_.1547 = private constant [34 x i8] c"../drivers/clk/qcom/clk-smd-rpm.c\00", align 1
@___asan_gen_.1548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1547, i32 982, i32 28 }
@llvm.compiler.used = appending global [571 x ptr] [ptr @__UNIQUE_ID_alias183, ptr @__UNIQUE_ID_description180, ptr @__UNIQUE_ID_file181, ptr @__UNIQUE_ID_license182, ptr @__exitcall_rpm_smd_clk_exit, ptr @__initcall__kmod_clk_smd_rpm__179_1226_rpm_smd_clk_init1, ptr @clk_smd_rpm_enable_scaling._entry, ptr @clk_smd_rpm_enable_scaling._entry.11, ptr @clk_smd_rpm_enable_scaling._entry_ptr, ptr @clk_smd_rpm_enable_scaling._entry_ptr.13, ptr @qcom_smdrpm_clk_hw_get._entry, ptr @qcom_smdrpm_clk_hw_get._entry_ptr, ptr @rpm_smd_clk_exit, ptr @rpm_smd_clk_probe._entry, ptr @rpm_smd_clk_probe._entry.6, ptr @rpm_smd_clk_probe._entry_ptr, ptr @rpm_smd_clk_probe._entry_ptr.8, ptr @rpm_smd_clk_driver, ptr @.str, ptr @rpm_smd_clk_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @rpm_clk_mdm9607, ptr @rpm_clk_msm8974, ptr @rpm_clk_msm8916, ptr @rpm_clk_msm8936, ptr @rpm_clk_msm8953, ptr @rpm_clk_msm8976, ptr @rpm_clk_msm8992, ptr @rpm_clk_msm8994, ptr @rpm_clk_msm8996, ptr @rpm_clk_msm8998, ptr @rpm_clk_qcm2290, ptr @rpm_clk_qcs404, ptr @rpm_clk_sdm660, ptr @rpm_clk_sm6115, ptr @rpm_clk_sm6125, ptr @mdm9607_clks, ptr @sdm660_bi_tcxo, ptr @sdm660_bi_tcxo_a, ptr @msm8916_pcnoc_clk, ptr @msm8916_pcnoc_a_clk, ptr @msm8916_bimc_clk, ptr @msm8916_bimc_a_clk, ptr @msm8916_qdss_clk, ptr @msm8916_qdss_a_clk, ptr @msm8916_bb_clk1, ptr @msm8916_bb_clk1_a, ptr @msm8916_bb_clk1_pin, ptr @msm8916_bb_clk1_a_pin, ptr @qcs404_qpic_clk, ptr @qcs404_qpic_a_clk, ptr @.str.18, ptr @clk_smd_rpm_branch_ops, ptr @.str.19, ptr @.str.20, ptr @.compoundliteral, ptr @.compoundliteral.21, ptr @rpm_smd_clk_lock, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.compoundliteral.25, ptr @.compoundliteral.26, ptr @.str.27, ptr @clk_smd_rpm_ops, ptr @.compoundliteral.28, ptr @.compoundliteral.29, ptr @.str.30, ptr @.compoundliteral.31, ptr @.compoundliteral.32, ptr @.str.33, ptr @.compoundliteral.34, ptr @.compoundliteral.35, ptr @.str.36, ptr @.compoundliteral.37, ptr @.compoundliteral.38, ptr @.str.39, ptr @.compoundliteral.40, ptr @.compoundliteral.41, ptr @.str.42, ptr @.compoundliteral.43, ptr @.compoundliteral.44, ptr @.str.45, ptr @.compoundliteral.46, ptr @.compoundliteral.47, ptr @.str.48, ptr @.compoundliteral.49, ptr @.compoundliteral.50, ptr @.str.51, ptr @.compoundliteral.52, ptr @.compoundliteral.53, ptr @.str.54, ptr @.compoundliteral.55, ptr @.compoundliteral.56, ptr @.str.57, ptr @.compoundliteral.58, ptr @.compoundliteral.59, ptr @.str.60, ptr @.compoundliteral.61, ptr @.compoundliteral.62, ptr @msm8974_clks, ptr @msm8916_snoc_clk, ptr @msm8916_snoc_a_clk, ptr @msm8974_cnoc_clk, ptr @msm8974_cnoc_a_clk, ptr @msm8974_mmssnoc_ahb_clk, ptr @msm8974_mmssnoc_ahb_a_clk, ptr @msm8974_gfx3d_clk_src, ptr @msm8974_gfx3d_a_clk_src, ptr @msm8974_ocmemgx_clk, ptr @msm8974_ocmemgx_a_clk, ptr @msm8974_cxo_d0, ptr @msm8974_cxo_d0_a, ptr @msm8974_cxo_d1, ptr @msm8974_cxo_d1_a, ptr @msm8974_cxo_a0, ptr @msm8974_cxo_a0_a, ptr @msm8974_cxo_a1, ptr @msm8974_cxo_a1_a, ptr @msm8974_cxo_a2, ptr @msm8974_cxo_a2_a, ptr @msm8974_div_clk1, ptr @msm8974_div_a_clk1, ptr @msm8974_div_clk2, ptr @msm8974_div_a_clk2, ptr @msm8974_diff_clk, ptr @msm8974_diff_a_clk, ptr @msm8974_cxo_d0_pin, ptr @msm8974_cxo_d0_a_pin, ptr @msm8974_cxo_d1_pin, ptr @msm8974_cxo_d1_a_pin, ptr @msm8974_cxo_a0_pin, ptr @msm8974_cxo_a0_a_pin, ptr @msm8974_cxo_a1_pin, ptr @msm8974_cxo_a1_a_pin, ptr @msm8974_cxo_a2_pin, ptr @msm8974_cxo_a2_a_pin, ptr @.str.63, ptr @.compoundliteral.64, ptr @.compoundliteral.65, ptr @.str.66, ptr @.compoundliteral.67, ptr @.compoundliteral.68, ptr @.str.69, ptr @.compoundliteral.70, ptr @.compoundliteral.71, ptr @.str.72, ptr @.compoundliteral.73, ptr @.compoundliteral.74, ptr @.str.75, ptr @.compoundliteral.76, ptr @.compoundliteral.77, ptr @.str.78, ptr @.compoundliteral.79, ptr @.compoundliteral.80, ptr @.str.81, ptr @.compoundliteral.82, ptr @.compoundliteral.83, ptr @.str.84, ptr @.compoundliteral.85, ptr @.compoundliteral.86, ptr @.str.87, ptr @.compoundliteral.88, ptr @.compoundliteral.89, ptr @.str.90, ptr @.compoundliteral.91, ptr @.compoundliteral.92, ptr @.str.93, ptr @.compoundliteral.94, ptr @.compoundliteral.95, ptr @.str.96, ptr @.compoundliteral.97, ptr @.compoundliteral.98, ptr @.str.99, ptr @.compoundliteral.100, ptr @.compoundliteral.101, ptr @.str.102, ptr @.compoundliteral.103, ptr @.compoundliteral.104, ptr @.str.105, ptr @.compoundliteral.106, ptr @.compoundliteral.107, ptr @.str.108, ptr @.compoundliteral.109, ptr @.compoundliteral.110, ptr @.str.111, ptr @.compoundliteral.112, ptr @.compoundliteral.113, ptr @.str.114, ptr @.compoundliteral.115, ptr @.compoundliteral.116, ptr @.str.117, ptr @.compoundliteral.118, ptr @.compoundliteral.119, ptr @.str.120, ptr @.compoundliteral.121, ptr @.compoundliteral.122, ptr @.str.123, ptr @.compoundliteral.124, ptr @.compoundliteral.125, ptr @.str.126, ptr @.compoundliteral.127, ptr @.compoundliteral.128, ptr @.str.129, ptr @.compoundliteral.130, ptr @.compoundliteral.131, ptr @.str.132, ptr @.compoundliteral.133, ptr @.compoundliteral.134, ptr @.str.135, ptr @.compoundliteral.136, ptr @.compoundliteral.137, ptr @.str.138, ptr @.compoundliteral.139, ptr @.compoundliteral.140, ptr @.str.141, ptr @.compoundliteral.142, ptr @.compoundliteral.143, ptr @.str.144, ptr @.compoundliteral.145, ptr @.compoundliteral.146, ptr @.str.147, ptr @.compoundliteral.148, ptr @.compoundliteral.149, ptr @.str.150, ptr @.compoundliteral.151, ptr @.compoundliteral.152, ptr @.str.153, ptr @.compoundliteral.154, ptr @.compoundliteral.155, ptr @.str.156, ptr @.compoundliteral.157, ptr @.compoundliteral.158, ptr @.str.159, ptr @.compoundliteral.160, ptr @.compoundliteral.161, ptr @.str.162, ptr @.compoundliteral.163, ptr @.compoundliteral.164, ptr @.str.165, ptr @.compoundliteral.166, ptr @.compoundliteral.167, ptr @.str.168, ptr @.compoundliteral.169, ptr @.compoundliteral.170, ptr @msm8916_clks, ptr @msm8916_bb_clk2, ptr @msm8916_bb_clk2_a, ptr @msm8916_rf_clk1, ptr @msm8916_rf_clk1_a, ptr @msm8916_rf_clk2, ptr @msm8916_rf_clk2_a, ptr @msm8916_bb_clk2_pin, ptr @msm8916_bb_clk2_a_pin, ptr @msm8916_rf_clk1_pin, ptr @msm8916_rf_clk1_a_pin, ptr @msm8916_rf_clk2_pin, ptr @msm8916_rf_clk2_a_pin, ptr @.str.171, ptr @.compoundliteral.172, ptr @.compoundliteral.173, ptr @.str.174, ptr @.compoundliteral.175, ptr @.compoundliteral.176, ptr @.str.177, ptr @.compoundliteral.178, ptr @.compoundliteral.179, ptr @.str.180, ptr @.compoundliteral.181, ptr @.compoundliteral.182, ptr @.str.183, ptr @.compoundliteral.184, ptr @.compoundliteral.185, ptr @.str.186, ptr @.compoundliteral.187, ptr @.compoundliteral.188, ptr @.str.189, ptr @.compoundliteral.190, ptr @.compoundliteral.191, ptr @.str.192, ptr @.compoundliteral.193, ptr @.compoundliteral.194, ptr @.str.195, ptr @.compoundliteral.196, ptr @.compoundliteral.197, ptr @.str.198, ptr @.compoundliteral.199, ptr @.compoundliteral.200, ptr @.str.201, ptr @.compoundliteral.202, ptr @.compoundliteral.203, ptr @.str.204, ptr @.compoundliteral.205, ptr @.compoundliteral.206, ptr @msm8936_clks, ptr @msm8936_sysmmnoc_clk, ptr @msm8936_sysmmnoc_a_clk, ptr @.str.207, ptr @.compoundliteral.208, ptr @.compoundliteral.209, ptr @.str.210, ptr @.compoundliteral.211, ptr @.compoundliteral.212, ptr @msm8953_clks, ptr @msm8976_ipa_clk, ptr @msm8976_ipa_a_clk, ptr @msm8992_ln_bb_clk, ptr @msm8992_ln_bb_a_clk, ptr @.str.213, ptr @.compoundliteral.214, ptr @.compoundliteral.215, ptr @.str.216, ptr @.compoundliteral.217, ptr @.compoundliteral.218, ptr @.str.219, ptr @.compoundliteral.220, ptr @.compoundliteral.221, ptr @.str.222, ptr @.compoundliteral.223, ptr @.compoundliteral.224, ptr @msm8976_clks, ptr @msm8976_mmssnoc_ahb_clk, ptr @msm8976_mmssnoc_ahb_a_clk, ptr @.compoundliteral.225, ptr @.compoundliteral.226, ptr @.compoundliteral.227, ptr @.compoundliteral.228, ptr @msm8992_clks, ptr @msm8992_ce1_clk, ptr @msm8992_ce1_a_clk, ptr @msm8992_div_clk3, ptr @msm8992_div_clk3_a, ptr @msm8992_ce2_clk, ptr @msm8992_ce2_a_clk, ptr @.str.229, ptr @.compoundliteral.230, ptr @.compoundliteral.231, ptr @.str.232, ptr @.compoundliteral.233, ptr @.compoundliteral.234, ptr @.str.235, ptr @.compoundliteral.236, ptr @.compoundliteral.237, ptr @.str.238, ptr @.compoundliteral.239, ptr @.compoundliteral.240, ptr @.str.241, ptr @.compoundliteral.242, ptr @.compoundliteral.243, ptr @.str.244, ptr @.compoundliteral.245, ptr @.compoundliteral.246, ptr @msm8994_clks, ptr @msm8994_ce3_clk, ptr @msm8994_ce3_a_clk, ptr @.str.247, ptr @.compoundliteral.248, ptr @.compoundliteral.249, ptr @.str.250, ptr @.compoundliteral.251, ptr @.compoundliteral.252, ptr @msm8996_clks, ptr @msm8996_aggre1_noc_clk, ptr @msm8996_aggre1_noc_a_clk, ptr @msm8996_aggre2_noc_clk, ptr @msm8996_aggre2_noc_a_clk, ptr @msm8996_mmssnoc_axi_rpm_clk, ptr @msm8996_mmssnoc_axi_rpm_a_clk, ptr @.str.253, ptr @.compoundliteral.254, ptr @.compoundliteral.255, ptr @.str.256, ptr @.compoundliteral.257, ptr @.compoundliteral.258, ptr @.str.259, ptr @.compoundliteral.260, ptr @.compoundliteral.261, ptr @.str.262, ptr @.compoundliteral.263, ptr @.compoundliteral.264, ptr @.str.265, ptr @.compoundliteral.266, ptr @.compoundliteral.267, ptr @.str.268, ptr @.compoundliteral.269, ptr @.compoundliteral.270, ptr @msm8998_clks, ptr @msm8998_aggre1_noc_clk, ptr @msm8998_aggre1_noc_a_clk, ptr @msm8998_aggre2_noc_clk, ptr @msm8998_aggre2_noc_a_clk, ptr @msm8998_ln_bb_clk3_pin, ptr @msm8998_ln_bb_clk3_a_pin, ptr @msm8998_rf_clk3, ptr @msm8998_rf_clk3_a, ptr @msm8998_rf_clk3_pin, ptr @msm8998_rf_clk3_a_pin, ptr @.compoundliteral.271, ptr @.compoundliteral.272, ptr @.compoundliteral.273, ptr @.compoundliteral.274, ptr @.compoundliteral.275, ptr @.compoundliteral.276, ptr @.compoundliteral.277, ptr @.compoundliteral.278, ptr @.str.279, ptr @.compoundliteral.280, ptr @.compoundliteral.281, ptr @.str.282, ptr @.compoundliteral.283, ptr @.compoundliteral.284, ptr @.str.285, ptr @.compoundliteral.286, ptr @.compoundliteral.287, ptr @.str.288, ptr @.compoundliteral.289, ptr @.compoundliteral.290, ptr @.str.291, ptr @.compoundliteral.292, ptr @.compoundliteral.293, ptr @.str.294, ptr @.compoundliteral.295, ptr @.compoundliteral.296, ptr @qcm2290_clks, ptr @sm6125_snoc_clk, ptr @sm6125_snoc_a_clk, ptr @sm6125_qdss_clk, ptr @sm6125_qdss_a_clk, ptr @sm6125_cnoc_clk, ptr @sm6125_cnoc_a_clk, ptr @qcm2290_bimc_gpu_clk, ptr @qcm2290_bimc_gpu_a_clk, ptr @qcm2290_qpic_clk, ptr @qcm2290_qpic_a_clk, ptr @qcm2290_ln_bb_clk2, ptr @qcm2290_ln_bb_clk2_a, ptr @qcm2290_rf_clk3, ptr @qcm2290_rf_clk3_a, ptr @sm6125_qup_clk, ptr @sm6125_qup_a_clk, ptr @sm6125_mmrt_clk, ptr @sm6125_mmrt_a_clk, ptr @sm6125_mmnrt_clk, ptr @sm6125_mmnrt_a_clk, ptr @sm6125_snoc_periph_clk, ptr @sm6125_snoc_periph_a_clk, ptr @sm6125_snoc_lpass_clk, ptr @sm6125_snoc_lpass_a_clk, ptr @qcm2290_hwkm_clk, ptr @qcm2290_hwkm_a_clk, ptr @qcm2290_pka_clk, ptr @qcm2290_pka_a_clk, ptr @qcm2290_cpuss_gnoc_clk, ptr @qcm2290_cpuss_gnoc_a_clk, ptr @.compoundliteral.297, ptr @.compoundliteral.298, ptr @.compoundliteral.299, ptr @.compoundliteral.300, ptr @.compoundliteral.301, ptr @.compoundliteral.302, ptr @.compoundliteral.303, ptr @.compoundliteral.304, ptr @.compoundliteral.305, ptr @.compoundliteral.306, ptr @.compoundliteral.307, ptr @.compoundliteral.308, ptr @.str.309, ptr @.compoundliteral.310, ptr @.compoundliteral.311, ptr @.str.312, ptr @.compoundliteral.313, ptr @.compoundliteral.314, ptr @.compoundliteral.315, ptr @.compoundliteral.316, ptr @.compoundliteral.317, ptr @.compoundliteral.318, ptr @.str.319, ptr @.compoundliteral.320, ptr @.compoundliteral.321, ptr @.str.322, ptr @.compoundliteral.323, ptr @.compoundliteral.324, ptr @.compoundliteral.325, ptr @.compoundliteral.326, ptr @.compoundliteral.327, ptr @.compoundliteral.328, ptr @.str.329, ptr @.compoundliteral.330, ptr @.compoundliteral.331, ptr @.str.332, ptr @.compoundliteral.333, ptr @.compoundliteral.334, ptr @.str.335, ptr @.compoundliteral.336, ptr @.compoundliteral.337, ptr @.str.338, ptr @.compoundliteral.339, ptr @.compoundliteral.340, ptr @.str.341, ptr @.compoundliteral.342, ptr @.compoundliteral.343, ptr @.str.344, ptr @.compoundliteral.345, ptr @.compoundliteral.346, ptr @.str.347, ptr @.compoundliteral.348, ptr @.compoundliteral.349, ptr @.str.350, ptr @.compoundliteral.351, ptr @.compoundliteral.352, ptr @.str.353, ptr @.compoundliteral.354, ptr @.compoundliteral.355, ptr @.str.356, ptr @.compoundliteral.357, ptr @.compoundliteral.358, ptr @.str.359, ptr @.compoundliteral.360, ptr @.compoundliteral.361, ptr @.str.362, ptr @.compoundliteral.363, ptr @.compoundliteral.364, ptr @.str.365, ptr @.compoundliteral.366, ptr @.compoundliteral.367, ptr @.str.368, ptr @.compoundliteral.369, ptr @.compoundliteral.370, ptr @.str.371, ptr @.compoundliteral.372, ptr @.compoundliteral.373, ptr @.str.374, ptr @.compoundliteral.375, ptr @.compoundliteral.376, ptr @qcs404_clks, ptr @qcs404_bimc_gpu_clk, ptr @qcs404_bimc_gpu_a_clk, ptr @.compoundliteral.377, ptr @.compoundliteral.378, ptr @.compoundliteral.379, ptr @.compoundliteral.380, ptr @sdm660_clks, ptr @sdm660_ln_bb_clk3_pin, ptr @sdm660_ln_bb_clk3_pin_a, ptr @sdm660_ln_bb_clk3, ptr @sdm660_ln_bb_clk3_a, ptr @.compoundliteral.381, ptr @.compoundliteral.382, ptr @.str.383, ptr @.compoundliteral.384, ptr @.compoundliteral.385, ptr @.str.386, ptr @.compoundliteral.387, ptr @.compoundliteral.388, ptr @.str.389, ptr @.compoundliteral.390, ptr @.compoundliteral.391, ptr @sm6115_clks, ptr @sm6125_clks], section "llvm.metadata"
@0 = internal global [559 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_smd_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_smd_clk_match_table to i32), i32 3332, i32 4192, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_smd_clk_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_smd_clk_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_smd_rpm_enable_scaling._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_smd_rpm_enable_scaling._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smdrpm_clk_hw_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_clk_mdm9607 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_clk_msm8974 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_clk_msm8916 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_clk_msm8936 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_clk_msm8953 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_clk_msm8976 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_clk_msm8992 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_clk_msm8994 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_clk_msm8996 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_clk_msm8998 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_clk_qcm2290 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_clk_qcs404 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_clk_sdm660 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_clk_sm6115 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_clk_sm6125 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdm9607_clks to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm660_bi_tcxo to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm660_bi_tcxo_a to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_pcnoc_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_pcnoc_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_bimc_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_bimc_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_qdss_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_qdss_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_bb_clk1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_bb_clk1_a to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_bb_clk1_pin to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_bb_clk1_a_pin to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcs404_qpic_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcs404_qpic_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_smd_rpm_branch_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_smd_clk_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_smd_rpm_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_clks to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_snoc_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_snoc_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_cnoc_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_cnoc_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_mmssnoc_ahb_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_mmssnoc_ahb_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_gfx3d_clk_src to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_gfx3d_a_clk_src to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_ocmemgx_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_ocmemgx_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_cxo_d0 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_cxo_d0_a to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_cxo_d1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_cxo_d1_a to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_cxo_a0 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_cxo_a0_a to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_cxo_a1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_cxo_a1_a to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_cxo_a2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_cxo_a2_a to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_div_clk1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_div_a_clk1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_div_clk2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_div_a_clk2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_diff_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_diff_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_cxo_d0_pin to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_cxo_d0_a_pin to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_cxo_d1_pin to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_cxo_d1_a_pin to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_cxo_a0_pin to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_cxo_a0_a_pin to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_cxo_a1_pin to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_cxo_a1_a_pin to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_cxo_a2_pin to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_cxo_a2_a_pin to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.86 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.89 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.92 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.95 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.97 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.98 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.100 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.101 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.103 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.104 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.106 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.107 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.109 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.110 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.112 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.113 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.115 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.116 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.118 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.119 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.121 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.122 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.124 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.125 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.127 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.128 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.130 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.131 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.133 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.134 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.136 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.137 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.139 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.140 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.142 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.143 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.145 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.146 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.148 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.149 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.151 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.152 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.154 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.155 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.157 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.158 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.160 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.161 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.163 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.164 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.166 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.167 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.169 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.170 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_clks to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_bb_clk2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_bb_clk2_a to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_rf_clk1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_rf_clk1_a to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_rf_clk2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_rf_clk2_a to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_bb_clk2_pin to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_bb_clk2_a_pin to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_rf_clk1_pin to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_rf_clk1_a_pin to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_rf_clk2_pin to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_rf_clk2_a_pin to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.172 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.173 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.175 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.176 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.178 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.179 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.181 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.182 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.184 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.185 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.187 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.188 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.190 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.191 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.193 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.194 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.196 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.197 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.199 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.200 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.202 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.203 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.205 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.206 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8936_clks to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8936_sysmmnoc_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8936_sysmmnoc_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.208 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.209 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.211 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.212 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8953_clks to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8976_ipa_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8976_ipa_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8992_ln_bb_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8992_ln_bb_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.214 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.215 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.217 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.218 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.220 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.221 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.223 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.224 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8976_clks to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8976_mmssnoc_ahb_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8976_mmssnoc_ahb_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.225 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.226 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.227 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.228 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8992_clks to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8992_ce1_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8992_ce1_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8992_div_clk3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8992_div_clk3_a to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8992_ce2_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8992_ce2_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.230 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.231 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.233 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.234 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.236 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.237 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.239 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.240 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.242 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.243 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.245 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.246 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8994_clks to i32), i32 424, i32 544, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8994_ce3_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8994_ce3_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.248 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.249 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.251 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.252 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_clks to i32), i32 304, i32 384, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_aggre1_noc_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_aggre1_noc_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_aggre2_noc_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_aggre2_noc_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_mmssnoc_axi_rpm_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_mmssnoc_axi_rpm_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.254 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.255 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.257 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.258 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.260 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.261 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.263 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.264 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.266 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.267 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.269 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.270 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_clks to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_aggre1_noc_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_aggre1_noc_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_aggre2_noc_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_aggre2_noc_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_ln_bb_clk3_pin to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_ln_bb_clk3_a_pin to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_rf_clk3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_rf_clk3_a to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_rf_clk3_pin to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_rf_clk3_a_pin to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.271 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.272 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.273 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.274 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.275 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.276 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.277 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.278 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.280 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.281 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.283 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.284 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1264 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.286 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.287 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.289 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.290 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.292 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.293 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.295 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.296 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcm2290_clks to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6125_snoc_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6125_snoc_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6125_qdss_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1294 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6125_qdss_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6125_cnoc_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6125_cnoc_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcm2290_bimc_gpu_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcm2290_bimc_gpu_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcm2290_qpic_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcm2290_qpic_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcm2290_ln_bb_clk2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcm2290_ln_bb_clk2_a to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcm2290_rf_clk3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcm2290_rf_clk3_a to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6125_qup_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6125_qup_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6125_mmrt_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6125_mmrt_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6125_mmnrt_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6125_mmnrt_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6125_snoc_periph_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1348 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6125_snoc_periph_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6125_snoc_lpass_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6125_snoc_lpass_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcm2290_hwkm_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1360 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcm2290_hwkm_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcm2290_pka_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1366 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcm2290_pka_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcm2290_cpuss_gnoc_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1372 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcm2290_cpuss_gnoc_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.297 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.298 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.299 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1380 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.300 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1381 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.301 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.302 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.303 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.304 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.305 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1386 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.306 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.307 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.308 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.310 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.311 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.313 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1398 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.314 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.315 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1400 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.316 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.317 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1402 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.318 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1403 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.320 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1407 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.321 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1408 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.323 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.324 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1413 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.325 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1414 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.326 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.327 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.328 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1417 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.330 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.331 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.333 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.334 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.336 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.337 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1432 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.339 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1436 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.340 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.342 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1441 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.343 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.345 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1446 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.346 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.347 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.348 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.349 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.350 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.351 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1456 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.352 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.353 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.354 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.355 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.356 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.357 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1466 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.358 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1467 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.359 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.360 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.361 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.363 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.364 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1477 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.365 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.366 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.367 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1482 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.368 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.369 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1486 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.370 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.371 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.372 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1491 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.373 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1492 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.374 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.375 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1496 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.376 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1497 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcs404_clks to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.1498 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcs404_bimc_gpu_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1501 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcs404_bimc_gpu_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.377 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1507 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.378 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1508 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.379 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1509 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.380 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm660_clks to i32), i32 400, i32 512, i32 ptrtoint (ptr @___asan_gen_.1511 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm660_ln_bb_clk3_pin to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm660_ln_bb_clk3_pin_a to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1517 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm660_ln_bb_clk3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1520 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm660_ln_bb_clk3_a to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1523 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.381 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1526 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.382 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1527 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.383 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.384 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.385 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1532 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.386 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.387 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1536 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.388 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.389 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.390 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1541 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.391 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6115_clks to i32), i32 464, i32 576, i32 ptrtoint (ptr @___asan_gen_.1543 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6125_clks to i32), i32 464, i32 576, i32 ptrtoint (ptr @___asan_gen_.1546 to i32), i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1548 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rpm_smd_clk_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rpm_smd_clk_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rpm_smd_clk_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @rpm_smd_clk_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpm_smd_clk_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %req.i = alloca %struct.clk_smd_rpm_req, align 4
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call3, align 4
  %num_clks7 = getelementptr inbounds %struct.rpm_smd_clk_desc, ptr %call3, i32 0, i32 1
  %6 = ptrtoint ptr %num_clks7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_clks7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp86.not = icmp eq i32 %7, 0
  br i1 %cmp86.not, label %for.end.thread, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end6
  %8 = getelementptr inbounds %struct.clk_smd_rpm_req, ptr %req.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.clk_smd_rpm_req, ptr %req.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.087 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.087
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %for.body.for.inc_crit_edge, label %if.end10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end10:                                         ; preds = %for.body
  %rpm12 = getelementptr inbounds %struct.clk_smd_rpm, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %rpm12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %3, ptr %rpm12, align 4
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i) #8
  %rpm_key.i = getelementptr inbounds %struct.clk_smd_rpm, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %rpm_key.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rpm_key.i, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16) #8
  %18 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %req.i, align 4
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 67108864, ptr %8, align 4
  %branch.i = getelementptr inbounds %struct.clk_smd_rpm, ptr %14, i32 0, i32 6
  %20 = ptrtoint ptr %branch.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %branch.i, align 2, !range !432
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  %cond.i = select i1 %tobool.not.i, i32 2147483647, i32 1
  %22 = call i32 @llvm.bswap.i32(i32 %cond.i) #8
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %9, align 4
  %rpm.i = getelementptr inbounds %struct.clk_smd_rpm, ptr %14, i32 0, i32 10
  %24 = ptrtoint ptr %rpm.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rpm.i, align 4
  %26 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %14, align 4
  %rpm_clk_id.i = getelementptr inbounds %struct.clk_smd_rpm, ptr %14, i32 0, i32 2
  %28 = ptrtoint ptr %rpm_clk_id.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rpm_clk_id.i, align 4
  %call.i = call i32 @qcom_rpm_smd_write(ptr noundef %25, i32 noundef 0, i32 noundef %27, i32 noundef %29, ptr noundef nonnull %req.i, i32 noundef 12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %clk_smd_rpm_handoff.exit, label %clk_smd_rpm_handoff.exit.thread

clk_smd_rpm_handoff.exit.thread:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i) #8
  br label %do.end45

clk_smd_rpm_handoff.exit:                         ; preds = %if.end10
  %30 = ptrtoint ptr %rpm.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rpm.i, align 4
  %32 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %14, align 4
  %34 = ptrtoint ptr %rpm_clk_id.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rpm_clk_id.i, align 4
  %call5.i = call i32 @qcom_rpm_smd_write(ptr noundef %31, i32 noundef 1, i32 noundef %33, i32 noundef %35, ptr noundef nonnull %req.i, i32 noundef 12) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool15.not = icmp eq i32 %call5.i, 0
  br i1 %tobool15.not, label %clk_smd_rpm_handoff.exit.for.inc_crit_edge, label %clk_smd_rpm_handoff.exit.do.end45_crit_edge

clk_smd_rpm_handoff.exit.do.end45_crit_edge:      ; preds = %clk_smd_rpm_handoff.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end45

clk_smd_rpm_handoff.exit.for.inc_crit_edge:       ; preds = %clk_smd_rpm_handoff.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %clk_smd_rpm_handoff.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.087, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call18 = call fastcc i32 @clk_smd_rpm_enable_scaling(ptr noundef nonnull %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %for.cond22.preheader, label %for.end.do.end45_crit_edge

for.end.do.end45_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end45

for.end.thread:                                   ; preds = %if.end6
  %call1893 = call fastcc i32 @clk_smd_rpm_enable_scaling(ptr noundef nonnull %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1893)
  %tobool19.not94 = icmp eq i32 %call1893, 0
  br i1 %tobool19.not94, label %for.end.thread.for.end37_crit_edge, label %for.end.thread.do.end45_crit_edge

for.end.thread.do.end45_crit_edge:                ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end45

for.end.thread.for.end37_crit_edge:               ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end37

for.cond22.preheader:                             ; preds = %for.end
  br i1 %cmp86.not, label %for.cond22.preheader.for.end37_crit_edge, label %for.cond22.preheader.for.body24_crit_edge

for.cond22.preheader.for.body24_crit_edge:        ; preds = %for.cond22.preheader
  br label %for.body24

for.cond22.preheader.for.end37_crit_edge:         ; preds = %for.cond22.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end37

for.body24:                                       ; preds = %for.inc35.for.body24_crit_edge, %for.cond22.preheader.for.body24_crit_edge
  %i.189 = phi i32 [ %inc36, %for.inc35.for.body24_crit_edge ], [ 0, %for.cond22.preheader.for.body24_crit_edge ]
  %arrayidx25 = getelementptr ptr, ptr %5, i32 %i.189
  %36 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx25, align 4
  %tobool26.not = icmp eq ptr %37, null
  br i1 %tobool26.not, label %for.body24.for.inc35_crit_edge, label %if.end28

for.body24.for.inc35_crit_edge:                   ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc35

if.end28:                                         ; preds = %for.body24
  %hw = getelementptr inbounds %struct.clk_smd_rpm, ptr %37, i32 0, i32 8
  %call31 = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef %hw) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end28.for.inc35_crit_edge, label %if.end28.do.end45_crit_edge

if.end28.do.end45_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end45

if.end28.for.inc35_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc35

for.inc35:                                        ; preds = %if.end28.for.inc35_crit_edge, %for.body24.for.inc35_crit_edge
  %inc36 = add nuw i32 %i.189, 1
  %exitcond92.not = icmp eq i32 %inc36, %7
  br i1 %exitcond92.not, label %for.inc35.for.end37_crit_edge, label %for.inc35.for.body24_crit_edge

for.inc35.for.body24_crit_edge:                   ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body24

for.inc35.for.end37_crit_edge:                    ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end37

for.end37:                                        ; preds = %for.inc35.for.end37_crit_edge, %for.cond22.preheader.for.end37_crit_edge, %for.end.thread.for.end37_crit_edge
  %call39 = call i32 @devm_of_clk_add_hw_provider(ptr noundef %dev, ptr noundef nonnull @qcom_smdrpm_clk_hw_get, ptr noundef nonnull %call3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %for.end37.cleanup_crit_edge, label %for.end37.do.end45_crit_edge

for.end37.do.end45_crit_edge:                     ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end45

for.end37.cleanup_crit_edge:                      ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end45:                                         ; preds = %for.end37.do.end45_crit_edge, %if.end28.do.end45_crit_edge, %for.end.thread.do.end45_crit_edge, %for.end.do.end45_crit_edge, %clk_smd_rpm_handoff.exit.do.end45_crit_edge, %clk_smd_rpm_handoff.exit.thread
  %ret.0 = phi i32 [ %call18, %for.end.do.end45_crit_edge ], [ %call39, %for.end37.do.end45_crit_edge ], [ %call.i, %clk_smd_rpm_handoff.exit.thread ], [ %call1893, %for.end.thread.do.end45_crit_edge ], [ %call31, %if.end28.do.end45_crit_edge ], [ %call5.i, %clk_smd_rpm_handoff.exit.do.end45_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %ret.0) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %for.end37.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.0, %do.end45 ], [ -19, %do.end ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %for.end37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_smd_rpm_enable_scaling(ptr noundef %rpm) unnamed_addr #2 align 64 {
entry:
  %req = alloca %struct.clk_smd_rpm_req, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req) #8
  %0 = call ptr @memcpy(ptr %req, ptr @__const.clk_smd_rpm_enable_scaling.req, i32 12)
  %call = call i32 @qcom_rpm_smd_write(ptr noundef %rpm, i32 noundef 1, i32 noundef 812346467, i32 noundef 2, ptr noundef nonnull %req, i32 noundef 12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @qcom_rpm_smd_write(ptr noundef %rpm, i32 noundef 0, i32 noundef 812346467, i32 noundef 2, ptr noundef nonnull %req, i32 noundef 12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body11, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #11
  br label %cleanup

do.body11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clk_smd_rpm_enable_scaling.__UNIQUE_ID_ddebug178, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clk_smd_rpm_enable_scaling, %if.then17)) #8
          to label %cleanup [label %if.then17], !srcloc !433

if.then17:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clk_smd_rpm_enable_scaling.__UNIQUE_ID_ddebug178, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.10) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %do.body11, %do.end7, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call2, %do.end7 ], [ 0, %if.then17 ], [ 0, %do.body11 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qcom_smdrpm_clk_hw_get(ptr nocapture noundef readonly %clkspec, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  %num_clks = getelementptr inbounds %struct.rpm_smd_clk_desc, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_clks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ult i32 %1, %3
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef %1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %arrayidx2 = getelementptr ptr, ptr %5, i32 %1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %cond.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %hw = getelementptr inbounds %struct.clk_smd_rpm, ptr %7, i32 0, i32 8
  br label %cleanup

cleanup:                                          ; preds = %cond.true, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %hw, %cond.true ], [ inttoptr (i32 -2 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_rpm_smd_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_smd_rpm_prepare(ptr nocapture noundef %hw) #2 align 64 {
entry:
  %req.i75 = alloca %struct.clk_smd_rpm_req, align 4
  %req.i68 = alloca %struct.clk_smd_rpm_req, align 4
  %req.i = alloca %struct.clk_smd_rpm_req, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -24
  %peer1 = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %peer1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer1, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @rpm_smd_clk_lock, i32 noundef 0) #8
  %rate = getelementptr i8, ptr %hw, i32 12
  %2 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.then37_crit_edge, label %if.end

entry.if.then37_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

if.end:                                           ; preds = %entry
  %active_only.i = getelementptr i8, ptr %hw, i32 -8
  %4 = ptrtoint ptr %active_only.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %active_only.i, align 4, !range !432
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %rate..i = select i1 %tobool.not.i, i32 %3, i32 0
  %enabled = getelementptr inbounds %struct.clk_smd_rpm, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled, align 1, !range !432
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %rate5 = getelementptr inbounds %struct.clk_smd_rpm, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %rate5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate5, align 4
  %active_only.i65 = getelementptr inbounds %struct.clk_smd_rpm, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %active_only.i65 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %active_only.i65, align 4, !range !432
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i66 = icmp eq i8 %11, 0
  %rate..i67 = select i1 %tobool.not.i66, i32 %9, i32 0
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %peer_rate.0 = phi i32 [ 0, %if.end.if.end6_crit_edge ], [ %9, %if.then4 ]
  %peer_sleep_rate.0 = phi i32 [ 0, %if.end.if.end6_crit_edge ], [ %rate..i67, %if.then4 ]
  %12 = tail call i32 @llvm.umax.i32(i32 %3, i32 %peer_rate.0)
  %branch = getelementptr i8, ptr %hw, i32 -6
  %13 = ptrtoint ptr %branch to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %branch, align 2, !range !432
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool8.not = icmp eq i8 %14, 0
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i) #8
  %15 = getelementptr inbounds %struct.clk_smd_rpm_req, ptr %req.i, i32 0, i32 1
  %16 = getelementptr inbounds %struct.clk_smd_rpm_req, ptr %req.i, i32 0, i32 2
  %rpm_key.i = getelementptr i8, ptr %hw, i32 -20
  %17 = ptrtoint ptr %rpm_key.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rpm_key.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  %20 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %req.i, align 4
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 67108864, ptr %15, align 4
  %.op = add i32 %12, 999
  %.op.op = udiv i32 %.op, 1000
  %div.i = select i1 %tobool8.not, i32 %.op.op, i32 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %div.i) #8
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %16, align 4
  %rpm.i = getelementptr i8, ptr %hw, i32 16
  %24 = ptrtoint ptr %rpm.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rpm.i, align 4
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr, align 4
  %rpm_clk_id.i = getelementptr i8, ptr %hw, i32 -16
  %28 = ptrtoint ptr %rpm_clk_id.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rpm_clk_id.i, align 4
  %call.i = call i32 @qcom_rpm_smd_write(ptr noundef %25, i32 noundef 0, i32 noundef %27, i32 noundef %29, ptr noundef nonnull %req.i, i32 noundef 12) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %if.end15, label %if.end6.if.end39_crit_edge

if.end6.if.end39_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.end15:                                         ; preds = %if.end6
  %30 = call i32 @llvm.umax.i32(i32 %rate..i, i32 %peer_sleep_rate.0)
  %31 = ptrtoint ptr %branch to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %branch, align 2, !range !432
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool23.not = icmp eq i8 %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool25 = icmp ne i32 %30, 0
  %lnot.ext29 = zext i1 %tobool25 to i32
  %sleep_rate.0 = select i1 %tobool23.not, i32 %30, i32 %lnot.ext29
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i68) #8
  %33 = getelementptr inbounds %struct.clk_smd_rpm_req, ptr %req.i68, i32 0, i32 1
  %34 = getelementptr inbounds %struct.clk_smd_rpm_req, ptr %req.i68, i32 0, i32 2
  %35 = ptrtoint ptr %rpm_key.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rpm_key.i, align 4
  %37 = call i32 @llvm.bswap.i32(i32 %36) #8
  %38 = ptrtoint ptr %req.i68 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %req.i68, align 4
  %39 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 67108864, ptr %33, align 4
  %sub.i70 = add i32 %sleep_rate.0, 999
  %div.i71 = udiv i32 %sub.i70, 1000
  %40 = call i32 @llvm.bswap.i32(i32 %div.i71) #8
  %41 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %34, align 4
  %42 = ptrtoint ptr %rpm.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rpm.i, align 4
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr, align 4
  %46 = ptrtoint ptr %rpm_clk_id.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rpm_clk_id.i, align 4
  %call.i74 = call i32 @qcom_rpm_smd_write(ptr noundef %43, i32 noundef 1, i32 noundef %45, i32 noundef %47, ptr noundef nonnull %req.i68, i32 noundef 12) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i68) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool32.not = icmp eq i32 %call.i74, 0
  br i1 %tobool32.not, label %if.end15.if.then37_crit_edge, label %out

if.end15.if.then37_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

out:                                              ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i75) #8
  %48 = getelementptr inbounds %struct.clk_smd_rpm_req, ptr %req.i75, i32 0, i32 1
  %49 = getelementptr inbounds %struct.clk_smd_rpm_req, ptr %req.i75, i32 0, i32 2
  %50 = ptrtoint ptr %rpm_key.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rpm_key.i, align 4
  %52 = call i32 @llvm.bswap.i32(i32 %51) #8
  %53 = ptrtoint ptr %req.i75 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %req.i75, align 4
  %54 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 67108864, ptr %48, align 4
  %sub.i77 = add i32 %peer_rate.0, 999
  %div.i78 = udiv i32 %sub.i77, 1000
  %55 = call i32 @llvm.bswap.i32(i32 %div.i78) #8
  %56 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %49, align 4
  %57 = ptrtoint ptr %rpm.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rpm.i, align 4
  %59 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr, align 4
  %61 = ptrtoint ptr %rpm_clk_id.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rpm_clk_id.i, align 4
  %call.i81 = call i32 @qcom_rpm_smd_write(ptr noundef %58, i32 noundef 0, i32 noundef %60, i32 noundef %62, ptr noundef nonnull %req.i75, i32 noundef 12) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i75) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool36.not = icmp eq i32 %call.i81, 0
  br i1 %tobool36.not, label %out.if.then37_crit_edge, label %out.if.end39_crit_edge

out.if.end39_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

out.if.then37_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

if.then37:                                        ; preds = %out.if.then37_crit_edge, %if.end15.if.then37_crit_edge, %entry.if.then37_crit_edge
  %enabled38 = getelementptr i8, ptr %hw, i32 -7
  %63 = ptrtoint ptr %enabled38 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %enabled38, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %out.if.end39_crit_edge, %if.end6.if.end39_crit_edge
  %ret.085 = phi i32 [ 0, %if.then37 ], [ %call.i81, %out.if.end39_crit_edge ], [ %call.i, %if.end6.if.end39_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @rpm_smd_clk_lock) #8
  ret i32 %ret.085
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_smd_rpm_unprepare(ptr nocapture noundef %hw) #2 align 64 {
entry:
  %req.i37 = alloca %struct.clk_smd_rpm_req, align 4
  %req.i = alloca %struct.clk_smd_rpm_req, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -24
  %peer1 = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %peer1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer1, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @rpm_smd_clk_lock, i32 noundef 0) #8
  %rate = getelementptr i8, ptr %hw, i32 12
  %2 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %enabled = getelementptr inbounds %struct.clk_smd_rpm, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 1, !range !432
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %rate4 = getelementptr inbounds %struct.clk_smd_rpm, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %rate4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rate4, align 4
  %active_only.i = getelementptr inbounds %struct.clk_smd_rpm, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %active_only.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %active_only.i, align 4, !range !432
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  %rate..i = select i1 %tobool.not.i, i32 %7, i32 0
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %peer_rate.0 = phi i32 [ 0, %if.end.if.end5_crit_edge ], [ %7, %if.then3 ]
  %peer_sleep_rate.0 = phi i32 [ 0, %if.end.if.end5_crit_edge ], [ %rate..i, %if.then3 ]
  %branch = getelementptr i8, ptr %hw, i32 -6
  %10 = ptrtoint ptr %branch to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %branch, align 2, !range !432
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %peer_rate.0)
  %tobool7 = icmp ne i32 %peer_rate.0, 0
  %lnot.ext = zext i1 %tobool7 to i32
  %cond = select i1 %tobool6.not, i32 %peer_rate.0, i32 %lnot.ext
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i) #8
  %12 = getelementptr inbounds %struct.clk_smd_rpm_req, ptr %req.i, i32 0, i32 1
  %13 = getelementptr inbounds %struct.clk_smd_rpm_req, ptr %req.i, i32 0, i32 2
  %rpm_key.i = getelementptr i8, ptr %hw, i32 -20
  %14 = ptrtoint ptr %rpm_key.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rpm_key.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #8
  %17 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %req.i, align 4
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 67108864, ptr %12, align 4
  %sub.i = add i32 %cond, 999
  %div.i = udiv i32 %sub.i, 1000
  %19 = tail call i32 @llvm.bswap.i32(i32 %div.i) #8
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %13, align 4
  %rpm.i = getelementptr i8, ptr %hw, i32 16
  %21 = ptrtoint ptr %rpm.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rpm.i, align 4
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr, align 4
  %rpm_clk_id.i = getelementptr i8, ptr %hw, i32 -16
  %25 = ptrtoint ptr %rpm_clk_id.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rpm_clk_id.i, align 4
  %call.i = call i32 @qcom_rpm_smd_write(ptr noundef %22, i32 noundef 0, i32 noundef %24, i32 noundef %26, ptr noundef nonnull %req.i, i32 noundef 12) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.end11, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end11:                                         ; preds = %if.end5
  %27 = ptrtoint ptr %branch to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %branch, align 2, !range !432
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool13.not = icmp eq i8 %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %peer_sleep_rate.0)
  %tobool15 = icmp ne i32 %peer_sleep_rate.0, 0
  %lnot.ext19 = zext i1 %tobool15 to i32
  %cond22 = select i1 %tobool13.not, i32 %peer_sleep_rate.0, i32 %lnot.ext19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i37) #8
  %29 = getelementptr inbounds %struct.clk_smd_rpm_req, ptr %req.i37, i32 0, i32 1
  %30 = getelementptr inbounds %struct.clk_smd_rpm_req, ptr %req.i37, i32 0, i32 2
  %31 = ptrtoint ptr %rpm_key.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rpm_key.i, align 4
  %33 = call i32 @llvm.bswap.i32(i32 %32) #8
  %34 = ptrtoint ptr %req.i37 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %req.i37, align 4
  %35 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 67108864, ptr %29, align 4
  %sub.i39 = add i32 %cond22, 999
  %div.i40 = udiv i32 %sub.i39, 1000
  %36 = call i32 @llvm.bswap.i32(i32 %div.i40) #8
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %30, align 4
  %38 = ptrtoint ptr %rpm.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rpm.i, align 4
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr, align 4
  %42 = ptrtoint ptr %rpm_clk_id.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rpm_clk_id.i, align 4
  %call.i43 = call i32 @qcom_rpm_smd_write(ptr noundef %39, i32 noundef 1, i32 noundef %41, i32 noundef %43, ptr noundef nonnull %req.i37, i32 noundef 12) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i37) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool24.not = icmp eq i32 %call.i43, 0
  br i1 %tobool24.not, label %if.end26, label %if.end11.out_crit_edge

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end26:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %enabled27 = getelementptr i8, ptr %hw, i32 -7
  %44 = ptrtoint ptr %enabled27 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %enabled27, align 1
  br label %out

out:                                              ; preds = %if.end26, %if.end11.out_crit_edge, %if.end5.out_crit_edge, %entry.out_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @rpm_smd_clk_lock) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_smd_rpm_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rate = getelementptr i8, ptr %hw, i32 12
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rate, align 4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_smd_rpm_round_rate(ptr nocapture noundef readnone %hw, i32 noundef returned %rate, ptr nocapture noundef readnone %parent_rate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 %rate
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_smd_rpm_set_rate(ptr nocapture noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  %req.i43 = alloca %struct.clk_smd_rpm_req, align 4
  %req.i = alloca %struct.clk_smd_rpm_req, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -24
  %peer1 = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %peer1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer1, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @rpm_smd_clk_lock, i32 noundef 0) #8
  %enabled = getelementptr i8, ptr %hw, i32 -7
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 1, !range !432
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %active_only.i = getelementptr i8, ptr %hw, i32 -8
  %4 = ptrtoint ptr %active_only.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %active_only.i, align 4, !range !432
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %rate..i = select i1 %tobool.not.i, i32 %rate, i32 0
  %enabled2 = getelementptr inbounds %struct.clk_smd_rpm, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %enabled2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled2, align 1, !range !432
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %rate5 = getelementptr inbounds %struct.clk_smd_rpm, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %rate5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate5, align 4
  %active_only.i40 = getelementptr inbounds %struct.clk_smd_rpm, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %active_only.i40 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %active_only.i40, align 4, !range !432
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i41 = icmp eq i8 %11, 0
  %rate..i42 = select i1 %tobool.not.i41, i32 %9, i32 0
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %peer_rate.0 = phi i32 [ 0, %if.end.if.end6_crit_edge ], [ %9, %if.then4 ]
  %peer_sleep_rate.0 = phi i32 [ 0, %if.end.if.end6_crit_edge ], [ %rate..i42, %if.then4 ]
  %12 = tail call i32 @llvm.umax.i32(i32 %peer_rate.0, i32 %rate)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i) #8
  %13 = getelementptr inbounds %struct.clk_smd_rpm_req, ptr %req.i, i32 0, i32 1
  %14 = getelementptr inbounds %struct.clk_smd_rpm_req, ptr %req.i, i32 0, i32 2
  %rpm_key.i = getelementptr i8, ptr %hw, i32 -20
  %15 = ptrtoint ptr %rpm_key.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rpm_key.i, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  %18 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %req.i, align 4
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 67108864, ptr %13, align 4
  %sub.i = add i32 %12, 999
  %div.i = udiv i32 %sub.i, 1000
  %20 = tail call i32 @llvm.bswap.i32(i32 %div.i) #8
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %14, align 4
  %rpm.i = getelementptr i8, ptr %hw, i32 16
  %22 = ptrtoint ptr %rpm.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rpm.i, align 4
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr, align 4
  %rpm_clk_id.i = getelementptr i8, ptr %hw, i32 -16
  %26 = ptrtoint ptr %rpm_clk_id.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rpm_clk_id.i, align 4
  %call.i = call i32 @qcom_rpm_smd_write(ptr noundef %23, i32 noundef 0, i32 noundef %25, i32 noundef %27, ptr noundef nonnull %req.i, i32 noundef 12) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end10:                                         ; preds = %if.end6
  %28 = call i32 @llvm.umax.i32(i32 %rate..i, i32 %peer_sleep_rate.0)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i43) #8
  %29 = getelementptr inbounds %struct.clk_smd_rpm_req, ptr %req.i43, i32 0, i32 1
  %30 = getelementptr inbounds %struct.clk_smd_rpm_req, ptr %req.i43, i32 0, i32 2
  %31 = ptrtoint ptr %rpm_key.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rpm_key.i, align 4
  %33 = call i32 @llvm.bswap.i32(i32 %32) #8
  %34 = ptrtoint ptr %req.i43 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %req.i43, align 4
  %35 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 67108864, ptr %29, align 4
  %sub.i45 = add i32 %28, 999
  %div.i46 = udiv i32 %sub.i45, 1000
  %36 = call i32 @llvm.bswap.i32(i32 %div.i46) #8
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %30, align 4
  %38 = ptrtoint ptr %rpm.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rpm.i, align 4
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr, align 4
  %42 = ptrtoint ptr %rpm_clk_id.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rpm_clk_id.i, align 4
  %call.i49 = call i32 @qcom_rpm_smd_write(ptr noundef %39, i32 noundef 1, i32 noundef %41, i32 noundef %43, ptr noundef nonnull %req.i43, i32 noundef 12) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i43) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %tobool18.not = icmp eq i32 %call.i49, 0
  br i1 %tobool18.not, label %if.end20, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end20:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %rate21 = getelementptr i8, ptr %hw, i32 12
  %44 = ptrtoint ptr %rate21 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %rate, ptr %rate21, align 4
  br label %out

out:                                              ; preds = %if.end20, %if.end10.out_crit_edge, %if.end6.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end6.out_crit_edge ], [ %call.i49, %if.end10.out_crit_edge ], [ 0, %if.end20 ], [ 0, %entry.out_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @rpm_smd_clk_lock) #8
  ret i32 %ret.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 559)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 559)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !49, !51, !53, !54, !55, !56, !58, !60, !61, !62, !63, !64, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !96, !98, !100, !102, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !150, !152, !153, !154, !155, !157, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !175, !177, !178, !179, !180, !182, !183, !184, !185, !187, !188, !189, !190, !192, !194, !196, !197, !198, !199, !201, !202, !203, !204, !206, !207, !208, !209, !211, !212, !213, !214, !216, !217, !218, !219, !221, !222, !223, !224, !226, !228, !230, !231, !232, !233, !235, !237, !239, !240, !241, !242, !244, !245, !246, !247, !249, !251, !253, !254, !256, !258, !260, !261, !262, !263, !265, !266, !267, !268, !270, !271, !272, !273, !275, !277, !279, !280, !281, !282, !284, !286, !288, !289, !290, !291, !293, !294, !295, !296, !298, !299, !300, !301, !303, !305, !307, !308, !310, !311, !313, !314, !315, !316, !318, !319, !320, !321, !323, !324, !325, !326, !328, !330, !332, !333, !335, !336, !338, !339, !341, !342, !343, !344, !346, !347, !349, !350, !351, !352, !354, !355, !357, !358, !359, !360, !362, !363, !364, !365, !367, !368, !369, !370, !372, !373, !374, !375, !377, !378, !379, !380, !382, !383, !384, !385, !387, !388, !389, !390, !392, !393, !394, !395, !397, !399, !401, !402, !404, !406, !408, !409, !410, !412, !413, !414, !415, !417, !419, !421}
!llvm.module.flags = !{!423, !424, !425, !426, !427, !428, !429, !430}
!llvm.ident = !{!431}

!0 = !{ptr @__initcall__kmod_clk_smd_rpm__179_1226_rpm_smd_clk_init1, !1, !"__initcall__kmod_clk_smd_rpm__179_1226_rpm_smd_clk_init1", i1 false, i1 false}
!1 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 1226, i32 1}
!2 = !{ptr @__exitcall_rpm_smd_clk_exit, !3, !"__exitcall_rpm_smd_clk_exit", i1 false, i1 false}
!3 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 1232, i32 1}
!4 = !{ptr @__UNIQUE_ID_description180, !5, !"__UNIQUE_ID_description180", i1 false, i1 false}
!5 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 1234, i32 1}
!6 = !{ptr @__UNIQUE_ID_file181, !7, !"__UNIQUE_ID_file181", i1 false, i1 false}
!7 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 1235, i32 1}
!8 = !{ptr @__UNIQUE_ID_license182, !7, !"__UNIQUE_ID_license182", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_alias183, !10, !"__UNIQUE_ID_alias183", i1 false, i1 false}
!10 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 1236, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 1216, i32 11}
!13 = !{ptr @rpm_smd_clk_driver, !14, !"rpm_smd_clk_driver", i1 false, i1 false}
!14 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 1214, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 1168, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @rpm_smd_clk_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @rpm_smd_clk_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 1210, i32 2}
!25 = !{ptr @rpm_smd_clk_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @rpm_smd_clk_probe._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 386, i32 3}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @clk_smd_rpm_enable_scaling._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @clk_smd_rpm_enable_scaling._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 394, i32 3}
!34 = !{ptr @clk_smd_rpm_enable_scaling._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @clk_smd_rpm_enable_scaling._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 398, i32 2}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @clk_smd_rpm_enable_scaling.__UNIQUE_ID_ddebug178, !37, !"__UNIQUE_ID_ddebug178", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 1151, i32 3}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @qcom_smdrpm_clk_hw_get._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @qcom_smdrpm_clk_hw_get._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @rpm_smd_clk_match_table, !46, !"rpm_smd_clk_match_table", i1 false, i1 false}
!46 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 1123, i32 34}
!47 = !{ptr @rpm_clk_mdm9607, !48, !"rpm_clk_mdm9607", i1 false, i1 false}
!48 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 928, i32 38}
!49 = !{ptr @mdm9607_clks, !50, !"mdm9607_clks", i1 false, i1 false}
!50 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 911, i32 28}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 860, i32 1}
!53 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @sdm660_bi_tcxo, !52, !"sdm660_bi_tcxo", i1 false, i1 false}
!56 = !{ptr @clk_smd_rpm_branch_ops, !57, !"clk_smd_rpm_branch_ops", i1 false, i1 false}
!57 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 410, i32 29}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 158, i32 8}
!60 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @rpm_smd_clk_lock, !59, !"rpm_smd_clk_lock", i1 false, i1 false}
!62 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @sdm660_bi_tcxo_a, !52, !"sdm660_bi_tcxo_a", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 416, i32 1}
!66 = !{ptr @msm8916_pcnoc_clk, !65, !"msm8916_pcnoc_clk", i1 false, i1 false}
!67 = !{ptr @clk_smd_rpm_ops, !68, !"clk_smd_rpm_ops", i1 false, i1 false}
!68 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 402, i32 29}
!69 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @msm8916_pcnoc_a_clk, !65, !"msm8916_pcnoc_a_clk", i1 false, i1 false}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 418, i32 1}
!73 = !{ptr @msm8916_bimc_clk, !72, !"msm8916_bimc_clk", i1 false, i1 false}
!74 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @msm8916_bimc_a_clk, !72, !"msm8916_bimc_a_clk", i1 false, i1 false}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 419, i32 1}
!78 = !{ptr @msm8916_qdss_clk, !77, !"msm8916_qdss_clk", i1 false, i1 false}
!79 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @msm8916_qdss_a_clk, !77, !"msm8916_qdss_a_clk", i1 false, i1 false}
!81 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 420, i32 1}
!83 = !{ptr @msm8916_bb_clk1, !82, !"msm8916_bb_clk1", i1 false, i1 false}
!84 = !{ptr @.str.48, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @msm8916_bb_clk1_a, !82, !"msm8916_bb_clk1_a", i1 false, i1 false}
!86 = !{ptr @.str.51, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 424, i32 1}
!88 = !{ptr @msm8916_bb_clk1_pin, !87, !"msm8916_bb_clk1_pin", i1 false, i1 false}
!89 = !{ptr @.str.54, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @msm8916_bb_clk1_a_pin, !87, !"msm8916_bb_clk1_a_pin", i1 false, i1 false}
!91 = !{ptr @.str.57, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 779, i32 1}
!93 = !{ptr @qcs404_qpic_clk, !92, !"qcs404_qpic_clk", i1 false, i1 false}
!94 = !{ptr @.str.60, !92, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @qcs404_qpic_a_clk, !92, !"qcs404_qpic_a_clk", i1 false, i1 false}
!96 = !{ptr @rpm_clk_msm8974, !97, !"rpm_clk_msm8974", i1 false, i1 false}
!97 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 560, i32 38}
!98 = !{ptr @msm8974_clks, !99, !"msm8974_clks", i1 false, i1 false}
!99 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 515, i32 28}
!100 = !{ptr @.str.63, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 417, i32 1}
!102 = !{ptr @msm8916_snoc_clk, !101, !"msm8916_snoc_clk", i1 false, i1 false}
!103 = !{ptr @.str.66, !101, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @msm8916_snoc_a_clk, !101, !"msm8916_snoc_a_clk", i1 false, i1 false}
!105 = !{ptr @.str.69, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 497, i32 1}
!107 = !{ptr @msm8974_cnoc_clk, !106, !"msm8974_cnoc_clk", i1 false, i1 false}
!108 = !{ptr @.str.72, !106, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @msm8974_cnoc_a_clk, !106, !"msm8974_cnoc_a_clk", i1 false, i1 false}
!110 = !{ptr @.str.75, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 498, i32 1}
!112 = !{ptr @msm8974_mmssnoc_ahb_clk, !111, !"msm8974_mmssnoc_ahb_clk", i1 false, i1 false}
!113 = !{ptr @.str.78, !111, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @msm8974_mmssnoc_ahb_a_clk, !111, !"msm8974_mmssnoc_ahb_a_clk", i1 false, i1 false}
!115 = !{ptr @.str.81, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 499, i32 1}
!117 = !{ptr @msm8974_gfx3d_clk_src, !116, !"msm8974_gfx3d_clk_src", i1 false, i1 false}
!118 = !{ptr @.str.84, !116, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @msm8974_gfx3d_a_clk_src, !116, !"msm8974_gfx3d_a_clk_src", i1 false, i1 false}
!120 = !{ptr @.str.87, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 500, i32 1}
!122 = !{ptr @msm8974_ocmemgx_clk, !121, !"msm8974_ocmemgx_clk", i1 false, i1 false}
!123 = !{ptr @.str.90, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @msm8974_ocmemgx_a_clk, !121, !"msm8974_ocmemgx_a_clk", i1 false, i1 false}
!125 = !{ptr @.str.93, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 501, i32 1}
!127 = !{ptr @msm8974_cxo_d0, !126, !"msm8974_cxo_d0", i1 false, i1 false}
!128 = !{ptr @.str.96, !126, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @msm8974_cxo_d0_a, !126, !"msm8974_cxo_d0_a", i1 false, i1 false}
!130 = !{ptr @.str.99, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 502, i32 1}
!132 = !{ptr @msm8974_cxo_d1, !131, !"msm8974_cxo_d1", i1 false, i1 false}
!133 = !{ptr @.str.102, !131, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @msm8974_cxo_d1_a, !131, !"msm8974_cxo_d1_a", i1 false, i1 false}
!135 = !{ptr @.str.105, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 503, i32 1}
!137 = !{ptr @msm8974_cxo_a0, !136, !"msm8974_cxo_a0", i1 false, i1 false}
!138 = !{ptr @.str.108, !136, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @msm8974_cxo_a0_a, !136, !"msm8974_cxo_a0_a", i1 false, i1 false}
!140 = !{ptr @.str.111, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 504, i32 1}
!142 = !{ptr @msm8974_cxo_a1, !141, !"msm8974_cxo_a1", i1 false, i1 false}
!143 = !{ptr @.str.114, !141, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @msm8974_cxo_a1_a, !141, !"msm8974_cxo_a1_a", i1 false, i1 false}
!145 = !{ptr @.str.117, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 505, i32 1}
!147 = !{ptr @msm8974_cxo_a2, !146, !"msm8974_cxo_a2", i1 false, i1 false}
!148 = !{ptr @.str.120, !146, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @msm8974_cxo_a2_a, !146, !"msm8974_cxo_a2_a", i1 false, i1 false}
!150 = !{ptr @.str.123, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 507, i32 1}
!152 = !{ptr @msm8974_div_clk1, !151, !"msm8974_div_clk1", i1 false, i1 false}
!153 = !{ptr @.str.126, !151, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @msm8974_div_a_clk1, !151, !"msm8974_div_a_clk1", i1 false, i1 false}
!155 = !{ptr @.str.129, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 508, i32 1}
!157 = !{ptr @msm8974_div_clk2, !156, !"msm8974_div_clk2", i1 false, i1 false}
!158 = !{ptr @.str.132, !156, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @msm8974_div_a_clk2, !156, !"msm8974_div_a_clk2", i1 false, i1 false}
!160 = !{ptr @.str.135, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 506, i32 1}
!162 = !{ptr @msm8974_diff_clk, !161, !"msm8974_diff_clk", i1 false, i1 false}
!163 = !{ptr @.str.138, !161, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @msm8974_diff_a_clk, !161, !"msm8974_diff_a_clk", i1 false, i1 false}
!165 = !{ptr @.str.141, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 509, i32 1}
!167 = !{ptr @msm8974_cxo_d0_pin, !166, !"msm8974_cxo_d0_pin", i1 false, i1 false}
!168 = !{ptr @.str.144, !166, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @msm8974_cxo_d0_a_pin, !166, !"msm8974_cxo_d0_a_pin", i1 false, i1 false}
!170 = !{ptr @.str.147, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 510, i32 1}
!172 = !{ptr @msm8974_cxo_d1_pin, !171, !"msm8974_cxo_d1_pin", i1 false, i1 false}
!173 = !{ptr @.str.150, !171, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @msm8974_cxo_d1_a_pin, !171, !"msm8974_cxo_d1_a_pin", i1 false, i1 false}
!175 = !{ptr @.str.153, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 511, i32 1}
!177 = !{ptr @msm8974_cxo_a0_pin, !176, !"msm8974_cxo_a0_pin", i1 false, i1 false}
!178 = !{ptr @.str.156, !176, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @msm8974_cxo_a0_a_pin, !176, !"msm8974_cxo_a0_a_pin", i1 false, i1 false}
!180 = !{ptr @.str.159, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 512, i32 1}
!182 = !{ptr @msm8974_cxo_a1_pin, !181, !"msm8974_cxo_a1_pin", i1 false, i1 false}
!183 = !{ptr @.str.162, !181, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @msm8974_cxo_a1_a_pin, !181, !"msm8974_cxo_a1_a_pin", i1 false, i1 false}
!185 = !{ptr @.str.165, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 513, i32 1}
!187 = !{ptr @msm8974_cxo_a2_pin, !186, !"msm8974_cxo_a2_pin", i1 false, i1 false}
!188 = !{ptr @.str.168, !186, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @msm8974_cxo_a2_a_pin, !186, !"msm8974_cxo_a2_a_pin", i1 false, i1 false}
!190 = !{ptr @rpm_clk_msm8916, !191, !"rpm_clk_msm8916", i1 false, i1 false}
!191 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 456, i32 38}
!192 = !{ptr @msm8916_clks, !193, !"msm8916_clks", i1 false, i1 false}
!193 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 429, i32 28}
!194 = !{ptr @.str.171, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 421, i32 1}
!196 = !{ptr @msm8916_bb_clk2, !195, !"msm8916_bb_clk2", i1 false, i1 false}
!197 = !{ptr @.str.174, !195, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @msm8916_bb_clk2_a, !195, !"msm8916_bb_clk2_a", i1 false, i1 false}
!199 = !{ptr @.str.177, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 422, i32 1}
!201 = !{ptr @msm8916_rf_clk1, !200, !"msm8916_rf_clk1", i1 false, i1 false}
!202 = !{ptr @.str.180, !200, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @msm8916_rf_clk1_a, !200, !"msm8916_rf_clk1_a", i1 false, i1 false}
!204 = !{ptr @.str.183, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 423, i32 1}
!206 = !{ptr @msm8916_rf_clk2, !205, !"msm8916_rf_clk2", i1 false, i1 false}
!207 = !{ptr @.str.186, !205, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @msm8916_rf_clk2_a, !205, !"msm8916_rf_clk2_a", i1 false, i1 false}
!209 = !{ptr @.str.189, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 425, i32 1}
!211 = !{ptr @msm8916_bb_clk2_pin, !210, !"msm8916_bb_clk2_pin", i1 false, i1 false}
!212 = !{ptr @.str.192, !210, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @msm8916_bb_clk2_a_pin, !210, !"msm8916_bb_clk2_a_pin", i1 false, i1 false}
!214 = !{ptr @.str.195, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 426, i32 1}
!216 = !{ptr @msm8916_rf_clk1_pin, !215, !"msm8916_rf_clk1_pin", i1 false, i1 false}
!217 = !{ptr @.str.198, !215, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @msm8916_rf_clk1_a_pin, !215, !"msm8916_rf_clk1_a_pin", i1 false, i1 false}
!219 = !{ptr @.str.201, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 427, i32 1}
!221 = !{ptr @msm8916_rf_clk2_pin, !220, !"msm8916_rf_clk2_pin", i1 false, i1 false}
!222 = !{ptr @.str.204, !220, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @msm8916_rf_clk2_a_pin, !220, !"msm8916_rf_clk2_a_pin", i1 false, i1 false}
!224 = !{ptr @rpm_clk_msm8936, !225, !"rpm_clk_msm8936", i1 false, i1 false}
!225 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 492, i32 38}
!226 = !{ptr @msm8936_clks, !227, !"msm8936_clks", i1 false, i1 false}
!227 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 463, i32 28}
!228 = !{ptr @.str.207, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 461, i32 1}
!230 = !{ptr @msm8936_sysmmnoc_clk, !229, !"msm8936_sysmmnoc_clk", i1 false, i1 false}
!231 = !{ptr @.str.210, !229, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @msm8936_sysmmnoc_a_clk, !229, !"msm8936_sysmmnoc_a_clk", i1 false, i1 false}
!233 = !{ptr @rpm_clk_msm8953, !234, !"rpm_clk_msm8953", i1 false, i1 false}
!234 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 964, i32 38}
!235 = !{ptr @msm8953_clks, !236, !"msm8953_clks", i1 false, i1 false}
!236 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 933, i32 28}
!237 = !{ptr @.str.213, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 567, i32 1}
!239 = !{ptr @msm8976_ipa_clk, !238, !"msm8976_ipa_clk", i1 false, i1 false}
!240 = !{ptr @.str.216, !238, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @msm8976_ipa_a_clk, !238, !"msm8976_ipa_a_clk", i1 false, i1 false}
!242 = !{ptr @.str.219, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 602, i32 1}
!244 = !{ptr @msm8992_ln_bb_clk, !243, !"msm8992_ln_bb_clk", i1 false, i1 false}
!245 = !{ptr @.str.222, !243, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @msm8992_ln_bb_a_clk, !243, !"msm8992_ln_bb_a_clk", i1 false, i1 false}
!247 = !{ptr @rpm_clk_msm8976, !248, !"rpm_clk_msm8976", i1 false, i1 false}
!248 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 596, i32 38}
!249 = !{ptr @msm8976_clks, !250, !"msm8976_clks", i1 false, i1 false}
!250 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 569, i32 28}
!251 = !{ptr @msm8976_mmssnoc_ahb_clk, !252, !"msm8976_mmssnoc_ahb_clk", i1 false, i1 false}
!252 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 565, i32 1}
!253 = !{ptr @msm8976_mmssnoc_ahb_a_clk, !252, !"msm8976_mmssnoc_ahb_a_clk", i1 false, i1 false}
!254 = !{ptr @rpm_clk_msm8992, !255, !"rpm_clk_msm8992", i1 false, i1 false}
!255 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 656, i32 38}
!256 = !{ptr @msm8992_clks, !257, !"msm8992_clks", i1 false, i1 false}
!257 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 607, i32 28}
!258 = !{ptr @.str.229, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 604, i32 1}
!260 = !{ptr @msm8992_ce1_clk, !259, !"msm8992_ce1_clk", i1 false, i1 false}
!261 = !{ptr @.str.232, !259, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @msm8992_ce1_a_clk, !259, !"msm8992_ce1_a_clk", i1 false, i1 false}
!263 = !{ptr @.str.235, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 601, i32 1}
!265 = !{ptr @msm8992_div_clk3, !264, !"msm8992_div_clk3", i1 false, i1 false}
!266 = !{ptr @.str.238, !264, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @msm8992_div_clk3_a, !264, !"msm8992_div_clk3_a", i1 false, i1 false}
!268 = !{ptr @.str.241, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 605, i32 1}
!270 = !{ptr @msm8992_ce2_clk, !269, !"msm8992_ce2_clk", i1 false, i1 false}
!271 = !{ptr @.str.244, !269, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @msm8992_ce2_a_clk, !269, !"msm8992_ce2_a_clk", i1 false, i1 false}
!273 = !{ptr @rpm_clk_msm8994, !274, !"rpm_clk_msm8994", i1 false, i1 false}
!274 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 714, i32 38}
!275 = !{ptr @msm8994_clks, !276, !"msm8994_clks", i1 false, i1 false}
!276 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 663, i32 28}
!277 = !{ptr @.str.247, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 661, i32 1}
!279 = !{ptr @msm8994_ce3_clk, !278, !"msm8994_ce3_clk", i1 false, i1 false}
!280 = !{ptr @.str.250, !278, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @msm8994_ce3_a_clk, !278, !"msm8994_ce3_a_clk", i1 false, i1 false}
!282 = !{ptr @rpm_clk_msm8996, !283, !"rpm_clk_msm8996", i1 false, i1 false}
!283 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 773, i32 38}
!284 = !{ptr @msm8996_clks, !285, !"msm8996_clks", i1 false, i1 false}
!285 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 726, i32 28}
!286 = !{ptr @.str.253, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 721, i32 1}
!288 = !{ptr @msm8996_aggre1_noc_clk, !287, !"msm8996_aggre1_noc_clk", i1 false, i1 false}
!289 = !{ptr @.str.256, !287, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @msm8996_aggre1_noc_a_clk, !287, !"msm8996_aggre1_noc_a_clk", i1 false, i1 false}
!291 = !{ptr @.str.259, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 723, i32 1}
!293 = !{ptr @msm8996_aggre2_noc_clk, !292, !"msm8996_aggre2_noc_clk", i1 false, i1 false}
!294 = !{ptr @.str.262, !292, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @msm8996_aggre2_noc_a_clk, !292, !"msm8996_aggre2_noc_a_clk", i1 false, i1 false}
!296 = !{ptr @.str.265, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 719, i32 1}
!298 = !{ptr @msm8996_mmssnoc_axi_rpm_clk, !297, !"msm8996_mmssnoc_axi_rpm_clk", i1 false, i1 false}
!299 = !{ptr @.str.268, !297, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @msm8996_mmssnoc_axi_rpm_a_clk, !297, !"msm8996_mmssnoc_axi_rpm_a_clk", i1 false, i1 false}
!301 = !{ptr @rpm_clk_msm8998, !302, !"rpm_clk_msm8998", i1 false, i1 false}
!302 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 855, i32 38}
!303 = !{ptr @msm8998_clks, !304, !"msm8998_clks", i1 false, i1 false}
!304 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 816, i32 28}
!305 = !{ptr @msm8998_aggre1_noc_clk, !306, !"msm8998_aggre1_noc_clk", i1 false, i1 false}
!306 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 810, i32 1}
!307 = !{ptr @msm8998_aggre1_noc_a_clk, !306, !"msm8998_aggre1_noc_a_clk", i1 false, i1 false}
!308 = !{ptr @msm8998_aggre2_noc_clk, !309, !"msm8998_aggre2_noc_clk", i1 false, i1 false}
!309 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 812, i32 1}
!310 = !{ptr @msm8998_aggre2_noc_a_clk, !309, !"msm8998_aggre2_noc_a_clk", i1 false, i1 false}
!311 = !{ptr @.str.279, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 808, i32 1}
!313 = !{ptr @msm8998_ln_bb_clk3_pin, !312, !"msm8998_ln_bb_clk3_pin", i1 false, i1 false}
!314 = !{ptr @.str.282, !312, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @msm8998_ln_bb_clk3_a_pin, !312, !"msm8998_ln_bb_clk3_a_pin", i1 false, i1 false}
!316 = !{ptr @.str.285, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 814, i32 1}
!318 = !{ptr @msm8998_rf_clk3, !317, !"msm8998_rf_clk3", i1 false, i1 false}
!319 = !{ptr @.str.288, !317, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @msm8998_rf_clk3_a, !317, !"msm8998_rf_clk3_a", i1 false, i1 false}
!321 = !{ptr @.str.291, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 815, i32 1}
!323 = !{ptr @msm8998_rf_clk3_pin, !322, !"msm8998_rf_clk3_pin", i1 false, i1 false}
!324 = !{ptr @.str.294, !322, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @msm8998_rf_clk3_a_pin, !322, !"msm8998_rf_clk3_a_pin", i1 false, i1 false}
!326 = !{ptr @rpm_clk_qcm2290, !327, !"rpm_clk_qcm2290", i1 false, i1 false}
!327 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 1118, i32 38}
!328 = !{ptr @qcm2290_clks, !329, !"qcm2290_clks", i1 false, i1 false}
!329 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 1077, i32 28}
!330 = !{ptr @sm6125_snoc_clk, !331, !"sm6125_snoc_clk", i1 false, i1 false}
!331 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 971, i32 1}
!332 = !{ptr @sm6125_snoc_a_clk, !331, !"sm6125_snoc_a_clk", i1 false, i1 false}
!333 = !{ptr @sm6125_qdss_clk, !334, !"sm6125_qdss_clk", i1 false, i1 false}
!334 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 972, i32 1}
!335 = !{ptr @sm6125_qdss_a_clk, !334, !"sm6125_qdss_a_clk", i1 false, i1 false}
!336 = !{ptr @sm6125_cnoc_clk, !337, !"sm6125_cnoc_clk", i1 false, i1 false}
!337 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 970, i32 1}
!338 = !{ptr @sm6125_cnoc_a_clk, !337, !"sm6125_cnoc_a_clk", i1 false, i1 false}
!339 = !{ptr @.str.309, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 1074, i32 1}
!341 = !{ptr @qcm2290_bimc_gpu_clk, !340, !"qcm2290_bimc_gpu_clk", i1 false, i1 false}
!342 = !{ptr @.str.312, !340, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @qcm2290_bimc_gpu_a_clk, !340, !"qcm2290_bimc_gpu_a_clk", i1 false, i1 false}
!344 = !{ptr @qcm2290_qpic_clk, !345, !"qcm2290_qpic_clk", i1 false, i1 false}
!345 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 1069, i32 1}
!346 = !{ptr @qcm2290_qpic_a_clk, !345, !"qcm2290_qpic_a_clk", i1 false, i1 false}
!347 = !{ptr @.str.319, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 1066, i32 1}
!349 = !{ptr @qcm2290_ln_bb_clk2, !348, !"qcm2290_ln_bb_clk2", i1 false, i1 false}
!350 = !{ptr @.str.322, !348, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @qcm2290_ln_bb_clk2_a, !348, !"qcm2290_ln_bb_clk2_a", i1 false, i1 false}
!352 = !{ptr @qcm2290_rf_clk3, !353, !"qcm2290_rf_clk3", i1 false, i1 false}
!353 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 1067, i32 1}
!354 = !{ptr @qcm2290_rf_clk3_a, !353, !"qcm2290_rf_clk3_a", i1 false, i1 false}
!355 = !{ptr @.str.329, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 974, i32 1}
!357 = !{ptr @sm6125_qup_clk, !356, !"sm6125_qup_clk", i1 false, i1 false}
!358 = !{ptr @.str.332, !356, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @sm6125_qup_a_clk, !356, !"sm6125_qup_a_clk", i1 false, i1 false}
!360 = !{ptr @.str.335, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 976, i32 1}
!362 = !{ptr @sm6125_mmrt_clk, !361, !"sm6125_mmrt_clk", i1 false, i1 false}
!363 = !{ptr @.str.338, !361, !"<string literal>", i1 false, i1 false}
!364 = !{ptr @sm6125_mmrt_a_clk, !361, !"sm6125_mmrt_a_clk", i1 false, i1 false}
!365 = !{ptr @.str.341, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 975, i32 1}
!367 = !{ptr @sm6125_mmnrt_clk, !366, !"sm6125_mmnrt_clk", i1 false, i1 false}
!368 = !{ptr @.str.344, !366, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @sm6125_mmnrt_a_clk, !366, !"sm6125_mmnrt_a_clk", i1 false, i1 false}
!370 = !{ptr @.str.347, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 977, i32 1}
!372 = !{ptr @sm6125_snoc_periph_clk, !371, !"sm6125_snoc_periph_clk", i1 false, i1 false}
!373 = !{ptr @.str.350, !371, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @sm6125_snoc_periph_a_clk, !371, !"sm6125_snoc_periph_a_clk", i1 false, i1 false}
!375 = !{ptr @.str.353, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 979, i32 1}
!377 = !{ptr @sm6125_snoc_lpass_clk, !376, !"sm6125_snoc_lpass_clk", i1 false, i1 false}
!378 = !{ptr @.str.356, !376, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @sm6125_snoc_lpass_a_clk, !376, !"sm6125_snoc_lpass_a_clk", i1 false, i1 false}
!380 = !{ptr @.str.359, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 1070, i32 1}
!382 = !{ptr @qcm2290_hwkm_clk, !381, !"qcm2290_hwkm_clk", i1 false, i1 false}
!383 = !{ptr @.str.362, !381, !"<string literal>", i1 false, i1 false}
!384 = !{ptr @qcm2290_hwkm_a_clk, !381, !"qcm2290_hwkm_a_clk", i1 false, i1 false}
!385 = !{ptr @.str.365, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 1071, i32 1}
!387 = !{ptr @qcm2290_pka_clk, !386, !"qcm2290_pka_clk", i1 false, i1 false}
!388 = !{ptr @.str.368, !386, !"<string literal>", i1 false, i1 false}
!389 = !{ptr @qcm2290_pka_a_clk, !386, !"qcm2290_pka_a_clk", i1 false, i1 false}
!390 = !{ptr @.str.371, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 1072, i32 1}
!392 = !{ptr @qcm2290_cpuss_gnoc_clk, !391, !"qcm2290_cpuss_gnoc_clk", i1 false, i1 false}
!393 = !{ptr @.str.374, !391, !"<string literal>", i1 false, i1 false}
!394 = !{ptr @qcm2290_cpuss_gnoc_a_clk, !391, !"qcm2290_cpuss_gnoc_a_clk", i1 false, i1 false}
!395 = !{ptr @rpm_clk_qcs404, !396, !"rpm_clk_qcs404", i1 false, i1 false}
!396 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 803, i32 38}
!397 = !{ptr @qcs404_clks, !398, !"qcs404_clks", i1 false, i1 false}
!398 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 782, i32 28}
!399 = !{ptr @qcs404_bimc_gpu_clk, !400, !"qcs404_bimc_gpu_clk", i1 false, i1 false}
!400 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 778, i32 1}
!401 = !{ptr @qcs404_bimc_gpu_a_clk, !400, !"qcs404_bimc_gpu_a_clk", i1 false, i1 false}
!402 = !{ptr @rpm_clk_sdm660, !403, !"rpm_clk_sdm660", i1 false, i1 false}
!403 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 906, i32 38}
!404 = !{ptr @sdm660_clks, !405, !"sdm660_clks", i1 false, i1 false}
!405 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 865, i32 28}
!406 = !{ptr @sdm660_ln_bb_clk3_pin, !407, !"sdm660_ln_bb_clk3_pin", i1 false, i1 false}
!407 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 863, i32 1}
!408 = !{ptr @.str.383, !407, !"<string literal>", i1 false, i1 false}
!409 = !{ptr @sdm660_ln_bb_clk3_pin_a, !407, !"sdm660_ln_bb_clk3_pin_a", i1 false, i1 false}
!410 = !{ptr @.str.386, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 862, i32 1}
!412 = !{ptr @sdm660_ln_bb_clk3, !411, !"sdm660_ln_bb_clk3", i1 false, i1 false}
!413 = !{ptr @.str.389, !411, !"<string literal>", i1 false, i1 false}
!414 = !{ptr @sdm660_ln_bb_clk3_a, !411, !"sdm660_ln_bb_clk3_a", i1 false, i1 false}
!415 = !{ptr @rpm_clk_sm6115, !416, !"rpm_clk_sm6115", i1 false, i1 false}
!416 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 1060, i32 38}
!417 = !{ptr @sm6115_clks, !418, !"sm6115_clks", i1 false, i1 false}
!418 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 1025, i32 28}
!419 = !{ptr @rpm_clk_sm6125, !420, !"rpm_clk_sm6125", i1 false, i1 false}
!420 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 1019, i32 38}
!421 = !{ptr @sm6125_clks, !422, !"sm6125_clks", i1 false, i1 false}
!422 = !{!"../drivers/clk/qcom/clk-smd-rpm.c", i32 982, i32 28}
!423 = !{i32 1, !"wchar_size", i32 2}
!424 = !{i32 1, !"min_enum_size", i32 4}
!425 = !{i32 8, !"branch-target-enforcement", i32 0}
!426 = !{i32 8, !"sign-return-address", i32 0}
!427 = !{i32 8, !"sign-return-address-all", i32 0}
!428 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!429 = !{i32 7, !"uwtable", i32 1}
!430 = !{i32 7, !"frame-pointer", i32 2}
!431 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!432 = !{i8 0, i8 2}
!433 = !{i64 2148959735, i64 2148959740, i64 2148959753, i64 2148959797, i64 2148959831, i64 2148959852}
