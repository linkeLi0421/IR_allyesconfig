; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/sun4i/sun8i_ui_scaler.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun8i_ui_scaler.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sun8i_mixer = type { %struct.sunxi_engine, ptr, ptr, ptr, ptr }
%struct.sunxi_engine = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.sun8i_mixer_cfg = type { i32, i32, i32, i32, i32, i8, i32 }

@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/sun4i/sun8i_ui_scaler.c\00", [56 x i8] zeroinitializer }, align 32
@lan2coefftab16 = internal constant { [240 x i32], [224 x i8] } { [240 x i32] [i32 16384, i32 212990, i32 409340, i32 670715, i32 -15779845, i32 -32230405, i32 -48680965, i32 -48289285, i32 -64740100, i32 -81190915, i32 -80799235, i32 -80538370, i32 -80277505, i32 -80016896, i32 -63044096, i32 -29424896, i32 -16435196, i32 -16238591, i32 -16107776, i32 -15846145, i32 -15584515, i32 -32100355, i32 -48550660, i32 -48289540, i32 -48028675, i32 -64479235, i32 -64218115, i32 -47245570, i32 -47049985, i32 -13365505, i32 3541504, i32 37160704, i32 -16240121, i32 -16109051, i32 -15912701, i32 -32428031, i32 -32231936, i32 -31970305, i32 -31774210, i32 -31513090, i32 -31317250, i32 -31121410, i32 -30860290, i32 -13952770, i32 3020030, i32 19927295, i32 53546495, i32 87099904, i32 -16110071, i32 -15979001, i32 -15782651, i32 -15586301, i32 -32167166, i32 -31971071, i32 -31774976, i32 -14801665, i32 -14605825, i32 -14409985, i32 2497535, i32 19405055, i32 36312575, i32 53220095, i32 86839295, i32 120392704, i32 -15980021, i32 -15848951, i32 -15717881, i32 -15521531, i32 -15325181, i32 -15194366, i32 -14998271, i32 -14802176, i32 2105344, i32 19012864, i32 19209215, i32 52828415, i32 69735935, i32 86578175, i32 120197375, i32 153750784, i32 -15914996, i32 -15783926, i32 -15652856, i32 -15456506, i32 -15325691, i32 -15129341, i32 1778434, i32 1909249, i32 18816769, i32 19012864, i32 35855104, i32 69474304, i32 86382335, i32 120001535, i32 136777984, i32 170397184, i32 -15849971, i32 -15718901, i32 -15587831, i32 -15457016, i32 1385734, i32 1581829, i32 1778179, i32 18685954, i32 18816769, i32 35659009, i32 52566784, i32 69408769, i32 103028224, i32 136647424, i32 153489664, i32 187043584, i32 -15850226, i32 -15719156, i32 1123594, i32 1319944, i32 1450759, i32 1581574, i32 18489604, i32 18620419, i32 35528194, i32 52435969, i32 69278209, i32 86120449, i32 119739904, i32 136582144, i32 170136064, i32 203689984, i32 926734, i32 1057804, i32 1254154, i32 1319689, i32 1450504, i32 18358534, i32 18489349, i32 35331844, i32 52239619, i32 69082114, i32 85989889, i32 102832129, i32 119674369, i32 153293824, i32 170070784, i32 203624704, i32 991759, i32 1122829, i32 1253899, i32 1384714, i32 18227464, i32 18358279, i32 35200774, i32 52043269, i32 68951044, i32 85793539, i32 102701314, i32 119543809, i32 136386049, i32 169940224, i32 186782464, i32 220336384, i32 1057039, i32 1122574, i32 1253644, i32 18096139, i32 18226954, i32 35069704, i32 51912199, i32 52043014, i32 68951044, i32 85793284, i32 119347459, i32 136189954, i32 153032194, i32 186586369, i32 203494144, i32 236982784, i32 1056784, i32 1187854, i32 1253389, i32 18161419, i32 18226954, i32 35069449, i32 51977479, i32 68819974, i32 85662469, i32 102504964, i32 119347459, i32 136189699, i32 169809409, i32 186586369, i32 220205824, i32 236982784, i32 1056784, i32 1187599, i32 1318669, i32 18095884, i32 35003914, i32 51846409, i32 51911944, i32 68819974, i32 85662469, i32 102504964, i32 136059139, i32 152901379, i32 169743874, i32 203298049, i32 220140544, i32 236917249, i32 1121809, i32 1252879, i32 18030094, i32 34938124, i32 35003659, i32 51846154, i32 68688649, i32 85531399, i32 102373894, i32 119216389, i32 152770564, i32 169613059, i32 186455554, i32 203232514, i32 236786689, i32 253629184, i32 1121809, i32 1252624, i32 18095374, i32 34937869, i32 51780619, i32 68623114, i32 85400329, i32 102242824, i32 119085319, i32 135927814, i32 152705029, i32 169547524, i32 186390019, i32 219944194, i32 236786689, i32 253563649], [224 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 134, i32 6 }
@___asan_gen_.4 = private unnamed_addr constant [15 x i8] c"lan2coefftab16\00", align 1
@___asan_gen_.5 = private constant [43 x i8] c"../drivers/gpu/drm/sun4i/sun8i_ui_scaler.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 15, i32 18 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @lan2coefftab16], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan2coefftab16 to i32), i32 960, i32 1184, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sun8i_ui_scaler_enable(ptr nocapture noundef readonly %mixer, i32 noundef %layer, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.sun8i_mixer, ptr %mixer, i32 0, i32 1
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %layer)
  %cmp = icmp sgt i32 %3, %layer
  br i1 %cmp, label %do.end, label %if.end21, !prof !13

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 134, i32 noundef 9, ptr noundef null) #2
  br label %cleanup

if.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %is_de3.i = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %is_de3.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %is_de3.i, align 4
  %reass.mul.i = shl i32 %layer, 15
  %add4.i = add i32 %reass.mul.i, 131072
  %mul5.i = shl i32 %3, 17
  %add6.i = add i32 %mul5.i, 131072
  %sub7.i = sub i32 %layer, %3
  %mul8.i = shl i32 %sub7.i, 16
  %add9.i = add i32 %add6.i, %mul8.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %tobool.not.i31 = icmp slt i8 %bf.load.i, 0
  %retval.0.i = select i1 %tobool.not.i31, i32 %add4.i, i32 %add9.i
  %. = select i1 %enable, i32 17, i32 0
  %regs = getelementptr inbounds %struct.sunxi_engine, ptr %mixer, i32 0, i32 2
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %call25 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef %retval.0.i, i32 noundef %.) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sun8i_ui_scaler_setup(ptr nocapture noundef readonly %mixer, i32 noundef %layer, i32 noundef %src_w, i32 noundef %src_h, i32 noundef %dst_w, i32 noundef %dst_h, i32 noundef %hscale, i32 noundef %vscale, i32 noundef %hphase, i32 noundef %vphase) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.sun8i_mixer, ptr %mixer, i32 0, i32 1
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %layer)
  %cmp = icmp sgt i32 %3, %layer
  br i1 %cmp, label %do.end, label %if.end21, !prof !13

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 156, i32 noundef 9, ptr noundef null) #2
  br label %cleanup

if.end21:                                         ; preds = %entry
  %is_de3.i = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %is_de3.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %is_de3.i, align 4
  %reass.mul.i = shl i32 %layer, 15
  %add4.i = add i32 %reass.mul.i, 131072
  %mul5.i = shl i32 %3, 17
  %add6.i = add i32 %mul5.i, 131072
  %sub7.i = sub i32 %layer, %3
  %mul8.i = shl i32 %sub7.i, 16
  %add9.i = add i32 %add6.i, %mul8.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %tobool.not.i90 = icmp slt i8 %bf.load.i, 0
  %retval.0.i = select i1 %tobool.not.i90, i32 %add4.i, i32 %add9.i
  %shl = shl i32 %hphase, 4
  %shl22 = shl i32 %vphase, 4
  %shl23 = shl i32 %hscale, 4
  %shl24 = shl i32 %vscale, 4
  %sub = shl i32 %src_h, 16
  %shl25 = add i32 %sub, -65536
  %sub26 = add i32 %src_w, -1
  %or = or i32 %shl25, %sub26
  %sub27 = shl i32 %dst_h, 16
  %shl28 = add i32 %sub27, -65536
  %sub29 = add i32 %dst_w, -1
  %or30 = or i32 %shl28, %sub29
  %regs = getelementptr inbounds %struct.sunxi_engine, ptr %mixer, i32 0, i32 2
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %add = or i32 %retval.0.i, 64
  %call31 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef %add, i32 noundef %or30) #2
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add34 = or i32 %retval.0.i, 128
  %call35 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef %add34, i32 noundef %or) #2
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %add38 = or i32 %retval.0.i, 136
  %call39 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef %add38, i32 noundef %shl23) #2
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %add42 = or i32 %retval.0.i, 140
  %call43 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef %add42, i32 noundef %shl24) #2
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add46 = or i32 %retval.0.i, 144
  %call47 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef %add46, i32 noundef %shl) #2
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %add50 = or i32 %retval.0.i, 152
  %call51 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef %add50, i32 noundef %shl22) #2
  %shr.i = lshr i32 %shl23, 17
  %shr1.i = lshr i32 %shl23, 20
  %and.i = and i32 %shr.i, 7
  %17 = zext i32 %shr1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr1.i, label %sw.default.i [
    i32 0, label %if.end21.sun8i_ui_scaler_coef_index.exit_crit_edge
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb3.i
    i32 3, label %sw.bb5.i
    i32 4, label %sw.bb6.i
  ]

if.end21.sun8i_ui_scaler_coef_index.exit_crit_edge: ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #4
  br label %sun8i_ui_scaler_coef_index.exit

sw.bb2.i:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #4
  br label %sun8i_ui_scaler_coef_index.exit

sw.bb3.i:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #4
  %shr4.i = lshr i32 %and.i, 1
  %add.i = or i32 %shr4.i, 8
  br label %sun8i_ui_scaler_coef_index.exit

sw.bb5.i:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #4
  br label %sun8i_ui_scaler_coef_index.exit

sw.bb6.i:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #4
  br label %sun8i_ui_scaler_coef_index.exit

sw.default.i:                                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #4
  br label %sun8i_ui_scaler_coef_index.exit

sun8i_ui_scaler_coef_index.exit:                  ; preds = %sw.default.i, %sw.bb6.i, %sw.bb5.i, %sw.bb3.i, %sw.bb2.i, %if.end21.sun8i_ui_scaler_coef_index.exit_crit_edge
  %retval.0.i89 = phi i32 [ 14, %sw.default.i ], [ 13, %sw.bb6.i ], [ 12, %sw.bb5.i ], [ %add.i, %sw.bb3.i ], [ %and.i, %sw.bb2.i ], [ %shr1.i, %if.end21.sun8i_ui_scaler_coef_index.exit_crit_edge ]
  %mul = shl i32 %retval.0.i89, 4
  %add56 = or i32 %retval.0.i, 512
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sun8i_ui_scaler_coef_index.exit
  %i.091 = phi i32 [ 0, %sun8i_ui_scaler_coef_index.exit ], [ %inc, %for.body.for.body_crit_edge ]
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %mul57 = shl i32 %i.091, 2
  %add58 = add nuw nsw i32 %add56, %mul57
  %add59 = add nuw nsw i32 %i.091, %mul
  %arrayidx = getelementptr [240 x i32], ptr @lan2coefftab16, i32 0, i32 %add59
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %call60 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef %add58, i32 noundef %21) #2
  %inc = add nuw nsw i32 %i.091, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/sun4i/sun8i_ui_scaler.c", i32 134, i32 6}
!2 = !{ptr @lan2coefftab16, !3, !"lan2coefftab16", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/sun4i/sun8i_ui_scaler.c", i32 15, i32 18}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"branch_weights", i32 1, i32 2000}
