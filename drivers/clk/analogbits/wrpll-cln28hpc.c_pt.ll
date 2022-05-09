; ModuleID = '/llk/IR_all_yes/drivers/clk/analogbits/wrpll-cln28hpc.c_pt.bc'
source_filename = "../drivers/clk/analogbits/wrpll-cln28hpc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wrpll_cfg = type { i8, i8, i8, i8, i16, [6 x i32], i32, i8, i8 }

@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/clk/analogbits/wrpll-cln28hpc.c\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s called with uninitialized PLL config\00", [56 x i8] zeroinitializer }, align 32
@__func__.wrpll_configure_for_rate = private unnamed_addr constant [25 x i8] c"wrpll_configure_for_rate\00", align 1
@wrpll_configure_for_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.wrpll_configure_for_rate, ptr @.str, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: PLL input rate is out of range\0A\00", [58 x i8] zeroinitializer }, align 32
@wrpll_configure_for_rate._entry_ptr = internal global ptr @wrpll_configure_for_rate._entry, section ".printk_index", align 4
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"external feedback mode not yet supported\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: post-divider reference freq out of range: %lu\00", [46 x i8] zeroinitializer }, align 32
@__func__.__wrpll_calc_filter_range = private unnamed_addr constant [26 x i8] c"__wrpll_calc_filter_range\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 235, i32 3 }
@___asan_gen_.11 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 242, i32 4 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 341, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [43 x i8] c"../drivers/clk/analogbits/wrpll-cln28hpc.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 87, i32 3 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @wrpll_configure_for_rate._entry, ptr @wrpll_configure_for_rate._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wrpll_configure_for_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wrpll_configure_for_rate(ptr nocapture noundef %c, i32 noundef %target_rate, i32 noundef %parent_rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.wrpll_cfg, ptr %c, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %do.end, label %if.end17

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 235, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.wrpll_configure_for_rate) #5
  br label %cleanup

if.end17:                                         ; preds = %entry
  %parent_rate18 = getelementptr inbounds %struct.wrpll_cfg, ptr %c, i32 0, i32 6
  %2 = ptrtoint ptr %parent_rate18 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parent_rate18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %parent_rate)
  %cmp19.not = icmp eq i32 %3, %parent_rate
  br i1 %cmp19.not, label %if.end17.if.end30_crit_edge, label %if.then21

if.end17.if.end30_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then21:                                        ; preds = %if.end17
  %4 = add i32 %parent_rate, -600000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -593000001, i32 %4)
  %5 = icmp ult i32 %4, -593000001
  br i1 %5, label %do.end26, label %__wrpll_update_parent_rate.exit.thread

__wrpll_update_parent_rate.exit.thread:           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %parent_rate18 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %parent_rate, ptr %parent_rate18, align 4
  %conv.i = zext i32 %parent_rate to i64
  %7 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -7393708008661513447, i64 %conv.i) #8, !srcloc !22
  %8 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -7393708008661513447, i64 %conv.i, i64 %7, i32 0) #8, !srcloc !23
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %8, 0
  %div158.i.i297.i = lshr i64 %asmresult10.i.i.i.i, 22
  %9 = and i64 %asmresult10.i.i.i.i, 1069547520
  call void @__sanitizer_cov_trace_const_cmp8(i64 268435456, i64 %9)
  %cmp6.i = icmp ugt i64 %9, 268435456
  %phi.cast.i = trunc i64 %div158.i.i297.i to i8
  %cond.i = select i1 %cmp6.i, i8 64, i8 %phi.cast.i
  %max_r.i = getelementptr inbounds %struct.wrpll_cfg, ptr %c, i32 0, i32 7
  %10 = ptrtoint ptr %max_r.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %cond.i, ptr %max_r.i, align 4
  %sub.i = add nuw nsw i64 %conv.i, 199999999
  %11 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -6067343680855748867, i64 %sub.i) #8, !srcloc !22
  %12 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6067343680855748867, i64 %sub.i, i64 %11, i32 0) #8, !srcloc !23
  %asmresult10.i.i = extractvalue { i64, i32 } %12, 0
  %extract294.i = lshr i64 %asmresult10.i.i, 27
  %extract.t295.i = trunc i64 %extract294.i to i8
  %init_r.i = getelementptr inbounds %struct.wrpll_cfg, ptr %c, i32 0, i32 8
  %13 = ptrtoint ptr %init_r.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %extract.t295.i, ptr %init_r.i, align 1
  br label %if.end30

do.end26:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.wrpll_configure_for_rate) #9
  br label %cleanup

if.end30:                                         ; preds = %__wrpll_update_parent_rate.exit.thread, %if.end17.if.end30_crit_edge
  %14 = and i8 %1, -3
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %flags, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %target_rate, i32 %parent_rate)
  %cmp34 = icmp eq i32 %target_rate, %parent_rate
  br i1 %cmp34, label %if.then36, label %if.end40

if.then36:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %16 = or i8 %14, 1
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %flags, align 1
  br label %cleanup

if.end40:                                         ; preds = %if.end30
  %18 = and i8 %1, -4
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %flags, align 1
  %20 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %target_rate, i64 4800000000) #8, !srcloc !24
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %20, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %asmresult1.i.i.i.i)
  %cmp.i = icmp ult i64 %asmresult1.i.i.i.i, 2
  br i1 %cmp.i, label %if.end40.if.end48_crit_edge, label %if.else.i

if.end40.if.end48_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.else.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp8(i64 64, i64 %asmresult1.i.i.i.i)
  %cmp19.i = icmp ugt i64 %asmresult1.i.i.i.i, 64
  br i1 %cmp19.i, label %if.else.i.if.end48_crit_edge, label %__wrpll_calc_divq.exit

if.else.i.if.end48_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

__wrpll_calc_divq.exit:                           ; preds = %if.else.i
  %conv1.i.i.i = trunc i64 %asmresult1.i.i.i.i to i32
  %21 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i.i, i1 false) #5, !range !25
  %sub.i.i = sub nsw i32 31, %21
  %conv.i170 = trunc i32 %sub.i.i to i8
  %conv28.i = zext i32 %target_rate to i64
  %conv29.i = and i32 %sub.i.i, 255
  %sh_prom.i = zext i32 %conv29.i to i64
  %shl.i = shl i64 %conv28.i, %sh_prom.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i170)
  %tobool46.not = icmp eq i8 %conv.i170, 0
  br i1 %tobool46.not, label %__wrpll_calc_divq.exit.cleanup_crit_edge, label %__wrpll_calc_divq.exit.if.end48_crit_edge

__wrpll_calc_divq.exit.if.end48_crit_edge:        ; preds = %__wrpll_calc_divq.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

__wrpll_calc_divq.exit.cleanup_crit_edge:         ; preds = %__wrpll_calc_divq.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end48:                                         ; preds = %__wrpll_calc_divq.exit.if.end48_crit_edge, %if.else.i.if.end48_crit_edge, %if.end40.if.end48_crit_edge
  %divq.0.i288 = phi i8 [ %conv.i170, %__wrpll_calc_divq.exit.if.end48_crit_edge ], [ 6, %if.else.i.if.end48_crit_edge ], [ 1, %if.end40.if.end48_crit_edge ]
  %target_vco_rate.0287 = phi i64 [ %shl.i, %__wrpll_calc_divq.exit.if.end48_crit_edge ], [ 2400000000, %if.else.i.if.end48_crit_edge ], [ 4800000000, %if.end40.if.end48_crit_edge ]
  %divq49 = getelementptr inbounds %struct.wrpll_cfg, ptr %c, i32 0, i32 1
  %22 = ptrtoint ptr %divq49 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %divq.0.i288, ptr %divq49, align 1
  %shl = shl i64 %target_vco_rate.0287, 20
  %conv50 = zext i32 %parent_rate to i64
  %call51 = tail call i64 @div64_u64(i64 noundef %shl, i64 noundef %conv50) #5
  %conv52 = trunc i64 %call51 to i32
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %flags, align 1
  %25 = and i8 %24, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  %conv1.i = select i1 %tobool.not.i, i32 1, i32 2
  %init_r = getelementptr inbounds %struct.wrpll_cfg, ptr %c, i32 0, i32 8
  %26 = ptrtoint ptr %init_r to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %init_r, align 1
  %max_r = getelementptr inbounds %struct.wrpll_cfg, ptr %c, i32 0, i32 7
  %28 = ptrtoint ptr %max_r to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %max_r, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %29)
  %cmp56.not298 = icmp ugt i8 %27, %29
  br i1 %cmp56.not298, label %if.end48.for.end_crit_edge, label %for.body.lr.ph

if.end48.for.end_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end48
  %sub = add nsw i32 %conv1.i, -1
  %conv84 = zext i32 %target_rate to i64
  br label %for.body

for.body:                                         ; preds = %if.end83.for.body_crit_edge, %for.body.lr.ph
  %r.0302 = phi i8 [ %27, %for.body.lr.ph ], [ %inc94, %if.end83.for.body_crit_edge ]
  %best_r.0301 = phi i8 [ 0, %for.body.lr.ph ], [ %best_r.1, %if.end83.for.body_crit_edge ]
  %best_f.0300 = phi i32 [ 0, %for.body.lr.ph ], [ %best_f.1, %if.end83.for.body_crit_edge ]
  %best_delta.0299 = phi i64 [ 4800000000, %for.body.lr.ph ], [ %31, %if.end83.for.body_crit_edge ]
  %conv54 = zext i8 %r.0302 to i32
  %mul = mul i32 %conv54, %conv52
  %conv59 = zext i32 %mul to i64
  %add = add nuw nsw i64 %conv59, 1048576
  %shr = lshr i64 %add, 20
  %conv60 = trunc i64 %shr to i32
  %shr62 = lshr i32 %conv60, %sub
  %div172.i.i = udiv i32 %parent_rate, %conv54
  %mul68 = mul i32 %div172.i.i, %conv1.i
  %conv69 = zext i32 %mul68 to i64
  %conv70 = zext i32 %shr62 to i64
  %mul71 = mul nuw nsw i64 %conv69, %conv70
  call void @__sanitizer_cov_trace_cmp8(i64 %mul71, i64 %target_vco_rate.0287)
  %cmp72 = icmp ugt i64 %mul71, %target_vco_rate.0287
  br i1 %cmp72, label %if.then74, label %if.else

if.then74:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %dec = add nsw i32 %shr62, -1
  %conv75 = zext i32 %dec to i64
  %mul76 = mul nuw i64 %conv69, %conv75
  br label %if.end83

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp8(i64 2400000000, i64 %mul71)
  %cmp77 = icmp ult i64 %mul71, 2400000000
  br i1 %cmp77, label %if.then79, label %if.else.if.end83_crit_edge

if.else.if.end83_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83

if.then79:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %inc = add nuw nsw i32 %shr62, 1
  %conv80 = zext i32 %inc to i64
  %mul81 = mul nuw nsw i64 %conv69, %conv80
  br label %if.end83

if.end83:                                         ; preds = %if.then79, %if.else.if.end83_crit_edge, %if.then74
  %vco.0 = phi i64 [ %mul76, %if.then74 ], [ %mul81, %if.then79 ], [ %mul71, %if.else.if.end83_crit_edge ]
  %f.0 = phi i32 [ %dec, %if.then74 ], [ %inc, %if.then79 ], [ %shr62, %if.else.if.end83_crit_edge ]
  %sub85 = sub i64 %conv84, %vco.0
  %30 = tail call i64 @llvm.abs.i64(i64 %sub85, i1 false)
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %best_delta.0299)
  %cmp90 = icmp ult i64 %30, %best_delta.0299
  %31 = tail call i64 @llvm.umin.i64(i64 %30, i64 %best_delta.0299)
  %best_f.1 = select i1 %cmp90, i32 %f.0, i32 %best_f.0300
  %best_r.1 = select i1 %cmp90, i8 %r.0302, i8 %best_r.0301
  %inc94 = add i8 %r.0302, 1
  %cmp56.not = icmp ugt i8 %inc94, %29
  br i1 %cmp56.not, label %for.end.loopexit, label %if.end83.for.body_crit_edge

if.end83.for.body_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end.loopexit:                                 ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  %phi.cast305 = trunc i32 %best_f.1 to i16
  %phi.bo = add i16 %phi.cast305, -1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end48.for.end_crit_edge
  %best_f.0.lcssa = phi i16 [ -1, %if.end48.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %best_r.0.lcssa = phi i8 [ 0, %if.end48.for.end_crit_edge ], [ %best_r.1, %for.end.loopexit ]
  %sub96 = add i8 %best_r.0.lcssa, -1
  %32 = ptrtoint ptr %c to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %sub96, ptr %c, align 4
  %divf = getelementptr inbounds %struct.wrpll_cfg, ptr %c, i32 0, i32 4
  %33 = ptrtoint ptr %divf to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %best_f.0.lcssa, ptr %divf, align 4
  %conv95 = zext i8 %best_r.0.lcssa to i32
  %div172.i.i276 = udiv i32 %parent_rate, %conv95
  %34 = add i32 %div172.i.i276, -200000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -193000001, i32 %34)
  %35 = icmp ult i32 %34, -193000001
  br i1 %35, label %__wrpll_calc_filter_range.exit, label %if.end17.i

if.end17.i:                                       ; preds = %for.end
  %36 = add nsw i32 %div172.i.i276, -80000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000000, i32 %36)
  %inbounds32.i = icmp ult i32 %36, 50000000
  br i1 %inbounds32.i, label %if.end17.i.if.end108_crit_edge, label %sw.caserange28.i

if.end17.i.if.end108_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end108

sw.caserange.i:                                   ; preds = %sw.caserange19.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 11000000, i32 %div172.i.i276)
  %inbounds.i = icmp ult i32 %div172.i.i276, 11000000
  %phi.cast = select i1 %inbounds.i, i8 1, i8 7
  br label %if.end108

sw.caserange19.i:                                 ; preds = %sw.caserange22.i
  %37 = add nsw i32 %div172.i.i276, -11000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000000, i32 %37)
  %inbounds20.i = icmp ult i32 %37, 7000000
  br i1 %inbounds20.i, label %sw.caserange19.i.if.end108_crit_edge, label %sw.caserange.i

sw.caserange19.i.if.end108_crit_edge:             ; preds = %sw.caserange19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end108

sw.caserange22.i:                                 ; preds = %sw.caserange25.i
  %38 = add nsw i32 %div172.i.i276, -18000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000000, i32 %38)
  %inbounds23.i = icmp ult i32 %38, 12000000
  br i1 %inbounds23.i, label %sw.caserange22.i.if.end108_crit_edge, label %sw.caserange19.i

sw.caserange22.i.if.end108_crit_edge:             ; preds = %sw.caserange22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end108

sw.caserange25.i:                                 ; preds = %sw.caserange28.i
  %39 = add nsw i32 %div172.i.i276, -30000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000000, i32 %39)
  %inbounds26.i = icmp ult i32 %39, 20000000
  br i1 %inbounds26.i, label %sw.caserange25.i.if.end108_crit_edge, label %sw.caserange22.i

sw.caserange25.i.if.end108_crit_edge:             ; preds = %sw.caserange25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end108

sw.caserange28.i:                                 ; preds = %if.end17.i
  %40 = add nsw i32 %div172.i.i276, -50000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000000, i32 %40)
  %inbounds29.i = icmp ult i32 %40, 30000000
  br i1 %inbounds29.i, label %sw.caserange28.i.if.end108_crit_edge, label %sw.caserange25.i

sw.caserange28.i.if.end108_crit_edge:             ; preds = %sw.caserange28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end108

__wrpll_calc_filter_range.exit:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 88, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.__wrpll_calc_filter_range, i32 noundef %div172.i.i276) #5
  br label %cleanup

if.end108:                                        ; preds = %sw.caserange28.i.if.end108_crit_edge, %sw.caserange25.i.if.end108_crit_edge, %sw.caserange22.i.if.end108_crit_edge, %sw.caserange19.i.if.end108_crit_edge, %sw.caserange.i, %if.end17.i.if.end108_crit_edge
  %retval.0.i280.ph = phi i8 [ %phi.cast, %sw.caserange.i ], [ 6, %if.end17.i.if.end108_crit_edge ], [ 5, %sw.caserange28.i.if.end108_crit_edge ], [ 4, %sw.caserange25.i.if.end108_crit_edge ], [ 3, %sw.caserange22.i.if.end108_crit_edge ], [ 2, %sw.caserange19.i.if.end108_crit_edge ]
  %range110 = getelementptr inbounds %struct.wrpll_cfg, ptr %c, i32 0, i32 2
  %41 = ptrtoint ptr %range110 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %retval.0.i280.ph, ptr %range110, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end108, %__wrpll_calc_filter_range.exit, %__wrpll_calc_divq.exit.cleanup_crit_edge, %if.then36, %do.end26, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -34, %do.end26 ], [ 0, %if.then36 ], [ 0, %if.end108 ], [ -1, %__wrpll_calc_divq.exit.cleanup_crit_edge ], [ -34, %__wrpll_calc_filter_range.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wrpll_calc_output_rate(ptr nocapture noundef readonly %c, i32 noundef %parent_rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.wrpll_cfg, ptr %c, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 1
  %2 = and i8 %1, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %div_u64.exit, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 341, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %cleanup

div_u64.exit:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = and i8 %1, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %conv1.i = select i1 %tobool.not.i, i32 1, i32 2
  %mul = mul i32 %conv1.i, %parent_rate
  %divf = getelementptr inbounds %struct.wrpll_cfg, ptr %c, i32 0, i32 4
  %4 = ptrtoint ptr %divf to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %divf, align 4
  %conv19 = zext i16 %5 to i32
  %add = add nuw nsw i32 %conv19, 1
  %mul20 = mul i32 %mul, %add
  %6 = ptrtoint ptr %c to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %c, align 4
  %conv22 = zext i8 %7 to i32
  %add23 = add nuw nsw i32 %conv22, 1
  %div172.i.i = udiv i32 %mul20, %add23
  %conv173.i.i = zext i32 %div172.i.i to i64
  %divq = getelementptr inbounds %struct.wrpll_cfg, ptr %c, i32 0, i32 1
  %8 = ptrtoint ptr %divq to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %divq, align 1
  %sh_prom = zext i8 %9 to i64
  %shr = lshr i64 %conv173.i.i, %sh_prom
  %conv26 = trunc i64 %shr to i32
  br label %cleanup

cleanup:                                          ; preds = %div_u64.exit, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ %conv26, %div_u64.exit ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @wrpll_calc_max_lock_us(ptr nocapture noundef readnone %c) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 70
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/analogbits/wrpll-cln28hpc.c", i32 235, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.wrpll_configure_for_rate, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/analogbits/wrpll-cln28hpc.c", i32 242, i32 4}
!6 = !{ptr @wrpll_configure_for_rate._entry, !5, !"_entry", i1 false, i1 false}
!7 = !{ptr @wrpll_configure_for_rate._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/analogbits/wrpll-cln28hpc.c", i32 341, i32 3}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/analogbits/wrpll-cln28hpc.c", i32 87, i32 3}
!12 = !{ptr @__func__.__wrpll_calc_filter_range, !11, !"<string literal>", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i64 1206264, i64 1206291}
!23 = !{i64 1206959, i64 1206986, i64 1207019, i64 1207040, i64 1207067, i64 1207093}
!24 = !{i64 2148692095, i64 2148692375, i64 2148692709, i64 2148693043}
!25 = !{i32 0, i32 33}
