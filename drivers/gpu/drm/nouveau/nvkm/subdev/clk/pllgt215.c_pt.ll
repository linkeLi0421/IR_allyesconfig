; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/clk/pllgt215.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/clk/pllgt215.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvbios_pll = type { i32, i32, i32, i8, i8, i8, i8, %struct.anon.140, %struct.anon.140 }
%struct.anon.140 = type { i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@gt215_pll_calc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 82, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: unable to find matching pll values\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gt215_pll_calc\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/clk/pllgt215.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gt215_pll_calc._entry_ptr = internal global ptr @gt215_pll_calc._entry, section ".printk_index", align 4
@___asan_gen_.5 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [54 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/pllgt215.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 82, i32 3 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @gt215_pll_calc._entry, ptr @gt215_pll_calc._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt215_pll_calc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gt215_pll_calc(ptr noundef %subdev, ptr nocapture noundef readonly %info, i32 noundef %freq, ptr nocapture noundef %pN, ptr noundef writeonly %pfN, ptr nocapture noundef %pM, ptr nocapture noundef %P) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %max_freq = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %max_freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_freq, align 4
  %div = udiv i32 %1, %freq
  %2 = ptrtoint ptr %P to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %div, ptr %P, align 4
  %max_p = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 4
  %3 = ptrtoint ptr %max_p to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %max_p, align 1
  %conv = zext i8 %4 to i32
  %5 = tail call i32 @llvm.smin.i32(i32 %div, i32 %conv)
  %6 = ptrtoint ptr %P to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %P, align 4
  %min_p = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 3
  %7 = ptrtoint ptr %min_p to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %min_p, align 4
  %conv4 = zext i8 %8 to i32
  %9 = tail call i32 @llvm.smax.i32(i32 %5, i32 %conv4)
  %10 = ptrtoint ptr %P to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %P, align 4
  %refclk = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 2
  %11 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %refclk, align 4
  %max_inputfreq = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 3
  %13 = ptrtoint ptr %max_inputfreq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_inputfreq, align 4
  %add = add i32 %14, %12
  %div14 = udiv i32 %add, %14
  %min_m = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 4
  %15 = ptrtoint ptr %min_m to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %min_m, align 4
  %conv16 = zext i8 %16 to i32
  %17 = tail call i32 @llvm.smax.i32(i32 %div14, i32 %conv16)
  %min_inputfreq = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 2
  %18 = ptrtoint ptr %min_inputfreq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %min_inputfreq, align 4
  %add21 = add i32 %19, %12
  %div24 = udiv i32 %add21, %19
  %max_m = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 5
  %20 = ptrtoint ptr %max_m to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %max_m, align 1
  %conv26 = zext i8 %21 to i32
  %22 = tail call i32 @llvm.smin.i32(i32 %div24, i32 %conv26)
  %23 = tail call i32 @llvm.smin.i32(i32 %17, i32 %22)
  %tobool.not = icmp eq ptr %pfN, null
  %min_n = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 6
  %max_n = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %best_err.0212 = phi i32 [ -1, %entry ], [ %best_err.2.ph, %for.inc.for.body_crit_edge ]
  %M.0211 = phi i32 [ %23, %entry ], [ %inc102, %for.inc.for.body_crit_edge ]
  %24 = ptrtoint ptr %P to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %P, align 4
  %mul = mul i32 %M.0211, %freq
  %mul44 = mul i32 %mul, %25
  %26 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %refclk, align 4
  %mul44.frozen = freeze i32 %mul44
  %.frozen = freeze i32 %27
  %div46 = udiv i32 %mul44.frozen, %.frozen
  %28 = mul i32 %div46, %.frozen
  %rem.decomposed = sub i32 %mul44.frozen, %28
  %div50196 = lshr i32 %27, 1
  br i1 %tobool.not, label %if.then48, label %if.else

if.then48:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.decomposed, i32 %div50196)
  %cmp51.not = icmp uge i32 %rem.decomposed, %div50196
  %inc = zext i1 %cmp51.not to i32
  %spec.select = add i32 %div46, %inc
  br label %if.end63

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.decomposed, i32 %div50196)
  %cmp57 = icmp ult i32 %rem.decomposed, %div50196
  %dec = sext i1 %cmp57 to i32
  %spec.select199 = add i32 %div46, %dec
  %mul62 = mul i32 %spec.select199, %27
  %sub = sub i32 %mul44, %mul62
  br label %if.end63

if.end63:                                         ; preds = %if.else, %if.then48
  %N.1 = phi i32 [ %spec.select199, %if.else ], [ %spec.select, %if.then48 ]
  %fN.0 = phi i32 [ %sub, %if.else ], [ %rem.decomposed, %if.then48 ]
  %29 = ptrtoint ptr %min_n to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %min_n, align 2
  %conv65 = zext i8 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %N.1, i32 %conv65)
  %cmp66 = icmp slt i32 %N.1, %conv65
  br i1 %cmp66, label %if.end63.for.inc_crit_edge, label %if.end69

if.end63.for.inc_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end69:                                         ; preds = %if.end63
  %31 = ptrtoint ptr %max_n to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %max_n, align 1
  %conv71 = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %N.1, i32 %conv71)
  %cmp72 = icmp sgt i32 %N.1, %conv71
  br i1 %cmp72, label %if.end69.for.end_crit_edge, label %if.end75

if.end69.for.end_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end75:                                         ; preds = %if.end69
  %mul77 = mul i32 %N.1, %27
  %div78 = udiv i32 %mul77, %M.0211
  %div79 = udiv i32 %div78, %25
  %sub80 = sub i32 %freq, %div79
  %33 = tail call i32 @llvm.abs.i32(i32 %sub80, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %best_err.0212)
  %cmp89 = icmp ult i32 %33, %best_err.0212
  br i1 %cmp89, label %if.then91, label %if.end75.if.end92_crit_edge

if.end75.if.end92_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end92

if.then91:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #5
  %34 = ptrtoint ptr %pN to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %N.1, ptr %pN, align 4
  %35 = ptrtoint ptr %pM to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %M.0211, ptr %pM, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %if.end75.if.end92_crit_edge
  %best_err.1 = phi i32 [ %33, %if.then91 ], [ %best_err.0212, %if.end75.if.end92_crit_edge ]
  br i1 %tobool.not, label %if.end92.for.inc_crit_edge, label %cleanup.thread206

if.end92.for.inc_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

cleanup.thread206:                                ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #5
  %shl = shl i32 %fN.0, 13
  %36 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %refclk, align 4
  %div96197 = lshr i32 %37, 1
  %add97 = add i32 %div96197, %shl
  %div99 = udiv i32 %add97, %37
  %sub100 = add i32 %div99, 61440
  %and = and i32 %sub100, 65535
  %38 = ptrtoint ptr %pfN to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and, ptr %pfN, align 4
  br label %cleanup120

for.inc:                                          ; preds = %if.end92.for.inc_crit_edge, %if.end63.for.inc_crit_edge
  %best_err.2.ph = phi i32 [ %best_err.1, %if.end92.for.inc_crit_edge ], [ %best_err.0212, %if.end63.for.inc_crit_edge ]
  %inc102 = add nsw i32 %M.0211, 1
  %cmp41.not.not = icmp slt i32 %M.0211, %22
  br i1 %cmp41.not.not, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end69.for.end_crit_edge
  %best_err.0.lcssa = phi i32 [ %best_err.0212, %if.end69.for.end_crit_edge ], [ %best_err.2.ph, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best_err.0.lcssa)
  %cmp103 = icmp eq i32 %best_err.0.lcssa, -1
  br i1 %cmp103, label %do.body, label %if.end115, !prof !17

do.body:                                          ; preds = %for.end
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %39 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp108.not = icmp eq i32 %40, 0
  br i1 %cmp108.not, label %do.body.cleanup120_crit_edge, label %do.end

do.body.cleanup120_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup120

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %41 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str, ptr noundef %name) #6
  br label %cleanup120

if.end115:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  %45 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %refclk, align 4
  %47 = ptrtoint ptr %pN to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pN, align 4
  %mul117 = mul i32 %48, %46
  %49 = ptrtoint ptr %pM to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pM, align 4
  %div118 = udiv i32 %mul117, %50
  %51 = ptrtoint ptr %P to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %P, align 4
  %div119 = udiv i32 %div118, %52
  br label %cleanup120

cleanup120:                                       ; preds = %if.end115, %do.end, %do.body.cleanup120_crit_edge, %cleanup.thread206
  %retval.2 = phi i32 [ %div119, %if.end115 ], [ -22, %do.end ], [ -22, %do.body.cleanup120_crit_edge ], [ %freq, %cleanup.thread206 ]
  ret i32 %retval.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/pllgt215.c", i32 82, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gt215_pll_calc._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @gt215_pll_calc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"branch_weights", i32 1, i32 2000}
