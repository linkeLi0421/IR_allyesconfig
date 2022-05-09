; ModuleID = '/llk/IR_all_yes/fs/nfsd/lockd.c_pt.bc'
source_filename = "../fs/nfsd/lockd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nlmsvc_binding = type { ptr, ptr }
%struct.svc_fh = type { %struct.knfsd_fh, i32, ptr, ptr, i8, i8, i8, i8, i32, i8, i8, i64, %struct.timespec64, %struct.timespec64, i64, %struct.kstat, i64 }
%struct.knfsd_fh = type { i32, %union.anon.154 }
%union.anon.154 = type { %struct.anon.155, [124 x i8] }
%struct.anon.155 = type { i8, i8, i8, i8, [0 x i32] }
%struct.timespec64 = type { i64, i32 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.nfs_fh = type { i16, [128 x i8] }

@nfsd_debug = external dso_local local_unnamed_addr global i32, align 4
@nfsd_lockd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nfsd: initializing lockd\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nfsd_lockd_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/nfsd/lockd.c\00", [16 x i8] zeroinitializer }, align 32
@nfsd_lockd_init._entry_ptr = internal global ptr @nfsd_lockd_init._entry, section ".printk_index", align 4
@nfsd_nlm_ops = internal constant { %struct.nlmsvc_binding, [24 x i8] } { %struct.nlmsvc_binding { ptr @nlm_fopen, ptr @nlm_fclose }, [24 x i8] zeroinitializer }, align 32
@nlmsvc_ops = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 70, i64 30000]
@___asan_gen_.3 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 74, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [13 x i8] c"nfsd_nlm_ops\00", align 1
@___asan_gen_.16 = private constant [19 x i8] c"../fs/nfsd/lockd.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 66, i32 36 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @nfsd_lockd_init._entry, ptr @nfsd_lockd_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @nfsd_nlm_ops], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_lockd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_nlm_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfsd_lockd_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %0 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %0, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nlmsvc_ops to i32))
  store ptr @nfsd_nlm_ops, ptr @nlmsvc_ops, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @nfsd_lockd_shutdown() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nlmsvc_ops to i32))
  store ptr null, ptr @nlmsvc_ops, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nlm_fopen(ptr noundef %rqstp, ptr nocapture noundef readonly %f, ptr noundef %filp, i32 noundef %mode) #0 align 64 {
entry:
  %fh = alloca %struct.svc_fh, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 360, ptr nonnull %fh) #5
  %0 = call ptr @memset(ptr %fh, i32 0, i32 360)
  %1 = ptrtoint ptr %f to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %f, align 2
  %conv = zext i16 %2 to i32
  %3 = ptrtoint ptr %fh to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %fh, align 8
  %4 = getelementptr inbounds %struct.knfsd_fh, ptr %fh, i32 0, i32 1
  %data = getelementptr inbounds %struct.nfs_fh, ptr %f, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %4, ptr %data, i32 %conv)
  %fh_export = getelementptr inbounds %struct.svc_fh, ptr %fh, i32 0, i32 3
  %6 = ptrtoint ptr %fh_export to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %fh_export, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  %or = select i1 %cmp, i32 34, i32 36
  %call5 = call i32 @nfsd_open(ptr noundef %rqstp, ptr noundef nonnull %fh, i16 noundef zeroext -32768, i32 noundef %or, ptr noundef %filp) #5
  call void @fh_put(ptr noundef nonnull %fh) #5
  %7 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call5, label %sw.default [
    i32 0, label %entry.cleanup_crit_edge
    i32 30000, label %sw.bb6
    i32 70, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb7, %sw.bb6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 9, %sw.default ], [ 7, %sw.bb7 ], [ 30000, %sw.bb6 ], [ %call5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 360, ptr nonnull %fh) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nlm_fclose(ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @fput(ptr noundef %filp) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_open(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fh_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nfsd/lockd.c", i32 74, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nfsd_lockd_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nfsd_lockd_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @nfsd_nlm_ops, !7, !"nfsd_nlm_ops", i1 false, i1 false}
!7 = !{!"../fs/nfsd/lockd.c", i32 66, i32 36}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
