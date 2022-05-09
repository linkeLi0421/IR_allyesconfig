; ModuleID = '/llk/IR_all_yes/arch/arm/plat-omap/counter_32k.c_pt.bc'
source_filename = "../arch/arm/plat-omap/counter_32k.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.timespec64 = type { i64, i32 }

@sync32k_cnt_reg = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@persistent_mult = internal global { i32, [28 x i8] } zeroinitializer, align 32
@persistent_shift = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"32k_counter\00", [20 x i8] zeroinitializer }, align 32
@omap_init_clocksource_32k._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\01332k_counter: can't register clocksource\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"omap_init_clocksource_32k\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"arch/arm/plat-omap/counter_32k.c\00", [63 x i8] zeroinitializer }, align 32
@omap_init_clocksource_32k._entry_ptr = internal global ptr @omap_init_clocksource_32k._entry, section ".printk_index", align 4
@omap_init_clocksource_32k._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016OMAP clocksource: 32k_counter at 32768 Hz\0A\00", [51 x i8] zeroinitializer }, align 32
@omap_init_clocksource_32k._entry_ptr.6 = internal global ptr @omap_init_clocksource_32k._entry.4, section ".printk_index", align 4
@cycles = internal global { i32, [28 x i8] } zeroinitializer, align 32
@persistent_ts = internal global { %struct.timespec64, [16 x i8] } zeroinitializer, align 32
@___asan_gen_.7 = private unnamed_addr constant [16 x i8] c"sync32k_cnt_reg\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 36, i32 22 }
@___asan_gen_.10 = private unnamed_addr constant [16 x i8] c"persistent_mult\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 52, i32 21 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"persistent_shift\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 52, i32 38 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 102, i32 47 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 105, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 111, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"cycles\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 51, i32 17 }
@___asan_gen_.40 = private unnamed_addr constant [14 x i8] c"persistent_ts\00", align 1
@___asan_gen_.41 = private constant [36 x i8] c"../arch/arm/plat-omap/counter_32k.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 50, i32 26 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @omap_init_clocksource_32k._entry, ptr @omap_init_clocksource_32k._entry.4, ptr @omap_init_clocksource_32k._entry_ptr, ptr @omap_init_clocksource_32k._entry_ptr.6, ptr @sync32k_cnt_reg, ptr @persistent_mult, ptr @persistent_shift, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @cycles, ptr @persistent_ts], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync32k_cnt_reg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @persistent_mult to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @persistent_shift to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_init_clocksource_32k._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_init_clocksource_32k._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cycles to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @persistent_ts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_init_clocksource_32k(ptr noundef %vbase) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vbase) #6, !srcloc !31
  %1 = and i32 %0, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %storemerge.v = select i1 %tobool.not, i32 16, i32 48
  %storemerge = getelementptr i8, ptr %vbase, i32 %storemerge.v
  store ptr %storemerge, ptr @sync32k_cnt_reg, align 4
  tail call void @clocks_calc_mult_shift(ptr noundef nonnull @persistent_mult, ptr noundef nonnull @persistent_shift, i32 noundef 32768, i32 noundef 1000000000, i32 noundef 120000) #6
  %2 = load ptr, ptr @sync32k_cnt_reg, align 4
  %call3 = tail call i32 @clocksource_mmio_init(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 32768, i32 noundef 250, i32 noundef 32, ptr noundef nonnull @clocksource_mmio_readl_up) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end8, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @sched_clock_register(ptr noundef nonnull @omap_32k_read_sched_clock, i32 noundef 32, i32 noundef 32768) #6
  %call9 = tail call i32 @register_persistent_clock(ptr noundef nonnull @omap_read_persistent_clock64) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %.str.5.sink = phi ptr [ @.str.5, %if.end8 ], [ @.str.1, %entry.cleanup_crit_edge ]
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.5.sink) #9
  ret i32 %call3
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clocks_calc_mult_shift(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readl_up(ptr noundef) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @omap_32k_read_sched_clock() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load ptr, ptr @sync32k_cnt_reg, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %0) #6, !srcloc !31
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %2, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %conv = zext i32 %cond to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_persistent_clock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_read_persistent_clock64(ptr nocapture noundef writeonly %ts) #4 align 64 {
entry:
  %dividend.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @cycles, align 4
  %1 = load ptr, ptr @sync32k_cnt_reg, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %1) #6, !srcloc !31
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  store i32 %cond, ptr @cycles, align 4
  %sub = sub i32 %cond, %0
  %conv = zext i32 %sub to i64
  %4 = load i32, ptr @persistent_mult, align 4
  %5 = load i32, ptr @persistent_shift, align 4
  %conv.i2 = zext i32 %4 to i64
  %mul.i = mul nuw i64 %conv.i2, %conv
  %sh_prom.i = zext i32 %5 to i64
  %shr.i = lshr i64 %mul.i, %sh_prom.i
  %6 = load i32, ptr getelementptr inbounds (%struct.timespec64, ptr @persistent_ts, i32 0, i32 1), align 8
  %conv.i = sext i32 %6 to i64
  %add.i = add i64 %shr.i, %conv.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dividend.addr.i.i) #6
  %7 = ptrtoint ptr %dividend.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %add.i, ptr %dividend.addr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 999999999, i64 %add.i)
  %cmp1.i.i = icmp ugt i64 %add.i, 999999999
  %extract.t.i = trunc i64 %add.i to i32
  br i1 %cmp1.i.i, label %cond.end.while.body.i.i_crit_edge, label %cond.end.timespec64_add_ns.exit_crit_edge

cond.end.timespec64_add_ns.exit_crit_edge:        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %timespec64_add_ns.exit

cond.end.while.body.i.i_crit_edge:                ; preds = %cond.end
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %cond.end.while.body.i.i_crit_edge
  %ret.02.i.i = phi i32 [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %cond.end.while.body.i.i_crit_edge ]
  %8 = phi i64 [ %sub.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %add.i, %cond.end.while.body.i.i_crit_edge ]
  call void asm "", "=*rm,0"(ptr nonnull elementtype(i64) %dividend.addr.i.i, i64 %8) #6, !srcloc !32
  %9 = ptrtoint ptr %dividend.addr.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %dividend.addr.i.i, align 8
  %sub.i.i = add i64 %10, -1000000000
  store i64 %sub.i.i, ptr %dividend.addr.i.i, align 8
  %inc.i.i = add i32 %ret.02.i.i, 1
  %cmp.i.i = icmp ugt i64 %sub.i.i, 999999999
  br i1 %cmp.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %__iter_div_u64_rem.exit.loopexit.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

__iter_div_u64_rem.exit.loopexit.i:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %extract.t1.le.i = trunc i64 %sub.i.i to i32
  br label %timespec64_add_ns.exit

timespec64_add_ns.exit:                           ; preds = %__iter_div_u64_rem.exit.loopexit.i, %cond.end.timespec64_add_ns.exit_crit_edge
  %.lcssa.i.off0.i = phi i32 [ %extract.t.i, %cond.end.timespec64_add_ns.exit_crit_edge ], [ %extract.t1.le.i, %__iter_div_u64_rem.exit.loopexit.i ]
  %ret.0.lcssa.i.i = phi i32 [ 0, %cond.end.timespec64_add_ns.exit_crit_edge ], [ %inc.i.i, %__iter_div_u64_rem.exit.loopexit.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dividend.addr.i.i) #6
  %conv1.i = zext i32 %ret.0.lcssa.i.i to i64
  %11 = load i64, ptr @persistent_ts, align 8
  %add2.i = add i64 %11, %conv1.i
  store i64 %add2.i, ptr @persistent_ts, align 8
  store i32 %.lcssa.i.off0.i, ptr getelementptr inbounds (%struct.timespec64, ptr @persistent_ts, i32 0, i32 1), align 8
  %12 = call ptr @memcpy(ptr %ts, ptr @persistent_ts, i32 16)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load8_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/plat-omap/counter_32k.c", i32 102, i32 47}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/plat-omap/counter_32k.c", i32 105, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @omap_init_clocksource_32k._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @omap_init_clocksource_32k._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/plat-omap/counter_32k.c", i32 111, i32 2}
!10 = !{ptr @omap_init_clocksource_32k._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @omap_init_clocksource_32k._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @sync32k_cnt_reg, !13, !"sync32k_cnt_reg", i1 false, i1 false}
!13 = !{!"../arch/arm/plat-omap/counter_32k.c", i32 36, i32 22}
!14 = !{ptr @persistent_mult, !15, !"persistent_mult", i1 false, i1 false}
!15 = !{!"../arch/arm/plat-omap/counter_32k.c", i32 52, i32 21}
!16 = !{ptr @persistent_shift, !17, !"persistent_shift", i1 false, i1 false}
!17 = !{!"../arch/arm/plat-omap/counter_32k.c", i32 52, i32 38}
!18 = !{ptr @cycles, !19, !"cycles", i1 false, i1 false}
!19 = !{!"../arch/arm/plat-omap/counter_32k.c", i32 51, i32 17}
!20 = !{ptr @persistent_ts, !21, !"persistent_ts", i1 false, i1 false}
!21 = !{!"../arch/arm/plat-omap/counter_32k.c", i32 50, i32 26}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i64 2030753}
!32 = !{i64 1309053}
