; ModuleID = '/llk/IR_all_yes/fs/nfs/nfs2super.c_pt.bc'
source_filename = "../fs/nfs/nfs2super.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nfs_subversion = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rpc_version = type { i32, i32, ptr, ptr }
%struct.nfs_rpc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@nfs_v2 = internal global { %struct.nfs_subversion, [32 x i8] } { %struct.nfs_subversion { ptr null, ptr @nfs_fs_type, ptr @nfs_version2, ptr @nfs_v2_clientops, ptr @nfs_sops, ptr null, %struct.list_head zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file492 = internal constant [24 x i8] c"nfsv2.file=fs/nfs/nfsv2\00", section ".modinfo", align 1
@__UNIQUE_ID_license493 = internal constant [18 x i8] c"nfsv2.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_nfsv2__494_31_init_nfs_v26 = internal global ptr @init_nfs_v2, section ".initcall6.init", align 4
@__exitcall_exit_nfs_v2 = internal global ptr @exit_nfs_v2, section ".exitcall.exit", align 4
@nfs_fs_type = external dso_local global %struct.file_system_type, align 4
@nfs_version2 = external dso_local constant %struct.rpc_version, align 4
@nfs_v2_clientops = external dso_local constant %struct.nfs_rpc_ops, align 4
@nfs_sops = external dso_local constant %struct.super_operations, align 4
@___asan_gen_.1 = private unnamed_addr constant [7 x i8] c"nfs_v2\00", align 1
@___asan_gen_.2 = private constant [22 x i8] c"../fs/nfs/nfs2super.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 10, i32 30 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_file492, ptr @__UNIQUE_ID_license493, ptr @__exitcall_exit_nfs_v2, ptr @__initcall__kmod_nfsv2__494_31_init_nfs_v26, ptr @exit_nfs_v2, ptr @nfs_v2], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_v2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_nfs_v2() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @unregister_nfs_version(ptr noundef nonnull @nfs_v2) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_nfs_version(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_nfs_v2() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @register_nfs_version(ptr noundef nonnull @nfs_v2) #2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_nfs_version(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @__UNIQUE_ID_file492, !1, !"__UNIQUE_ID_file492", i1 false, i1 false}
!1 = !{!"../fs/nfs/nfs2super.c", i32 29, i32 1}
!2 = !{ptr @__UNIQUE_ID_license493, !1, !"__UNIQUE_ID_license493", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_nfsv2__494_31_init_nfs_v26, !4, !"__initcall__kmod_nfsv2__494_31_init_nfs_v26", i1 false, i1 false}
!4 = !{!"../fs/nfs/nfs2super.c", i32 31, i32 1}
!5 = !{ptr @__exitcall_exit_nfs_v2, !6, !"__exitcall_exit_nfs_v2", i1 false, i1 false}
!6 = !{!"../fs/nfs/nfs2super.c", i32 32, i32 1}
!7 = !{ptr @nfs_v2, !8, !"nfs_v2", i1 false, i1 false}
!8 = !{!"../fs/nfs/nfs2super.c", i32 10, i32 30}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
