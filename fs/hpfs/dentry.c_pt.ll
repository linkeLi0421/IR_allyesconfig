; ModuleID = '/llk/IR_all_yes/fs/hpfs/dentry.c_pt.bc'
source_filename = "../fs/hpfs/dentry.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.75, %struct.list_head, %struct.list_head, %union.anon.76 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.lockref = type { %union.anon.73 }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.75 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.76 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hpfs_sb_info = type { %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, ptr, ptr, i32, i32, i32, %struct.callback_head, i32, [256 x i32], [256 x i32] }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.anon.3 = type { i32, i32 }

@hpfs_dentry_operations = dso_local local_unnamed_addr constant %struct.dentry_operations { ptr null, ptr null, ptr @hpfs_hash_dentry, ptr @hpfs_compare_dentry, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [76 x i8] undef }, align 128
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpfs_hash_dentry(ptr noundef %dentry, ptr nocapture noundef %qstr) #0 align 64 {
entry:
  %l = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %l) #3
  %0 = ptrtoint ptr %qstr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qstr, align 8
  %2 = ptrtoint ptr %l to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %l, align 4
  %3 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.if.end20_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then7
  ]

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.qstr, ptr %qstr, i32 0, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %7)
  %cmp1 = icmp eq i8 %7, 46
  br i1 %cmp1, label %if.then.x_crit_edge, label %if.then.if.end20_crit_edge

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

if.then.x_crit_edge:                              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %x

if.then7:                                         ; preds = %entry
  %name8 = getelementptr inbounds %struct.qstr, ptr %qstr, i32 0, i32 1
  %8 = ptrtoint ptr %name8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name8, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %11)
  %cmp11 = icmp eq i8 %11, 46
  br i1 %cmp11, label %if.then7.x_crit_edge, label %lor.lhs.false

if.then7.x_crit_edge:                             ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  br label %x

lor.lhs.false:                                    ; preds = %if.then7
  %arrayidx14 = getelementptr i8, ptr %9, i32 1
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %13)
  %cmp16 = icmp eq i8 %13, 46
  br i1 %cmp16, label %lor.lhs.false.x_crit_edge, label %lor.lhs.false.if.end20_crit_edge

lor.lhs.false.if.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

lor.lhs.false.x_crit_edge:                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %x

if.end20:                                         ; preds = %lor.lhs.false.if.end20_crit_edge, %if.then.if.end20_crit_edge, %entry.if.end20_crit_edge
  %name21 = getelementptr inbounds %struct.qstr, ptr %qstr, i32 0, i32 1
  %14 = ptrtoint ptr %name21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name21, align 8
  call void @hpfs_adjust_length(ptr noundef %15, ptr noundef nonnull %l) #3
  br label %x

x:                                                ; preds = %if.end20, %lor.lhs.false.x_crit_edge, %if.then7.x_crit_edge, %if.then.x_crit_edge
  %16 = ptrtoint ptr %dentry to i32
  %17 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %l, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp2242.not = icmp eq i32 %18, 0
  br i1 %cmp2242.not, label %x.for.end_crit_edge, label %for.body.lr.ph

x.for.end_crit_edge:                              ; preds = %x
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %x
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %name24 = getelementptr inbounds %struct.qstr, ptr %qstr, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %hash.043 = phi i32 [ %16, %for.body.lr.ph ], [ %mul.i, %for.body.for.body_crit_edge ]
  %19 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 33
  %21 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_fs_info.i, align 16
  %sb_cp_table = getelementptr inbounds %struct.hpfs_sb_info, ptr %22, i32 0, i32 13
  %23 = ptrtoint ptr %sb_cp_table to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sb_cp_table, align 4
  %25 = ptrtoint ptr %name24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name24, align 8
  %arrayidx25 = getelementptr i8, ptr %26, i32 %i.044
  %27 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx25, align 1
  %call26 = call zeroext i8 @hpfs_upcase(ptr noundef %24, i8 noundef zeroext %28) #3
  %conv27 = zext i8 %call26 to i32
  %shl.i = shl nuw nsw i32 %conv27, 4
  %add.i = add i32 %shl.i, %hash.043
  %shr.i = lshr i32 %conv27, 4
  %add1.i = add i32 %add.i, %shr.i
  %mul.i = mul i32 %add1.i, 11
  %inc = add nuw i32 %i.044, 1
  %29 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %l, align 4
  %cmp22 = icmp ult i32 %inc, %30
  br i1 %cmp22, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %x.for.end_crit_edge
  %hash.0.lcssa = phi i32 [ %16, %x.for.end_crit_edge ], [ %mul.i, %for.body.for.end_crit_edge ]
  %mul.i.i.i = mul i32 %hash.0.lcssa, 1640531527
  %hash30 = getelementptr inbounds %struct.anon.3, ptr %qstr, i32 0, i32 1
  %31 = ptrtoint ptr %hash30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul.i.i.i, ptr %hash30, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpfs_compare_dentry(ptr nocapture noundef readonly %dentry, i32 noundef %len, ptr noundef %str, ptr nocapture noundef readonly %name) #0 align 64 {
entry:
  %al = alloca i32, align 4
  %bl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %al) #3
  %0 = ptrtoint ptr %al to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %len, ptr %al, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bl) #3
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %name, align 8
  %3 = ptrtoint ptr %bl to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %bl, align 4
  call void @hpfs_adjust_length(ptr noundef %str, ptr noundef nonnull %al) #3
  %name2 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %4 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name2, align 8
  %call = call i32 @hpfs_chk_name(ptr noundef %5, ptr noundef nonnull %bl) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %6 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_sb, align 4
  %8 = ptrtoint ptr %al to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %al, align 4
  %10 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name2, align 8
  %12 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bl, align 4
  %call4 = call i32 @hpfs_compare_names(ptr noundef %7, ptr noundef %str, i32 noundef %9, ptr noundef %11, i32 noundef %13, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp ne i32 %call4, 0
  %. = zext i1 %tobool5.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bl) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %al) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_adjust_length(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @hpfs_upcase(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_chk_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_compare_names(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @hpfs_dentry_operations, !1, !"hpfs_dentry_operations", i1 false, i1 false}
!1 = !{!"../fs/hpfs/dentry.c", i32 59, i32 32}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
