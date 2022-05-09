; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dce/dmub_hw_lock_mgr.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_hw_lock_mgr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%union.dmub_rb_cmd = type { %struct.dmub_rb_cmd_common }
%struct.dmub_rb_cmd_common = type { %struct.dmub_cmd_header, [60 x i8] }
%struct.dmub_cmd_header = type { i32 }
%struct.dmub_rb_cmd_lock_hw = type { %struct.dmub_cmd_header, %struct.dmub_cmd_lock_hw_data }
%struct.dmub_cmd_lock_hw_data = type { i32, %struct.dmub_hw_lock_inst_flags, %union.dmub_hw_lock_flags, i8, i8, i8 }
%struct.dmub_hw_lock_inst_flags = type { i8, i8, i8, i8 }
%union.dmub_hw_lock_flags = type { %struct.anon.0 }
%struct.anon.0 = type { i8 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_hw_lock_mgr_cmd(ptr noundef %dmub_srv, i1 noundef zeroext %lock, ptr nocapture noundef readonly %hw_locks, ptr nocapture noundef readonly %inst_flags) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %union.dmub_rb_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %lock to i8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #4
  %0 = getelementptr inbounds i8, ptr %cmd, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 52)
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1157627952, ptr %cmd, align 4
  %lock_hw_data = getelementptr inbounds %struct.dmub_rb_cmd_lock_hw, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %lock_hw_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %lock_hw_data, align 4
  %lock10 = getelementptr inbounds %struct.dmub_rb_cmd_lock_hw, ptr %cmd, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %lock10 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %lock10, align 1
  %5 = ptrtoint ptr %hw_locks to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hw_locks, align 1
  %hw_locks12 = getelementptr inbounds %struct.dmub_rb_cmd_lock_hw, ptr %cmd, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %hw_locks12 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %hw_locks12, align 4
  %inst_flags14 = getelementptr inbounds %struct.dmub_rb_cmd_lock_hw, ptr %cmd, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %inst_flags to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %inst_flags, align 1
  %10 = ptrtoint ptr %inst_flags14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %inst_flags14, align 4
  br i1 %lock, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %should_release = getelementptr inbounds %struct.dmub_rb_cmd_lock_hw, ptr %cmd, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %should_release to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %should_release, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @dc_dmub_srv_cmd_queue(ptr noundef %dmub_srv, ptr noundef nonnull %cmd) #4
  call void @dc_dmub_srv_cmd_execute(ptr noundef %dmub_srv) #4
  call void @dc_dmub_srv_wait_idle(ptr noundef %dmub_srv) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_dmub_srv_cmd_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_dmub_srv_cmd_execute(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_dmub_srv_wait_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_hw_lock_mgr_inbox0_cmd(ptr noundef %dmub_srv, [1 x i32] %hw_lock_cmd.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dc_dmub_srv_clear_inbox0_ack(ptr noundef %dmub_srv) #4
  tail call void @dc_dmub_srv_send_inbox0_cmd(ptr noundef %dmub_srv, [1 x i32] %hw_lock_cmd.coerce) #4
  tail call void @dc_dmub_srv_wait_for_inbox0_ack(ptr noundef %dmub_srv) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_dmub_srv_clear_inbox0_ack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_dmub_srv_send_inbox0_cmd(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_dmub_srv_wait_for_inbox0_ack(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @should_use_dmub_lock(ptr nocapture noundef readnone %link) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

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
