; ModuleID = '/llk/IR_all_yes/drivers/soc/samsung/exynos5420-pmu.c_pt.bc'
source_filename = "../drivers/soc/samsung/exynos5420-pmu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.exynos_pmu_conf = type { i32, [3 x i8] }
%struct.exynos_pmu_data = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@exynos5420_pmu_config = internal constant { [141 x %struct.exynos_pmu_conf], [280 x i8] } { [141 x %struct.exynos_pmu_conf] [%struct.exynos_pmu_conf { i32 4096, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4100, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4104, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4112, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4116, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4120, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4128, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4132, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4136, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4144, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4148, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4152, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4160, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4164, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4168, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4176, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4180, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4184, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4192, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4196, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4200, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4208, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4212, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4216, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4176, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4180, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4184, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4256, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4272, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4288, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4304, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4352, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4356, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 4364, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4384, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4388, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 4396, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4400, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 4404, [3 x i8] c"\01\01\01" }, %struct.exynos_pmu_conf { i32 4408, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 4416, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4420, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4424, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4428, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4432, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4436, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4440, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4444, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4448, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4452, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4464, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4468, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4472, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4480, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4484, [3 x i8] c"\01\01\01" }, %struct.exynos_pmu_conf { i32 4488, [3 x i8] c"\03\03\00" }, %struct.exynos_pmu_conf { i32 4496, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4500, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 4504, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4512, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4516, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 4528, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4532, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4536, [3 x i8] c"\03\00\03" }, %struct.exynos_pmu_conf { i32 4540, [3 x i8] c"\03\00\03" }, %struct.exynos_pmu_conf { i32 4608, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4612, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4616, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4624, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4628, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4632, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4636, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4640, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4644, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4648, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4652, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4656, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4660, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4672, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4688, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4704, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4736, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4740, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4800, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4864, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4896, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4928, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4932, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4936, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5120, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5124, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5128, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5132, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5136, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5140, [3 x i8] c"\07\07\00" }, %struct.exynos_pmu_conf { i32 5144, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5148, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5152, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5156, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5160, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5164, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5168, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5248, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5252, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5256, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5260, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5264, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5268, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5272, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5276, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5280, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5288, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5292, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5296, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5312, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5316, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5320, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5324, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5328, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5332, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5336, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5340, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5344, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5348, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5352, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5356, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5360, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5488, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5492, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5496, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5500, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5504, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5508, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5512, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5516, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5520, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5524, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5528, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5532, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5536, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 -1, [3 x i8] zeroinitializer }], [280 x i8] zeroinitializer }, align 32
@exynos5420_pmu_data = dso_local constant { %struct.exynos_pmu_data, [16 x i8] } { %struct.exynos_pmu_data { ptr @exynos5420_pmu_config, ptr @exynos5420_pmu_init, ptr @exynos5420_powerdown_conf, ptr null }, [16 x i8] zeroinitializer }, align 32
@exynos5420_list_disable_pmu_reg = internal constant { [35 x i32], [52 x i8] } { [35 x i32] [i32 5248, i32 5252, i32 5260, i32 5264, i32 5268, i32 5272, i32 5276, i32 5280, i32 5288, i32 5292, i32 5296, i32 5312, i32 5316, i32 5324, i32 5328, i32 5332, i32 5336, i32 5340, i32 5344, i32 5348, i32 5352, i32 5356, i32 5360, i32 5488, i32 5492, i32 5496, i32 5500, i32 5504, i32 5508, i32 5516, i32 5520, i32 5524, i32 5528, i32 5532, i32 5536], [52 x i8] zeroinitializer }, align 32
@exynos5420_pmu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016EXYNOS5420 PMU initialized\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"exynos5420_pmu_init\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/soc/samsung/exynos5420-pmu.c\00", [59 x i8] zeroinitializer }, align 32
@exynos5420_pmu_init._entry_ptr = internal global ptr @exynos5420_pmu_init._entry, section ".printk_index", align 4
@___asan_gen_.3 = private unnamed_addr constant [22 x i8] c"exynos5420_pmu_config\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 16, i32 37 }
@___asan_gen_.6 = private unnamed_addr constant [20 x i8] c"exynos5420_pmu_data\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 272, i32 30 }
@___asan_gen_.9 = private unnamed_addr constant [32 x i8] c"exynos5420_list_disable_pmu_reg\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 161, i32 27 }
@___asan_gen_.12 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [40 x i8] c"../drivers/soc/samsung/exynos5420-pmu.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 269, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @exynos5420_pmu_init._entry, ptr @exynos5420_pmu_init._entry_ptr, ptr @exynos5420_pmu_config, ptr @exynos5420_pmu_data, ptr @exynos5420_list_disable_pmu_reg, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5420_pmu_config to i32), i32 1128, i32 1408, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5420_pmu_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5420_list_disable_pmu_reg to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5420_pmu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos5420_pmu_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.024 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [35 x i32], ptr @exynos5420_list_disable_pmu_reg, i32 0, i32 %i.024
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  tail call void @pmu_raw_writel(i32 noundef 0, i32 noundef %1) #3
  %inc = add nuw nsw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, 35
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @pmu_raw_writel(i32 noundef 4080, i32 noundef 520) #3
  %call = tail call i32 @pmu_raw_readl(i32 noundef 9736) #3
  %and = and i32 %call, -17
  tail call void @pmu_raw_writel(i32 noundef %and, i32 noundef 9736) #3
  %call1 = tail call i32 @pmu_raw_readl(i32 noundef 9864) #3
  %and2 = and i32 %call1, -17
  tail call void @pmu_raw_writel(i32 noundef %and2, i32 noundef 9864) #3
  %call3 = tail call i32 @pmu_raw_readl(i32 noundef 4) #3
  %or = or i32 %call3, 524288
  tail call void @pmu_raw_writel(i32 noundef %or, i32 noundef 4) #3
  %call4 = tail call i32 @pmu_raw_readl(i32 noundef 8) #3
  %or5 = or i32 %call4, 8192
  tail call void @pmu_raw_writel(i32 noundef %or5, i32 noundef 8) #3
  %call6 = tail call i32 @pmu_raw_readl(i32 noundef 9480) #3
  %or7 = or i32 %call6, 128
  tail call void @pmu_raw_writel(i32 noundef %or7, i32 noundef 9480) #3
  %call8 = tail call i32 @pmu_raw_readl(i32 noundef 9608) #3
  %or9 = or i32 %call8, 128
  tail call void @pmu_raw_writel(i32 noundef %or9, i32 noundef 9608) #3
  tail call void @pmu_raw_writel(i32 noundef 15, i32 noundef 11548) #3
  tail call void @pmu_raw_writel(i32 noundef 15, i32 noundef 256) #3
  tail call void @pmu_raw_writel(i32 noundef 15, i32 noundef 260) #3
  tail call void @pmu_raw_writel(i32 noundef 1, i32 noundef 288) #3
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos5420_powerdown_conf(i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #7, !srcloc !21
  %shr = lshr i32 %0, 8
  %and = and i32 %shr, 255
  tail call void @pmu_raw_writel(i32 noundef %and, i32 noundef 2440) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pmu_raw_writel(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmu_raw_readl(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @exynos5420_pmu_data, !1, !"exynos5420_pmu_data", i1 false, i1 false}
!1 = !{!"../drivers/soc/samsung/exynos5420-pmu.c", i32 272, i32 30}
!2 = !{ptr @exynos5420_pmu_config, !3, !"exynos5420_pmu_config", i1 false, i1 false}
!3 = !{!"../drivers/soc/samsung/exynos5420-pmu.c", i32 16, i32 37}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/soc/samsung/exynos5420-pmu.c", i32 269, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @exynos5420_pmu_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @exynos5420_pmu_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @exynos5420_list_disable_pmu_reg, !11, !"exynos5420_list_disable_pmu_reg", i1 false, i1 false}
!11 = !{!"../drivers/soc/samsung/exynos5420-pmu.c", i32 161, i32 27}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 2149999486}
