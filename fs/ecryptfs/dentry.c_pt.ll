; ModuleID = '/llk/IR_all_yes/fs/ecryptfs/dentry.c_pt.bc'
source_filename = "../fs/ecryptfs/dentry.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.78, %struct.list_head, %struct.list_head, %union.anon.79 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.76 }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.78 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.79 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.ecryptfs_inode_info = type { %struct.inode, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.ecryptfs_crypt_stat }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.72, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.73, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.74, ptr, %struct.address_space, %struct.list_head, %union.anon.75, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.73 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.74 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.75 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.ecryptfs_crypt_stat = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, [32 x i8], [64 x i8], [16 x i8], %struct.list_head, %struct.mutex, %struct.mutex, %struct.mutex }
%struct.ecryptfs_dentry_info = type { %struct.path, %struct.callback_head }

@ecryptfs_dops = dso_local local_unnamed_addr constant %struct.dentry_operations { ptr @ecryptfs_d_revalidate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ecryptfs_d_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [76 x i8] undef }, align 128
@ecryptfs_dentry_info_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.1 = private unnamed_addr constant [27 x i8] c"ecryptfs_dentry_info_cache\00", align 1
@___asan_gen_.2 = private constant [24 x i8] c"../fs/ecryptfs/dentry.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 52, i32 20 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @ecryptfs_dentry_info_cache], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_dentry_info_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecryptfs_d_revalidate(ptr nocapture noundef readonly %dentry, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata.i, align 4
  %dentry1.i = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dentry1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry1.i, align 4
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup14_crit_edge

entry.cleanup14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup14

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %and1 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %d_op = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %d_op to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_op, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 128
  %call4 = tail call i32 %9(ptr noundef %3, i32 noundef %flags) #2
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %rc.0 = phi i32 [ %call4, %if.then3 ], [ 1, %if.end.if.end5_crit_edge ]
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %10 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i, align 8
  %cmp.i.not = icmp eq ptr %11, null
  br i1 %cmp.i.not, label %if.end5.if.end13_crit_edge, label %if.then7

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end13

if.then7:                                         ; preds = %if.end5
  %wii_inode.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wii_inode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wii_inode.i, align 8
  tail call void @fsstack_copy_attr_all(ptr noundef nonnull %11, ptr noundef %13) #2
  %14 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 12
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool10.not = icmp eq i32 %16, 0
  br i1 %tobool10.not, label %if.then7.cleanup14_crit_edge, label %if.then7.if.end13_crit_edge

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end13

if.then7.cleanup14_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup14

if.end13:                                         ; preds = %if.then7.if.end13_crit_edge, %if.end5.if.end13_crit_edge
  br label %cleanup14

cleanup14:                                        ; preds = %if.end13, %if.then7.cleanup14_crit_edge, %entry.cleanup14_crit_edge
  %retval.1 = phi i32 [ %rc.0, %if.end13 ], [ 0, %if.then7.cleanup14_crit_edge ], [ -10, %entry.cleanup14_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ecryptfs_d_release(ptr nocapture noundef readonly %dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @path_put(ptr noundef nonnull %1) #2
  %rcu = getelementptr inbounds %struct.ecryptfs_dentry_info, ptr %1, i32 0, i32 1
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @ecryptfs_dentry_free_rcu) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsstack_copy_attr_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ecryptfs_dentry_free_rcu(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ecryptfs_dentry_info_cache, align 4
  %add.ptr = getelementptr i8, ptr %head, i32 -8
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @ecryptfs_dops, !1, !"ecryptfs_dops", i1 false, i1 false}
!1 = !{!"../fs/ecryptfs/dentry.c", i32 75, i32 32}
!2 = !{ptr @ecryptfs_dentry_info_cache, !3, !"ecryptfs_dentry_info_cache", i1 false, i1 false}
!3 = !{!"../fs/ecryptfs/dentry.c", i32 52, i32 20}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
