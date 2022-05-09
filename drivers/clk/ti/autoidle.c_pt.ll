; ModuleID = '/llk/IR_all_yes/drivers/clk/ti/autoidle.c_pt.bc'
source_filename = "../drivers/clk/ti/autoidle.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.clk_hw_omap = type { %struct.clk_hw, %struct.list_head, i32, i8, %struct.clk_omap_reg, i8, i32, %struct.clk_omap_reg, ptr, ptr, ptr, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }
%struct.clk_hw_omap_ops = type { ptr, ptr, ptr, ptr }
%struct.clk_ti_autoidle = type { %struct.clk_omap_reg, i8, i8, ptr, %struct.list_head }
%struct.ti_clk_ll_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti,autoidle-shift\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ti,invert-autoidle-bit\00", [41 x i8] zeroinitializer }, align 32
@autoidle_clks = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @autoidle_clks, ptr @autoidle_clks }, [24 x i8] zeroinitializer }, align 32
@autoidle_spinlock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"autoidle_spinlock\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ti_clk_ll_ops = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 199, i32 33 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 215, i32 34 }
@___asan_gen_.9 = private unnamed_addr constant [14 x i8] c"autoidle_clks\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 37, i32 8 }
@___asan_gen_.12 = private unnamed_addr constant [18 x i8] c"autoidle_spinlock\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [29 x i8] c"../drivers/clk/ti/autoidle.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 45, i32 8 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @autoidle_clks, ptr @autoidle_spinlock, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autoidle_clks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autoidle_spinlock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_clk_deny_idle(ptr noundef %clk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %clk, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @__clk_get_hw(ptr noundef nonnull %clk) #5
  %call1 = tail call zeroext i1 @omap2_clk_is_hw_omap(ptr noundef %call) #5
  br i1 %call1, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %ops.i = getelementptr inbounds %struct.clk_hw_omap, ptr %call, i32 0, i32 11
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then2.cleanup_crit_edge, label %land.lhs.true.i

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then2
  %deny_idle.i = getelementptr inbounds %struct.clk_hw_omap_ops, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %deny_idle.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %deny_idle.i, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @autoidle_spinlock) #5
  %autoidle_count.i = getelementptr inbounds %struct.clk_hw_omap, ptr %call, i32 0, i32 13
  %4 = ptrtoint ptr %autoidle_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %autoidle_count.i, align 4
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr %autoidle_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp8.i = icmp eq i32 %5, 0
  br i1 %cmp8.i, label %if.then10.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then10.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %deny_idle12.i = getelementptr inbounds %struct.clk_hw_omap_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %deny_idle12.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %deny_idle12.i, align 4
  tail call void %9(ptr noundef %call) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then10.i, %if.then.i.if.end.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @autoidle_spinlock, i32 noundef %call4.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %land.lhs.true.i.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then2.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @omap2_clk_is_hw_omap(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_omap2_clk_deny_idle(ptr noundef %clk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 11
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %land.lhs.true

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

land.lhs.true:                                    ; preds = %entry
  %deny_idle = getelementptr inbounds %struct.clk_hw_omap_ops, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %deny_idle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %deny_idle, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end13_crit_edge, label %if.then

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then:                                          ; preds = %land.lhs.true
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @autoidle_spinlock) #5
  %autoidle_count = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 13
  %4 = ptrtoint ptr %autoidle_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %autoidle_count, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %autoidle_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp8 = icmp eq i32 %5, 0
  br i1 %cmp8, label %if.then10, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %deny_idle12 = getelementptr inbounds %struct.clk_hw_omap_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %deny_idle12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %deny_idle12, align 4
  tail call void %9(ptr noundef %clk) #5
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @autoidle_spinlock, i32 noundef %call4) #5
  br label %if.end13

if.end13:                                         ; preds = %if.end, %land.lhs.true.if.end13_crit_edge, %entry.if.end13_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_clk_allow_idle(ptr noundef %clk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %clk, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @__clk_get_hw(ptr noundef nonnull %clk) #5
  %call1 = tail call zeroext i1 @omap2_clk_is_hw_omap(ptr noundef %call) #5
  br i1 %call1, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %ops.i = getelementptr inbounds %struct.clk_hw_omap, ptr %call, i32 0, i32 11
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then2.cleanup_crit_edge, label %land.lhs.true.i

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then2
  %allow_idle.i = getelementptr inbounds %struct.clk_hw_omap_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %allow_idle.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %allow_idle.i, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @autoidle_spinlock) #5
  %autoidle_count.i = getelementptr inbounds %struct.clk_hw_omap, ptr %call, i32 0, i32 13
  %4 = ptrtoint ptr %autoidle_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %autoidle_count.i, align 4
  %dec.i = add i32 %5, -1
  store i32 %dec.i, ptr %autoidle_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp8.i = icmp eq i32 %dec.i, 0
  br i1 %cmp8.i, label %if.then10.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then10.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %allow_idle12.i = getelementptr inbounds %struct.clk_hw_omap_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %allow_idle12.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %allow_idle12.i, align 4
  tail call void %9(ptr noundef %call) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then10.i, %if.then.i.if.end.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @autoidle_spinlock, i32 noundef %call4.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %land.lhs.true.i.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then2.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_omap2_clk_allow_idle(ptr noundef %clk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 11
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %land.lhs.true

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

land.lhs.true:                                    ; preds = %entry
  %allow_idle = getelementptr inbounds %struct.clk_hw_omap_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %allow_idle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %allow_idle, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end13_crit_edge, label %if.then

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then:                                          ; preds = %land.lhs.true
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @autoidle_spinlock) #5
  %autoidle_count = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 13
  %4 = ptrtoint ptr %autoidle_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %autoidle_count, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %autoidle_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp8 = icmp eq i32 %dec, 0
  br i1 %cmp8, label %if.then10, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %allow_idle12 = getelementptr inbounds %struct.clk_hw_omap_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %allow_idle12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %allow_idle12, align 4
  tail call void %9(ptr noundef %clk) #5
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @autoidle_spinlock, i32 noundef %call4) #5
  br label %if.end13

if.end13:                                         ; preds = %if.end, %land.lhs.true.if.end13_crit_edge, %entry.if.end13_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @of_ti_clk_autoidle_setup(ptr noundef %node) local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  %shift = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %shift) #5
  %0 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %shift, align 4, !annotation !18
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str, ptr noundef nonnull %shift, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 24) #8
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %shift, align 4
  %conv = trunc i32 %3 to i8
  %shift5 = getelementptr inbounds %struct.clk_ti_autoidle, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %shift5 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %shift5, align 8
  %5 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %node, align 4
  %name6 = getelementptr inbounds %struct.clk_ti_autoidle, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %name6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %name6, align 4
  %call7 = call i32 @ti_clk_get_reg_addr(ptr noundef %node, i32 noundef 0, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %call.i = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.1, ptr noundef null) #5
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.end10.if.end15_crit_edge, label %if.then12

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %flags = getelementptr inbounds %struct.clk_ti_autoidle, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %flags, align 1
  %10 = or i8 %9, 1
  store i8 %10, ptr %flags, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end10.if.end15_crit_edge
  %node16 = getelementptr inbounds %struct.clk_ti_autoidle, ptr %call7.i.i, i32 0, i32 4
  %11 = load ptr, ptr @autoidle_clks, align 4
  %call.i.i29 = call zeroext i1 @__list_add_valid(ptr noundef %node16, ptr noundef nonnull @autoidle_clks, ptr noundef %11) #5
  br i1 %call.i.i29, label %if.end.i.i, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %node16, ptr %prev1.i.i, align 4
  %13 = ptrtoint ptr %node16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %node16, align 8
  %prev3.i.i = getelementptr inbounds %struct.clk_ti_autoidle, ptr %call7.i.i, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @autoidle_clks, ptr %prev3.i.i, align 4
  store volatile ptr %node16, ptr @autoidle_clks, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end15.cleanup_crit_edge, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then9 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %shift) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_clk_get_reg_addr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_clk_enable_autoidle_all() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap2_clk_for_each(ptr noundef nonnull @_omap2_clk_allow_idle) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %.pn7.i = load ptr, ptr @autoidle_clks, align 4
  %cmp.not8.i = icmp eq ptr %.pn7.i, @autoidle_clks
  br i1 %cmp.not8.i, label %if.end.cleanup_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn9.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn7.i, %if.end.for.body.i_crit_edge ]
  %c.0.i = getelementptr i8, ptr %.pn9.i, i32 -16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %0 = load ptr, ptr @ti_clk_ll_ops, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %call.i.i = tail call i32 %2(ptr noundef %c.0.i) #5
  %flags.i.i = getelementptr i8, ptr %.pn9.i, i32 -7
  %3 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %flags.i.i, align 1
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.i = icmp eq i8 %5, 0
  %shift3.i.i = getelementptr i8, ptr %.pn9.i, i32 -8
  %6 = ptrtoint ptr %shift3.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shift3.i.i, align 4
  %conv4.i.i = zext i8 %7 to i32
  %shl5.i.i = shl nuw i32 1, %conv4.i.i
  %neg.i.i = xor i32 %shl5.i.i, -1
  %and2.i.i = and i32 %call.i.i, %neg.i.i
  %or.i.i = or i32 %shl5.i.i, %call.i.i
  %val.0.i.i = select i1 %tobool.not.i.i, i32 %or.i.i, i32 %and2.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %8 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel.i.i = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %clk_writel.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_writel.i.i, align 4
  tail call void %10(i32 noundef %val.0.i.i, ptr noundef %c.0.i) #5
  %11 = ptrtoint ptr %.pn9.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load ptr, ptr %.pn9.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @autoidle_clks
  br i1 %cmp.not.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clk_for_each(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_clk_disable_autoidle_all() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap2_clk_for_each(ptr noundef nonnull @_omap2_clk_deny_idle) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %.pn7.i = load ptr, ptr @autoidle_clks, align 4
  %cmp.not8.i = icmp eq ptr %.pn7.i, @autoidle_clks
  br i1 %cmp.not8.i, label %if.end.cleanup_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn9.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn7.i, %if.end.for.body.i_crit_edge ]
  %c.0.i = getelementptr i8, ptr %.pn9.i, i32 -16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %0 = load ptr, ptr @ti_clk_ll_ops, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %call.i.i = tail call i32 %2(ptr noundef %c.0.i) #5
  %flags.i.i = getelementptr i8, ptr %.pn9.i, i32 -7
  %3 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %flags.i.i, align 1
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.i = icmp eq i8 %5, 0
  %shift2.i.i = getelementptr i8, ptr %.pn9.i, i32 -8
  %6 = ptrtoint ptr %shift2.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shift2.i.i, align 4
  %conv3.i.i = zext i8 %7 to i32
  %shl4.i.i = shl nuw i32 1, %conv3.i.i
  %or.i.i = or i32 %shl4.i.i, %call.i.i
  %neg.i.i = xor i32 %shl4.i.i, -1
  %and5.i.i = and i32 %call.i.i, %neg.i.i
  %val.0.i.i = select i1 %tobool.not.i.i, i32 %and5.i.i, i32 %or.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %8 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel.i.i = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %clk_writel.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_writel.i.i, align 4
  tail call void %10(i32 noundef %val.0.i.i, ptr noundef %c.0.i) #5
  %11 = ptrtoint ptr %.pn9.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load ptr, ptr %.pn9.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @autoidle_clks
  br i1 %cmp.not.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/ti/autoidle.c", i32 199, i32 33}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/ti/autoidle.c", i32 215, i32 34}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/ti/autoidle.c", i32 45, i32 8}
!6 = !{ptr @autoidle_spinlock, !5, !"autoidle_spinlock", i1 false, i1 false}
!7 = !{ptr @autoidle_clks, !8, !"autoidle_clks", i1 false, i1 false}
!8 = !{!"../drivers/clk/ti/autoidle.c", i32 37, i32 8}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{!"auto-init"}
