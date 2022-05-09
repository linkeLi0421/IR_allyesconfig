; ModuleID = '/llk/IR_all_yes/drivers/clk/meson/clk-mpll.c_pt.bc'
source_filename = "../drivers/clk/meson/clk-mpll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+meson_clk_mpll_ro_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_meson_clk_mpll_ro_ops\09\09\09\09"
module asm "\09.long\09__crc_meson_clk_mpll_ro_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_meson_clk_mpll_ro_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22meson_clk_mpll_ro_ops\22\09\09\09\09\09"
module asm "__kstrtabns_meson_clk_mpll_ro_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+meson_clk_mpll_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_meson_clk_mpll_ops\09\09\09\09"
module asm "\09.long\09__crc_meson_clk_mpll_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_meson_clk_mpll_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22meson_clk_mpll_ops\22\09\09\09\09\09"
module asm "__kstrtabns_meson_clk_mpll_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_regmap = type { %struct.clk_hw, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.parm = type { i16, i8, i8 }
%struct.meson_clk_mpll_data = type { %struct.parm, %struct.parm, %struct.parm, %struct.parm, %struct.parm, ptr, i32, ptr, i8 }

@meson_clk_mpll_ro_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mpll_recalc_rate, ptr @mpll_round_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_meson_clk_mpll_ro_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_meson_clk_mpll_ro_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_meson_clk_mpll_ro_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @meson_clk_mpll_ro_ops to i32), ptr @__kstrtab_meson_clk_mpll_ro_ops, ptr @__kstrtabns_meson_clk_mpll_ro_ops }, section "___ksymtab_gpl+meson_clk_mpll_ro_ops", align 4
@meson_clk_mpll_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mpll_recalc_rate, ptr @mpll_round_rate, ptr null, ptr null, ptr null, ptr @mpll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mpll_init, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_meson_clk_mpll_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_meson_clk_mpll_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_meson_clk_mpll_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @meson_clk_mpll_ops to i32), ptr @__kstrtab_meson_clk_mpll_ops, ptr @__kstrtabns_meson_clk_mpll_ops }, section "___ksymtab_gpl+meson_clk_mpll_ops", align 4
@__UNIQUE_ID_description160 = internal constant [41 x i8] c"clk_mpll.description=Amlogic MPLL driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author161 = internal constant [60 x i8] c"clk_mpll.author=Michael Turquette <mturquette@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file162 = internal constant [41 x i8] c"clk_mpll.file=drivers/clk/meson/clk-mpll\00", section ".modinfo", align 1
@__UNIQUE_ID_license163 = internal constant [24 x i8] c"clk_mpll.license=GPL v2\00", section ".modinfo", align 1
@___asan_gen_.1 = private unnamed_addr constant [22 x i8] c"meson_clk_mpll_ro_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 158, i32 22 }
@___asan_gen_.4 = private unnamed_addr constant [19 x i8] c"meson_clk_mpll_ops\00", align 1
@___asan_gen_.5 = private constant [32 x i8] c"../drivers/clk/meson/clk-mpll.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 164, i32 22 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author161, ptr @__UNIQUE_ID_description160, ptr @__UNIQUE_ID_file162, ptr @__UNIQUE_ID_license163, ptr @__ksymtab_meson_clk_mpll_ops, ptr @__ksymtab_meson_clk_mpll_ro_ops, ptr @meson_clk_mpll_ro_ops, ptr @meson_clk_mpll_ops], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_clk_mpll_ro_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_clk_mpll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  %val.i12 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %map = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !24
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %1, align 2
  %conv.i = zext i16 %6 to i32
  %call.i = call i32 @regmap_read(ptr noundef %3, i32 noundef %conv.i, ptr noundef nonnull %val.i) #5
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  %shift.i = getelementptr inbounds %struct.parm, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %shift.i, align 2
  %conv1.i = zext i8 %10 to i32
  %shl.neg.i = shl nsw i32 -1, %conv1.i
  %width.i = getelementptr inbounds %struct.parm, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %width.i, align 1
  %conv4.i = zext i8 %12 to i32
  %13 = add nuw nsw i32 %conv1.i, %conv4.i
  %sub7.i = sub nsw i32 32, %13
  %shr.i = lshr i32 -1, %sub7.i
  %and.i = and i32 %shl.neg.i, %8
  %and9.i = and i32 %and.i, %shr.i
  %shr12.i = lshr i32 %and9.i, %conv1.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %14 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map, align 4
  %n25 = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %1, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i12) #5
  %16 = ptrtoint ptr %val.i12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %val.i12, align 4, !annotation !24
  %17 = ptrtoint ptr %n25 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %n25, align 2
  %conv.i13 = zext i16 %18 to i32
  %call.i14 = call i32 @regmap_read(ptr noundef %15, i32 noundef %conv.i13, ptr noundef nonnull %val.i12) #5
  %19 = ptrtoint ptr %val.i12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i12, align 4
  %shift.i15 = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %1, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %shift.i15 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %shift.i15, align 2
  %conv1.i16 = zext i8 %22 to i32
  %shl.neg.i17 = shl nsw i32 -1, %conv1.i16
  %width.i18 = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %1, i32 0, i32 2, i32 2
  %23 = ptrtoint ptr %width.i18 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %width.i18, align 1
  %conv4.i19 = zext i8 %24 to i32
  %25 = add nuw nsw i32 %conv1.i16, %conv4.i19
  %sub7.i20 = sub nsw i32 32, %25
  %shr.i21 = lshr i32 -1, %sub7.i20
  %and.i22 = and i32 %shl.neg.i17, %20
  %and9.i23 = and i32 %and.i22, %shr.i21
  %shr12.i24 = lshr i32 %and9.i23, %conv1.i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i12) #5
  %mul.i = shl i32 %shr12.i24, 14
  %add.i = add i32 %mul.i, %shr12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shr12.i24)
  %cmp.i = icmp ult i32 %shr12.i24, 4
  br i1 %cmp.i, label %entry.rate_from_params.exit.thread_crit_edge, label %if.end.i

entry.rate_from_params.exit.thread_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rate_from_params.exit.thread

if.end.i:                                         ; preds = %entry
  %conv.i25 = zext i32 %parent_rate to i64
  %mul1.i = shl nuw nsw i64 %conv.i25, 14
  %conv2.i = zext i32 %add.i to i64
  %add3.i = add nsw i64 %conv2.i, -1
  %sub.i = add nsw i64 %add3.i, %mul1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp175.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp175.i, label %if.then179.i, label %if.else185.i, !prof !25

if.then179.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv180.i = trunc i64 %sub.i to i32
  %div183.i = udiv i32 %conv180.i, %add.i
  br label %rate_from_params.exit

if.else185.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add.i, i64 %sub.i) #8, !srcloc !26
  %asmresult1.i.i = extractvalue { i64, i64 } %26, 1
  %extract.t300.i = trunc i64 %asmresult1.i.i to i32
  br label %rate_from_params.exit

rate_from_params.exit:                            ; preds = %if.else185.i, %if.then179.i
  %retval.0.i = phi i32 [ %div183.i, %if.then179.i ], [ %extract.t300.i, %if.else185.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %rate_from_params.exit.rate_from_params.exit.thread_crit_edge, label %rate_from_params.exit._crit_edge

rate_from_params.exit._crit_edge:                 ; preds = %rate_from_params.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %27

rate_from_params.exit.rate_from_params.exit.thread_crit_edge: ; preds = %rate_from_params.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rate_from_params.exit.thread

rate_from_params.exit.thread:                     ; preds = %rate_from_params.exit.rate_from_params.exit.thread_crit_edge, %entry.rate_from_params.exit.thread_crit_edge
  br label %27

27:                                               ; preds = %rate_from_params.exit.thread, %rate_from_params.exit._crit_edge
  %28 = phi i32 [ 0, %rate_from_params.exit.thread ], [ %retval.0.i, %rate_from_params.exit._crit_edge ]
  ret i32 %28
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @mpll_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parent_rate, align 4
  %flags = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags, align 4
  %conv.i = zext i32 %3 to i64
  %.frozen = freeze i32 %3
  %div175.i = udiv i32 %.frozen, %rate
  %conv176.i = zext i32 %div175.i to i64
  %6 = mul i32 %div175.i, %rate
  %rem173.i.decomposed = sub i32 %.frozen, %6
  %conv183.i = zext i32 %rem173.i.decomposed to i64
  %mul184.i = shl nuw nsw i64 %conv183.i, 14
  %7 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool187.not.i = icmp eq i8 %7, 0
  br i1 %tobool187.not.i, label %if.else415.i, label %if.then188.i

if.then188.i:                                     ; preds = %entry
  %div189911.i = lshr i32 %rate, 1
  %conv190.i = zext i32 %div189911.i to i64
  %add191.i = add nuw nsw i64 %mul184.i, %conv190.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add191.i)
  %cmp393.i = icmp ult i64 %add191.i, 4294967296
  br i1 %cmp393.i, label %if.then401.i, label %if.else407.i, !prof !25

if.then401.i:                                     ; preds = %if.then188.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv402.i = trunc i64 %add191.i to i32
  %div405.i = udiv i32 %conv402.i, %rate
  br label %if.end643.i

if.else407.i:                                     ; preds = %if.then188.i
  call void @__sanitizer_cov_trace_pc() #7
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %rate, i64 %add191.i) #8, !srcloc !26
  %asmresult1.i942.i = extractvalue { i64, i64 } %8, 1
  %extract.t1046.i = trunc i64 %asmresult1.i942.i to i32
  br label %if.end643.i

if.else415.i:                                     ; preds = %entry
  %conv417.i = zext i32 %rate to i64
  %add418.i = add nsw i64 %conv417.i, -1
  %sub419.i = add nsw i64 %mul184.i, %add418.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub419.i)
  %cmp621.i = icmp ult i64 %sub419.i, 4294967296
  br i1 %cmp621.i, label %if.then629.i, label %if.else635.i, !prof !25

if.then629.i:                                     ; preds = %if.else415.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv630.i = trunc i64 %sub419.i to i32
  %div633.i = udiv i32 %conv630.i, %rate
  br label %if.end643.i

if.else635.i:                                     ; preds = %if.else415.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %rate, i64 %sub419.i) #8, !srcloc !26
  %asmresult1.i970.i = extractvalue { i64, i64 } %9, 1
  %extract.t1050.i = trunc i64 %asmresult1.i970.i to i32
  br label %if.end643.i

if.end643.i:                                      ; preds = %if.else635.i, %if.then629.i, %if.else407.i, %if.then401.i
  %storemerge.i = phi i32 [ %div405.i, %if.then401.i ], [ %extract.t1046.i, %if.else407.i ], [ %div633.i, %if.then629.i ], [ %extract.t1050.i, %if.else635.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %storemerge.i)
  %cmp644.i = icmp eq i32 %storemerge.i, 16384
  %spec.select = select i1 %cmp644.i, i32 0, i32 %storemerge.i
  %add647.i = zext i1 %cmp644.i to i64
  %spec.select42 = add nuw nsw i64 %conv176.i, %add647.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %spec.select42)
  %cmp649.i = icmp ult i64 %spec.select42, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 511, i64 %spec.select42)
  %cmp653.i = icmp ugt i64 %spec.select42, 511
  %spec.select43 = select i1 %cmp653.i, i32 16383, i32 %spec.select
  %10 = tail call i64 @llvm.umin.i64(i64 %spec.select42, i64 511)
  %sdm.1 = select i1 %cmp649.i, i32 0, i32 %spec.select43
  %11 = tail call i64 @llvm.umax.i64(i64 %10, i64 4)
  %12 = trunc i64 %11 to i32
  %mul.i4 = shl nuw nsw i32 %12, 14
  %add.i5 = add i32 %mul.i4, %sdm.1
  %mul1.i = shl nuw nsw i64 %conv.i, 14
  %conv2.i = zext i32 %add.i5 to i64
  %add3.i = add nsw i64 %conv2.i, -1
  %sub.i8 = add nsw i64 %add3.i, %mul1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i8)
  %cmp175.i = icmp ult i64 %sub.i8, 4294967296
  br i1 %cmp175.i, label %if.then179.i, label %if.else185.i, !prof !25

if.then179.i:                                     ; preds = %if.end643.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv180.i = trunc i64 %sub.i8 to i32
  %div183.i = udiv i32 %conv180.i, %add.i5
  br label %rate_from_params.exit

if.else185.i:                                     ; preds = %if.end643.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add.i5, i64 %sub.i8) #8, !srcloc !26
  %asmresult1.i.i = extractvalue { i64, i64 } %13, 1
  %extract.t300.i = trunc i64 %asmresult1.i.i to i32
  br label %rate_from_params.exit

rate_from_params.exit:                            ; preds = %if.else185.i, %if.then179.i
  %retval.0.i = phi i32 [ %div183.i, %if.then179.i ], [ %extract.t300.i, %if.else185.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpll_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %flags2 = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %flags2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags2, align 4
  %div175.i = udiv i32 %parent_rate, %rate
  %conv176.i = zext i32 %div175.i to i64
  %4 = mul i32 %div175.i, %rate
  %rem173.i.decomposed = sub i32 %parent_rate, %4
  %conv183.i = zext i32 %rem173.i.decomposed to i64
  %mul184.i = shl nuw nsw i64 %conv183.i, 14
  %5 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool187.not.i = icmp eq i8 %5, 0
  br i1 %tobool187.not.i, label %if.else415.i, label %if.then188.i

if.then188.i:                                     ; preds = %entry
  %div189911.i = lshr i32 %rate, 1
  %conv190.i = zext i32 %div189911.i to i64
  %add191.i = add nuw nsw i64 %mul184.i, %conv190.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add191.i)
  %cmp393.i = icmp ult i64 %add191.i, 4294967296
  br i1 %cmp393.i, label %if.then401.i, label %if.else407.i, !prof !25

if.then401.i:                                     ; preds = %if.then188.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv402.i = trunc i64 %add191.i to i32
  %div405.i = udiv i32 %conv402.i, %rate
  br label %if.end643.i

if.else407.i:                                     ; preds = %if.then188.i
  call void @__sanitizer_cov_trace_pc() #7
  %6 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %rate, i64 %add191.i) #8, !srcloc !26
  %asmresult1.i942.i = extractvalue { i64, i64 } %6, 1
  %extract.t1046.i = trunc i64 %asmresult1.i942.i to i32
  br label %if.end643.i

if.else415.i:                                     ; preds = %entry
  %conv417.i = zext i32 %rate to i64
  %add418.i = add nsw i64 %conv417.i, -1
  %sub419.i = add nsw i64 %mul184.i, %add418.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub419.i)
  %cmp621.i = icmp ult i64 %sub419.i, 4294967296
  br i1 %cmp621.i, label %if.then629.i, label %if.else635.i, !prof !25

if.then629.i:                                     ; preds = %if.else415.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv630.i = trunc i64 %sub419.i to i32
  %div633.i = udiv i32 %conv630.i, %rate
  br label %if.end643.i

if.else635.i:                                     ; preds = %if.else415.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %rate, i64 %sub419.i) #8, !srcloc !26
  %asmresult1.i970.i = extractvalue { i64, i64 } %7, 1
  %extract.t1050.i = trunc i64 %asmresult1.i970.i to i32
  br label %if.end643.i

if.end643.i:                                      ; preds = %if.else635.i, %if.then629.i, %if.else407.i, %if.then401.i
  %storemerge.i = phi i32 [ %div405.i, %if.then401.i ], [ %extract.t1046.i, %if.else407.i ], [ %div633.i, %if.then629.i ], [ %extract.t1050.i, %if.else635.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %storemerge.i)
  %cmp644.i = icmp eq i32 %storemerge.i, 16384
  %spec.select = select i1 %cmp644.i, i32 0, i32 %storemerge.i
  %add647.i = zext i1 %cmp644.i to i64
  %spec.select40 = add nuw nsw i64 %conv176.i, %add647.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %spec.select40)
  %cmp649.i = icmp ult i64 %spec.select40, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 511, i64 %spec.select40)
  %cmp653.i = icmp ugt i64 %spec.select40, 511
  %spec.select41 = select i1 %cmp653.i, i32 16383, i32 %spec.select
  %8 = tail call i64 @llvm.umin.i64(i64 %spec.select40, i64 511)
  %sdm.1 = select i1 %cmp649.i, i32 0, i32 %spec.select41
  %9 = tail call i64 @llvm.umax.i64(i64 %8, i64 4)
  %10 = trunc i64 %9 to i32
  %lock = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.end643.i.if.end_crit_edge, label %do.body3

if.end643.i.if.end_crit_edge:                     ; preds = %if.end643.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body3:                                         ; preds = %if.end643.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %12) #5
  br label %if.end

if.end:                                           ; preds = %do.body3, %if.end643.i.if.end_crit_edge
  %flags.0 = phi i32 [ %call6, %do.body3 ], [ 0, %if.end643.i.if.end_crit_edge ]
  %map = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %13 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %1, align 2
  %conv.i26 = zext i16 %16 to i32
  %shift.i = getelementptr inbounds %struct.parm, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %shift.i, align 2
  %conv1.i = zext i8 %18 to i32
  %shl.neg.i = shl nsw i32 -1, %conv1.i
  %width.i = getelementptr inbounds %struct.parm, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %width.i, align 1
  %conv4.i = zext i8 %20 to i32
  %21 = add nuw nsw i32 %conv1.i, %conv4.i
  %sub7.i27 = sub nsw i32 32, %21
  %shr.i28 = lshr i32 -1, %sub7.i27
  %and.i = and i32 %shr.i28, %shl.neg.i
  %shl11.i = shl i32 %sdm.1, %conv1.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %conv.i26, i32 noundef %and.i, i32 noundef %shl11.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %22 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %map, align 4
  %n211 = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %n211 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %n211, align 2
  %conv.i29 = zext i16 %25 to i32
  %shift.i30 = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %1, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %shift.i30 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %shift.i30, align 2
  %conv1.i31 = zext i8 %27 to i32
  %shl.neg.i32 = shl nsw i32 -1, %conv1.i31
  %width.i33 = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %1, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %width.i33 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %width.i33, align 1
  %conv4.i34 = zext i8 %29 to i32
  %30 = add nuw nsw i32 %conv1.i31, %conv4.i34
  %sub7.i35 = sub nsw i32 32, %30
  %shr.i36 = lshr i32 -1, %sub7.i35
  %and.i37 = and i32 %shr.i36, %shl.neg.i32
  %shl11.i38 = shl i32 %10, %conv1.i31
  %call.i.i39 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef %conv.i29, i32 noundef %and.i37, i32 noundef %shl11.i38, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %31 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lock, align 4
  %tobool13.not = icmp eq ptr %32, null
  br i1 %tobool13.not, label %if.end.if.end17_crit_edge, label %if.then14

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %32, i32 noundef %flags.0) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end.if.end17_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpll_init(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %init_count = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %init_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %init_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %map = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %init_regs = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %init_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_regs, align 4
  %call3 = tail call i32 @regmap_multi_reg_write(ptr noundef %5, ptr noundef %7, i32 noundef %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %map4 = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %map4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map4, align 4
  %sdm_en = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %sdm_en to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sdm_en, align 2
  %conv.i = zext i16 %11 to i32
  %shift.i = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %1, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %shift.i, align 2
  %conv1.i = zext i8 %13 to i32
  %shl.neg.i = shl nsw i32 -1, %conv1.i
  %width.i = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %1, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %width.i, align 1
  %conv4.i = zext i8 %15 to i32
  %16 = add nuw nsw i32 %conv1.i, %conv4.i
  %sub7.i = sub nsw i32 32, %16
  %shr.i = lshr i32 -1, %sub7.i
  %and.i = and i32 %shr.i, %shl.neg.i
  %shl11.i = shl nuw i32 1, %conv1.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %conv.i, i32 noundef %and.i, i32 noundef %shl11.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %width = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %1, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool5.not = icmp eq i8 %18, 0
  br i1 %tobool5.not, label %if.end.if.end10_crit_edge, label %if.then6

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ssen = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %1, i32 0, i32 3
  %flags = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flags, align 4
  %21 = lshr i8 %20, 1
  %.lobit = and i8 %21, 1
  %22 = zext i8 %.lobit to i32
  %23 = ptrtoint ptr %map4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %map4, align 4
  %25 = ptrtoint ptr %ssen to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %ssen, align 2
  %conv.i29 = zext i16 %26 to i32
  %shift.i30 = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %1, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %shift.i30 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %shift.i30, align 2
  %conv1.i31 = zext i8 %28 to i32
  %shl.neg.i32 = shl nsw i32 -1, %conv1.i31
  %29 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %width, align 1
  %conv4.i34 = zext i8 %30 to i32
  %31 = add nuw nsw i32 %conv1.i31, %conv4.i34
  %sub7.i35 = sub nsw i32 32, %31
  %shr.i36 = lshr i32 -1, %sub7.i35
  %and.i37 = and i32 %shr.i36, %shl.neg.i32
  %shl11.i38 = shl nuw i32 %22, %conv1.i31
  %call.i.i39 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef %conv.i29, i32 noundef %and.i37, i32 noundef %shl11.i38, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end.if.end10_crit_edge
  %width11 = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %1, i32 0, i32 4, i32 2
  %32 = ptrtoint ptr %width11 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %width11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool12.not = icmp eq i8 %33, 0
  br i1 %tobool12.not, label %if.end10.if.end16_crit_edge, label %if.then13

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %misc = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %1, i32 0, i32 4
  %34 = ptrtoint ptr %map4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %map4, align 4
  %36 = ptrtoint ptr %misc to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %misc, align 2
  %conv.i40 = zext i16 %37 to i32
  %shift.i41 = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %1, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %shift.i41 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %shift.i41, align 2
  %conv1.i42 = zext i8 %39 to i32
  %shl.neg.i43 = shl nsw i32 -1, %conv1.i42
  %40 = ptrtoint ptr %width11 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %width11, align 1
  %conv4.i45 = zext i8 %41 to i32
  %42 = add nuw nsw i32 %conv1.i42, %conv4.i45
  %sub7.i46 = sub nsw i32 32, %42
  %shr.i47 = lshr i32 -1, %sub7.i46
  %and.i48 = and i32 %shr.i47, %shl.neg.i43
  %shl11.i49 = shl nuw i32 1, %conv1.i42
  %call.i.i50 = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef %conv.i40, i32 noundef %and.i48, i32 noundef %shl11.i49, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end10.if.end16_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_multi_reg_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @meson_clk_mpll_ro_ops, !1, !"meson_clk_mpll_ro_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/meson/clk-mpll.c", i32 158, i32 22}
!2 = !{ptr @__ksymtab_meson_clk_mpll_ro_ops, !3, !"__ksymtab_meson_clk_mpll_ro_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/meson/clk-mpll.c", i32 162, i32 1}
!4 = !{ptr @meson_clk_mpll_ops, !5, !"meson_clk_mpll_ops", i1 false, i1 false}
!5 = !{!"../drivers/clk/meson/clk-mpll.c", i32 164, i32 22}
!6 = !{ptr @__ksymtab_meson_clk_mpll_ops, !7, !"__ksymtab_meson_clk_mpll_ops", i1 false, i1 false}
!7 = !{!"../drivers/clk/meson/clk-mpll.c", i32 170, i32 1}
!8 = !{ptr @__UNIQUE_ID_description160, !9, !"__UNIQUE_ID_description160", i1 false, i1 false}
!9 = !{!"../drivers/clk/meson/clk-mpll.c", i32 172, i32 1}
!10 = !{ptr @__UNIQUE_ID_author161, !11, !"__UNIQUE_ID_author161", i1 false, i1 false}
!11 = !{!"../drivers/clk/meson/clk-mpll.c", i32 173, i32 1}
!12 = !{ptr @__UNIQUE_ID_file162, !13, !"__UNIQUE_ID_file162", i1 false, i1 false}
!13 = !{!"../drivers/clk/meson/clk-mpll.c", i32 174, i32 1}
!14 = !{ptr @__UNIQUE_ID_license163, !13, !"__UNIQUE_ID_license163", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"auto-init"}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 2148944218, i64 2148944498, i64 2148944832, i64 2148945166}
