; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-lpss.c_pt.bc'
source_filename = "../drivers/pwm/pwm-lpss.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pwm_lpss_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_pwm_lpss_probe\09\09\09\09"
module asm "\09.long\09__crc_pwm_lpss_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pwm_lpss_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22pwm_lpss_probe\22\09\09\09\09\09"
module asm "__kstrtabns_pwm_lpss_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pwm_lpss_boardinfo = type { i32, i32, i32, i8, i8 }
%struct.pwm_lpss_chip = type { %struct.pwm_chip, ptr, ptr }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/pwm/pwm-lpss.c\00", [41 x i8] zeroinitializer }, align 32
@pwm_lpss_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr null, ptr null, ptr null, ptr @pwm_lpss_apply, ptr @pwm_lpss_get_state, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@pwm_lpss_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 241, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to add PWM chip: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pwm_lpss_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pwm_lpss_probe._entry_ptr = internal global ptr @pwm_lpss_probe._entry, section ".printk_index", align 4
@__kstrtab_pwm_lpss_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_pwm_lpss_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_pwm_lpss_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pwm_lpss_probe to i32), ptr @__kstrtab_pwm_lpss_probe, ptr @__kstrtabns_pwm_lpss_probe }, section "___ksymtab_gpl+pwm_lpss_probe", align 4
@__UNIQUE_ID_description175 = internal constant [47 x i8] c"pwm_lpss.description=PWM driver for Intel LPSS\00", section ".modinfo", align 1
@__UNIQUE_ID_author176 = internal constant [66 x i8] c"pwm_lpss.author=Mika Westerberg <mika.westerberg@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file177 = internal constant [35 x i8] c"pwm_lpss.file=drivers/pwm/pwm-lpss\00", section ".modinfo", align 1
@__UNIQUE_ID_license178 = internal constant [24 x i8] c"pwm_lpss.license=GPL v2\00", section ".modinfo", align 1
@pwm_lpss_is_updating._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 80, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"PWM_SW_UPDATE is still set, skipping update\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm_lpss_is_updating\00", [43 x i8] zeroinitializer }, align 32
@pwm_lpss_is_updating._entry_ptr = internal global ptr @pwm_lpss_is_updating._entry, section ".printk_index", align 4
@pwm_lpss_wait_for_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str, i32 72, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"PWM_SW_UPDATE was not cleared\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pwm_lpss_wait_for_update\00", [39 x i8] zeroinitializer }, align 32
@pwm_lpss_wait_for_update._entry_ptr = internal global ptr @pwm_lpss_wait_for_update._entry, section ".printk_index", align 4
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 218, i32 6 }
@___asan_gen_.12 = private unnamed_addr constant [13 x i8] c"pwm_lpss_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 204, i32 29 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 241, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 80, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [26 x i8] c"../drivers/pwm/pwm-lpss.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 72, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author176, ptr @__UNIQUE_ID_description175, ptr @__UNIQUE_ID_file177, ptr @__UNIQUE_ID_license178, ptr @__ksymtab_pwm_lpss_probe, ptr @pwm_lpss_is_updating._entry, ptr @pwm_lpss_is_updating._entry_ptr, ptr @pwm_lpss_probe._entry, ptr @pwm_lpss_probe._entry_ptr, ptr @pwm_lpss_wait_for_update._entry, ptr @pwm_lpss_wait_for_update._entry_ptr, ptr @.str, ptr @pwm_lpss_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_lpss_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_lpss_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_lpss_is_updating._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_lpss_wait_for_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pwm_lpss_probe(ptr noundef %dev, ptr noundef %r, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %npwm = getelementptr inbounds %struct.pwm_lpss_boardinfo, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %npwm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ugt i32 %1, 4
  br i1 %cmp, label %do.end, label %if.end21, !prof !39

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 218, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end21:                                         ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #4
  %tobool23.not = icmp eq ptr %call.i, null
  br i1 %tobool23.not, label %if.end21.cleanup_crit_edge, label %if.end26

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  %call27 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %r) #4
  %regs = getelementptr inbounds %struct.pwm_lpss_chip, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call27, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end26.cleanup_crit_edge, label %if.end33

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end33:                                         ; preds = %if.end26
  %info34 = getelementptr inbounds %struct.pwm_lpss_chip, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %info34 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %info, ptr %info34, align 4
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool36.not = icmp eq i32 %5, 0
  br i1 %tobool36.not, label %if.end33.cleanup_crit_edge, label %if.end39

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end39:                                         ; preds = %if.end33
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @pwm_lpss_ops, ptr %ops, align 4
  %8 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %npwm, align 4
  %npwm44 = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %npwm44 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %npwm44, align 4
  %call46 = tail call i32 @devm_pwmchip_add(ptr noundef %dev, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %for.cond.preheader, label %do.end51

for.cond.preheader:                               ; preds = %if.end39
  %11 = ptrtoint ptr %info34 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info34, align 4
  %npwm5592 = getelementptr inbounds %struct.pwm_lpss_boardinfo, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %npwm5592 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %npwm5592, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp5693.not = icmp eq i32 %14, 0
  br i1 %cmp5693.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pwms = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 7
  br label %for.body

do.end51:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call46) #7
  %15 = inttoptr i32 %call46 to ptr
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.094 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %16 = ptrtoint ptr %pwms to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pwms, align 4
  %chip.i = getelementptr %struct.pwm_device, ptr %17, i32 %i.094, i32 4
  %18 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip.i, align 8
  %regs.i = getelementptr inbounds %struct.pwm_lpss_chip, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %hwpwm.i = getelementptr %struct.pwm_device, ptr %17, i32 %i.094, i32 2
  %22 = ptrtoint ptr %hwpwm.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hwpwm.i, align 8
  %mul.i = shl i32 %23, 10
  %add.ptr.i = getelementptr i8, ptr %21, i32 %mul.i
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  %.mask = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool59.not = icmp eq i32 %.mask, 0
  br i1 %tobool59.not, label %for.body.for.inc_crit_edge, label %if.then60

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then60:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %call.i91 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 5) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then60, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.094, 1
  %25 = ptrtoint ptr %info34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %info34, align 4
  %npwm55 = getelementptr inbounds %struct.pwm_lpss_boardinfo, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %npwm55 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %npwm55, align 4
  %cmp56 = icmp ult i32 %inc, %28
  br i1 %cmp56, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end51, %for.cond.preheader.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -19 to ptr), %do.end ], [ %15, %do.end51 ], [ inttoptr (i32 -12 to ptr), %if.end21.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end33.cleanup_crit_edge ], [ %call.i, %for.cond.preheader.cleanup_crit_edge ], [ %call.i, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pwmchip_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_lpss_apply(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %state.sroa.4.0.state1.i.sroa_idx.i32 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %state.sroa.4.0.state1.i.sroa_idx.i32 to i32
  call void @__asan_load1_noabort(i32 %2)
  %state.sroa.4.0.copyload1.i33 = load i8, ptr %state.sroa.4.0.state1.i.sroa_idx.i32, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state.sroa.4.0.copyload1.i33)
  %tobool.i34.not = icmp eq i8 %state.sroa.4.0.copyload1.i33, 0
  br i1 %tobool.not, label %if.else11, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool.i34.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #4
  %call4 = tail call fastcc i32 @pwm_lpss_prepare_enable(ptr noundef %chip, ptr noundef %pwm, ptr noundef %state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then2.if.end18_crit_edge, label %if.then6

if.then2.if.end18_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  %call.i31 = tail call i32 @__pm_runtime_idle(ptr noundef %6, i32 noundef 5) #4
  br label %if.end18

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %call9 = tail call fastcc i32 @pwm_lpss_prepare_enable(ptr noundef %chip, ptr noundef %pwm, ptr noundef %state)
  br label %if.end18

if.else11:                                        ; preds = %entry
  br i1 %tobool.i34.not, label %if.else11.if.end18_crit_edge, label %if.then13

if.else11.if.end18_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then13:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #6
  %chip.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 4
  %7 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip.i, align 8
  %regs.i = getelementptr inbounds %struct.pwm_lpss_chip, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %hwpwm.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %11 = ptrtoint ptr %hwpwm.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hwpwm.i, align 8
  %mul.i = shl i32 %12, 10
  %add.ptr.i = getelementptr i8, ptr %10, i32 %mul.i
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  %14 = and i32 %13, -129
  %15 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  %regs.i36 = getelementptr inbounds %struct.pwm_lpss_chip, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %regs.i36 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i36, align 4
  %19 = ptrtoint ptr %hwpwm.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hwpwm.i, align 8
  %mul.i38 = shl i32 %20, 10
  %add.ptr.i39 = getelementptr i8, ptr %18, i32 %mul.i38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 %14) #4, !srcloc !44
  %21 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chip, align 4
  %call.i40 = tail call i32 @__pm_runtime_idle(ptr noundef %22, i32 noundef 5) #4
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.else11.if.end18_crit_edge, %if.else, %if.then6, %if.then2.if.end18_crit_edge
  %ret.0 = phi i32 [ %call9, %if.else ], [ %call4, %if.then6 ], [ 0, %if.then2.if.end18_crit_edge ], [ 0, %if.then13 ], [ 0, %if.else11.if.end18_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pwm_lpss_get_state(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef writeonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #4
  %info = getelementptr inbounds %struct.pwm_lpss_chip, ptr %chip, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %base_unit_bits = getelementptr inbounds %struct.pwm_lpss_boardinfo, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %base_unit_bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_unit_bits, align 4
  %shl = shl nuw i32 1, %5
  %chip.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 4
  %6 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip.i, align 8
  %regs.i = getelementptr inbounds %struct.pwm_lpss_chip, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %hwpwm.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %10 = ptrtoint ptr %hwpwm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hwpwm.i, align 8
  %mul.i = shl i32 %11, 10
  %add.ptr.i = getelementptr i8, ptr %9, i32 %mul.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !40
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  %shr = lshr i32 %13, 8
  %sub3 = add i32 %shl, -1
  %and4 = and i32 %shr, %sub3
  %conv5 = zext i32 %and4 to i64
  %14 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %info, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %conv7 = zext i32 %17 to i64
  %mul = mul nuw nsw i64 %conv5, %conv7
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp179 = icmp ult i64 %mul, 4294967296
  br i1 %cmp179, label %if.then183, label %if.else189, !prof !45

if.then183:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv184 = trunc i64 %mul to i32
  %div187604 = lshr i32 %conv184, %5
  %conv188 = zext i32 %div187604 to i64
  br label %if.end193

if.else189:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %18 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl, i64 %mul) #8, !srcloc !46
  %asmresult1.i = extractvalue { i64, i64 } %18, 1
  br label %if.end193

if.end193:                                        ; preds = %if.else189, %if.then183
  %freq.0 = phi i64 [ %conv188, %if.then183 ], [ %asmresult1.i, %if.else189 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %freq.0)
  %cmp195 = icmp eq i64 %freq.0, 0
  br i1 %cmp195, label %if.end193.if.end425_crit_edge, label %if.else198

if.end193.if.end425_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end425

if.else198:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #6
  %conv199 = trunc i64 %freq.0 to i32
  %div200 = udiv i32 1000000000, %conv199
  %conv201 = zext i32 %div200 to i64
  br label %if.end425

if.end425:                                        ; preds = %if.else198, %if.end193.if.end425_crit_edge
  %storemerge = phi i64 [ %conv201, %if.else198 ], [ 1000000000, %if.end193.if.end425_crit_edge ]
  %and = and i32 %13, 255
  %sub = xor i32 %and, 255
  %conv = zext i32 %sub to i64
  %19 = ptrtoint ptr %state to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %storemerge, ptr %state, align 8
  %mul205 = mul nuw nsw i64 %storemerge, %conv
  %20 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 72340172838076673, i64 %mul205, i64 72340172838076673) #8, !srcloc !47
  %21 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 72340172838076673, i64 %mul205, i64 %20) #8, !srcloc !48
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %22 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %duty_cycle, align 8
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %23 = ptrtoint ptr %polarity to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %polarity, align 8
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %call2.lobit = lshr i32 %13, 31
  %24 = trunc i32 %call2.lobit to i8
  %25 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %enabled, align 4
  %26 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chip, align 4
  %call.i606 = tail call i32 @__pm_runtime_idle(ptr noundef %27, i32 noundef 5) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pwm_lpss_prepare_enable(ptr nocapture noundef readonly %lpwm, ptr nocapture noundef readonly %pwm, ptr nocapture noundef readonly %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 4
  %0 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i.i, align 8
  %regs.i.i = getelementptr inbounds %struct.pwm_lpss_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %hwpwm.i.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %4 = ptrtoint ptr %hwpwm.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwpwm.i.i, align 8
  %mul.i.i = shl i32 %5, 10
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %mul.i.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  %7 = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end, label %pwm_lpss_is_updating.exit

pwm_lpss_is_updating.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip.i.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.5) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %12 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %duty_cycle, align 8
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %state, align 8
  %conv1 = trunc i64 %15 to i32
  %info.i = getelementptr inbounds %struct.pwm_lpss_chip, ptr %lpwm, i32 0, i32 2
  %16 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %info.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %div172.i = udiv i32 1000000000, %conv1
  %conv173.i = zext i32 %div172.i to i64
  %base_unit_bits.i = getelementptr inbounds %struct.pwm_lpss_boardinfo, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %base_unit_bits.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %base_unit_bits.i, align 4
  %shl181.i = shl nuw i32 1, %21
  %conv182.i = zext i32 %shl181.i to i64
  %mul183.i = mul nuw nsw i64 %conv173.i, %conv182.i
  %div184917.i = lshr i32 %19, 1
  %conv185.i = zext i32 %div184917.i to i64
  %add186.i = add nuw nsw i64 %mul183.i, %conv185.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add186.i)
  %cmp388.i = icmp ult i64 %add186.i, 4294967296
  br i1 %cmp388.i, label %if.then396.i, label %if.else402.i, !prof !45

if.then396.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv397.i = trunc i64 %add186.i to i32
  %div400.i = udiv i32 %conv397.i, %19
  %conv401.i = zext i32 %div400.i to i64
  br label %if.end406.i

if.else402.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %19, i64 %add186.i) #8, !srcloc !46
  %asmresult1.i947.i = extractvalue { i64, i64 } %22, 1
  br label %if.end406.i

if.end406.i:                                      ; preds = %if.else402.i, %if.then396.i
  %_tmp.0.i = phi i64 [ %conv401.i, %if.then396.i ], [ %asmresult1.i947.i, %if.else402.i ]
  %23 = shl i64 %13, 32
  %conv425.i = ashr exact i64 %23, 32
  %mul426.i = mul nsw i64 %conv425.i, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul426.i)
  %cmp628.i = icmp ult i64 %mul426.i, 4294967296
  br i1 %cmp628.i, label %if.then636.i, label %if.else642.i, !prof !45

if.then636.i:                                     ; preds = %if.end406.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv637.i = trunc i64 %mul426.i to i32
  %div640.i = udiv i32 %conv637.i, %conv1
  br label %pwm_lpss_prepare.exit

if.else642.i:                                     ; preds = %if.end406.i
  call void @__sanitizer_cov_trace_pc() #6
  %24 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv1, i64 %mul426.i) #8, !srcloc !46
  %asmresult1.i972.i = extractvalue { i64, i64 } %24, 1
  %extract.t1057.i = trunc i64 %asmresult1.i972.i to i32
  br label %pwm_lpss_prepare.exit

pwm_lpss_prepare.exit:                            ; preds = %if.else642.i, %if.then636.i
  %on_time_div.0.off0.i = phi i32 [ %div640.i, %if.then636.i ], [ %extract.t1057.i, %if.else642.i ]
  %25 = tail call i64 @llvm.umax.i64(i64 %_tmp.0.i, i64 1) #4
  %sub416.i = add i32 %shl181.i, -1
  %conv417.i = zext i32 %sub416.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %conv417.i)
  %cmp419.i = icmp ult i64 %25, %conv417.i
  %extract.t.i = trunc i64 %25 to i32
  %cond424.off0.i = select i1 %cmp419.i, i32 %extract.t.i, i32 %sub416.i
  %26 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chip.i.i, align 8
  %regs.i.i27 = getelementptr inbounds %struct.pwm_lpss_chip, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %regs.i.i27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i.i27, align 4
  %30 = ptrtoint ptr %hwpwm.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hwpwm.i.i, align 8
  %mul.i.i29 = shl i32 %31, 10
  %add.ptr.i.i30 = getelementptr i8, ptr %29, i32 %mul.i.i29
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i30) #4, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  %33 = and i32 %32, 16777215
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #4
  %shl652.i = shl i32 %sub416.i, 8
  %neg653.i = xor i32 %shl652.i, -1
  %and654.i = and i32 %34, %neg653.i
  %shl656.i = shl i32 %cond424.off0.i, 8
  %35 = sub i32 255, %on_time_div.0.off0.i
  %or657.i = or i32 %35, %shl656.i
  %conv660.i = or i32 %or657.i, %and654.i
  %36 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chip.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  %38 = tail call i32 @llvm.bswap.i32(i32 %conv660.i) #4
  %regs.i974.i = getelementptr inbounds %struct.pwm_lpss_chip, ptr %37, i32 0, i32 1
  %39 = ptrtoint ptr %regs.i974.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i974.i, align 4
  %41 = ptrtoint ptr %hwpwm.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hwpwm.i.i, align 8
  %mul.i976.i = shl i32 %42, 10
  %add.ptr.i977.i = getelementptr i8, ptr %40, i32 %mul.i976.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i977.i, i32 %38) #4, !srcloc !44
  %or661.i = or i32 %conv660.i, 1073741824
  %43 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chip.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  %45 = tail call i32 @llvm.bswap.i32(i32 %or661.i) #4
  %regs.i979.i = getelementptr inbounds %struct.pwm_lpss_chip, ptr %44, i32 0, i32 1
  %46 = ptrtoint ptr %regs.i979.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i979.i, align 4
  %48 = ptrtoint ptr %hwpwm.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hwpwm.i.i, align 8
  %mul.i981.i = shl i32 %49, 10
  %add.ptr.i982.i = getelementptr i8, ptr %47, i32 %mul.i981.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i982.i, i32 %45) #4, !srcloc !44
  %50 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %info.i, align 4
  %bypass = getelementptr inbounds %struct.pwm_lpss_boardinfo, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %bypass to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %bypass, align 4, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp = icmp eq i8 %53, 0
  br i1 %cmp, label %if.then.i, label %pwm_lpss_prepare.exit.pwm_lpss_cond_enable.exit_crit_edge

pwm_lpss_prepare.exit.pwm_lpss_cond_enable.exit_crit_edge: ; preds = %pwm_lpss_prepare.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %pwm_lpss_cond_enable.exit

if.then.i:                                        ; preds = %pwm_lpss_prepare.exit
  call void @__sanitizer_cov_trace_pc() #6
  %54 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %chip.i.i, align 8
  %regs.i.i32 = getelementptr inbounds %struct.pwm_lpss_chip, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %regs.i.i32 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i.i32, align 4
  %58 = ptrtoint ptr %hwpwm.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %hwpwm.i.i, align 8
  %mul.i.i34 = shl i32 %59, 10
  %add.ptr.i.i35 = getelementptr i8, ptr %57, i32 %mul.i.i34
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i35) #4, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  %61 = or i32 %60, 128
  %62 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %chip.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  %regs.i3.i = getelementptr inbounds %struct.pwm_lpss_chip, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %regs.i3.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i3.i, align 4
  %66 = ptrtoint ptr %hwpwm.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %hwpwm.i.i, align 8
  %mul.i5.i = shl i32 %67, 10
  %add.ptr.i6.i = getelementptr i8, ptr %65, i32 %mul.i5.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %61) #4, !srcloc !44
  br label %pwm_lpss_cond_enable.exit

pwm_lpss_cond_enable.exit:                        ; preds = %if.then.i, %pwm_lpss_prepare.exit.pwm_lpss_cond_enable.exit_crit_edge
  %68 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %chip.i.i, align 8
  %regs.i = getelementptr inbounds %struct.pwm_lpss_chip, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs.i, align 4
  %72 = ptrtoint ptr %hwpwm.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %hwpwm.i.i, align 8
  %mul.i36 = shl i32 %73, 10
  %add.ptr.i = getelementptr i8, ptr %71, i32 %mul.i36
  %call2.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call2.i, 500000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 70) #4
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !49
  %75 = and i32 %74, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not49.i = icmp eq i32 %75, 0
  br i1 %tobool.not49.i, label %pwm_lpss_cond_enable.exit.if.end8_crit_edge, label %pwm_lpss_cond_enable.exit.land.lhs.true.i_crit_edge

pwm_lpss_cond_enable.exit.land.lhs.true.i_crit_edge: ; preds = %pwm_lpss_cond_enable.exit
  br label %land.lhs.true.i

pwm_lpss_cond_enable.exit.if.end8_crit_edge:      ; preds = %pwm_lpss_cond_enable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

land.lhs.true.i:                                  ; preds = %if.then26.i.land.lhs.true.i_crit_edge, %pwm_lpss_cond_enable.exit.land.lhs.true.i_crit_edge
  %call15.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call15.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call15.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then26.i

if.then26.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 11, i32 noundef 40, i32 noundef 2) #4
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !49
  %77 = and i32 %76, 64
  %tobool.not.i37 = icmp eq i32 %77, 0
  br i1 %tobool.not.i37, label %if.then26.i.if.end8_crit_edge, label %if.then26.i.land.lhs.true.i_crit_edge

if.then26.i.land.lhs.true.i_crit_edge:            ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

if.then26.i.if.end8_crit_edge:                    ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

for.end.i:                                        ; preds = %land.lhs.true.i
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !50
  %79 = and i32 %78, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool30.not.i = icmp eq i32 %79, 0
  br i1 %tobool30.not.i, label %for.end.i.if.end8_crit_edge, label %pwm_lpss_wait_for_update.exit

for.end.i.if.end8_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

pwm_lpss_wait_for_update.exit:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %80 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %chip.i.i, align 8
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.7) #7
  br label %cleanup

if.end8:                                          ; preds = %for.end.i.if.end8_crit_edge, %if.then26.i.if.end8_crit_edge, %pwm_lpss_cond_enable.exit.if.end8_crit_edge
  %84 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %info.i, align 4
  %bypass10 = getelementptr inbounds %struct.pwm_lpss_boardinfo, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %bypass10 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %bypass10, align 4, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool11.not = icmp eq i8 %87, 0
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %if.then.i46

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i46:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %88 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %chip.i.i, align 8
  %regs.i.i39 = getelementptr inbounds %struct.pwm_lpss_chip, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %regs.i.i39 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs.i.i39, align 4
  %92 = ptrtoint ptr %hwpwm.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %hwpwm.i.i, align 8
  %mul.i.i41 = shl i32 %93, 10
  %add.ptr.i.i42 = getelementptr i8, ptr %91, i32 %mul.i.i41
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i42) #4, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  %95 = or i32 %94, 128
  %96 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %chip.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  %regs.i3.i43 = getelementptr inbounds %struct.pwm_lpss_chip, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %regs.i3.i43 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs.i3.i43, align 4
  %100 = ptrtoint ptr %hwpwm.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %hwpwm.i.i, align 8
  %mul.i5.i44 = shl i32 %101, 10
  %add.ptr.i6.i45 = getelementptr i8, ptr %99, i32 %mul.i5.i44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i45, i32 %95) #4, !srcloc !44
  br label %cleanup

cleanup:                                          ; preds = %if.then.i46, %if.end8.cleanup_crit_edge, %pwm_lpss_wait_for_update.exit, %pwm_lpss_is_updating.exit
  %retval.0 = phi i32 [ -16, %pwm_lpss_is_updating.exit ], [ -110, %pwm_lpss_wait_for_update.exit ], [ 0, %if.end8.cleanup_crit_edge ], [ 0, %if.then.i46 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !13, !15, !17, !18, !20, !22, !23, !24, !25, !27, !28, !29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-lpss.c", i32 218, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pwm/pwm-lpss.c", i32 241, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @pwm_lpss_probe._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @pwm_lpss_probe._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @__ksymtab_pwm_lpss_probe, !10, !"__ksymtab_pwm_lpss_probe", i1 false, i1 false}
!10 = !{!"../drivers/pwm/pwm-lpss.c", i32 253, i32 1}
!11 = !{ptr @__UNIQUE_ID_description175, !12, !"__UNIQUE_ID_description175", i1 false, i1 false}
!12 = !{!"../drivers/pwm/pwm-lpss.c", i32 255, i32 1}
!13 = !{ptr @__UNIQUE_ID_author176, !14, !"__UNIQUE_ID_author176", i1 false, i1 false}
!14 = !{!"../drivers/pwm/pwm-lpss.c", i32 256, i32 1}
!15 = !{ptr @__UNIQUE_ID_file177, !16, !"__UNIQUE_ID_file177", i1 false, i1 false}
!16 = !{!"../drivers/pwm/pwm-lpss.c", i32 257, i32 1}
!17 = !{ptr @__UNIQUE_ID_license178, !16, !"__UNIQUE_ID_license178", i1 false, i1 false}
!18 = !{ptr @pwm_lpss_ops, !19, !"pwm_lpss_ops", i1 false, i1 false}
!19 = !{!"../drivers/pwm/pwm-lpss.c", i32 204, i32 29}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pwm/pwm-lpss.c", i32 80, i32 3}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @pwm_lpss_is_updating._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @pwm_lpss_is_updating._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pwm/pwm-lpss.c", i32 72, i32 3}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @pwm_lpss_wait_for_update._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @pwm_lpss_wait_for_update._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{i64 2981212}
!41 = !{i64 2152518076}
!42 = !{i8 0, i8 2}
!43 = !{i64 2152518505}
!44 = !{i64 2980794}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{i64 2147987210, i64 2147987490, i64 2147987824, i64 2147988158}
!47 = !{i64 479365, i64 479392}
!48 = !{i64 479705, i64 479732, i64 479766, i64 479787}
!49 = !{i64 2152520365}
!50 = !{i64 2152520799}
