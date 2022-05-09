; ModuleID = '/llk/IR_all_yes/drivers/soc/qcom/spm.c_pt.bc'
source_filename = "../drivers/soc/qcom/spm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.spm_reg_data = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [64 x i8], [4 x i8] }
%struct.spm_driver_data = type { ptr, ptr }
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

@__initcall__kmod_spm__183_277_qcom_spm_init3 = internal global ptr @qcom_spm_init, section ".initcall3.init", align 4
@__UNIQUE_ID_file184 = internal constant [30 x i8] c"spm.file=drivers/soc/qcom/spm\00", section ".modinfo", align 1
@__UNIQUE_ID_license185 = internal constant [19 x i8] c"spm.license=GPL v2\00", section ".modinfo", align 1
@spm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @spm_dev_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @spm_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qcom_spm\00", [23 x i8] zeroinitializer }, align 32
@spm_match_table = internal constant { [10 x %struct.of_device_id], [504 x i8] } { [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm660-gold-saw2-v4.1-l2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @spm_reg_660_gold_l2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm660-silver-saw2-v4.1-l2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @spm_reg_660_silver_l2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8226-saw2-v2.1-cpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @spm_reg_8226_cpu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8916-saw2-v3.0-cpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @spm_reg_8916_cpu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8974-saw2-v2.1-cpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @spm_reg_8974_8084_cpu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8998-gold-saw2-v4.1-l2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @spm_reg_8998_gold_l2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8998-silver-saw2-v4.1-l2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @spm_reg_8998_silver_l2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,apq8084-saw2-v2.1-cpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @spm_reg_8974_8084_cpu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,apq8064-saw2-v1.1-cpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @spm_reg_8064_cpu }, %struct.of_device_id zeroinitializer], [504 x i8] zeroinitializer }, align 32
@spm_reg_660_gold_l2 = internal constant { %struct.spm_reg_data, [60 x i8] } { %struct.spm_reg_data { ptr @spm_reg_offset_v4_1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 16842801, i32 72877144, [64 x i8] zeroinitializer, [4 x i8] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@spm_reg_660_silver_l2 = internal constant { %struct.spm_reg_data, [60 x i8] } { %struct.spm_reg_data { ptr @spm_reg_offset_v4_1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 16891953, i32 72877144, [64 x i8] zeroinitializer, [4 x i8] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@spm_reg_8998_gold_l2 = internal constant { %struct.spm_reg_data, [60 x i8] } { %struct.spm_reg_data { ptr @spm_reg_offset_v4_1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 16842801, i32 74450032, [64 x i8] zeroinitializer, [4 x i8] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@spm_reg_8998_silver_l2 = internal constant { %struct.spm_reg_data, [60 x i8] } { %struct.spm_reg_data { ptr @spm_reg_offset_v4_1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 16842801, i32 69207072, [64 x i8] zeroinitializer, [4 x i8] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@spm_reg_offset_v4_1 = internal constant { [12 x i16], [40 x i8] } { [12 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 2308, i16 2312], [40 x i8] zeroinitializer }, align 32
@spm_reg_offset_v2_1 = internal constant { [12 x i16], [40 x i8] } { [12 x i16] [i16 8, i16 48, i16 52, i16 0, i16 0, i16 0, i16 0, i16 128, i16 0, i16 0, i16 0, i16 0], [40 x i8] zeroinitializer }, align 32
@spm_reg_8226_cpu = internal constant { { ptr, i32, i32, i32, [2 x i32], i32, i32, <{ [25 x i8], [39 x i8] }>, [4 x i8] }, [60 x i8] } { { ptr, i32, i32, i32, [2 x i32], i32, i32, <{ [25 x i8], [39 x i8] }>, [4 x i8] } { ptr @spm_reg_offset_v2_1, i32 0, i32 1007691776, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, <{ [25 x i8], [39 x i8] }> <{ [25 x i8] c"`\03`\0B\0F \10\800\90[`\03`;vv\0B\94[\80\10&0\0F", [39 x i8] zeroinitializer }>, [4 x i8] c"\00\00\05\00" }, [60 x i8] zeroinitializer }, align 32
@spm_reg_offset_v3_0 = internal constant { [12 x i16], [40 x i8] } { [12 x i16] [i16 8, i16 48, i16 52, i16 0, i16 0, i16 0, i16 0, i16 1024, i16 0, i16 0, i16 0, i16 0], [40 x i8] zeroinitializer }, align 32
@spm_reg_8916_cpu = internal constant { { ptr, i32, i32, i32, [2 x i32], i32, i32, <{ [25 x i8], [39 x i8] }>, [4 x i8] }, [60 x i8] } { { ptr, i32, i32, i32, [2 x i32], i32, i32, <{ [25 x i8], [39 x i8] }>, [4 x i8] } { ptr @spm_reg_offset_v3_0, i32 1, i32 1007691776, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, <{ [25 x i8], [39 x i8] }> <{ [25 x i8] c"`\03`\0B\0F \10\800\90[`\03`;vv\0B\94[\80\10&0\0F", [39 x i8] zeroinitializer }>, [4 x i8] c"\00\00\05\00" }, [60 x i8] zeroinitializer }, align 32
@spm_reg_8974_8084_cpu = internal constant { { ptr, i32, i32, i32, [2 x i32], i32, i32, <{ [21 x i8], [43 x i8] }>, [4 x i8] }, [60 x i8] } { { ptr, i32, i32, i32, [2 x i32], i32, i32, <{ [21 x i8], [43 x i8] }>, [4 x i8] } { ptr @spm_reg_offset_v2_1, i32 1, i32 1007691776, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, <{ [21 x i8], [43 x i8] }> <{ [21 x i8] c"\03\0B\0F\00 \80\10\E8[\03;\E8[\82\10\0B0\06&0\0F", [43 x i8] zeroinitializer }>, [4 x i8] c"\00\00\03\00" }, [60 x i8] zeroinitializer }, align 32
@spm_reg_offset_v1_1 = internal constant { [12 x i16], [40 x i8] } { [12 x i16] [i16 8, i16 32, i16 0, i16 36, i16 40, i16 44, i16 0, i16 128, i16 0, i16 0, i16 0, i16 0], [40 x i8] zeroinitializer }, align 32
@spm_reg_8064_cpu = internal constant { { ptr, i32, i32, i32, [2 x i32], i32, i32, <{ [16 x i8], [48 x i8] }>, [4 x i8] }, [60 x i8] } { { ptr, i32, i32, i32, [2 x i32], i32, i32, <{ [16 x i8], [48 x i8] }>, [4 x i8] } { ptr @spm_reg_offset_v1_1, i32 31, i32 0, i32 33685508, [2 x i32] [i32 8650908, i32 10747932], i32 0, i32 0, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\03\0F\00$T\10\09\03\01\10T0\0C$0\0F", [48 x i8] zeroinitializer }>, [4 x i8] c"\00\00\02\00" }, [60 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [11 x i8] c"spm_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 265, i32 31 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 268, i32 11 }
@___asan_gen_.11 = private unnamed_addr constant [16 x i8] c"spm_match_table\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 191, i32 34 }
@___asan_gen_.14 = private unnamed_addr constant [20 x i8] c"spm_reg_660_gold_l2\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 46, i32 34 }
@___asan_gen_.17 = private unnamed_addr constant [22 x i8] c"spm_reg_660_silver_l2\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 52, i32 34 }
@___asan_gen_.20 = private unnamed_addr constant [21 x i8] c"spm_reg_8998_gold_l2\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 58, i32 34 }
@___asan_gen_.23 = private unnamed_addr constant [23 x i8] c"spm_reg_8998_silver_l2\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 64, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"spm_reg_offset_v4_1\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 41, i32 18 }
@___asan_gen_.29 = private unnamed_addr constant [20 x i8] c"spm_reg_offset_v2_1\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 89, i32 18 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"spm_reg_8226_cpu\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 109, i32 34 }
@___asan_gen_.35 = private unnamed_addr constant [20 x i8] c"spm_reg_offset_v3_0\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 70, i32 18 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"spm_reg_8916_cpu\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 78, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [22 x i8] c"spm_reg_8974_8084_cpu\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 97, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant [20 x i8] c"spm_reg_offset_v1_1\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 120, i32 18 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"spm_reg_8064_cpu\00", align 1
@___asan_gen_.48 = private constant [26 x i8] c"../drivers/soc/qcom/spm.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 130, i32 34 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_file184, ptr @__UNIQUE_ID_license185, ptr @__initcall__kmod_spm__183_277_qcom_spm_init3, ptr @spm_driver, ptr @.str, ptr @spm_match_table, ptr @spm_reg_660_gold_l2, ptr @spm_reg_660_silver_l2, ptr @spm_reg_8998_gold_l2, ptr @spm_reg_8998_silver_l2, ptr @spm_reg_offset_v4_1, ptr @spm_reg_offset_v2_1, ptr @spm_reg_8226_cpu, ptr @spm_reg_offset_v3_0, ptr @spm_reg_8916_cpu, ptr @spm_reg_8974_8084_cpu, ptr @spm_reg_offset_v1_1, ptr @spm_reg_8064_cpu], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spm_match_table to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spm_reg_660_gold_l2 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spm_reg_660_silver_l2 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spm_reg_8998_gold_l2 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spm_reg_8998_silver_l2 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spm_reg_offset_v4_1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spm_reg_offset_v2_1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spm_reg_8226_cpu to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spm_reg_offset_v3_0 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spm_reg_8916_cpu to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spm_reg_8974_8084_cpu to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spm_reg_offset_v1_1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spm_reg_8064_cpu to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @spm_set_low_power_mode(ptr nocapture noundef readonly %drv, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_data = getelementptr inbounds %struct.spm_driver_data, ptr %drv, i32 0, i32 1
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_data, align 4
  %arrayidx = getelementptr %struct.spm_reg_data, ptr %1, i32 0, i32 8, i32 %mode
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %arrayidx.i = getelementptr i16, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %9 to i32
  %add.ptr.i = getelementptr i8, ptr %5, i32 %conv.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !44
  %11 = and i32 %10, 251199487
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %shl = shl nuw nsw i32 %conv, 4
  %or = or i32 %shl, %12
  %or2 = or i32 %or, 1
  %13 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_data, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %arrayidx.i9 = getelementptr i16, ptr %16, i32 1
  %17 = ptrtoint ptr %arrayidx.i9 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx.i9, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not.i = icmp eq i16 %18, 0
  br i1 %tobool.not.i, label %entry.spm_register_write_sync.exit_crit_edge, label %do.body.preheader.i

entry.spm_register_write_sync.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %spm_register_write_sync.exit

do.body.preheader.i:                              ; preds = %entry
  %19 = tail call i32 @llvm.bswap.i32(i32 %or2) #4
  %20 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %drv, align 4
  %conv2.i = zext i16 %18 to i32
  %add.ptr3.i = getelementptr i8, ptr %21, i32 %conv2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %19) #4, !srcloc !45
  %22 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %drv, align 4
  %24 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_data, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %arrayidx74.i = getelementptr i16, ptr %27, i32 1
  %28 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx74.i, align 2
  %conv85.i = zext i16 %29 to i32
  %add.ptr96.i = getelementptr i8, ptr %23, i32 %conv85.i
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr96.i) #4, !srcloc !44
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %or2)
  %cmp7.i = icmp eq i32 %31, %or2
  br i1 %cmp7.i, label %do.body.preheader.i.spm_register_write_sync.exit_crit_edge, label %do.body.preheader.i.do.end.i_crit_edge

do.body.preheader.i.do.end.i_crit_edge:           ; preds = %do.body.preheader.i
  br label %do.end.i

do.body.preheader.i.spm_register_write_sync.exit_crit_edge: ; preds = %do.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %spm_register_write_sync.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.body.preheader.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !46
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #4, !srcloc !47
  %32 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %drv, align 4
  %34 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_data, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %arrayidx3.i = getelementptr i16, ptr %37, i32 1
  %38 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx3.i, align 2
  %conv.i10 = zext i16 %39 to i32
  %add.ptr.i11 = getelementptr i8, ptr %33, i32 %conv.i10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %19) #4, !srcloc !45
  %40 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %drv, align 4
  %42 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_data, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %arrayidx7.i = getelementptr i16, ptr %45, i32 1
  %46 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx7.i, align 2
  %conv8.i = zext i16 %47 to i32
  %add.ptr9.i = getelementptr i8, ptr %41, i32 %conv8.i
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #4, !srcloc !44
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #4
  %cmp.i = icmp eq i32 %49, %or2
  br i1 %cmp.i, label %do.end.i.spm_register_write_sync.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

do.end.i.spm_register_write_sync.exit_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %spm_register_write_sync.exit

spm_register_write_sync.exit:                     ; preds = %do.end.i.spm_register_write_sync.exit_crit_edge, %do.body.preheader.i.spm_register_write_sync.exit_crit_edge, %entry.spm_register_write_sync.exit_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_spm_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @spm_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spm_dev_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #4
  %call3 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call1) #4
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call11 = tail call ptr @of_match_node(ptr noundef nonnull @spm_match_table, ptr noundef %3) #4
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %data = getelementptr inbounds %struct.of_device_id, ptr %call11, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %reg_data = getelementptr inbounds %struct.spm_driver_data, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %reg_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %reg_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %arrayidx = getelementptr i16, ptr %11, i32 7
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %13 to i32
  %add.ptr = getelementptr i8, ptr %9, i32 %conv
  %seq = getelementptr inbounds %struct.spm_reg_data, ptr %5, i32 0, i32 7
  tail call void @__iowrite32_copy(ptr noundef %add.ptr, ptr noundef %seq, i32 noundef 16) #4
  %14 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_data, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %arrayidx.i = getelementptr i16, ptr %17, i32 10
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not.i = icmp eq i16 %19, 0
  br i1 %tobool.not.i, label %if.end14.spm_register_write.exit_crit_edge, label %if.then.i

if.end14.spm_register_write.exit_crit_edge:       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %spm_register_write.exit

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %avs_ctl = getelementptr inbounds %struct.spm_reg_data, ptr %15, i32 0, i32 5
  %20 = ptrtoint ptr %avs_ctl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %avs_ctl, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #4
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  %conv.i = zext i16 %19 to i32
  %add.ptr.i = getelementptr i8, ptr %24, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %22) #4, !srcloc !45
  br label %spm_register_write.exit

spm_register_write.exit:                          ; preds = %if.then.i, %if.end14.spm_register_write.exit_crit_edge
  %25 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_data, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %arrayidx.i67 = getelementptr i16, ptr %28, i32 11
  %29 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx.i67, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool.not.i68 = icmp eq i16 %30, 0
  br i1 %tobool.not.i68, label %spm_register_write.exit.spm_register_write.exit72_crit_edge, label %if.then.i71

spm_register_write.exit.spm_register_write.exit72_crit_edge: ; preds = %spm_register_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %spm_register_write.exit72

if.then.i71:                                      ; preds = %spm_register_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  %avs_limit = getelementptr inbounds %struct.spm_reg_data, ptr %26, i32 0, i32 6
  %31 = ptrtoint ptr %avs_limit to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %avs_limit, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #4
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 4
  %conv.i69 = zext i16 %30 to i32
  %add.ptr.i70 = getelementptr i8, ptr %35, i32 %conv.i69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70, i32 %33) #4, !srcloc !45
  br label %spm_register_write.exit72

spm_register_write.exit72:                        ; preds = %if.then.i71, %spm_register_write.exit.spm_register_write.exit72_crit_edge
  %36 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_data, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %39, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool.not.i74 = icmp eq i16 %41, 0
  br i1 %tobool.not.i74, label %spm_register_write.exit72.spm_register_write.exit78_crit_edge, label %if.then.i77

spm_register_write.exit72.spm_register_write.exit78_crit_edge: ; preds = %spm_register_write.exit72
  call void @__sanitizer_cov_trace_pc() #6
  br label %spm_register_write.exit78

if.then.i77:                                      ; preds = %spm_register_write.exit72
  call void @__sanitizer_cov_trace_pc() #6
  %spm_cfg = getelementptr inbounds %struct.spm_reg_data, ptr %37, i32 0, i32 1
  %42 = ptrtoint ptr %spm_cfg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %spm_cfg, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #4
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i, align 4
  %conv.i75 = zext i16 %41 to i32
  %add.ptr.i76 = getelementptr i8, ptr %46, i32 %conv.i75
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76, i32 %44) #4, !srcloc !45
  br label %spm_register_write.exit78

spm_register_write.exit78:                        ; preds = %if.then.i77, %spm_register_write.exit72.spm_register_write.exit78_crit_edge
  %47 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg_data, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %arrayidx.i80 = getelementptr i16, ptr %50, i32 2
  %51 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx.i80, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool.not.i81 = icmp eq i16 %52, 0
  br i1 %tobool.not.i81, label %spm_register_write.exit78.spm_register_write.exit85_crit_edge, label %if.then.i84

spm_register_write.exit78.spm_register_write.exit85_crit_edge: ; preds = %spm_register_write.exit78
  call void @__sanitizer_cov_trace_pc() #6
  br label %spm_register_write.exit85

if.then.i84:                                      ; preds = %spm_register_write.exit78
  call void @__sanitizer_cov_trace_pc() #6
  %spm_dly = getelementptr inbounds %struct.spm_reg_data, ptr %48, i32 0, i32 2
  %53 = ptrtoint ptr %spm_dly to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %spm_dly, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #4
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call.i, align 4
  %conv.i82 = zext i16 %52 to i32
  %add.ptr.i83 = getelementptr i8, ptr %57, i32 %conv.i82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83, i32 %55) #4, !srcloc !45
  br label %spm_register_write.exit85

spm_register_write.exit85:                        ; preds = %if.then.i84, %spm_register_write.exit78.spm_register_write.exit85_crit_edge
  %58 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reg_data, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %arrayidx.i87 = getelementptr i16, ptr %61, i32 3
  %62 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx.i87, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool.not.i88 = icmp eq i16 %63, 0
  br i1 %tobool.not.i88, label %spm_register_write.exit85.spm_register_write.exit92_crit_edge, label %if.then.i91

spm_register_write.exit85.spm_register_write.exit92_crit_edge: ; preds = %spm_register_write.exit85
  call void @__sanitizer_cov_trace_pc() #6
  br label %spm_register_write.exit92

if.then.i91:                                      ; preds = %spm_register_write.exit85
  call void @__sanitizer_cov_trace_pc() #6
  %pmic_dly = getelementptr inbounds %struct.spm_reg_data, ptr %59, i32 0, i32 3
  %64 = ptrtoint ptr %pmic_dly to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pmic_dly, align 4
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #4
  %67 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %call.i, align 4
  %conv.i89 = zext i16 %63 to i32
  %add.ptr.i90 = getelementptr i8, ptr %68, i32 %conv.i89
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90, i32 %66) #4, !srcloc !45
  br label %spm_register_write.exit92

spm_register_write.exit92:                        ; preds = %if.then.i91, %spm_register_write.exit85.spm_register_write.exit92_crit_edge
  %69 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %reg_data, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %arrayidx.i94 = getelementptr i16, ptr %72, i32 4
  %73 = ptrtoint ptr %arrayidx.i94 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %arrayidx.i94, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %tobool.not.i95 = icmp eq i16 %74, 0
  br i1 %tobool.not.i95, label %spm_register_write.exit92.spm_register_write.exit99_crit_edge, label %if.then.i98

spm_register_write.exit92.spm_register_write.exit99_crit_edge: ; preds = %spm_register_write.exit92
  call void @__sanitizer_cov_trace_pc() #6
  br label %spm_register_write.exit99

if.then.i98:                                      ; preds = %spm_register_write.exit92
  call void @__sanitizer_cov_trace_pc() #6
  %pmic_data = getelementptr inbounds %struct.spm_reg_data, ptr %70, i32 0, i32 4
  %75 = ptrtoint ptr %pmic_data to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pmic_data, align 4
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #4
  %78 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %call.i, align 4
  %conv.i96 = zext i16 %74 to i32
  %add.ptr.i97 = getelementptr i8, ptr %79, i32 %conv.i96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97, i32 %77) #4, !srcloc !45
  br label %spm_register_write.exit99

spm_register_write.exit99:                        ; preds = %if.then.i98, %spm_register_write.exit92.spm_register_write.exit99_crit_edge
  %80 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %reg_data, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %arrayidx.i101 = getelementptr i16, ptr %83, i32 5
  %84 = ptrtoint ptr %arrayidx.i101 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx.i101, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %tobool.not.i102 = icmp eq i16 %85, 0
  br i1 %tobool.not.i102, label %spm_register_write.exit99.spm_register_write.exit106_crit_edge, label %if.then.i105

spm_register_write.exit99.spm_register_write.exit106_crit_edge: ; preds = %spm_register_write.exit99
  call void @__sanitizer_cov_trace_pc() #6
  br label %spm_register_write.exit106

if.then.i105:                                     ; preds = %spm_register_write.exit99
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx27 = getelementptr %struct.spm_reg_data, ptr %81, i32 0, i32 4, i32 1
  %86 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx27, align 4
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #4
  %89 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %call.i, align 4
  %conv.i103 = zext i16 %85 to i32
  %add.ptr.i104 = getelementptr i8, ptr %90, i32 %conv.i103
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104, i32 %88) #4, !srcloc !45
  br label %spm_register_write.exit106

spm_register_write.exit106:                       ; preds = %if.then.i105, %spm_register_write.exit99.spm_register_write.exit106_crit_edge
  %91 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %reg_data, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 4
  %arrayidx30 = getelementptr i16, ptr %94, i32 1
  %95 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %arrayidx30, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %tobool31.not = icmp eq i16 %96, 0
  br i1 %tobool31.not, label %spm_register_write.exit106.cleanup_crit_edge, label %if.then32

spm_register_write.exit106.cleanup_crit_edge:     ; preds = %spm_register_write.exit106
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then32:                                        ; preds = %spm_register_write.exit106
  %arrayidx.i108 = getelementptr %struct.spm_reg_data, ptr %92, i32 0, i32 8, i32 0
  %97 = ptrtoint ptr %arrayidx.i108 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx.i108, align 1
  %conv.i109 = zext i8 %98 to i32
  %99 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %call.i, align 4
  %conv.i.i = zext i16 %96 to i32
  %add.ptr.i.i = getelementptr i8, ptr %100, i32 %conv.i.i
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !44
  %102 = and i32 %101, 251199487
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #4
  %shl.i = shl nuw nsw i32 %conv.i109, 4
  %or.i = or i32 %shl.i, %103
  %or2.i = or i32 %or.i, 1
  %104 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %reg_data, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  %arrayidx.i9.i = getelementptr i16, ptr %107, i32 1
  %108 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %arrayidx.i9.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %109)
  %tobool.not.i.i = icmp eq i16 %109, 0
  br i1 %tobool.not.i.i, label %if.then32.cleanup_crit_edge, label %do.body.preheader.i.i

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body.preheader.i.i:                            ; preds = %if.then32
  %110 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #4
  %111 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %call.i, align 4
  %conv2.i.i = zext i16 %109 to i32
  %add.ptr3.i.i = getelementptr i8, ptr %112, i32 %conv2.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %110) #4, !srcloc !45
  %113 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %call.i, align 4
  %115 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %reg_data, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 4
  %arrayidx74.i.i = getelementptr i16, ptr %118, i32 1
  %119 = ptrtoint ptr %arrayidx74.i.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %arrayidx74.i.i, align 2
  %conv85.i.i = zext i16 %120 to i32
  %add.ptr96.i.i = getelementptr i8, ptr %114, i32 %conv85.i.i
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr96.i.i) #4, !srcloc !44
  %122 = tail call i32 @llvm.bswap.i32(i32 %121) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %or2.i)
  %cmp7.i.i = icmp eq i32 %122, %or2.i
  br i1 %cmp7.i.i, label %do.body.preheader.i.i.cleanup_crit_edge, label %do.body.preheader.i.i.do.end.i.i_crit_edge

do.body.preheader.i.i.do.end.i.i_crit_edge:       ; preds = %do.body.preheader.i.i
  br label %do.end.i.i

do.body.preheader.i.i.cleanup_crit_edge:          ; preds = %do.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %do.body.preheader.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !46
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #4, !srcloc !47
  %123 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %call.i, align 4
  %125 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %reg_data, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %126, align 4
  %arrayidx3.i.i = getelementptr i16, ptr %128, i32 1
  %129 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %arrayidx3.i.i, align 2
  %conv.i10.i = zext i16 %130 to i32
  %add.ptr.i11.i = getelementptr i8, ptr %124, i32 %conv.i10.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %110) #4, !srcloc !45
  %131 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %call.i, align 4
  %133 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %reg_data, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %134, align 4
  %arrayidx7.i.i = getelementptr i16, ptr %136, i32 1
  %137 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %arrayidx7.i.i, align 2
  %conv8.i.i = zext i16 %138 to i32
  %add.ptr9.i.i = getelementptr i8, ptr %132, i32 %conv8.i.i
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i) #4, !srcloc !44
  %140 = tail call i32 @llvm.bswap.i32(i32 %139) #4
  %cmp.i.i = icmp eq i32 %140, %or2.i
  br i1 %cmp.i.i, label %do.end.i.i.cleanup_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i.i

do.end.i.i.cleanup_crit_edge:                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %do.end.i.i.cleanup_crit_edge, %do.body.preheader.i.i.cleanup_crit_edge, %if.then32.cleanup_crit_edge, %spm_register_write.exit106.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then6 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end9.cleanup_crit_edge ], [ 0, %spm_register_write.exit106.cleanup_crit_edge ], [ 0, %if.then32.cleanup_crit_edge ], [ 0, %do.body.preheader.i.i.cleanup_crit_edge ], [ 0, %do.end.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iowrite32_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__initcall__kmod_spm__183_277_qcom_spm_init3, !1, !"__initcall__kmod_spm__183_277_qcom_spm_init3", i1 false, i1 false}
!1 = !{!"../drivers/soc/qcom/spm.c", i32 277, i32 1}
!2 = !{ptr @__UNIQUE_ID_file184, !3, !"__UNIQUE_ID_file184", i1 false, i1 false}
!3 = !{!"../drivers/soc/qcom/spm.c", i32 279, i32 1}
!4 = !{ptr @__UNIQUE_ID_license185, !3, !"__UNIQUE_ID_license185", i1 false, i1 false}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/soc/qcom/spm.c", i32 268, i32 11}
!7 = !{ptr @spm_driver, !8, !"spm_driver", i1 false, i1 false}
!8 = !{!"../drivers/soc/qcom/spm.c", i32 265, i32 31}
!9 = !{ptr @spm_match_table, !10, !"spm_match_table", i1 false, i1 false}
!10 = !{!"../drivers/soc/qcom/spm.c", i32 191, i32 34}
!11 = !{ptr @spm_reg_660_gold_l2, !12, !"spm_reg_660_gold_l2", i1 false, i1 false}
!12 = !{!"../drivers/soc/qcom/spm.c", i32 46, i32 34}
!13 = !{ptr @spm_reg_offset_v4_1, !14, !"spm_reg_offset_v4_1", i1 false, i1 false}
!14 = !{!"../drivers/soc/qcom/spm.c", i32 41, i32 18}
!15 = !{ptr @spm_reg_660_silver_l2, !16, !"spm_reg_660_silver_l2", i1 false, i1 false}
!16 = !{!"../drivers/soc/qcom/spm.c", i32 52, i32 34}
!17 = !{ptr @spm_reg_8226_cpu, !18, !"spm_reg_8226_cpu", i1 false, i1 false}
!18 = !{!"../drivers/soc/qcom/spm.c", i32 109, i32 34}
!19 = !{ptr @spm_reg_offset_v2_1, !20, !"spm_reg_offset_v2_1", i1 false, i1 false}
!20 = !{!"../drivers/soc/qcom/spm.c", i32 89, i32 18}
!21 = !{ptr @spm_reg_8916_cpu, !22, !"spm_reg_8916_cpu", i1 false, i1 false}
!22 = !{!"../drivers/soc/qcom/spm.c", i32 78, i32 34}
!23 = !{ptr @spm_reg_offset_v3_0, !24, !"spm_reg_offset_v3_0", i1 false, i1 false}
!24 = !{!"../drivers/soc/qcom/spm.c", i32 70, i32 18}
!25 = !{ptr @spm_reg_8974_8084_cpu, !26, !"spm_reg_8974_8084_cpu", i1 false, i1 false}
!26 = !{!"../drivers/soc/qcom/spm.c", i32 97, i32 34}
!27 = !{ptr @spm_reg_8998_gold_l2, !28, !"spm_reg_8998_gold_l2", i1 false, i1 false}
!28 = !{!"../drivers/soc/qcom/spm.c", i32 58, i32 34}
!29 = !{ptr @spm_reg_8998_silver_l2, !30, !"spm_reg_8998_silver_l2", i1 false, i1 false}
!30 = !{!"../drivers/soc/qcom/spm.c", i32 64, i32 34}
!31 = !{ptr @spm_reg_8064_cpu, !32, !"spm_reg_8064_cpu", i1 false, i1 false}
!32 = !{!"../drivers/soc/qcom/spm.c", i32 130, i32 34}
!33 = !{ptr @spm_reg_offset_v1_1, !34, !"spm_reg_offset_v1_1", i1 false, i1 false}
!34 = !{!"../drivers/soc/qcom/spm.c", i32 120, i32 18}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i64 1252114}
!45 = !{i64 1251696}
!46 = !{i64 2152916980}
!47 = !{i64 2152916822}
