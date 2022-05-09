; ModuleID = '/llk/IR_all_yes/arch/arm/mach-s3c/irq-pm-s3c64xx.c_pt.bc'
source_filename = "../arch/arm/mach-s3c/irq-pm-s3c64xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sleep_save = type { ptr, i32 }

@__initcall__kmod_irq_pm_s3c64xx__230_119_s3c64xx_syscore_init1 = internal global ptr @s3c64xx_syscore_init, section ".initcall1.init", align 4
@s3c64xx_irq_syscore_ops = internal global { %struct.syscore_ops, [44 x i8] } { %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @s3c64xx_irq_pm_suspend, ptr @s3c64xx_irq_pm_resume, ptr null }, [44 x i8] zeroinitializer }, align 32
@of_root = external dso_local local_unnamed_addr global ptr, align 4
@samsung_cpu_id = external dso_local local_unnamed_addr global i32, align 4
@eint_grp_save.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@eint_grp_save.1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@eint_grp_save.2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@eint_grp_save.3 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@eint_grp_save.4 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@eint_grp_save.5 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@eint_grp_save.6 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@eint_grp_save.7 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@eint_grp_save.8 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@eint_grp_save.9 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@eint_grp_save.10 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@eint_grp_save.11 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@eint_grp_save.12 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@eint_grp_save.13 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@eint_grp_save.14 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@s3c64xx_irq_pm_suspend.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"irq_pm_s3c64xx\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s3c64xx_irq_pm_suspend\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"arch/arm/mach-s3c/irq-pm-s3c64xx.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: suspending IRQs\0A\00", [43 x i8] zeroinitializer }, align 32
@irq_save = internal global { [8 x %struct.sleep_save], [32 x i8] } { [8 x %struct.sleep_save] [%struct.sleep_save { ptr inttoptr (i32 -162528640 to ptr), i32 0 }, %struct.sleep_save { ptr inttoptr (i32 -162526976 to ptr), i32 0 }, %struct.sleep_save { ptr inttoptr (i32 -162526972 to ptr), i32 0 }, %struct.sleep_save { ptr inttoptr (i32 -162526960 to ptr), i32 0 }, %struct.sleep_save { ptr inttoptr (i32 -162526956 to ptr), i32 0 }, %struct.sleep_save { ptr inttoptr (i32 -162526952 to ptr), i32 0 }, %struct.sleep_save { ptr inttoptr (i32 -162526948 to ptr), i32 0 }, %struct.sleep_save { ptr inttoptr (i32 -162526944 to ptr), i32 0 }], [32 x i8] zeroinitializer }, align 32
@irq_uart_mask.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@irq_uart_mask.1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@irq_uart_mask.2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@irq_uart_mask.3 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@s3c64xx_irq_pm_resume.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s3c64xx_irq_pm_resume\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: resuming IRQs\0A\00", [45 x i8] zeroinitializer }, align 32
@s3c64xx_irq_pm_resume.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: IRQ configuration restored\0A\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 910163968, i64 910229504]
@___asan_gen_.7 = private unnamed_addr constant [24 x i8] c"s3c64xx_irq_syscore_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 103, i32 27 }
@___asan_gen_.10 = private unnamed_addr constant [16 x i8] c"eint_grp_save.0\00", align 1
@___asan_gen_.11 = private unnamed_addr constant [16 x i8] c"eint_grp_save.1\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [16 x i8] c"eint_grp_save.2\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [16 x i8] c"eint_grp_save.3\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [16 x i8] c"eint_grp_save.4\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [16 x i8] c"eint_grp_save.5\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [16 x i8] c"eint_grp_save.6\00", align 1
@___asan_gen_.17 = private unnamed_addr constant [16 x i8] c"eint_grp_save.7\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"eint_grp_save.8\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [16 x i8] c"eint_grp_save.9\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"eint_grp_save.10\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"eint_grp_save.11\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"eint_grp_save.12\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"eint_grp_save.13\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"eint_grp_save.14\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 66, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [9 x i8] c"irq_save\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 36, i32 26 }
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"irq_uart_mask.0\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"irq_uart_mask.1\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"irq_uart_mask.2\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"irq_uart_mask.3\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 87, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private constant [38 x i8] c"../arch/arm/mach-s3c/irq-pm-s3c64xx.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 100, i32 2 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__initcall__kmod_irq_pm_s3c64xx__230_119_s3c64xx_syscore_init1, ptr @s3c64xx_irq_syscore_ops, ptr @eint_grp_save.0, ptr @eint_grp_save.1, ptr @eint_grp_save.2, ptr @eint_grp_save.3, ptr @eint_grp_save.4, ptr @eint_grp_save.5, ptr @eint_grp_save.6, ptr @eint_grp_save.7, ptr @eint_grp_save.8, ptr @eint_grp_save.9, ptr @eint_grp_save.10, ptr @eint_grp_save.11, ptr @eint_grp_save.12, ptr @eint_grp_save.13, ptr @eint_grp_save.14, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @irq_save, ptr @irq_uart_mask.0, ptr @irq_uart_mask.1, ptr @irq_uart_mask.2, ptr @irq_uart_mask.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_irq_syscore_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eint_grp_save.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eint_grp_save.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eint_grp_save.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eint_grp_save.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eint_grp_save.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eint_grp_save.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eint_grp_save.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eint_grp_save.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eint_grp_save.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eint_grp_save.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eint_grp_save.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eint_grp_save.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eint_grp_save.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eint_grp_save.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eint_grp_save.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_save to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_uart_mask.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_uart_mask.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_uart_mask.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_uart_mask.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c64xx_syscore_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @of_root to i32))
  %0 = load ptr, ptr @of_root, align 4
  %cmp.i.not = icmp eq ptr %0, null
  br i1 %cmp.i.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

lor.lhs.false:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @samsung_cpu_id to i32))
  %1 = load i32, ptr @samsung_cpu_id, align 4
  %and.i = and i32 %1, -4096
  %2 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %lor.lhs.false.return_crit_edge [
    i32 910163968, label %lor.lhs.false.if.end_crit_edge
    i32 910229504, label %lor.lhs.false.if.end_crit_edge9
  ]

lor.lhs.false.if.end_crit_edge9:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge9
  tail call void @register_syscore_ops(ptr noundef nonnull @s3c64xx_irq_syscore_ops) #3
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c64xx_irq_pm_suspend() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c64xx_irq_pm_suspend.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c64xx_irq_pm_suspend, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !32

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c64xx_irq_pm_suspend.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @s3c_pm_do_save(ptr noundef nonnull @irq_save, i32 noundef 8) #3
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -150974408 to ptr)) #3, !srcloc !33
  store i32 %0, ptr @irq_uart_mask.0, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -150973384 to ptr)) #3, !srcloc !33
  store i32 %1, ptr @irq_uart_mask.1, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -150972360 to ptr)) #3, !srcloc !33
  store i32 %2, ptr @irq_uart_mask.2, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -150971336 to ptr)) #3, !srcloc !33
  store i32 %3, ptr @irq_uart_mask.3, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -162528768 to ptr)) #3, !srcloc !33
  store i32 %4, ptr @eint_grp_save.1, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -162528704 to ptr)) #3, !srcloc !33
  store i32 %5, ptr @eint_grp_save.2, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -162528736 to ptr)) #3, !srcloc !33
  store i32 %6, ptr @eint_grp_save.0, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -162528764 to ptr)) #3, !srcloc !33
  store i32 %7, ptr @eint_grp_save.4, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -162528700 to ptr)) #3, !srcloc !33
  store i32 %8, ptr @eint_grp_save.5, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -162528732 to ptr)) #3, !srcloc !33
  store i32 %9, ptr @eint_grp_save.3, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -162528760 to ptr)) #3, !srcloc !33
  store i32 %10, ptr @eint_grp_save.7, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -162528696 to ptr)) #3, !srcloc !33
  store i32 %11, ptr @eint_grp_save.8, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -162528728 to ptr)) #3, !srcloc !33
  store i32 %12, ptr @eint_grp_save.6, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -162528756 to ptr)) #3, !srcloc !33
  store i32 %13, ptr @eint_grp_save.10, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -162528692 to ptr)) #3, !srcloc !33
  store i32 %14, ptr @eint_grp_save.11, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -162528724 to ptr)) #3, !srcloc !33
  store i32 %15, ptr @eint_grp_save.9, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -162528752 to ptr)) #3, !srcloc !33
  store i32 %16, ptr @eint_grp_save.13, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -162528688 to ptr)) #3, !srcloc !33
  store i32 %17, ptr @eint_grp_save.14, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -162528720 to ptr)) #3, !srcloc !33
  store i32 %18, ptr @eint_grp_save.12, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c64xx_irq_pm_resume() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c64xx_irq_pm_resume.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c64xx_irq_pm_resume, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !32

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c64xx_irq_pm_resume.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @s3c_pm_do_restore(ptr noundef nonnull @irq_save, i32 noundef 8) #3
  %0 = load i32, ptr @irq_uart_mask.0, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -150974408 to ptr), i32 %0) #3, !srcloc !34
  %1 = load i32, ptr @irq_uart_mask.1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -150973384 to ptr), i32 %1) #3, !srcloc !34
  %2 = load i32, ptr @irq_uart_mask.2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -150972360 to ptr), i32 %2) #3, !srcloc !34
  %3 = load i32, ptr @irq_uart_mask.3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -150971336 to ptr), i32 %3) #3, !srcloc !34
  %4 = load i32, ptr @eint_grp_save.1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -162528768 to ptr), i32 %4) #3, !srcloc !34
  %5 = load i32, ptr @eint_grp_save.2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -162528704 to ptr), i32 %5) #3, !srcloc !34
  %6 = load i32, ptr @eint_grp_save.0, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -162528736 to ptr), i32 %6) #3, !srcloc !34
  %7 = load i32, ptr @eint_grp_save.4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -162528764 to ptr), i32 %7) #3, !srcloc !34
  %8 = load i32, ptr @eint_grp_save.5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -162528700 to ptr), i32 %8) #3, !srcloc !34
  %9 = load i32, ptr @eint_grp_save.3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -162528732 to ptr), i32 %9) #3, !srcloc !34
  %10 = load i32, ptr @eint_grp_save.7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -162528760 to ptr), i32 %10) #3, !srcloc !34
  %11 = load i32, ptr @eint_grp_save.8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -162528696 to ptr), i32 %11) #3, !srcloc !34
  %12 = load i32, ptr @eint_grp_save.6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -162528728 to ptr), i32 %12) #3, !srcloc !34
  %13 = load i32, ptr @eint_grp_save.10, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -162528756 to ptr), i32 %13) #3, !srcloc !34
  %14 = load i32, ptr @eint_grp_save.11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -162528692 to ptr), i32 %14) #3, !srcloc !34
  %15 = load i32, ptr @eint_grp_save.9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -162528724 to ptr), i32 %15) #3, !srcloc !34
  %16 = load i32, ptr @eint_grp_save.13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -162528752 to ptr), i32 %16) #3, !srcloc !34
  %17 = load i32, ptr @eint_grp_save.14, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -162528688 to ptr), i32 %17) #3, !srcloc !34
  %18 = load i32, ptr @eint_grp_save.12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -162528720 to ptr), i32 %18) #3, !srcloc !34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c64xx_irq_pm_resume.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c64xx_irq_pm_resume, %if.then28)) #3
          to label %do.end31 [label %if.then28], !srcloc !32

if.then28:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c64xx_irq_pm_resume.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4) #3
  br label %do.end31

do.end31:                                         ; preds = %if.then28, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_pm_do_save(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_pm_do_restore(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !18, !19, !20, !22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__initcall__kmod_irq_pm_s3c64xx__230_119_s3c64xx_syscore_init1, !1, !"__initcall__kmod_irq_pm_s3c64xx__230_119_s3c64xx_syscore_init1", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-s3c/irq-pm-s3c64xx.c", i32 119, i32 1}
!2 = !{ptr @s3c64xx_irq_syscore_ops, !3, !"s3c64xx_irq_syscore_ops", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-s3c/irq-pm-s3c64xx.c", i32 103, i32 27}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-s3c/irq-pm-s3c64xx.c", i32 66, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @s3c64xx_irq_pm_suspend.__UNIQUE_ID_ddebug227, !5, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!10 = distinct !{null, !11, !"eint_grp_save", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-s3c/irq-pm-s3c64xx.c", i32 51, i32 3}
!12 = !{ptr @irq_save, !13, !"irq_save", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-s3c/irq-pm-s3c64xx.c", i32 36, i32 26}
!14 = distinct !{null, !15, !"irq_uart_mask", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-s3c/irq-pm-s3c64xx.c", i32 59, i32 12}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-s3c/irq-pm-s3c64xx.c", i32 87, i32 2}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @s3c64xx_irq_pm_resume.__UNIQUE_ID_ddebug228, !17, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-s3c/irq-pm-s3c64xx.c", i32 100, i32 2}
!22 = !{ptr @s3c64xx_irq_pm_resume.__UNIQUE_ID_ddebug229, !21, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i64 2148692718, i64 2148692723, i64 2148692736, i64 2148692780, i64 2148692814, i64 2148692835}
!33 = !{i64 4200264}
!34 = !{i64 4199846}
