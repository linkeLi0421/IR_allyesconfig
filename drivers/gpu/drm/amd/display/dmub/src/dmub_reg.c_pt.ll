; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dmub/src/dmub_reg.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dmub/src/dmub_reg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.__va_list = type { ptr }
%struct.dmub_srv = type { i32, ptr, i32, i8, %struct.dmub_fb, ptr, ptr, ptr, %struct.dmub_srv_base_funcs, %struct.dmub_srv_hw_funcs, %struct.dmub_rb, i32, %struct.dmub_rb, %struct.dmub_rb, i8, i8, i64, i64, i32, %struct.dmub_feature_caps }
%struct.dmub_fb = type { ptr, i64, i32 }
%struct.dmub_srv_base_funcs = type { ptr, ptr }
%struct.dmub_srv_hw_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmub_rb = type { ptr, i32, i32, i32, ptr, ptr }
%struct.dmub_feature_caps = type { i8, [7 x i8] }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_reg_update(ptr nocapture noundef readonly %srv, i32 noundef %addr, i32 noundef %n, i8 noundef zeroext %shift1, i32 noundef %mask1, i32 noundef %field_value1, ...) local_unnamed_addr #0 align 64 {
entry:
  %ap = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ap) #3
  %0 = ptrtoint ptr %ap to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ap, align 4, !annotation !9
  call void @llvm.va_start(ptr nonnull %ap)
  %conv.i.i = zext i8 %shift1 to i32
  %shl.i.i = shl i32 %field_value1, %conv.i.i
  %and2.i.i = and i32 %shl.i.i, %mask1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n)
  %cmp9.i = icmp sgt i32 %n, 1
  br i1 %cmp9.i, label %while.body.preheader.i, label %entry.set_reg_field_values.exit_crit_edge

entry.set_reg_field_values.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %set_reg_field_values.exit

while.body.preheader.i:                           ; preds = %entry
  %1 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %ap, align 4
  %2 = inttoptr i32 %.fca.0.load to ptr
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %field_value_mask.sroa.8.0 = phi i32 [ %mask1, %while.body.preheader.i ], [ %or5.i8.i, %while.body.i.while.body.i_crit_edge ]
  %field_value_mask.sroa.0.0 = phi i32 [ %and2.i.i, %while.body.preheader.i ], [ %or.i6.i, %while.body.i.while.body.i_crit_edge ]
  %i.011.i = phi i32 [ 1, %while.body.preheader.i ], [ %inc.i, %while.body.i.while.body.i_crit_edge ]
  %ap.sroa.0.010.i = phi ptr [ %2, %while.body.preheader.i ], [ %argp.next4.i, %while.body.i.while.body.i_crit_edge ]
  %argp.next.i = getelementptr inbounds i8, ptr %ap.sroa.0.010.i, i32 4
  %3 = ptrtoint ptr %ap.sroa.0.010.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ap.sroa.0.010.i, align 4
  %argp.next2.i = getelementptr inbounds i8, ptr %ap.sroa.0.010.i, i32 8
  %5 = ptrtoint ptr %argp.next.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %argp.next.i, align 4
  %argp.next4.i = getelementptr inbounds i8, ptr %ap.sroa.0.010.i, i32 12
  %7 = ptrtoint ptr %argp.next2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %argp.next2.i, align 4
  %neg.i1.i = xor i32 %6, -1
  %and.i2.i = and i32 %field_value_mask.sroa.0.0, %neg.i1.i
  %conv.i3.i = and i32 %4, 255
  %shl.i4.i = shl i32 %8, %conv.i3.i
  %and2.i5.i = and i32 %shl.i4.i, %6
  %or.i6.i = or i32 %and2.i5.i, %and.i2.i
  %or5.i8.i = or i32 %6, %field_value_mask.sroa.8.0
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %n
  br i1 %exitcond.not.i, label %while.body.i.set_reg_field_values.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

while.body.i.set_reg_field_values.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %set_reg_field_values.exit

set_reg_field_values.exit:                        ; preds = %while.body.i.set_reg_field_values.exit_crit_edge, %entry.set_reg_field_values.exit_crit_edge
  %field_value_mask.sroa.8.1 = phi i32 [ %mask1, %entry.set_reg_field_values.exit_crit_edge ], [ %or5.i8.i, %while.body.i.set_reg_field_values.exit_crit_edge ]
  %field_value_mask.sroa.0.1 = phi i32 [ %and2.i.i, %entry.set_reg_field_values.exit_crit_edge ], [ %or.i6.i, %while.body.i.set_reg_field_values.exit_crit_edge ]
  call void @llvm.va_end(ptr nonnull %ap)
  %funcs = getelementptr inbounds %struct.dmub_srv, ptr %srv, i32 0, i32 8
  %9 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %funcs, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %srv, i32 0, i32 1
  %11 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %user_ctx, align 4
  %call = call i32 %10(ptr noundef %12, i32 noundef %addr) #3
  %neg = xor i32 %field_value_mask.sroa.8.1, -1
  %and = and i32 %call, %neg
  %or = or i32 %and, %field_value_mask.sroa.0.1
  %reg_write = getelementptr inbounds %struct.dmub_srv, ptr %srv, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_write, align 4
  %15 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %user_ctx, align 4
  call void %14(ptr noundef %16, i32 noundef %addr, i32 noundef %or) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ap) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_reg_set(ptr nocapture noundef readonly %srv, i32 noundef %addr, i32 noundef %reg_val, i32 noundef %n, i8 noundef zeroext %shift1, i32 noundef %mask1, i32 noundef %field_value1, ...) local_unnamed_addr #0 align 64 {
entry:
  %ap = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ap) #3
  %0 = ptrtoint ptr %ap to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ap, align 4, !annotation !9
  call void @llvm.va_start(ptr nonnull %ap)
  %conv.i.i = zext i8 %shift1 to i32
  %shl.i.i = shl i32 %field_value1, %conv.i.i
  %and2.i.i = and i32 %shl.i.i, %mask1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n)
  %cmp9.i = icmp sgt i32 %n, 1
  br i1 %cmp9.i, label %while.body.preheader.i, label %entry.set_reg_field_values.exit_crit_edge

entry.set_reg_field_values.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %set_reg_field_values.exit

while.body.preheader.i:                           ; preds = %entry
  %1 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %ap, align 4
  %2 = inttoptr i32 %.fca.0.load to ptr
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %field_value_mask.sroa.8.0 = phi i32 [ %mask1, %while.body.preheader.i ], [ %or5.i8.i, %while.body.i.while.body.i_crit_edge ]
  %field_value_mask.sroa.0.0 = phi i32 [ %and2.i.i, %while.body.preheader.i ], [ %or.i6.i, %while.body.i.while.body.i_crit_edge ]
  %i.011.i = phi i32 [ 1, %while.body.preheader.i ], [ %inc.i, %while.body.i.while.body.i_crit_edge ]
  %ap.sroa.0.010.i = phi ptr [ %2, %while.body.preheader.i ], [ %argp.next4.i, %while.body.i.while.body.i_crit_edge ]
  %argp.next.i = getelementptr inbounds i8, ptr %ap.sroa.0.010.i, i32 4
  %3 = ptrtoint ptr %ap.sroa.0.010.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ap.sroa.0.010.i, align 4
  %argp.next2.i = getelementptr inbounds i8, ptr %ap.sroa.0.010.i, i32 8
  %5 = ptrtoint ptr %argp.next.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %argp.next.i, align 4
  %argp.next4.i = getelementptr inbounds i8, ptr %ap.sroa.0.010.i, i32 12
  %7 = ptrtoint ptr %argp.next2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %argp.next2.i, align 4
  %neg.i1.i = xor i32 %6, -1
  %and.i2.i = and i32 %field_value_mask.sroa.0.0, %neg.i1.i
  %conv.i3.i = and i32 %4, 255
  %shl.i4.i = shl i32 %8, %conv.i3.i
  %and2.i5.i = and i32 %shl.i4.i, %6
  %or.i6.i = or i32 %and2.i5.i, %and.i2.i
  %or5.i8.i = or i32 %6, %field_value_mask.sroa.8.0
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %n
  br i1 %exitcond.not.i, label %while.body.i.set_reg_field_values.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

while.body.i.set_reg_field_values.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %set_reg_field_values.exit

set_reg_field_values.exit:                        ; preds = %while.body.i.set_reg_field_values.exit_crit_edge, %entry.set_reg_field_values.exit_crit_edge
  %field_value_mask.sroa.8.1 = phi i32 [ %mask1, %entry.set_reg_field_values.exit_crit_edge ], [ %or5.i8.i, %while.body.i.set_reg_field_values.exit_crit_edge ]
  %field_value_mask.sroa.0.1 = phi i32 [ %and2.i.i, %entry.set_reg_field_values.exit_crit_edge ], [ %or.i6.i, %while.body.i.set_reg_field_values.exit_crit_edge ]
  call void @llvm.va_end(ptr nonnull %ap)
  %neg = xor i32 %field_value_mask.sroa.8.1, -1
  %and = and i32 %neg, %reg_val
  %or = or i32 %and, %field_value_mask.sroa.0.1
  %reg_write = getelementptr inbounds %struct.dmub_srv, ptr %srv, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_write, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %srv, i32 0, i32 1
  %11 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %user_ctx, align 4
  call void %10(ptr noundef %12, i32 noundef %addr, i32 noundef %or) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ap) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_reg_get(ptr nocapture noundef readonly %srv, i32 noundef %addr, i8 noundef zeroext %shift, i32 noundef %mask, ptr nocapture noundef writeonly %field_value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.dmub_srv, ptr %srv, i32 0, i32 8
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %srv, i32 0, i32 1
  %2 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ctx, align 4
  %call = tail call i32 %1(ptr noundef %3, i32 noundef %addr) #3
  %and.i = and i32 %call, %mask
  %conv.i = zext i8 %shift to i32
  %shr.i = lshr i32 %and.i, %conv.i
  %4 = ptrtoint ptr %field_value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr.i, ptr %field_value, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"auto-init"}
