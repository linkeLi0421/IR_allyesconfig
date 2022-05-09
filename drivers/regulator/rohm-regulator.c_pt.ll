; ModuleID = '/llk/IR_all_yes/drivers/regulator/rohm-regulator.c_pt.bc'
source_filename = "../drivers/regulator/rohm-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rohm_regulator_set_dvs_levels\22, \22a\22\09"
module asm "\09.weak\09__crc_rohm_regulator_set_dvs_levels\09\09\09\09"
module asm "\09.long\09__crc_rohm_regulator_set_dvs_levels\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rohm_regulator_set_dvs_levels:\09\09\09\09\09"
module asm "\09.asciz \09\22rohm_regulator_set_dvs_levels\22\09\09\09\09\09"
module asm "__kstrtabns_rohm_regulator_set_dvs_levels:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rohm_regulator_set_voltage_sel_restricted\22, \22a\22\09"
module asm "\09.weak\09__crc_rohm_regulator_set_voltage_sel_restricted\09\09\09\09"
module asm "\09.long\09__crc_rohm_regulator_set_voltage_sel_restricted\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rohm_regulator_set_voltage_sel_restricted:\09\09\09\09\09"
module asm "\09.asciz \09\22rohm_regulator_set_voltage_sel_restricted\22\09\09\09\09\09"
module asm "__kstrtabns_rohm_regulator_set_voltage_sel_restricted:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.rohm_dvs_config = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rohm,dvs-run-voltage\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rohm,dvs-idle-voltage\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rohm,dvs-suspend-voltage\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rohm,dvs-lpsr-voltage\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rohm,dvs-snvs-voltage\00", [42 x i8] zeroinitializer }, align 32
@__kstrtab_rohm_regulator_set_dvs_levels = external dso_local constant [0 x i8], align 1
@__kstrtabns_rohm_regulator_set_dvs_levels = external dso_local constant [0 x i8], align 1
@__ksymtab_rohm_regulator_set_dvs_levels = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rohm_regulator_set_dvs_levels to i32), ptr @__kstrtab_rohm_regulator_set_dvs_levels, ptr @__kstrtabns_rohm_regulator_set_dvs_levels }, section "___ksymtab+rohm_regulator_set_dvs_levels", align 4
@__kstrtab_rohm_regulator_set_voltage_sel_restricted = external dso_local constant [0 x i8], align 1
@__kstrtabns_rohm_regulator_set_voltage_sel_restricted = external dso_local constant [0 x i8], align 1
@__ksymtab_rohm_regulator_set_voltage_sel_restricted = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rohm_regulator_set_voltage_sel_restricted to i32), ptr @__kstrtab_rohm_regulator_set_voltage_sel_restricted, ptr @__kstrtabns_rohm_regulator_set_voltage_sel_restricted }, section "___ksymtab_gpl+rohm_regulator_set_voltage_sel_restricted", align 4
@__UNIQUE_ID_file288 = internal constant [53 x i8] c"rohm_regulator.file=drivers/regulator/rohm-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license289 = internal constant [30 x i8] c"rohm_regulator.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [74 x i8] c"rohm_regulator.author=Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [75 x i8] c"rohm_regulator.description=Generic helpers for ROHM PMIC regulator drivers\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 75, i32 12 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 81, i32 12 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 87, i32 12 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 93, i32 12 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private constant [38 x i8] c"../drivers/regulator/rohm-regulator.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 99, i32 12 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file288, ptr @__UNIQUE_ID_license289, ptr @__ksymtab_rohm_regulator_set_dvs_levels, ptr @__ksymtab_rohm_regulator_set_voltage_sel_restricted, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rohm_regulator_set_dvs_levels(ptr nocapture noundef readonly %dvs, ptr noundef %np, ptr noundef %desc, ptr noundef %regmap) #0 align 64 {
entry:
  %uv.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_reg = getelementptr inbounds %struct.regulator_desc, ptr %desc, i32 0, i32 34
  %0 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enable_reg, align 4
  %snvs_reg = getelementptr inbounds %struct.rohm_dvs_config, ptr %dvs, i32 0, i32 13
  %snvs_mask = getelementptr inbounds %struct.rohm_dvs_config, ptr %dvs, i32 0, i32 14
  %snvs_on_mask = getelementptr inbounds %struct.rohm_dvs_config, ptr %dvs, i32 0, i32 15
  %lpsr_reg = getelementptr inbounds %struct.rohm_dvs_config, ptr %dvs, i32 0, i32 10
  %lpsr_mask = getelementptr inbounds %struct.rohm_dvs_config, ptr %dvs, i32 0, i32 11
  %lpsr_on_mask = getelementptr inbounds %struct.rohm_dvs_config, ptr %dvs, i32 0, i32 12
  %suspend_reg = getelementptr inbounds %struct.rohm_dvs_config, ptr %dvs, i32 0, i32 7
  %suspend_mask = getelementptr inbounds %struct.rohm_dvs_config, ptr %dvs, i32 0, i32 8
  %suspend_on_mask = getelementptr inbounds %struct.rohm_dvs_config, ptr %dvs, i32 0, i32 9
  %idle_reg = getelementptr inbounds %struct.rohm_dvs_config, ptr %dvs, i32 0, i32 4
  %idle_mask = getelementptr inbounds %struct.rohm_dvs_config, ptr %dvs, i32 0, i32 5
  %idle_on_mask = getelementptr inbounds %struct.rohm_dvs_config, ptr %dvs, i32 0, i32 6
  %run_reg = getelementptr inbounds %struct.rohm_dvs_config, ptr %dvs, i32 0, i32 1
  %run_mask = getelementptr inbounds %struct.rohm_dvs_config, ptr %dvs, i32 0, i32 2
  %run_on_mask = getelementptr inbounds %struct.rohm_dvs_config, ptr %dvs, i32 0, i32 3
  %n_voltages.i = getelementptr inbounds %struct.regulator_desc, ptr %desc, i32 0, i32 8
  %linear_range_selectors.i = getelementptr inbounds %struct.regulator_desc, ptr %desc, i32 0, i32 21
  %n_linear_ranges.i = getelementptr inbounds %struct.regulator_desc, ptr %desc, i32 0, i32 22
  %vsel_mask.i = getelementptr inbounds %struct.regulator_desc, ptr %desc, i32 0, i32 28
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.037 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.037
  %2 = ptrtoint ptr %dvs to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %dvs, align 8
  %conv39 = zext i32 %shl to i64
  %and = and i64 %3, %conv39
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then:                                          ; preds = %for.body
  %4 = zext i32 %shl to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shl, label %if.then.cleanup6_crit_edge [
    i32 1, label %if.then.sw.epilog_crit_edge
    i32 2, label %sw.bb2
    i32 4, label %sw.bb3
    i32 8, label %sw.bb4
    i32 16, label %sw.bb5
  ]

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then.cleanup6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup6

sw.bb2:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %if.then.sw.epilog_crit_edge
  %prop.0 = phi ptr [ @.str.4, %sw.bb5 ], [ @.str.3, %sw.bb4 ], [ @.str.2, %sw.bb3 ], [ @.str.1, %sw.bb2 ], [ @.str, %if.then.sw.epilog_crit_edge ]
  %reg.0.in = phi ptr [ %snvs_reg, %sw.bb5 ], [ %lpsr_reg, %sw.bb4 ], [ %suspend_reg, %sw.bb3 ], [ %idle_reg, %sw.bb2 ], [ %run_reg, %if.then.sw.epilog_crit_edge ]
  %mask.0.in = phi ptr [ %snvs_mask, %sw.bb5 ], [ %lpsr_mask, %sw.bb4 ], [ %suspend_mask, %sw.bb3 ], [ %idle_mask, %sw.bb2 ], [ %run_mask, %if.then.sw.epilog_crit_edge ]
  %omask.0.in = phi ptr [ %snvs_on_mask, %sw.bb5 ], [ %lpsr_on_mask, %sw.bb4 ], [ %suspend_on_mask, %sw.bb3 ], [ %idle_on_mask, %sw.bb2 ], [ %run_on_mask, %if.then.sw.epilog_crit_edge ]
  %5 = ptrtoint ptr %omask.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %omask.0 = load i32, ptr %omask.0.in, align 4
  %6 = ptrtoint ptr %mask.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %mask.0 = load i32, ptr %mask.0.in, align 4
  %7 = ptrtoint ptr %reg.0.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %reg.0 = load i32, ptr %reg.0.in, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uv.i) #4
  %8 = ptrtoint ptr %uv.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %uv.i, align 4, !annotation !30
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull %prop.0, ptr noundef nonnull %uv.i, i32 noundef 1, i32 noundef 0) #4
  %9 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %9, label %sw.epilog.set_dvs_level.exit_crit_edge [
    i32 0, label %if.end2.i
    i32 -22, label %if.end.i
  ]

sw.epilog.set_dvs_level.exit_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_dvs_level.exit

if.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_dvs_level.exit

if.end2.i:                                        ; preds = %sw.epilog
  %11 = ptrtoint ptr %uv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %uv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp3.i = icmp ne i32 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %omask.0)
  %tobool5.not.i = icmp eq i32 %omask.0, 0
  %or.cond.i = or i1 %tobool5.not.i, %cmp3.i
  br i1 %or.cond.i, label %if.end9.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef %1, i32 noundef %omask.0, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %set_dvs_level.exit

if.end9.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask.0)
  %tobool10.not.i = icmp eq i32 %mask.0, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end9.i
  %13 = ptrtoint ptr %n_voltages.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_voltages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp1774.not.i = icmp eq i32 %14, 0
  br i1 %cmp1774.not.i, label %for.cond.preheader.i.set_dvs_level.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.set_dvs_level.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_dvs_level.exit

if.then11.i:                                      ; preds = %if.end9.i
  br i1 %tobool5.not.i, label %if.then11.i.set_dvs_level.exit_crit_edge, label %if.then13.i

if.then11.i.set_dvs_level.exit_crit_edge:         ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_dvs_level.exit

if.then13.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i70.i = call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef %1, i32 noundef %omask.0, i32 noundef %omask.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %set_dvs_level.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.075.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %linear_range_selectors.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %linear_range_selectors.i, align 4
  %tobool18.not.i = icmp eq ptr %16, null
  br i1 %tobool18.not.i, label %if.end20.i, label %for.body.i.set_dvs_level.exit_crit_edge

for.body.i.set_dvs_level.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_dvs_level.exit

if.end20.i:                                       ; preds = %for.body.i
  %17 = ptrtoint ptr %n_linear_ranges.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n_linear_ranges.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool21.not.i = icmp eq i32 %18, 0
  br i1 %tobool21.not.i, label %if.else.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  %call23.i = call i32 @regulator_desc_list_voltage_linear_range(ptr noundef %desc, i32 noundef %i.075.i) #4
  br label %if.end25.i

if.else.i:                                        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  %call24.i = call i32 @regulator_desc_list_voltage_linear(ptr noundef %desc, i32 noundef %i.075.i) #4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else.i, %if.then22.i
  %ret.1.i = phi i32 [ %call23.i, %if.then22.i ], [ %call24.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp26.i = icmp slt i32 %ret.1.i, 0
  br i1 %cmp26.i, label %if.end25.i.for.inc.i_crit_edge, label %if.end28.i

if.end25.i.for.inc.i_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end28.i:                                       ; preds = %if.end25.i
  %19 = ptrtoint ptr %uv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %uv.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.1.i, i32 %20)
  %cmp29.i = icmp eq i32 %ret.1.i, %20
  br i1 %cmp29.i, label %if.then30.i, label %if.end28.i.for.inc.i_crit_edge

if.end28.i.for.inc.i_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.then30.i:                                      ; preds = %if.end28.i
  %21 = ptrtoint ptr %vsel_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vsel_mask.i, align 4
  %23 = call i32 @llvm.cttz.i32(i32 %22, i1 true) #4, !range !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %iszero.i = icmp eq i32 %22, 0
  %sub.i = select i1 %iszero.i, i32 -1, i32 %23
  %shl.i = shl i32 %i.075.i, %sub.i
  %call.i71.i = call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef %reg.0, i32 noundef %mask.0, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %omask.0)
  %tobool32.not.i = icmp ne i32 %omask.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71.i)
  %tobool33.not.i = icmp eq i32 %call.i71.i, 0
  %or.cond69.i = select i1 %tobool32.not.i, i1 %tobool33.not.i, i1 false
  br i1 %or.cond69.i, label %if.then34.i, label %if.then30.i.set_dvs_level.exit_crit_edge

if.then30.i.set_dvs_level.exit_crit_edge:         ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_dvs_level.exit

if.then34.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i72.i = call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef %1, i32 noundef %omask.0, i32 noundef %omask.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %set_dvs_level.exit

for.inc.i:                                        ; preds = %if.end28.i.for.inc.i_crit_edge, %if.end25.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.075.i, 1
  %24 = ptrtoint ptr %n_voltages.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n_voltages.i, align 4
  %cmp17.i = icmp ult i32 %inc.i, %25
  br i1 %cmp17.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.set_dvs_level.exit_crit_edge

for.inc.i.set_dvs_level.exit_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_dvs_level.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

set_dvs_level.exit:                               ; preds = %for.inc.i.set_dvs_level.exit_crit_edge, %if.then34.i, %if.then30.i.set_dvs_level.exit_crit_edge, %for.body.i.set_dvs_level.exit_crit_edge, %if.then13.i, %if.then11.i.set_dvs_level.exit_crit_edge, %for.cond.preheader.i.set_dvs_level.exit_crit_edge, %if.then6.i, %if.end.i, %sw.epilog.set_dvs_level.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ %call.i.i, %if.then6.i ], [ %call.i70.i, %if.then13.i ], [ %9, %sw.epilog.set_dvs_level.exit_crit_edge ], [ -22, %if.then11.i.set_dvs_level.exit_crit_edge ], [ %call.i72.i, %if.then34.i ], [ %call.i71.i, %if.then30.i.set_dvs_level.exit_crit_edge ], [ 0, %for.cond.preheader.i.set_dvs_level.exit_crit_edge ], [ %ret.1.i, %for.inc.i.set_dvs_level.exit_crit_edge ], [ -22, %for.body.i.set_dvs_level.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uv.i) #4
  br label %for.inc

for.inc:                                          ; preds = %set_dvs_level.exit, %for.body.for.inc_crit_edge
  %ret.2.ph = phi i32 [ 0, %for.body.for.inc_crit_edge ], [ %retval.0.i, %set_dvs_level.exit ]
  %inc = add nuw nsw i32 %i.037, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.037)
  %cmp = icmp ult i32 %i.037, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.ph)
  %tobool.not = icmp eq i32 %ret.2.ph, 0
  %or.cond = select i1 %cmp, i1 %tobool.not, i1 false
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.inc.cleanup6_crit_edge

for.inc.cleanup6_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup6

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup6:                                         ; preds = %for.inc.cleanup6_crit_edge, %if.then.cleanup6_crit_edge
  %retval.2 = phi i32 [ %ret.2.ph, %for.inc.cleanup6_crit_edge ], [ -22, %if.then.cleanup6_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rohm_regulator_set_voltage_sel_restricted(ptr noundef %rdev, i32 noundef %sel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %ops = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %is_enabled = getelementptr inbounds %struct.regulator_ops, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %is_enabled, align 4
  %call = tail call i32 %5(ptr noundef %rdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 @regulator_set_voltage_sel_regmap(ptr noundef %rdev, i32 noundef %sel) #4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -16, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_desc_list_voltage_linear_range(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_desc_list_voltage_linear(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/regulator/rohm-regulator.c", i32 75, i32 12}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/regulator/rohm-regulator.c", i32 81, i32 12}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/regulator/rohm-regulator.c", i32 87, i32 12}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/regulator/rohm-regulator.c", i32 93, i32 12}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/regulator/rohm-regulator.c", i32 99, i32 12}
!10 = !{ptr @__ksymtab_rohm_regulator_set_dvs_levels, !11, !"__ksymtab_rohm_regulator_set_dvs_levels", i1 false, i1 false}
!11 = !{!"../drivers/regulator/rohm-regulator.c", i32 113, i32 1}
!12 = !{ptr @__ksymtab_rohm_regulator_set_voltage_sel_restricted, !13, !"__ksymtab_rohm_regulator_set_voltage_sel_restricted", i1 false, i1 false}
!13 = !{!"../drivers/regulator/rohm-regulator.c", i32 129, i32 1}
!14 = !{ptr @__UNIQUE_ID_file288, !15, !"__UNIQUE_ID_file288", i1 false, i1 false}
!15 = !{!"../drivers/regulator/rohm-regulator.c", i32 131, i32 1}
!16 = !{ptr @__UNIQUE_ID_license289, !15, !"__UNIQUE_ID_license289", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_author290, !18, !"__UNIQUE_ID_author290", i1 false, i1 false}
!18 = !{!"../drivers/regulator/rohm-regulator.c", i32 132, i32 1}
!19 = !{ptr @__UNIQUE_ID_description291, !20, !"__UNIQUE_ID_description291", i1 false, i1 false}
!20 = !{!"../drivers/regulator/rohm-regulator.c", i32 133, i32 1}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"auto-init"}
!31 = !{i32 0, i32 33}
