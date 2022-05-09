; ModuleID = '/llk/IR_all_yes/drivers/media/rc/img-ir/img-ir-nec.c_pt.bc'
source_filename = "../drivers/media/rc/img-ir/img-ir-nec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.img_ir_timings = type { %struct.img_ir_symbol_timing, %struct.img_ir_symbol_timing, %struct.img_ir_symbol_timing, %struct.img_ir_symbol_timing, %struct.img_ir_symbol_timing, %struct.img_ir_free_timing }
%struct.img_ir_symbol_timing = type { %struct.img_ir_timing_range, %struct.img_ir_timing_range }
%struct.img_ir_timing_range = type { i16, i16 }
%struct.img_ir_free_timing = type { i8, i8, i16 }
%struct.img_ir_scancode_req = type { i32, i32, i8 }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.img_ir_filter = type { i64, i64, i8, i8 }

@img_ir_nec = dso_local global { { i64, i32, i32, %struct.img_ir_timings, %struct.img_ir_timings, i32, { i8, i8, [2 x i8] }, ptr, ptr }, [40 x i8] } { { i64, i32, i32, %struct.img_ir_timings, %struct.img_ir_timings, i32, { i8, i8, [2 x i8] }, ptr, ptr } { i64 3584, i32 0, i32 562500, %struct.img_ir_timings { %struct.img_ir_symbol_timing { %struct.img_ir_timing_range { i16 16, i16 0 }, %struct.img_ir_timing_range { i16 8, i16 0 } }, %struct.img_ir_symbol_timing { %struct.img_ir_timing_range { i16 1, i16 0 }, %struct.img_ir_timing_range { i16 1, i16 0 } }, %struct.img_ir_symbol_timing { %struct.img_ir_timing_range { i16 1, i16 0 }, %struct.img_ir_timing_range { i16 3, i16 0 } }, %struct.img_ir_symbol_timing zeroinitializer, %struct.img_ir_symbol_timing zeroinitializer, %struct.img_ir_free_timing { i8 32, i8 32, i16 10 } }, %struct.img_ir_timings { %struct.img_ir_symbol_timing { %struct.img_ir_timing_range zeroinitializer, %struct.img_ir_timing_range { i16 4, i16 0 } }, %struct.img_ir_symbol_timing zeroinitializer, %struct.img_ir_symbol_timing zeroinitializer, %struct.img_ir_symbol_timing zeroinitializer, %struct.img_ir_symbol_timing zeroinitializer, %struct.img_ir_free_timing zeroinitializer }, i32 108, { i8, i8, [2 x i8] } { i8 -96, i8 0, [2 x i8] undef }, ptr @img_ir_nec_scancode, ptr @img_ir_nec_filter }, [40 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 32]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 12, i64 1024, i64 2048]
@___asan_gen_.2 = private unnamed_addr constant [11 x i8] c"img_ir_nec\00", align 1
@___asan_gen_.3 = private constant [40 x i8] c"../drivers/media/rc/img-ir/img-ir-nec.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 126, i32 23 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @img_ir_nec], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_ir_nec to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @img_ir_nec_scancode(i32 noundef %len, i64 noundef %raw, i64 noundef %enabled_protocols, ptr nocapture noundef writeonly %request) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %len to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %len, label %if.then1 [
    i32 0, label %entry.cleanup_crit_edge
    i32 32, label %if.end2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end2:                                          ; preds = %entry
  %1 = trunc i64 %raw to i32
  %conv = and i32 %1, 255
  %2 = lshr i32 %1, 8
  %conv5 = and i32 %2, 255
  %3 = lshr i32 %1, 16
  %conv8 = and i32 %3, 255
  %4 = lshr i32 %1, 24
  %xor = xor i32 %conv8, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %xor)
  %cmp12.not = icmp eq i32 %xor, 255
  br i1 %cmp12.not, label %if.else, label %cond.end

cond.end:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  %cond = zext i8 %6 to i32
  %shl39 = shl nuw i32 %cond, 24
  %arrayidx.i218 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv5
  %7 = ptrtoint ptr %arrayidx.i218 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i218, align 1
  %cond73 = zext i8 %8 to i32
  %shl74 = shl nuw nsw i32 %cond73, 16
  %or75 = or i32 %shl74, %shl39
  %arrayidx.i220 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv8
  %9 = ptrtoint ptr %arrayidx.i220 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i220, align 1
  %cond109 = zext i8 %10 to i32
  %shl110 = shl nuw nsw i32 %cond109, 8
  %or111 = or i32 %shl110, %or75
  %arrayidx.i222 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %4
  %11 = ptrtoint ptr %arrayidx.i222 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i222, align 1
  %cond145 = zext i8 %12 to i32
  %or146 = or i32 %or111, %cond145
  %scancode = getelementptr inbounds %struct.img_ir_scancode_req, ptr %request, i32 0, i32 1
  %13 = ptrtoint ptr %scancode to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or146, ptr %scancode, align 4
  %14 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 11, ptr %request, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end2
  %xor147 = xor i32 %conv5, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %xor147)
  %cmp148.not = icmp eq i32 %xor147, 255
  br i1 %cmp148.not, label %if.else157, label %if.then150

if.then150:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %shl151 = shl nuw nsw i32 %conv, 16
  %shl152 = shl nuw nsw i32 %conv5, 8
  %or153 = or i32 %shl152, %shl151
  %or154 = or i32 %or153, %conv8
  %scancode155 = getelementptr inbounds %struct.img_ir_scancode_req, ptr %request, i32 0, i32 1
  %15 = ptrtoint ptr %scancode155 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or154, ptr %scancode155, align 4
  %16 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 10, ptr %request, align 4
  br label %cleanup

if.else157:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %shl158 = shl nuw nsw i32 %conv, 8
  %or159 = or i32 %shl158, %conv8
  %scancode160 = getelementptr inbounds %struct.img_ir_scancode_req, ptr %request, i32 0, i32 1
  %17 = ptrtoint ptr %scancode160 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or159, ptr %scancode160, align 4
  %18 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 9, ptr %request, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else157, %if.then150, %cond.end, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then1 ], [ 1, %entry.cleanup_crit_edge ], [ 0, %if.then150 ], [ 0, %if.else157 ], [ 0, %cond.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @img_ir_nec_filter(ptr nocapture noundef readonly %in, ptr nocapture noundef writeonly %out, i64 noundef %protocols) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %in, align 4
  %and = and i32 %1, 255
  %mask = getelementptr inbounds %struct.rc_scancode_filter, ptr %in, i32 0, i32 1
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask, align 4
  %and2 = and i32 %3, 255
  %and3 = and i64 %protocols, 3584
  %conv = trunc i64 %and3 to i32
  %4 = tail call i32 @llvm.ctpop.i32(i32 %conv) #3, !range !11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %if.end16, label %if.then

if.then:                                          ; preds = %entry
  %or = or i32 %3, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %or)
  %tobool.not = icmp ult i32 %or, 16777216
  br i1 %tobool.not, label %if.else, label %if.then.cond.end_crit_edge

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

if.else:                                          ; preds = %if.then
  %and11 = and i32 %or, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else.if.else314_crit_edge, label %if.else.if.then301_crit_edge

if.else.if.then301_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then301

if.else.if.else314_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else314

if.end16:                                         ; preds = %entry
  %trunc = trunc i64 %and3 to i12
  %6 = zext i12 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.1)
  switch i12 %trunc, label %if.end16.if.else314_crit_edge [
    i12 -2048, label %if.end16.cond.end_crit_edge
    i12 1024, label %if.end16.if.then301_crit_edge
  ]

if.end16.if.then301_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then301

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

if.end16.if.else314_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else314

cond.end:                                         ; preds = %if.end16.cond.end_crit_edge, %if.then.cond.end_crit_edge
  %shr = lshr i32 %1, 24
  %arrayidx.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %shr
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %cond = zext i8 %8 to i32
  %shr48 = lshr i32 %3, 24
  %arrayidx.i437 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %shr48
  %9 = ptrtoint ptr %arrayidx.i437 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i437, align 1
  %cond81 = zext i8 %10 to i32
  %shr84 = lshr i32 %1, 16
  %idxprom.i438 = and i32 %shr84, 255
  %arrayidx.i439 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i438
  %11 = ptrtoint ptr %arrayidx.i439 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i439, align 1
  %cond117 = zext i8 %12 to i32
  %shr120 = lshr i32 %3, 16
  %idxprom.i440 = and i32 %shr120, 255
  %arrayidx.i441 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i440
  %13 = ptrtoint ptr %arrayidx.i441 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i441, align 1
  %cond153 = zext i8 %14 to i32
  %shr156 = lshr i32 %1, 8
  %idxprom.i442 = and i32 %shr156, 255
  %arrayidx.i443 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i442
  %15 = ptrtoint ptr %arrayidx.i443 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i443, align 1
  %cond189 = zext i8 %16 to i32
  %shr192 = lshr i32 %3, 8
  %idxprom.i444 = and i32 %shr192, 255
  %arrayidx.i445 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i444
  %17 = ptrtoint ptr %arrayidx.i445 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i445, align 1
  %cond225 = zext i8 %18 to i32
  %arrayidx.i447 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %and
  %19 = ptrtoint ptr %arrayidx.i447 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i447, align 1
  %cond261 = zext i8 %20 to i32
  %arrayidx.i449 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %and2
  %21 = ptrtoint ptr %arrayidx.i449 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i449, align 1
  %cond297 = zext i8 %22 to i32
  br label %if.end324

if.then301:                                       ; preds = %if.end16.if.then301_crit_edge, %if.else.if.then301_crit_edge
  %shr303 = lshr i32 %1, 16
  %and304 = and i32 %shr303, 255
  %shr306 = lshr i32 %3, 16
  %and307 = and i32 %shr306, 255
  %shr309 = lshr i32 %1, 8
  %and310 = and i32 %shr309, 255
  %shr312 = lshr i32 %3, 8
  %and313 = and i32 %shr312, 255
  %xor = xor i32 %and, 255
  br label %if.end324

if.else314:                                       ; preds = %if.end16.if.else314_crit_edge, %if.else.if.else314_crit_edge
  %shr316 = lshr i32 %1, 8
  %and317 = and i32 %shr316, 255
  %shr319 = lshr i32 %3, 8
  %and320 = and i32 %shr319, 255
  %xor321 = xor i32 %and317, 255
  %xor322 = xor i32 %and, 255
  br label %if.end324

if.end324:                                        ; preds = %if.else314, %if.then301, %cond.end
  %data_inv_m.0 = phi i32 [ %cond297, %cond.end ], [ %and2, %if.then301 ], [ %and2, %if.else314 ]
  %data_m.0 = phi i32 [ %cond225, %cond.end ], [ %and2, %if.then301 ], [ %and2, %if.else314 ]
  %addr_inv_m.0 = phi i32 [ %cond153, %cond.end ], [ %and313, %if.then301 ], [ %and320, %if.else314 ]
  %addr_m.0 = phi i32 [ %cond81, %cond.end ], [ %and307, %if.then301 ], [ %and320, %if.else314 ]
  %data_inv.0 = phi i32 [ %cond261, %cond.end ], [ %xor, %if.then301 ], [ %xor322, %if.else314 ]
  %data.0 = phi i32 [ %cond189, %cond.end ], [ %and, %if.then301 ], [ %and, %if.else314 ]
  %addr_inv.0 = phi i32 [ %cond117, %cond.end ], [ %and310, %if.then301 ], [ %xor321, %if.else314 ]
  %addr.0 = phi i32 [ %cond, %cond.end ], [ %and304, %if.then301 ], [ %and317, %if.else314 ]
  %shl325 = shl i32 %data_inv.0, 24
  %shl326 = shl nuw nsw i32 %data.0, 16
  %or327 = or i32 %shl326, %shl325
  %shl328 = shl nsw i32 %addr_inv.0, 8
  %or329 = or i32 %or327, %shl328
  %or330 = or i32 %or329, %addr.0
  %conv331 = zext i32 %or330 to i64
  %23 = ptrtoint ptr %out to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv331, ptr %out, align 8
  %shl333 = shl nuw i32 %data_inv_m.0, 24
  %shl334 = shl nuw nsw i32 %data_m.0, 16
  %or335 = or i32 %shl334, %shl333
  %shl336 = shl nuw nsw i32 %addr_inv_m.0, 8
  %or337 = or i32 %or335, %shl336
  %or338 = or i32 %or337, %addr_m.0
  %conv339 = zext i32 %or338 to i64
  %mask340 = getelementptr inbounds %struct.img_ir_filter, ptr %out, i32 0, i32 1
  %24 = ptrtoint ptr %mask340 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv339, ptr %mask340, align 8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @img_ir_nec, !1, !"img_ir_nec", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/img-ir/img-ir-nec.c", i32 126, i32 23}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i32 0, i32 4}
