; ModuleID = '/llk/IR_all_yes/drivers/mfd/tps65912-core.c_pt.bc'
source_filename = "../drivers/mfd/tps65912-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tps65912_regmap_config\22, \22a\22\09"
module asm "\09.weak\09__crc_tps65912_regmap_config\09\09\09\09"
module asm "\09.long\09__crc_tps65912_regmap_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tps65912_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22tps65912_regmap_config\22\09\09\09\09\09"
module asm "__kstrtabns_tps65912_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tps65912_device_init\22, \22a\22\09"
module asm "\09.weak\09__crc_tps65912_device_init\09\09\09\09"
module asm "\09.long\09__crc_tps65912_device_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tps65912_device_init:\09\09\09\09\09"
module asm "\09.asciz \09\22tps65912_device_init\22\09\09\09\09\09"
module asm "__kstrtabns_tps65912_device_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tps65912_device_exit\22, \22a\22\09"
module asm "\09.weak\09__crc_tps65912_device_exit\09\09\09\09"
module asm "\09.long\09__crc_tps65912_device_exit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tps65912_device_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22tps65912_device_exit\22\09\09\09\09\09"
module asm "__kstrtabns_tps65912_device_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tps65912 = type { ptr, ptr, i32, ptr }

@tps65912_volatile_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @tps65912_yes_ranges, i32 1, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@tps65912_regmap_config = dso_local constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr @tps65912_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_tps65912_regmap_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_tps65912_regmap_config = external dso_local constant [0 x i8], align 1
@__ksymtab_tps65912_regmap_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tps65912_regmap_config to i32), ptr @__kstrtab_tps65912_regmap_config, ptr @__kstrtabns_tps65912_regmap_config }, section "___ksymtab_gpl+tps65912_regmap_config", align 4
@tps65912_cells = internal constant { [2 x %struct.mfd_cell], [48 x i8] } { [2 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.2, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.3, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [48 x i8] zeroinitializer }, align 32
@__kstrtab_tps65912_device_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_tps65912_device_init = external dso_local constant [0 x i8], align 1
@__ksymtab_tps65912_device_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tps65912_device_init to i32), ptr @__kstrtab_tps65912_device_init, ptr @__kstrtabns_tps65912_device_init }, section "___ksymtab_gpl+tps65912_device_init", align 4
@__kstrtab_tps65912_device_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_tps65912_device_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_tps65912_device_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tps65912_device_exit to i32), ptr @__kstrtab_tps65912_device_exit, ptr @__kstrtabns_tps65912_device_exit }, section "___ksymtab_gpl+tps65912_device_exit", align 4
@__UNIQUE_ID_author187 = internal constant [50 x i8] c"tps65912_core.author=Andrew F. Davis <afd@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description188 = internal constant [47 x i8] c"tps65912_core.description=TPS65912x MFD Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file189 = internal constant [45 x i8] c"tps65912_core.file=drivers/mfd/tps65912-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license190 = internal constant [29 x i8] c"tps65912_core.license=GPL v2\00", section ".modinfo", align 1
@tps65912_yes_ranges = internal constant { [1 x %struct.regmap_range], [24 x i8] } { [1 x %struct.regmap_range] [%struct.regmap_range { i32 57, i32 69 }], [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tps65912\00", [23 x i8] zeroinitializer }, align 32
@tps65912_irqs = internal constant { [30 x %struct.regmap_irq], [264 x i8] } { [30 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 32, %struct.regmap_irq_type zeroinitializer }], [264 x i8] zeroinitializer }, align 32
@tps65912_irq_chip = internal global { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str, i32 0, i32 0, ptr null, i32 0, i32 57, i32 58, i32 0, i32 57, i32 0, i32 0, ptr null, i32 2, i8 64, i8 0, i32 4, ptr @tps65912_irqs, i32 30, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tps65912-regulator\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tps65912-gpio\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [24 x i8] c"tps65912_volatile_table\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 84, i32 41 }
@___asan_gen_.7 = private unnamed_addr constant [23 x i8] c"tps65912_regmap_config\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 89, i32 28 }
@___asan_gen_.10 = private unnamed_addr constant [15 x i8] c"tps65912_cells\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 26, i32 30 }
@___asan_gen_.13 = private unnamed_addr constant [20 x i8] c"tps65912_yes_ranges\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 80, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 69, i32 10 }
@___asan_gen_.19 = private unnamed_addr constant [14 x i8] c"tps65912_irqs\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 31, i32 32 }
@___asan_gen_.22 = private unnamed_addr constant [18 x i8] c"tps65912_irq_chip\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 68, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 27, i32 12 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [31 x i8] c"../drivers/mfd/tps65912-core.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 28, i32 12 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author187, ptr @__UNIQUE_ID_description188, ptr @__UNIQUE_ID_file189, ptr @__UNIQUE_ID_license190, ptr @__ksymtab_tps65912_device_exit, ptr @__ksymtab_tps65912_device_init, ptr @__ksymtab_tps65912_regmap_config, ptr @tps65912_volatile_table, ptr @tps65912_regmap_config, ptr @tps65912_cells, ptr @tps65912_yes_ranges, ptr @.str, ptr @tps65912_irqs, ptr @tps65912_irq_chip, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65912_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65912_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65912_cells to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65912_yes_ranges to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65912_irqs to i32), i32 1080, i32 1344, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65912_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tps65912_device_init(ptr noundef %tps) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.tps65912, ptr %tps, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %irq = getelementptr inbounds %struct.tps65912, ptr %tps, i32 0, i32 2
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %irq_data = getelementptr inbounds %struct.tps65912, ptr %tps, i32 0, i32 3
  %call = tail call i32 @regmap_add_irq_chip(ptr noundef %1, i32 noundef %3, i32 noundef 8192, i32 noundef 0, ptr noundef nonnull @tps65912_irq_chip, ptr noundef %irq_data) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %tps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tps, align 4
  %6 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_data, align 4
  %call2 = tail call ptr @regmap_irq_get_domain(ptr noundef %7) #2
  %call3 = tail call i32 @mfd_add_devices(ptr noundef %5, i32 noundef -2, ptr noundef nonnull @tps65912_cells, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef %call2) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %10 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_data, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %9, ptr noundef %11) #2
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then5 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_add_irq_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_irq_get_domain(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_del_irq_chip(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tps65912_device_exit(ptr nocapture noundef readonly %tps) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.tps65912, ptr %tps, i32 0, i32 2
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %irq_data = getelementptr inbounds %struct.tps65912, ptr %tps, i32 0, i32 3
  %2 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_data, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %1, ptr noundef %3) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @tps65912_regmap_config, !1, !"tps65912_regmap_config", i1 false, i1 false}
!1 = !{!"../drivers/mfd/tps65912-core.c", i32 89, i32 28}
!2 = !{ptr @__ksymtab_tps65912_regmap_config, !3, !"__ksymtab_tps65912_regmap_config", i1 false, i1 false}
!3 = !{!"../drivers/mfd/tps65912-core.c", i32 95, i32 1}
!4 = !{ptr @__ksymtab_tps65912_device_init, !5, !"__ksymtab_tps65912_device_init", i1 false, i1 false}
!5 = !{!"../drivers/mfd/tps65912-core.c", i32 116, i32 1}
!6 = !{ptr @__ksymtab_tps65912_device_exit, !7, !"__ksymtab_tps65912_device_exit", i1 false, i1 false}
!7 = !{!"../drivers/mfd/tps65912-core.c", i32 122, i32 1}
!8 = !{ptr @__UNIQUE_ID_author187, !9, !"__UNIQUE_ID_author187", i1 false, i1 false}
!9 = !{!"../drivers/mfd/tps65912-core.c", i32 124, i32 1}
!10 = !{ptr @__UNIQUE_ID_description188, !11, !"__UNIQUE_ID_description188", i1 false, i1 false}
!11 = !{!"../drivers/mfd/tps65912-core.c", i32 125, i32 1}
!12 = !{ptr @__UNIQUE_ID_file189, !13, !"__UNIQUE_ID_file189", i1 false, i1 false}
!13 = !{!"../drivers/mfd/tps65912-core.c", i32 126, i32 1}
!14 = !{ptr @__UNIQUE_ID_license190, !13, !"__UNIQUE_ID_license190", i1 false, i1 false}
!15 = !{ptr @tps65912_volatile_table, !16, !"tps65912_volatile_table", i1 false, i1 false}
!16 = !{!"../drivers/mfd/tps65912-core.c", i32 84, i32 41}
!17 = !{ptr @tps65912_yes_ranges, !18, !"tps65912_yes_ranges", i1 false, i1 false}
!18 = !{!"../drivers/mfd/tps65912-core.c", i32 80, i32 34}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mfd/tps65912-core.c", i32 69, i32 10}
!21 = !{ptr @tps65912_irq_chip, !22, !"tps65912_irq_chip", i1 false, i1 false}
!22 = !{!"../drivers/mfd/tps65912-core.c", i32 68, i32 31}
!23 = !{ptr @tps65912_irqs, !24, !"tps65912_irqs", i1 false, i1 false}
!24 = !{!"../drivers/mfd/tps65912-core.c", i32 31, i32 32}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mfd/tps65912-core.c", i32 27, i32 12}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mfd/tps65912-core.c", i32 28, i32 12}
!29 = !{ptr @tps65912_cells, !30, !"tps65912_cells", i1 false, i1 false}
!30 = !{!"../drivers/mfd/tps65912-core.c", i32 26, i32 30}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
