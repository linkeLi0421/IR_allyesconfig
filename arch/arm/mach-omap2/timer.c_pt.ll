; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/timer.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/timer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@arch_timer_freq = internal global { i32, [28 x i8] } zeroinitializer, align 32
@realtime_counter_init.sys_clk = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@realtime_counter_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013%s: ioremap failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"realtime_counter_init\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"arch/arm/mach-omap2/timer.c\00", [36 x i8] zeroinitializer }, align 32
@realtime_counter_init._entry_ptr = internal global ptr @realtime_counter_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_clkin\00", [22 x i8] zeroinitializer }, align 32
@realtime_counter_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: failed to get system clock handle\0A\00", [55 x i8] zeroinitializer }, align 32
@realtime_counter_init._entry_ptr.6 = internal global ptr @realtime_counter_init._entry.4, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 12000000, i64 13000000, i64 19200000, i64 20000000, i64 26000000, i64 27000000]
@___asan_gen_.7 = private unnamed_addr constant [16 x i8] c"arch_timer_freq\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 42, i32 22 }
@___asan_gen_.10 = private unnamed_addr constant [8 x i8] c"sys_clk\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 61, i32 21 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 68, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 71, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private constant [31 x i8] c"../arch/arm/mach-omap2/timer.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 73, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @realtime_counter_init._entry, ptr @realtime_counter_init._entry.4, ptr @realtime_counter_init._entry_ptr, ptr @realtime_counter_init._entry_ptr.6, ptr @arch_timer_freq, ptr @realtime_counter_init.sys_clk, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arch_timer_freq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @realtime_counter_init.sys_clk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @realtime_counter_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @realtime_counter_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @set_cntfreq() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @arch_timer_freq, align 4
  tail call void @omap_smc1(i32 noundef 265, i32 noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_smc1(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap5_realtime_timer_init() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap_clk_init() #5
  tail call fastcc void @realtime_counter_init() #8
  tail call void @timer_probe() #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_clk_init() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @realtime_counter_init() unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ioremap(i32 noundef 1210331648, i32 noundef 32) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull @.str.3) #5
  store ptr %call2, ptr @realtime_counter_init.sys_clk, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1) #9
  tail call void @iounmap(ptr noundef nonnull %call) #5
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @clk_get_rate(ptr noundef %call2) #5
  %call.i = tail call i32 @omap_rev() #5
  %shr.mask.i = and i32 %call.i, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %shr.mask.i)
  %cmp.i333.not = icmp eq i32 %shr.mask.i, 117440512
  br i1 %cmp.i333.not, label %if.then14, label %if.end10.if.end19_crit_edge

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then14:                                        ; preds = %if.end10
  %call15 = tail call i32 @omap_ctrl_readl(i16 noundef zeroext 1732) #5
  %and = and i32 %call15, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.then14.if.end19_crit_edge, label %if.then14.sysclk1_based_crit_edge

if.then14.sysclk1_based_crit_edge:                ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %sysclk1_based

if.then14.if.end19_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.end19:                                         ; preds = %if.then14.if.end19_crit_edge, %if.end10.if.end19_crit_edge
  %0 = zext i32 %call11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call11, label %sw.default [
    i32 12000000, label %if.end19.sysclk1_based_crit_edge
    i32 13000000, label %sw.bb20
    i32 19200000, label %sw.bb21
    i32 20000000, label %sw.bb22
    i32 26000000, label %sw.bb23
    i32 27000000, label %sw.bb24
  ]

if.end19.sysclk1_based_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %sysclk1_based

sw.bb20:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %sysclk1_based

sw.bb21:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %sysclk1_based

sw.bb22:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %sysclk1_based

sw.bb23:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %sysclk1_based

sw.bb24:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %sysclk1_based

sw.default:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %sysclk1_based

sysclk1_based:                                    ; preds = %sw.default, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %if.end19.sysclk1_based_crit_edge, %if.then14.sysclk1_based_crit_edge
  %den.0 = phi i64 [ 25, %sw.default ], [ 1125, %sw.bb24 ], [ 1625, %sw.bb23 ], [ 625, %sw.bb22 ], [ 25, %sw.bb21 ], [ 1625, %sw.bb20 ], [ 244, %if.then14.sysclk1_based_crit_edge ], [ 125, %if.end19.sysclk1_based_crit_edge ]
  %num.0 = phi i64 [ 4, %sw.default ], [ 256, %sw.bb24 ], [ 384, %sw.bb23 ], [ 192, %sw.bb22 ], [ 8, %sw.bb21 ], [ 768, %sw.bb20 ], [ 75, %if.then14.sysclk1_based_crit_edge ], [ 64, %if.end19.sysclk1_based_crit_edge ]
  %add.ptr = getelementptr i8, ptr %call, i32 16
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !25
  %2 = and i32 %1, 15794175
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = trunc i64 %num.0 to i32
  %conv29 = or i32 %3, %4
  %5 = tail call i32 @llvm.bswap.i32(i32 %conv29)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #5, !srcloc !26
  %add.ptr32 = getelementptr i8, ptr %call, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #5, !srcloc !25
  %7 = and i32 %6, 15794175
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = trunc i64 %den.0 to i32
  %conv38 = or i32 %8, %9
  %10 = tail call i32 @llvm.bswap.i32(i32 %conv38)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %10) #5, !srcloc !26
  %conv40 = zext i32 %call11 to i64
  %mul = mul nuw nsw i64 %num.0, %conv40
  %add = add nsw i64 %den.0, -1
  %sub = add nuw nsw i64 %add, %mul
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp217 = icmp ult i64 %sub, 4294967296
  br i1 %cmp217, label %if.then221, label %if.else227, !prof !27

if.then221:                                       ; preds = %sysclk1_based
  call void @__sanitizer_cov_trace_pc() #7
  %conv222 = trunc i64 %sub to i32
  %div225 = udiv i32 %conv222, %9
  br label %if.end231

if.else227:                                       ; preds = %sysclk1_based
  call void @__sanitizer_cov_trace_pc() #7
  %11 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %sub) #10, !srcloc !28
  %asmresult1.i = extractvalue { i64, i64 } %11, 1
  %extract.t359 = trunc i64 %asmresult1.i to i32
  br label %if.end231

if.end231:                                        ; preds = %if.else227, %if.then221
  %_tmp.0.off0 = phi i32 [ %div225, %if.then221 ], [ %extract.t359, %if.else227 ]
  store i32 %_tmp.0.off0, ptr @arch_timer_freq, align 4
  tail call void @omap_smc1(i32 noundef 265, i32 noundef %_tmp.0.off0) #5
  tail call void @iounmap(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end231, %do.end7, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @timer_probe() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_ctrl_readl(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @arch_timer_freq, !1, !"arch_timer_freq", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/timer.c", i32 42, i32 22}
!2 = !{ptr @realtime_counter_init.sys_clk, !3, !"sys_clk", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/timer.c", i32 61, i32 21}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/timer.c", i32 68, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @realtime_counter_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @realtime_counter_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/timer.c", i32 71, i32 26}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-omap2/timer.c", i32 73, i32 3}
!14 = !{ptr @realtime_counter_init._entry.4, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @realtime_counter_init._entry_ptr.6, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i64 4005235}
!26 = !{i64 4004817}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{i64 2148633050, i64 2148633330, i64 2148633664, i64 2148633998}
