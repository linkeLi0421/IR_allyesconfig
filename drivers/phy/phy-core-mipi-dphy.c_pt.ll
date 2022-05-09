; ModuleID = '/llk/IR_all_yes/drivers/phy/phy-core-mipi-dphy.c_pt.bc'
source_filename = "../drivers/phy/phy-core-mipi-dphy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+phy_mipi_dphy_get_default_config\22, \22a\22\09"
module asm "\09.weak\09__crc_phy_mipi_dphy_get_default_config\09\09\09\09"
module asm "\09.long\09__crc_phy_mipi_dphy_get_default_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_mipi_dphy_get_default_config:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_mipi_dphy_get_default_config\22\09\09\09\09\09"
module asm "__kstrtabns_phy_mipi_dphy_get_default_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+phy_mipi_dphy_config_validate\22, \22a\22\09"
module asm "\09.weak\09__crc_phy_mipi_dphy_config_validate\09\09\09\09"
module asm "\09.long\09__crc_phy_mipi_dphy_config_validate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_mipi_dphy_config_validate:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_mipi_dphy_config_validate\22\09\09\09\09\09"
module asm "__kstrtabns_phy_mipi_dphy_config_validate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }

@__kstrtab_phy_mipi_dphy_get_default_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_mipi_dphy_get_default_config = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_mipi_dphy_get_default_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_mipi_dphy_get_default_config to i32), ptr @__kstrtab_phy_mipi_dphy_get_default_config, ptr @__kstrtabns_phy_mipi_dphy_get_default_config }, section "___ksymtab+phy_mipi_dphy_get_default_config", align 4
@__kstrtab_phy_mipi_dphy_config_validate = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_mipi_dphy_config_validate = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_mipi_dphy_config_validate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_mipi_dphy_config_validate to i32), ptr @__kstrtab_phy_mipi_dphy_config_validate, ptr @__kstrtabns_phy_mipi_dphy_config_validate }, section "___ksymtab+phy_mipi_dphy_config_validate", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_phy_mipi_dphy_config_validate, ptr @__ksymtab_phy_mipi_dphy_get_default_config], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local i32 @phy_mipi_dphy_get_default_config(i32 noundef %pixel_clock, i32 noundef %bpp, i32 noundef %lanes, ptr noundef writeonly %cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cfg, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end184

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end184:                                        ; preds = %entry
  %mul = mul i32 %bpp, %pixel_clock
  %div178 = udiv i32 %mul, %lanes
  %conv179 = zext i32 %div178 to i64
  %add187 = add nuw nsw i64 %conv179, 999999999999
  %neg189 = sub nsw i64 0, %conv179
  %and190 = and i64 %add187, %neg189
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %and190)
  %cmp393 = icmp ult i64 %and190, 4294967296
  br i1 %cmp393, label %if.then401, label %if.else407, !prof !13

if.then401:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #5
  %conv402 = trunc i64 %and190 to i32
  %div405 = udiv i32 %conv402, %div178
  %conv406 = zext i32 %div405 to i64
  br label %if.end411

if.else407:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #5
  %0 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div178, i64 %and190) #6, !srcloc !14
  %asmresult1.i663 = extractvalue { i64, i64 } %0, 1
  br label %if.end411

if.end411:                                        ; preds = %if.else407, %if.then401
  %ui.0 = phi i64 [ %conv406, %if.then401 ], [ %asmresult1.i663, %if.else407 ]
  %1 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %cfg, align 4
  %2 = trunc i64 %ui.0 to i32
  %3 = mul i32 %2, 52
  %conv415 = add i32 %3, 60000
  %clk_post = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 1
  %4 = ptrtoint ptr %clk_post to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv415, ptr %clk_post, align 4
  %clk_pre = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 2
  %5 = ptrtoint ptr %clk_pre to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8, ptr %clk_pre, align 4
  %clk_prepare = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 3
  %6 = ptrtoint ptr %clk_prepare to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 38000, ptr %clk_prepare, align 4
  %clk_settle = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 4
  %7 = ptrtoint ptr %clk_settle to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 95000, ptr %clk_settle, align 4
  %clk_term_en = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 5
  %8 = ptrtoint ptr %clk_term_en to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %clk_term_en, align 4
  %clk_trail = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 6
  %9 = ptrtoint ptr %clk_trail to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 60000, ptr %clk_trail, align 4
  %clk_zero = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 7
  %10 = ptrtoint ptr %clk_zero to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 262000, ptr %clk_zero, align 4
  %d_term_en = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 8
  %11 = ptrtoint ptr %d_term_en to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %d_term_en, align 4
  %eot = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 9
  %12 = ptrtoint ptr %eot to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %eot, align 4
  %hs_exit = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 10
  %13 = ptrtoint ptr %hs_exit to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 100000, ptr %hs_exit, align 4
  %14 = shl i32 %2, 2
  %conv418 = add i32 %14, 40000
  %hs_prepare = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 11
  %15 = ptrtoint ptr %hs_prepare to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv418, ptr %hs_prepare, align 4
  %16 = mul i32 %2, 6
  %conv421 = add i32 %16, 105000
  %hs_zero = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 15
  %17 = ptrtoint ptr %hs_zero to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv421, ptr %hs_zero, align 4
  %conv424 = add i32 %16, 85000
  %hs_settle = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 12
  %18 = ptrtoint ptr %hs_settle to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv424, ptr %hs_settle, align 4
  %hs_skip = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 13
  %19 = ptrtoint ptr %hs_skip to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 40000, ptr %hs_skip, align 4
  %mul425 = shl i64 %ui.0, 5
  %mul426 = shl i64 %ui.0, 4
  %add427 = add i64 %mul426, 60000
  %20 = tail call i64 @llvm.umax.i64(i64 %mul425, i64 %add427)
  %cond434.off0 = trunc i64 %20 to i32
  %hs_trail = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 14
  %21 = ptrtoint ptr %hs_trail to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cond434.off0, ptr %hs_trail, align 4
  %init = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 16
  %22 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 100, ptr %init, align 4
  %lpx = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 17
  %23 = ptrtoint ptr %lpx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 60000, ptr %lpx, align 4
  %ta_get = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 18
  %24 = ptrtoint ptr %ta_get to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 300000, ptr %ta_get, align 4
  %ta_go = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 19
  %25 = ptrtoint ptr %ta_go to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 240000, ptr %ta_go, align 4
  %ta_sure = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 20
  %26 = ptrtoint ptr %ta_sure to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 120000, ptr %ta_sure, align 4
  %wakeup = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 21
  %27 = ptrtoint ptr %wakeup to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1000, ptr %wakeup, align 4
  %hs_clk_rate443 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 22
  %28 = ptrtoint ptr %hs_clk_rate443 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div178, ptr %hs_clk_rate443, align 4
  %conv444 = trunc i32 %lanes to i8
  %lanes445 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 24
  %29 = ptrtoint ptr %lanes445 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv444, ptr %lanes445, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end411, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end411 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phy_mipi_dphy_config_validate(ptr noundef readonly %cfg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cfg, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %hs_clk_rate = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 22
  %0 = ptrtoint ptr %hs_clk_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hs_clk_rate, align 4
  %conv = zext i32 %1 to i64
  %add = add nuw nsw i64 %conv, 999999999999
  %neg = sub nsw i64 0, %conv
  %and = and i64 %add, %neg
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %and)
  %cmp177 = icmp ult i64 %and, 4294967296
  br i1 %cmp177, label %if.then181, label %if.else187, !prof !13

if.then181:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %conv182 = trunc i64 %and to i32
  %div185 = udiv i32 %conv182, %1
  %conv186 = zext i32 %div185 to i64
  br label %if.end191

if.else187:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %2 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %and) #6, !srcloc !14
  %asmresult1.i = extractvalue { i64, i64 } %2, 1
  br label %if.end191

if.end191:                                        ; preds = %if.else187, %if.then181
  %ui.0 = phi i64 [ %conv186, %if.then181 ], [ %asmresult1.i, %if.else187 ]
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60000, i32 %4)
  %cmp193 = icmp ugt i32 %4, 60000
  br i1 %cmp193, label %if.end191.cleanup_crit_edge, label %if.end196

if.end191.cleanup_crit_edge:                      ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end196:                                        ; preds = %if.end191
  %clk_post = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 1
  %5 = ptrtoint ptr %clk_post to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %clk_post, align 4
  %conv197 = zext i32 %6 to i64
  %mul198 = mul i64 %ui.0, 52
  %add199 = add i64 %mul198, 60000
  call void @__sanitizer_cov_trace_cmp8(i64 %add199, i64 %conv197)
  %cmp200 = icmp ugt i64 %add199, %conv197
  br i1 %cmp200, label %if.end196.cleanup_crit_edge, label %if.end203

if.end196.cleanup_crit_edge:                      ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end203:                                        ; preds = %if.end196
  %clk_pre = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 2
  %7 = ptrtoint ptr %clk_pre to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %clk_pre, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %cmp204 = icmp ult i32 %8, 8
  br i1 %cmp204, label %if.end203.cleanup_crit_edge, label %if.end207

if.end203.cleanup_crit_edge:                      ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end207:                                        ; preds = %if.end203
  %clk_prepare = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 3
  %9 = ptrtoint ptr %clk_prepare to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %clk_prepare, align 4
  %11 = add i32 %10, -95001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -57001, i32 %11)
  %12 = icmp ult i32 %11, -57001
  br i1 %12, label %if.end207.cleanup_crit_edge, label %if.end214

if.end207.cleanup_crit_edge:                      ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end214:                                        ; preds = %if.end207
  %clk_settle = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 4
  %13 = ptrtoint ptr %clk_settle to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %clk_settle, align 4
  %15 = add i32 %14, -300001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -205001, i32 %15)
  %16 = icmp ult i32 %15, -205001
  br i1 %16, label %if.end214.cleanup_crit_edge, label %if.end222

if.end214.cleanup_crit_edge:                      ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end222:                                        ; preds = %if.end214
  %clk_term_en = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 5
  %17 = ptrtoint ptr %clk_term_en to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %clk_term_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38000, i32 %18)
  %cmp223 = icmp ugt i32 %18, 38000
  br i1 %cmp223, label %if.end222.cleanup_crit_edge, label %if.end226

if.end222.cleanup_crit_edge:                      ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end226:                                        ; preds = %if.end222
  %clk_trail = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 6
  %19 = ptrtoint ptr %clk_trail to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %clk_trail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60000, i32 %20)
  %cmp227 = icmp ult i32 %20, 60000
  br i1 %cmp227, label %if.end226.cleanup_crit_edge, label %if.end230

if.end226.cleanup_crit_edge:                      ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end230:                                        ; preds = %if.end226
  %clk_zero = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 7
  %21 = ptrtoint ptr %clk_zero to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %clk_zero, align 4
  %add232 = add i32 %22, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000, i32 %add232)
  %cmp233 = icmp ult i32 %add232, 300000
  br i1 %cmp233, label %if.end230.cleanup_crit_edge, label %if.end236

if.end230.cleanup_crit_edge:                      ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end236:                                        ; preds = %if.end230
  %d_term_en = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 8
  %23 = ptrtoint ptr %d_term_en to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %d_term_en, align 4
  %conv237 = zext i32 %24 to i64
  %mul238 = shl i64 %ui.0, 2
  %add239 = add i64 %mul238, 35000
  call void @__sanitizer_cov_trace_cmp8(i64 %add239, i64 %conv237)
  %cmp240 = icmp ult i64 %add239, %conv237
  br i1 %cmp240, label %if.end236.cleanup_crit_edge, label %if.end243

if.end236.cleanup_crit_edge:                      ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end243:                                        ; preds = %if.end236
  %eot = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 9
  %25 = ptrtoint ptr %eot to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %eot, align 4
  %conv244 = zext i32 %26 to i64
  %mul245 = mul i64 %ui.0, 12
  %add246 = add i64 %mul245, 105000
  call void @__sanitizer_cov_trace_cmp8(i64 %add246, i64 %conv244)
  %cmp247 = icmp ult i64 %add246, %conv244
  br i1 %cmp247, label %if.end243.cleanup_crit_edge, label %if.end250

if.end243.cleanup_crit_edge:                      ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end250:                                        ; preds = %if.end243
  %hs_exit = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 10
  %27 = ptrtoint ptr %hs_exit to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hs_exit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %28)
  %cmp251 = icmp ult i32 %28, 100000
  br i1 %cmp251, label %if.end250.cleanup_crit_edge, label %if.end254

if.end250.cleanup_crit_edge:                      ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end254:                                        ; preds = %if.end250
  %hs_prepare = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 11
  %29 = ptrtoint ptr %hs_prepare to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hs_prepare, align 4
  %conv255 = zext i32 %30 to i64
  %add257 = add i64 %mul238, 40000
  call void @__sanitizer_cov_trace_cmp8(i64 %add257, i64 %conv255)
  %cmp258 = icmp ugt i64 %add257, %conv255
  br i1 %cmp258, label %if.end254.cleanup_crit_edge, label %lor.lhs.false260

if.end254.cleanup_crit_edge:                      ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false260:                                 ; preds = %if.end254
  %mul263 = mul i64 %ui.0, 6
  %add264 = add i64 %mul263, 85000
  call void @__sanitizer_cov_trace_cmp8(i64 %add264, i64 %conv255)
  %cmp265 = icmp ult i64 %add264, %conv255
  br i1 %cmp265, label %lor.lhs.false260.cleanup_crit_edge, label %if.end268

lor.lhs.false260.cleanup_crit_edge:               ; preds = %lor.lhs.false260
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end268:                                        ; preds = %lor.lhs.false260
  %hs_zero = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 15
  %31 = ptrtoint ptr %hs_zero to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hs_zero, align 4
  %add270 = add i32 %32, %30
  %conv271 = zext i32 %add270 to i64
  %mul272 = mul i64 %ui.0, 10
  %add273 = add i64 %mul272, 145000
  call void @__sanitizer_cov_trace_cmp8(i64 %add273, i64 %conv271)
  %cmp274 = icmp ugt i64 %add273, %conv271
  br i1 %cmp274, label %if.end268.cleanup_crit_edge, label %if.end277

if.end268.cleanup_crit_edge:                      ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end277:                                        ; preds = %if.end268
  %hs_settle = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 12
  %33 = ptrtoint ptr %hs_settle to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hs_settle, align 4
  %conv278 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add264, i64 %conv278)
  %cmp281 = icmp ugt i64 %add264, %conv278
  call void @__sanitizer_cov_trace_cmp8(i64 %add273, i64 %conv278)
  %cmp288 = icmp ult i64 %add273, %conv278
  %or.cond478 = select i1 %cmp281, i1 true, i1 %cmp288
  br i1 %or.cond478, label %if.end277.cleanup_crit_edge, label %if.end291

if.end277.cleanup_crit_edge:                      ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end291:                                        ; preds = %if.end277
  %hs_skip = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 13
  %35 = ptrtoint ptr %hs_skip to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hs_skip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40000, i32 %36)
  %cmp292 = icmp ult i32 %36, 40000
  br i1 %cmp292, label %if.end291.cleanup_crit_edge, label %lor.lhs.false294

if.end291.cleanup_crit_edge:                      ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false294:                                 ; preds = %if.end291
  %conv296 = zext i32 %36 to i64
  %add298 = add i64 %mul238, 55000
  call void @__sanitizer_cov_trace_cmp8(i64 %add298, i64 %conv296)
  %cmp299 = icmp ult i64 %add298, %conv296
  br i1 %cmp299, label %lor.lhs.false294.cleanup_crit_edge, label %if.end302

lor.lhs.false294.cleanup_crit_edge:               ; preds = %lor.lhs.false294
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end302:                                        ; preds = %lor.lhs.false294
  %hs_trail = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 14
  %37 = ptrtoint ptr %hs_trail to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %hs_trail, align 4
  %conv303 = zext i32 %38 to i64
  %mul304 = shl i64 %ui.0, 3
  %add306 = add i64 %mul238, 60000
  %39 = tail call i64 @llvm.umax.i64(i64 %mul304, i64 %add306)
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %conv303)
  %cmp314 = icmp ugt i64 %39, %conv303
  br i1 %cmp314, label %if.end302.cleanup_crit_edge, label %if.end317

if.end302.cleanup_crit_edge:                      ; preds = %if.end302
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end317:                                        ; preds = %if.end302
  %init = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 16
  %40 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %41)
  %cmp318 = icmp ult i32 %41, 100
  br i1 %cmp318, label %if.end317.cleanup_crit_edge, label %if.end321

if.end317.cleanup_crit_edge:                      ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end321:                                        ; preds = %if.end317
  %lpx = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 17
  %42 = ptrtoint ptr %lpx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %lpx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000, i32 %43)
  %cmp322 = icmp ult i32 %43, 50000
  br i1 %cmp322, label %if.end321.cleanup_crit_edge, label %if.end325

if.end321.cleanup_crit_edge:                      ; preds = %if.end321
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end325:                                        ; preds = %if.end321
  %ta_get = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 18
  %44 = ptrtoint ptr %ta_get to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ta_get, align 4
  %mul327 = mul i32 %43, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %mul327)
  %cmp328.not = icmp eq i32 %45, %mul327
  br i1 %cmp328.not, label %if.end331, label %if.end325.cleanup_crit_edge

if.end325.cleanup_crit_edge:                      ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end331:                                        ; preds = %if.end325
  %ta_go = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 19
  %46 = ptrtoint ptr %ta_go to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ta_go, align 4
  %mul333 = shl i32 %43, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %mul333)
  %cmp334.not = icmp eq i32 %47, %mul333
  br i1 %cmp334.not, label %if.end337, label %if.end331.cleanup_crit_edge

if.end331.cleanup_crit_edge:                      ; preds = %if.end331
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end337:                                        ; preds = %if.end331
  %ta_sure = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 20
  %48 = ptrtoint ptr %ta_sure to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ta_sure, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %43)
  %cmp339 = icmp ult i32 %49, %43
  %mul344 = shl i32 %43, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %mul344)
  %cmp345 = icmp ugt i32 %49, %mul344
  %or.cond479 = or i1 %cmp339, %cmp345
  br i1 %or.cond479, label %if.end337.cleanup_crit_edge, label %if.end348

if.end337.cleanup_crit_edge:                      ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end348:                                        ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #5
  %wakeup = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %cfg, i32 0, i32 21
  %50 = ptrtoint ptr %wakeup to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %wakeup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %51)
  %cmp349 = icmp ult i32 %51, 1000
  %. = select i1 %cmp349, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end348, %if.end337.cleanup_crit_edge, %if.end331.cleanup_crit_edge, %if.end325.cleanup_crit_edge, %if.end321.cleanup_crit_edge, %if.end317.cleanup_crit_edge, %if.end302.cleanup_crit_edge, %lor.lhs.false294.cleanup_crit_edge, %if.end291.cleanup_crit_edge, %if.end277.cleanup_crit_edge, %if.end268.cleanup_crit_edge, %lor.lhs.false260.cleanup_crit_edge, %if.end254.cleanup_crit_edge, %if.end250.cleanup_crit_edge, %if.end243.cleanup_crit_edge, %if.end236.cleanup_crit_edge, %if.end230.cleanup_crit_edge, %if.end226.cleanup_crit_edge, %if.end222.cleanup_crit_edge, %if.end214.cleanup_crit_edge, %if.end207.cleanup_crit_edge, %if.end203.cleanup_crit_edge, %if.end196.cleanup_crit_edge, %if.end191.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end191.cleanup_crit_edge ], [ -22, %if.end196.cleanup_crit_edge ], [ -22, %if.end203.cleanup_crit_edge ], [ -22, %if.end207.cleanup_crit_edge ], [ -22, %if.end214.cleanup_crit_edge ], [ -22, %if.end222.cleanup_crit_edge ], [ -22, %if.end226.cleanup_crit_edge ], [ -22, %if.end230.cleanup_crit_edge ], [ -22, %if.end236.cleanup_crit_edge ], [ -22, %if.end243.cleanup_crit_edge ], [ -22, %if.end250.cleanup_crit_edge ], [ -22, %lor.lhs.false260.cleanup_crit_edge ], [ -22, %if.end254.cleanup_crit_edge ], [ -22, %if.end268.cleanup_crit_edge ], [ -22, %if.end277.cleanup_crit_edge ], [ -22, %lor.lhs.false294.cleanup_crit_edge ], [ -22, %if.end291.cleanup_crit_edge ], [ -22, %if.end302.cleanup_crit_edge ], [ -22, %if.end317.cleanup_crit_edge ], [ -22, %if.end321.cleanup_crit_edge ], [ -22, %if.end325.cleanup_crit_edge ], [ -22, %if.end331.cleanup_crit_edge ], [ -22, %if.end337.cleanup_crit_edge ], [ %., %if.end348 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @__ksymtab_phy_mipi_dphy_get_default_config, !1, !"__ksymtab_phy_mipi_dphy_get_default_config", i1 false, i1 false}
!1 = !{!"../drivers/phy/phy-core-mipi-dphy.c", i32 78, i32 1}
!2 = !{ptr @__ksymtab_phy_mipi_dphy_config_validate, !3, !"__ksymtab_phy_mipi_dphy_config_validate", i1 false, i1 false}
!3 = !{!"../drivers/phy/phy-core-mipi-dphy.c", i32 164, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2148603724, i64 2148604004, i64 2148604338, i64 2148604672}
