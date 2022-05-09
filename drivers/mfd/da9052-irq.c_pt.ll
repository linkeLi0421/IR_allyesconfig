; ModuleID = '/llk/IR_all_yes/drivers/mfd/da9052-irq.c_pt.bc'
source_filename = "../drivers/mfd/da9052-irq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+da9052_enable_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_da9052_enable_irq\09\09\09\09"
module asm "\09.long\09__crc_da9052_enable_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_da9052_enable_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22da9052_enable_irq\22\09\09\09\09\09"
module asm "__kstrtabns_da9052_enable_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+da9052_disable_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_da9052_disable_irq\09\09\09\09"
module asm "\09.long\09__crc_da9052_disable_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_da9052_disable_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22da9052_disable_irq\22\09\09\09\09\09"
module asm "__kstrtabns_da9052_disable_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+da9052_disable_irq_nosync\22, \22a\22\09"
module asm "\09.weak\09__crc_da9052_disable_irq_nosync\09\09\09\09"
module asm "\09.long\09__crc_da9052_disable_irq_nosync\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_da9052_disable_irq_nosync:\09\09\09\09\09"
module asm "\09.asciz \09\22da9052_disable_irq_nosync\22\09\09\09\09\09"
module asm "__kstrtabns_da9052_disable_irq_nosync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+da9052_request_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_da9052_request_irq\09\09\09\09"
module asm "\09.long\09__crc_da9052_request_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_da9052_request_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22da9052_request_irq\22\09\09\09\09\09"
module asm "__kstrtabns_da9052_request_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+da9052_free_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_da9052_free_irq\09\09\09\09"
module asm "\09.long\09__crc_da9052_free_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_da9052_free_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22da9052_free_irq\22\09\09\09\09\09"
module asm "__kstrtabns_da9052_free_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.da9052 = type { ptr, ptr, %struct.mutex, %struct.completion, i32, ptr, i8, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }

@__kstrtab_da9052_enable_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_da9052_enable_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_da9052_enable_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @da9052_enable_irq to i32), ptr @__kstrtab_da9052_enable_irq, ptr @__kstrtabns_da9052_enable_irq }, section "___ksymtab_gpl+da9052_enable_irq", align 4
@__kstrtab_da9052_disable_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_da9052_disable_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_da9052_disable_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @da9052_disable_irq to i32), ptr @__kstrtab_da9052_disable_irq, ptr @__kstrtabns_da9052_disable_irq }, section "___ksymtab_gpl+da9052_disable_irq", align 4
@__kstrtab_da9052_disable_irq_nosync = external dso_local constant [0 x i8], align 1
@__kstrtabns_da9052_disable_irq_nosync = external dso_local constant [0 x i8], align 1
@__ksymtab_da9052_disable_irq_nosync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @da9052_disable_irq_nosync to i32), ptr @__kstrtab_da9052_disable_irq_nosync, ptr @__kstrtabns_da9052_disable_irq_nosync }, section "___ksymtab_gpl+da9052_disable_irq_nosync", align 4
@__kstrtab_da9052_request_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_da9052_request_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_da9052_request_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @da9052_request_irq to i32), ptr @__kstrtab_da9052_request_irq, ptr @__kstrtabns_da9052_request_irq }, section "___ksymtab_gpl+da9052_request_irq", align 4
@__kstrtab_da9052_free_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_da9052_free_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_da9052_free_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @da9052_free_irq to i32), ptr @__kstrtab_da9052_free_irq, ptr @__kstrtabns_da9052_free_irq }, section "___ksymtab_gpl+da9052_free_irq", align 4
@da9052_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 258, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"regmap_add_irq_chip failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"da9052_irq_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/mfd/da9052-irq.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da9052_irq_init._entry_ptr = internal global ptr @da9052_irq_init._entry, section ".printk_index", align 4
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adc-irq\00", [24 x i8] zeroinitializer }, align 32
@da9052_irq_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 268, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DA9052_IRQ_ADC_EOM failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@da9052_irq_init._entry_ptr.8 = internal global ptr @da9052_irq_init._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"da9052_irq\00", [21 x i8] zeroinitializer }, align 32
@da9052_irqs = internal constant { [32 x %struct.regmap_irq], [288 x i8] } { [32 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 128, %struct.regmap_irq_type zeroinitializer }], [288 x i8] zeroinitializer }, align 32
@da9052_regmap_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.9, i32 0, i32 0, ptr null, i32 0, i32 5, i32 10, i32 0, i32 5, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 4, ptr @da9052_irqs, i32 32, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 258, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 264, i32 55 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 268, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 167, i32 10 }
@___asan_gen_.41 = private unnamed_addr constant [12 x i8] c"da9052_irqs\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 35, i32 32 }
@___asan_gen_.44 = private unnamed_addr constant [23 x i8] c"da9052_regmap_irq_chip\00", align 1
@___asan_gen_.45 = private constant [28 x i8] c"../drivers/mfd/da9052-irq.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 166, i32 37 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__ksymtab_da9052_disable_irq, ptr @__ksymtab_da9052_disable_irq_nosync, ptr @__ksymtab_da9052_enable_irq, ptr @__ksymtab_da9052_free_irq, ptr @__ksymtab_da9052_request_irq, ptr @da9052_irq_init._entry, ptr @da9052_irq_init._entry.6, ptr @da9052_irq_init._entry_ptr, ptr @da9052_irq_init._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @da9052_irqs, ptr @da9052_regmap_irq_chip], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_irq_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_irqs to i32), i32 1152, i32 1440, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_regmap_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @da9052_enable_irq(ptr nocapture noundef readonly %da9052, i32 noundef %irq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_data.i = getelementptr inbounds %struct.da9052, ptr %da9052, i32 0, i32 5
  %0 = ptrtoint ptr %irq_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq_data.i, align 4
  %call.i = tail call i32 @regmap_irq_get_virq(ptr noundef %1, i32 noundef %irq) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @enable_irq(i32 noundef %call.i) #3
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @da9052_disable_irq(ptr nocapture noundef readonly %da9052, i32 noundef %irq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_data.i = getelementptr inbounds %struct.da9052, ptr %da9052, i32 0, i32 5
  %0 = ptrtoint ptr %irq_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq_data.i, align 4
  %call.i = tail call i32 @regmap_irq_get_virq(ptr noundef %1, i32 noundef %irq) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @disable_irq(i32 noundef %call.i) #3
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @da9052_disable_irq_nosync(ptr nocapture noundef readonly %da9052, i32 noundef %irq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_data.i = getelementptr inbounds %struct.da9052, ptr %da9052, i32 0, i32 5
  %0 = ptrtoint ptr %irq_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq_data.i, align 4
  %call.i = tail call i32 @regmap_irq_get_virq(ptr noundef %1, i32 noundef %irq) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @disable_irq_nosync(i32 noundef %call.i) #3
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @da9052_request_irq(ptr nocapture noundef readonly %da9052, i32 noundef %irq, ptr noundef %name, ptr noundef %handler, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_data.i = getelementptr inbounds %struct.da9052, ptr %da9052, i32 0, i32 5
  %0 = ptrtoint ptr %irq_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq_data.i, align 4
  %call.i = tail call i32 @regmap_irq_get_virq(ptr noundef %1, i32 noundef %irq) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 @request_threaded_irq(i32 noundef %call.i, ptr noundef null, ptr noundef %handler, i32 noundef 8200, ptr noundef %name, ptr noundef %data) #3
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call.i, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @da9052_free_irq(ptr nocapture noundef readonly %da9052, i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_data.i = getelementptr inbounds %struct.da9052, ptr %da9052, i32 0, i32 5
  %0 = ptrtoint ptr %irq_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq_data.i, align 4
  %call.i = tail call i32 @regmap_irq_get_virq(ptr noundef %1, i32 noundef %irq) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call ptr @free_irq(i32 noundef %call.i, ptr noundef %data) #3
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @da9052_irq_init(ptr noundef %da9052) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.da9052, ptr %da9052, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %chip_irq = getelementptr inbounds %struct.da9052, ptr %da9052, i32 0, i32 7
  %2 = ptrtoint ptr %chip_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip_irq, align 4
  %irq_data = getelementptr inbounds %struct.da9052, ptr %da9052, i32 0, i32 5
  %call = tail call i32 @regmap_add_irq_chip(ptr noundef %1, i32 noundef %3, i32 noundef 8200, i32 noundef -1, ptr noundef nonnull @da9052_regmap_irq_chip, ptr noundef %irq_data) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %da9052 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %da9052, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef %call) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %chip_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chip_irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %7, i32 noundef 1) #3
  %8 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_data, align 4
  %call.i.i = tail call i32 @regmap_irq_get_virq(ptr noundef %9, i32 noundef 13) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end.do.end8_crit_edge, label %da9052_request_irq.exit

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end8

da9052_request_irq.exit:                          ; preds = %if.end
  %call1.i = tail call i32 @request_threaded_irq(i32 noundef %call.i.i, ptr noundef null, ptr noundef nonnull @da9052_auxadc_irq, i32 noundef 8200, ptr noundef nonnull @.str.5, ptr noundef %da9052) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp4.not = icmp eq i32 %call1.i, 0
  br i1 %cmp4.not, label %da9052_request_irq.exit.cleanup_crit_edge, label %da9052_request_irq.exit.do.end8_crit_edge

da9052_request_irq.exit.do.end8_crit_edge:        ; preds = %da9052_request_irq.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end8

da9052_request_irq.exit.cleanup_crit_edge:        ; preds = %da9052_request_irq.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end8:                                          ; preds = %da9052_request_irq.exit.do.end8_crit_edge, %if.end.do.end8_crit_edge
  %retval.0.i28 = phi i32 [ %call1.i, %da9052_request_irq.exit.do.end8_crit_edge ], [ %call.i.i, %if.end.do.end8_crit_edge ]
  %10 = ptrtoint ptr %da9052 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %da9052, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i28) #6
  %12 = ptrtoint ptr %chip_irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chip_irq, align 4
  %14 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_data, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %13, ptr noundef %15) #3
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %da9052_request_irq.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %da9052_request_irq.exit.cleanup_crit_edge ], [ %call, %do.end ], [ %retval.0.i28, %do.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_add_irq_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_auxadc_irq(i32 noundef %irq, ptr noundef %irq_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %done = getelementptr inbounds %struct.da9052, ptr %irq_data, i32 0, i32 3
  tail call void @complete(ptr noundef %done) #3
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_del_irq_chip(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @da9052_irq_exit(ptr noundef %da9052) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_data.i.i = getelementptr inbounds %struct.da9052, ptr %da9052, i32 0, i32 5
  %0 = ptrtoint ptr %irq_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq_data.i.i, align 4
  %call.i.i = tail call i32 @regmap_irq_get_virq(ptr noundef %1, i32 noundef 13) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.da9052_free_irq.exit_crit_edge, label %if.end.i

entry.da9052_free_irq.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %da9052_free_irq.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1.i = tail call ptr @free_irq(i32 noundef %call.i.i, ptr noundef %da9052) #3
  br label %da9052_free_irq.exit

da9052_free_irq.exit:                             ; preds = %if.end.i, %entry.da9052_free_irq.exit_crit_edge
  %chip_irq = getelementptr inbounds %struct.da9052, ptr %da9052, i32 0, i32 7
  %2 = ptrtoint ptr %chip_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip_irq, align 4
  %4 = ptrtoint ptr %irq_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_data.i.i, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %3, ptr noundef %5) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !22, !23, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__ksymtab_da9052_enable_irq, !1, !"__ksymtab_da9052_enable_irq", i1 false, i1 false}
!1 = !{!"../drivers/mfd/da9052-irq.c", i32 191, i32 1}
!2 = !{ptr @__ksymtab_da9052_disable_irq, !3, !"__ksymtab_da9052_disable_irq", i1 false, i1 false}
!3 = !{!"../drivers/mfd/da9052-irq.c", i32 203, i32 1}
!4 = !{ptr @__ksymtab_da9052_disable_irq_nosync, !5, !"__ksymtab_da9052_disable_irq_nosync", i1 false, i1 false}
!5 = !{!"../drivers/mfd/da9052-irq.c", i32 215, i32 1}
!6 = !{ptr @__ksymtab_da9052_request_irq, !7, !"__ksymtab_da9052_request_irq", i1 false, i1 false}
!7 = !{!"../drivers/mfd/da9052-irq.c", i32 228, i32 1}
!8 = !{ptr @__ksymtab_da9052_free_irq, !9, !"__ksymtab_da9052_free_irq", i1 false, i1 false}
!9 = !{!"../drivers/mfd/da9052-irq.c", i32 238, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mfd/da9052-irq.c", i32 258, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @da9052_irq_init._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @da9052_irq_init._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mfd/da9052-irq.c", i32 264, i32 55}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mfd/da9052-irq.c", i32 268, i32 3}
!22 = !{ptr @da9052_irq_init._entry.6, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @da9052_irq_init._entry_ptr.8, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mfd/da9052-irq.c", i32 167, i32 10}
!26 = !{ptr @da9052_regmap_irq_chip, !27, !"da9052_regmap_irq_chip", i1 false, i1 false}
!27 = !{!"../drivers/mfd/da9052-irq.c", i32 166, i32 37}
!28 = !{ptr @da9052_irqs, !29, !"da9052_irqs", i1 false, i1 false}
!29 = !{!"../drivers/mfd/da9052-irq.c", i32 35, i32 32}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
