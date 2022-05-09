; ModuleID = '/llk/IR_all_yes/fs/nfs/nfs4getroot.c_pt.bc'
source_filename = "../fs/nfs/nfs4getroot.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nfs_fsinfo = type { ptr, i32, i32, i32, i32, i32, i32, i32, i64, %struct.timespec64, i32, i32, [8 x i32], i32, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.nfs_fattr = type { i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %union.anon.152, %struct.nfs_fsid, i64, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i64, %struct.timespec64, %struct.timespec64, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.152 = type { %struct.anon.154 }
%struct.anon.154 = type { i64 }
%struct.nfs_fsid = type { i64, i64 }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, ptr, ptr, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.rb_root = type { ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.__kernel_sockaddr_storage = type { %union.anon }
%union.anon = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.nfs4_label = type { i32, i32, i32, ptr }

@nfs_debug = external dso_local local_unnamed_addr global i32, align 4
@nfs4_get_rootfh._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 25, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"nfs4_get_rootfh: getroot error = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nfs4_get_rootfh\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/nfs/nfs4getroot.c\00", [43 x i8] zeroinitializer }, align 32
@nfs4_get_rootfh._entry_ptr = internal global ptr @nfs4_get_rootfh._entry, section ".printk_index", align 4
@nfs4_get_rootfh._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 32, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013nfs4_get_rootfh: getroot encountered non-directory\0A\00", [42 x i8] zeroinitializer }, align 32
@nfs4_get_rootfh._entry_ptr.5 = internal global ptr @nfs4_get_rootfh._entry.3, section ".printk_index", align 4
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 25, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [24 x i8] c"../fs/nfs/nfs4getroot.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 31, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @nfs4_get_rootfh._entry, ptr @nfs4_get_rootfh._entry.3, ptr @nfs4_get_rootfh._entry_ptr, ptr @nfs4_get_rootfh._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_get_rootfh._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_get_rootfh._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_get_rootfh(ptr noundef %server, ptr noundef %mntfh, i1 noundef zeroext %auth_probe) local_unnamed_addr #0 align 64 {
entry:
  %fsinfo = alloca %struct.nfs_fsinfo, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %fsinfo) #4
  %0 = call ptr @memset(ptr %fsinfo, i32 255, i32 112)
  %call = tail call ptr @nfs_alloc_fattr() #4
  %1 = ptrtoint ptr %fsinfo to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %fsinfo, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.nfs_free_fattr.exit_crit_edge, label %if.end

entry.nfs_free_fattr.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfs_free_fattr.exit

if.end:                                           ; preds = %entry
  %call2 = call i32 @nfs4_proc_get_rootfh(ptr noundef %server, ptr noundef %mntfh, ptr noundef nonnull %fsinfo, i1 noundef zeroext %auth_probe) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.body, label %if.end14

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %2 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %2, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body.out_crit_edge, label %do.end, !prof !19

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %sub = sub i32 0, %call2
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %sub) #7
  br label %out

if.end14:                                         ; preds = %if.end
  %3 = ptrtoint ptr %fsinfo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fsinfo, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %and16 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end14.do.end25_crit_edge, label %lor.lhs.false

if.end14.do.end25_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end25

lor.lhs.false:                                    ; preds = %if.end14
  %mode = getelementptr inbounds %struct.nfs_fattr, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %mode, align 4
  %9 = and i16 %8, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %9)
  %cmp20 = icmp eq i16 %9, 16384
  br i1 %cmp20, label %if.end28, label %lor.lhs.false.do.end25_crit_edge

lor.lhs.false.do.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end25

do.end25:                                         ; preds = %lor.lhs.false.do.end25_crit_edge, %if.end14.do.end25_crit_edge
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #7
  br label %out

if.end28:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %fsid = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 30
  %fsid30 = getelementptr inbounds %struct.nfs_fattr, ptr %4, i32 0, i32 8
  %10 = call ptr @memcpy(ptr %fsid, ptr %fsid30, i32 16)
  br label %out

out:                                              ; preds = %if.end28, %do.end25, %do.end, %do.body.out_crit_edge
  %ret.0.ph = phi i32 [ -20, %do.end25 ], [ %call2, %if.end28 ], [ %call2, %do.body.out_crit_edge ], [ %call2, %do.end ]
  %11 = ptrtoint ptr %fsinfo to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load ptr, ptr %fsinfo, align 8
  %tobool.not.i = icmp eq ptr %.pr, null
  br i1 %tobool.not.i, label %out.nfs_free_fattr.exit_crit_edge, label %if.then.i

out.nfs_free_fattr.exit_crit_edge:                ; preds = %out
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfs_free_fattr.exit

if.then.i:                                        ; preds = %out
  %label.i = getelementptr inbounds %struct.nfs_fattr, ptr %.pr, i32 0, i32 24
  %12 = ptrtoint ptr %label.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %label.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.then.i.nfs_free_fattr.exit_crit_edge, label %if.then.i.i

if.then.i.nfs_free_fattr.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfs_free_fattr.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %label1.i.i = getelementptr inbounds %struct.nfs4_label, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %label1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %label1.i.i, align 4
  call void @kfree(ptr noundef %15) #4
  call void @kfree(ptr noundef nonnull %13) #4
  br label %nfs_free_fattr.exit

nfs_free_fattr.exit:                              ; preds = %if.then.i.i, %if.then.i.nfs_free_fattr.exit_crit_edge, %out.nfs_free_fattr.exit_crit_edge, %entry.nfs_free_fattr.exit_crit_edge
  %ret.037 = phi i32 [ %ret.0.ph, %out.nfs_free_fattr.exit_crit_edge ], [ %ret.0.ph, %if.then.i.nfs_free_fattr.exit_crit_edge ], [ %ret.0.ph, %if.then.i.i ], [ -12, %entry.nfs_free_fattr.exit_crit_edge ]
  %16 = phi ptr [ null, %out.nfs_free_fattr.exit_crit_edge ], [ %.pr, %if.then.i.nfs_free_fattr.exit_crit_edge ], [ %.pr, %if.then.i.i ], [ null, %entry.nfs_free_fattr.exit_crit_edge ]
  call void @kfree(ptr noundef %16) #4
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %fsinfo) #4
  ret i32 %ret.037
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_alloc_fattr() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_proc_get_rootfh(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nfs/nfs4getroot.c", i32 25, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nfs4_get_rootfh._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nfs4_get_rootfh._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/nfs/nfs4getroot.c", i32 31, i32 3}
!8 = !{ptr @nfs4_get_rootfh._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @nfs4_get_rootfh._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"branch_weights", i32 2000, i32 1}
