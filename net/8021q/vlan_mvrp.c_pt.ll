; ModuleID = '/llk/IR_all_yes/net/8021q/vlan_mvrp.c_pt.bc'
source_filename = "../net/8021q/vlan_mvrp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mrp_application = type { i32, i32, %struct.packet_type, [6 x i8], i8 }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }

@vlan_mrp_app = internal global %struct.mrp_application { i32 0, i32 1, %struct.packet_type { i16 -30475, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, [6 x i8] c"\01\80\C2\00\00!", i8 0 }, section ".data..read_mostly", align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vlan_mvrp_request_join(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  %vlan_id = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vlan_id) #4
  %vlan_id1 = getelementptr i8, ptr %dev, i32 2410
  %0 = ptrtoint ptr %vlan_id1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vlan_id1, align 2
  %2 = ptrtoint ptr %vlan_id to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %vlan_id, align 2
  %vlan_proto = getelementptr i8, ptr %dev, i32 2408
  %3 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vlan_proto, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %4)
  %cmp.not = icmp eq i16 %4, -32512
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %real_dev = getelementptr i8, ptr %dev, i32 2416
  %5 = ptrtoint ptr %real_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %real_dev, align 4
  %call3 = call i32 @mrp_request_join(ptr noundef %6, ptr noundef nonnull @vlan_mrp_app, ptr noundef nonnull %vlan_id, i8 noundef zeroext 2, i8 noundef zeroext 1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vlan_id) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mrp_request_join(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vlan_mvrp_request_leave(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  %vlan_id = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vlan_id) #4
  %vlan_id1 = getelementptr i8, ptr %dev, i32 2410
  %0 = ptrtoint ptr %vlan_id1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vlan_id1, align 2
  %2 = ptrtoint ptr %vlan_id to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %vlan_id, align 2
  %vlan_proto = getelementptr i8, ptr %dev, i32 2408
  %3 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vlan_proto, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %4)
  %cmp.not = icmp eq i16 %4, -32512
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %real_dev = getelementptr i8, ptr %dev, i32 2416
  %5 = ptrtoint ptr %real_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %real_dev, align 4
  call void @mrp_request_leave(ptr noundef %6, ptr noundef nonnull @vlan_mrp_app, ptr noundef nonnull %vlan_id, i8 noundef zeroext 2, i8 noundef zeroext 1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vlan_id) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mrp_request_leave(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vlan_mvrp_init_applicant(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mrp_init_applicant(ptr noundef %dev, ptr noundef nonnull @vlan_mrp_app) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mrp_init_applicant(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vlan_mvrp_uninit_applicant(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mrp_uninit_applicant(ptr noundef %dev, ptr noundef nonnull @vlan_mrp_app) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mrp_uninit_applicant(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vlan_mvrp_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mrp_register_application(ptr noundef nonnull @vlan_mrp_app) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mrp_register_application(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vlan_mvrp_uninit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mrp_unregister_application(ptr noundef nonnull @vlan_mrp_app) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mrp_unregister_application(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @vlan_mrp_app, !1, !"vlan_mrp_app", i1 false, i1 false}
!1 = !{!"../net/8021q/vlan_mvrp.c", i32 25, i32 31}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
