; ModuleID = '/llk/IR_all_yes/fs/ext4/hash.c_pt.bc'
source_filename = "../fs/ext4/hash.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.74 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.3 = type { i32, i32 }
%struct.dx_hash_info = type { i32, i32, i32, ptr }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__func__.__ext4fs_dirhash = private unnamed_addr constant [17 x i8] c"__ext4fs_dirhash\00", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Siphash requires key\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [18 x i8] c"../fs/ext4/hash.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 270, i32 4 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4fs_dirhash(ptr noundef %dir, ptr noundef %name, i32 noundef %len, ptr nocapture noundef %hinfo) local_unnamed_addr #0 align 64 {
entry:
  %qstr = alloca %struct.qstr, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_encoding = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %s_encoding to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_encoding, align 64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %qstr) #6
  %4 = getelementptr inbounds i8, ptr %qstr, i32 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %4, align 8
  %6 = ptrtoint ptr %qstr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %len, ptr %qstr, align 8
  %hash = getelementptr inbounds %struct.anon.3, ptr %qstr, i32 0, i32 1
  %7 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %hash, align 4
  %name2 = getelementptr inbounds %struct.qstr, ptr %qstr, i32 0, i32 1
  %8 = ptrtoint ptr %name2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %name, ptr %name2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %entry.opaque_seq_crit_edge, label %land.lhs.true

entry.opaque_seq_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %opaque_seq

land.lhs.true:                                    ; preds = %entry
  %i_flags = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %9 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_flags, align 4
  %and = and i32 %10, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %tobool5.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool3.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %land.lhs.true.opaque_seq_crit_edge, label %land.lhs.true6

land.lhs.true.opaque_seq_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %opaque_seq

land.lhs.true6:                                   ; preds = %land.lhs.true
  %and8 = and i32 %10, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %land.lhs.true6.if.then_crit_edge, label %lor.lhs.false

land.lhs.true6.if.then_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true6
  %i_crypt_info.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 52
  %11 = ptrtoint ptr %i_crypt_info.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %i_crypt_info.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !12
  %cmp.i.not = icmp eq ptr %12, null
  br i1 %cmp.i.not, label %lor.lhs.false.opaque_seq_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false.opaque_seq_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %opaque_seq

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true6.if.then_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 4096) #9
  %tobool11.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call13 = call i32 @utf8_casefold(ptr noundef nonnull %3, ptr noundef nonnull %qstr, ptr noundef nonnull %call7.i.i, i32 noundef 4096) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %opaque_seq

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = call fastcc i32 @__ext4fs_dirhash(ptr noundef %dir, ptr noundef nonnull %call7.i.i, i32 noundef %call13, ptr noundef %hinfo)
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

opaque_seq:                                       ; preds = %if.then14, %lor.lhs.false.opaque_seq_crit_edge, %land.lhs.true.opaque_seq_crit_edge, %entry.opaque_seq_crit_edge
  %call18 = call fastcc i32 @__ext4fs_dirhash(ptr noundef %dir, ptr noundef %name, i32 noundef %len, ptr noundef %hinfo)
  br label %cleanup

cleanup:                                          ; preds = %opaque_seq, %if.end15, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %opaque_seq ], [ %call16, %if.end15 ], [ -12, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %qstr) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf8_casefold(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ext4fs_dirhash(ptr noundef %dir, ptr noundef %name, i32 noundef %len, ptr nocapture noundef %hinfo) unnamed_addr #0 align 64 {
entry:
  %in = alloca [8 x i32], align 4
  %qname = alloca %struct.qstr, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in) #6
  %0 = getelementptr inbounds [8 x i32], ptr %in, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i32], ptr %in, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i32], ptr %in, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i32], ptr %in, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i32], ptr %in, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i32], ptr %in, i32 0, i32 6
  %6 = getelementptr inbounds [8 x i32], ptr %in, i32 0, i32 7
  %seed = getelementptr inbounds %struct.dx_hash_info, ptr %hinfo, i32 0, i32 3
  %7 = call ptr @memset(ptr %in, i32 255, i32 32)
  %8 = ptrtoint ptr %seed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %seed, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %for.body.preheader

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

for.body.preheader:                               ; preds = %entry
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp eq i32 %11, 0
  br i1 %tobool6.not, label %for.cond, label %for.body.preheader.if.then7_crit_edge

for.body.preheader.if.then7_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

for.cond:                                         ; preds = %for.body.preheader
  %arrayidx5.1 = getelementptr i32, ptr %9, i32 1
  %12 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx5.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not.1 = icmp eq i32 %13, 0
  br i1 %tobool6.not.1, label %for.cond.1, label %for.cond.if.then7_crit_edge

for.cond.if.then7_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

for.cond.1:                                       ; preds = %for.cond
  %arrayidx5.2 = getelementptr i32, ptr %9, i32 2
  %14 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx5.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool6.not.2 = icmp eq i32 %15, 0
  br i1 %tobool6.not.2, label %for.cond.2, label %for.cond.1.if.then7_crit_edge

for.cond.1.if.then7_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx5.3 = getelementptr i32, ptr %9, i32 3
  %16 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx5.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool6.not.3 = icmp eq i32 %17, 0
  br i1 %tobool6.not.3, label %for.cond.2.if.end9_crit_edge, label %for.cond.2.if.then7_crit_edge

for.cond.2.if.then7_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

for.cond.2.if.end9_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then7:                                         ; preds = %for.cond.2.if.then7_crit_edge, %for.cond.1.if.then7_crit_edge, %for.cond.if.then7_crit_edge, %for.body.preheader.if.then7_crit_edge
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %buf.sroa.0.0.copyload = load i32, ptr %9, align 4
  %buf.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %9, i32 4
  %19 = ptrtoint ptr %buf.sroa.10.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %buf.sroa.10.0.copyload = load i32, ptr %buf.sroa.10.0..sroa_idx, align 4
  %buf.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr %9, i32 8
  %20 = ptrtoint ptr %buf.sroa.18.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %buf.sroa.18.0.copyload = load i32, ptr %buf.sroa.18.0..sroa_idx, align 4
  %buf.sroa.23.0..sroa_idx = getelementptr inbounds i8, ptr %9, i32 12
  %21 = ptrtoint ptr %buf.sroa.23.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %21)
  %buf.sroa.23.0.copyload = load i32, ptr %buf.sroa.23.0..sroa_idx, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %for.cond.2.if.end9_crit_edge, %entry.if.end9_crit_edge
  %buf.sroa.23.0 = phi i32 [ 271733878, %entry.if.end9_crit_edge ], [ %buf.sroa.23.0.copyload, %if.then7 ], [ 271733878, %for.cond.2.if.end9_crit_edge ]
  %buf.sroa.18.0 = phi i32 [ -1732584194, %entry.if.end9_crit_edge ], [ %buf.sroa.18.0.copyload, %if.then7 ], [ -1732584194, %for.cond.2.if.end9_crit_edge ]
  %buf.sroa.10.0 = phi i32 [ -271733879, %entry.if.end9_crit_edge ], [ %buf.sroa.10.0.copyload, %if.then7 ], [ -271733879, %for.cond.2.if.end9_crit_edge ]
  %buf.sroa.0.0 = phi i32 [ 1732584193, %entry.if.end9_crit_edge ], [ %buf.sroa.0.0.copyload, %if.then7 ], [ 1732584193, %for.cond.2.if.end9_crit_edge ]
  %hash_version = getelementptr inbounds %struct.dx_hash_info, ptr %hinfo, i32 0, i32 2
  %22 = ptrtoint ptr %hash_version to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hash_version, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %23, label %sw.default [
    i32 3, label %sw.bb
    i32 0, label %sw.bb10
    i32 4, label %sw.bb12
    i32 1, label %if.end9.sw.bb13_crit_edge
    i32 5, label %sw.bb21
    i32 2, label %if.end9.sw.bb22_crit_edge
    i32 6, label %sw.bb34
  ]

if.end9.sw.bb22_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb22

if.end9.sw.bb13_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13

sw.bb:                                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not7.i = icmp eq i32 %len, 0
  br i1 %tobool.not7.i, label %sw.bb.sw.epilog.thread_crit_edge, label %sw.bb.while.body.i_crit_edge

sw.bb.while.body.i_crit_edge:                     ; preds = %sw.bb
  br label %while.body.i

sw.bb.sw.epilog.thread_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %sw.bb.while.body.i_crit_edge
  %ucp.011.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %name, %sw.bb.while.body.i_crit_edge ]
  %hash1.010.i = phi i32 [ %hash0.09.i, %while.body.i.while.body.i_crit_edge ], [ 934013177, %sw.bb.while.body.i_crit_edge ]
  %hash0.09.i = phi i32 [ %spec.select.i, %while.body.i.while.body.i_crit_edge ], [ 312737325, %sw.bb.while.body.i_crit_edge ]
  %len.addr.08.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %len, %sw.bb.while.body.i_crit_edge ]
  %dec.i = add i32 %len.addr.08.i, -1
  %incdec.ptr.i = getelementptr i8, ptr %ucp.011.i, i32 1
  %25 = ptrtoint ptr %ucp.011.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ucp.011.i, align 1
  %conv.i = zext i8 %26 to i32
  %mul.i = mul nuw nsw i32 %conv.i, 7152373
  %xor.i = xor i32 %mul.i, %hash0.09.i
  %add.i = add i32 %xor.i, %hash1.010.i
  %sub.i = add i32 %add.i, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool1.not6.i = icmp slt i32 %add.i, 0
  %spec.select.i = select i1 %tobool1.not6.i, i32 %sub.i, i32 %add.i
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.end.loopexit.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.end.loopexit.i:                             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %phi.bo.i = shl i32 %spec.select.i, 1
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not7.i87 = icmp eq i32 %len, 0
  br i1 %tobool.not7.i87, label %sw.bb10.sw.epilog.thread_crit_edge, label %sw.bb10.while.body.i101_crit_edge

sw.bb10.while.body.i101_crit_edge:                ; preds = %sw.bb10
  br label %while.body.i101

sw.bb10.sw.epilog.thread_crit_edge:               ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread

while.body.i101:                                  ; preds = %while.body.i101.while.body.i101_crit_edge, %sw.bb10.while.body.i101_crit_edge
  %scp.011.i = phi ptr [ %incdec.ptr.i92, %while.body.i101.while.body.i101_crit_edge ], [ %name, %sw.bb10.while.body.i101_crit_edge ]
  %hash1.010.i88 = phi i32 [ %hash0.09.i89, %while.body.i101.while.body.i101_crit_edge ], [ 934013177, %sw.bb10.while.body.i101_crit_edge ]
  %hash0.09.i89 = phi i32 [ %spec.select.i99, %while.body.i101.while.body.i101_crit_edge ], [ 312737325, %sw.bb10.while.body.i101_crit_edge ]
  %len.addr.08.i90 = phi i32 [ %dec.i91, %while.body.i101.while.body.i101_crit_edge ], [ %len, %sw.bb10.while.body.i101_crit_edge ]
  %dec.i91 = add i32 %len.addr.08.i90, -1
  %incdec.ptr.i92 = getelementptr i8, ptr %scp.011.i, i32 1
  %27 = ptrtoint ptr %scp.011.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %scp.011.i, align 1
  %conv.i93 = sext i8 %28 to i32
  %mul.i94 = mul nsw i32 %conv.i93, 7152373
  %xor.i95 = xor i32 %mul.i94, %hash0.09.i89
  %add.i96 = add i32 %xor.i95, %hash1.010.i88
  %sub.i97 = add i32 %add.i96, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i96)
  %tobool1.not6.i98 = icmp slt i32 %add.i96, 0
  %spec.select.i99 = select i1 %tobool1.not6.i98, i32 %sub.i97, i32 %add.i96
  %tobool.not.i100 = icmp eq i32 %dec.i91, 0
  br i1 %tobool.not.i100, label %while.end.loopexit.i103, label %while.body.i101.while.body.i101_crit_edge

while.body.i101.while.body.i101_crit_edge:        ; preds = %while.body.i101
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i101

while.end.loopexit.i103:                          ; preds = %while.body.i101
  call void @__sanitizer_cov_trace_pc() #8
  %phi.bo.i102 = shl i32 %spec.select.i99, 1
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13

sw.bb13:                                          ; preds = %sw.bb12, %if.end9.sw.bb13_crit_edge
  %str2hashbuf.0 = phi ptr [ @str2hashbuf_signed, %if.end9.sw.bb13_crit_edge ], [ @str2hashbuf_unsigned, %sw.bb12 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp14138 = icmp sgt i32 %len, 0
  br i1 %cmp14138, label %sw.bb13.while.body_crit_edge, label %sw.bb13.sw.epilog_crit_edge

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb13.while.body_crit_edge:                     ; preds = %sw.bb13
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %sw.bb13.while.body_crit_edge
  %p.0144 = phi ptr [ %add.ptr, %while.body.while.body_crit_edge ], [ %name, %sw.bb13.while.body_crit_edge ]
  %len.addr.0143 = phi i32 [ %sub, %while.body.while.body_crit_edge ], [ %len, %sw.bb13.while.body_crit_edge ]
  %buf.sroa.0.1142 = phi i32 [ %add193.i, %while.body.while.body_crit_edge ], [ %buf.sroa.0.0, %sw.bb13.while.body_crit_edge ]
  %buf.sroa.10.1141 = phi i32 [ %add195.i, %while.body.while.body_crit_edge ], [ %buf.sroa.10.0, %sw.bb13.while.body_crit_edge ]
  %buf.sroa.18.1140 = phi i32 [ %add197.i, %while.body.while.body_crit_edge ], [ %buf.sroa.18.0, %sw.bb13.while.body_crit_edge ]
  %buf.sroa.23.1139 = phi i32 [ %add199.i, %while.body.while.body_crit_edge ], [ %buf.sroa.23.0, %sw.bb13.while.body_crit_edge ]
  call void %str2hashbuf.0(ptr noundef %p.0144, i32 noundef %len.addr.0143, ptr noundef nonnull %in, i32 noundef 8) #6, !callees !13
  %xor.i105 = xor i32 %buf.sroa.18.1140, %buf.sroa.23.1139
  %and.i = and i32 %xor.i105, %buf.sroa.10.1141
  %xor4.i = xor i32 %and.i, %buf.sroa.23.1139
  %29 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %in, align 4
  %add.i106 = add i32 %xor4.i, %buf.sroa.0.1142
  %add7.i = add i32 %add.i106, %30
  %or.i.i = call i32 @llvm.fshl.i32(i32 %add7.i, i32 %add7.i, i32 3) #6
  %xor8.i = xor i32 %buf.sroa.10.1141, %buf.sroa.18.1140
  %and9.i = and i32 %or.i.i, %xor8.i
  %xor10.i = xor i32 %and9.i, %buf.sroa.18.1140
  %31 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %0, align 4
  %add12.i = add i32 %32, %buf.sroa.23.1139
  %add14.i = add i32 %add12.i, %xor10.i
  %or.i1.i = call i32 @llvm.fshl.i32(i32 %add14.i, i32 %add14.i, i32 7) #6
  %xor16.i = xor i32 %or.i.i, %buf.sroa.10.1141
  %and17.i = and i32 %or.i1.i, %xor16.i
  %xor18.i = xor i32 %and17.i, %buf.sroa.10.1141
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %1, align 4
  %add20.i = add i32 %34, %buf.sroa.18.1140
  %add22.i = add i32 %add20.i, %xor18.i
  %or.i2.i = call i32 @llvm.fshl.i32(i32 %add22.i, i32 %add22.i, i32 11) #6
  %xor24.i = xor i32 %or.i1.i, %or.i.i
  %and25.i = and i32 %or.i2.i, %xor24.i
  %xor26.i = xor i32 %and25.i, %or.i.i
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %2, align 4
  %add28.i = add i32 %36, %buf.sroa.10.1141
  %add30.i = add i32 %add28.i, %xor26.i
  %or.i3.i = call i32 @llvm.fshl.i32(i32 %add30.i, i32 %add30.i, i32 19) #6
  %xor32.i = xor i32 %or.i2.i, %or.i1.i
  %and33.i = and i32 %or.i3.i, %xor32.i
  %xor34.i = xor i32 %and33.i, %or.i1.i
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %3, align 4
  %add36.i = add i32 %38, %or.i.i
  %add38.i = add i32 %add36.i, %xor34.i
  %or.i4.i = call i32 @llvm.fshl.i32(i32 %add38.i, i32 %add38.i, i32 3) #6
  %xor40.i = xor i32 %or.i3.i, %or.i2.i
  %and41.i = and i32 %or.i4.i, %xor40.i
  %xor42.i = xor i32 %and41.i, %or.i2.i
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %4, align 4
  %add44.i = add i32 %or.i1.i, %40
  %add46.i = add i32 %add44.i, %xor42.i
  %or.i5.i = call i32 @llvm.fshl.i32(i32 %add46.i, i32 %add46.i, i32 7) #6
  %xor48.i = xor i32 %or.i4.i, %or.i3.i
  %and49.i = and i32 %or.i5.i, %xor48.i
  %xor50.i = xor i32 %and49.i, %or.i3.i
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %5, align 4
  %add52.i = add i32 %or.i2.i, %42
  %add54.i = add i32 %add52.i, %xor50.i
  %or.i6.i = call i32 @llvm.fshl.i32(i32 %add54.i, i32 %add54.i, i32 11) #6
  %xor56.i = xor i32 %or.i5.i, %or.i4.i
  %and57.i = and i32 %or.i6.i, %xor56.i
  %xor58.i = xor i32 %and57.i, %or.i4.i
  %43 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %6, align 4
  %add60.i = add i32 %or.i3.i, %44
  %add62.i = add i32 %add60.i, %xor58.i
  %or.i7.i = call i32 @llvm.fshl.i32(i32 %add62.i, i32 %add62.i, i32 19) #6
  %and64.i = and i32 %or.i7.i, %or.i6.i
  %xor65.i = xor i32 %or.i7.i, %or.i6.i
  %and66.i = and i32 %xor65.i, %or.i5.i
  %add67.i = add i32 %32, 1518500249
  %add69.i = add i32 %add67.i, %or.i4.i
  %add70.i = add i32 %add69.i, %and64.i
  %add71.i = add i32 %add70.i, %and66.i
  %or.i8.i = call i32 @llvm.fshl.i32(i32 %add71.i, i32 %add71.i, i32 3) #6
  %and73.i = and i32 %or.i8.i, %or.i7.i
  %xor74.i = xor i32 %or.i8.i, %or.i7.i
  %and75.i = and i32 %xor74.i, %or.i6.i
  %add76.i = add i32 %36, 1518500249
  %add78.i = add i32 %add76.i, %or.i5.i
  %add79.i = add i32 %add78.i, %and73.i
  %add80.i = add i32 %add79.i, %and75.i
  %or.i9.i = call i32 @llvm.fshl.i32(i32 %add80.i, i32 %add80.i, i32 5) #6
  %and82.i = and i32 %or.i9.i, %or.i8.i
  %xor83.i = xor i32 %or.i9.i, %or.i8.i
  %and84.i = and i32 %xor83.i, %or.i7.i
  %add85.i = add i32 %40, 1518500249
  %add87.i = add i32 %add85.i, %or.i6.i
  %add88.i = add i32 %add87.i, %and82.i
  %add89.i = add i32 %add88.i, %and84.i
  %or.i10.i = call i32 @llvm.fshl.i32(i32 %add89.i, i32 %add89.i, i32 9) #6
  %and91.i = and i32 %or.i10.i, %or.i9.i
  %xor92.i = xor i32 %or.i10.i, %or.i9.i
  %and93.i = and i32 %xor92.i, %or.i8.i
  %add94.i = add i32 %44, 1518500249
  %add96.i = add i32 %add94.i, %or.i7.i
  %add97.i = add i32 %add96.i, %and91.i
  %add98.i = add i32 %add97.i, %and93.i
  %or.i11.i = call i32 @llvm.fshl.i32(i32 %add98.i, i32 %add98.i, i32 13) #6
  %and100.i = and i32 %or.i11.i, %or.i10.i
  %xor101.i = xor i32 %or.i11.i, %or.i10.i
  %and102.i = and i32 %xor101.i, %or.i9.i
  %add103.i = add i32 %30, 1518500249
  %add105.i = add i32 %add103.i, %or.i8.i
  %add106.i = add i32 %add105.i, %and100.i
  %add107.i = add i32 %add106.i, %and102.i
  %or.i12.i = call i32 @llvm.fshl.i32(i32 %add107.i, i32 %add107.i, i32 3) #6
  %and109.i = and i32 %or.i12.i, %or.i11.i
  %xor110.i = xor i32 %or.i12.i, %or.i11.i
  %and111.i = and i32 %xor110.i, %or.i10.i
  %add112.i = add i32 %34, 1518500249
  %add114.i = add i32 %add112.i, %or.i9.i
  %add115.i = add i32 %add114.i, %and109.i
  %add116.i = add i32 %add115.i, %and111.i
  %or.i13.i = call i32 @llvm.fshl.i32(i32 %add116.i, i32 %add116.i, i32 5) #6
  %and118.i = and i32 %or.i13.i, %or.i12.i
  %xor119.i = xor i32 %or.i13.i, %or.i12.i
  %and120.i = and i32 %xor119.i, %or.i11.i
  %add121.i = add i32 %38, 1518500249
  %add123.i = add i32 %add121.i, %or.i10.i
  %add124.i = add i32 %add123.i, %and118.i
  %add125.i = add i32 %add124.i, %and120.i
  %or.i14.i = call i32 @llvm.fshl.i32(i32 %add125.i, i32 %add125.i, i32 9) #6
  %and127.i = and i32 %or.i14.i, %or.i13.i
  %xor128.i = xor i32 %or.i14.i, %or.i13.i
  %and129.i = and i32 %xor128.i, %or.i12.i
  %add130.i = add i32 %42, 1518500249
  %add132.i = add i32 %add130.i, %or.i11.i
  %add133.i = add i32 %add132.i, %and127.i
  %add134.i = add i32 %add133.i, %and129.i
  %or.i15.i = call i32 @llvm.fshl.i32(i32 %add134.i, i32 %add134.i, i32 13) #6
  %xor137.i = xor i32 %or.i15.i, %xor128.i
  %add139.i = add i32 %36, 1859775393
  %add140.i = add i32 %add139.i, %or.i12.i
  %add141.i = add i32 %add140.i, %xor137.i
  %or.i16.i = call i32 @llvm.fshl.i32(i32 %add141.i, i32 %add141.i, i32 3) #6
  %xor143.i = xor i32 %or.i16.i, %or.i15.i
  %xor144.i = xor i32 %xor143.i, %or.i14.i
  %add146.i = add i32 %44, 1859775393
  %add147.i = add i32 %add146.i, %or.i13.i
  %add148.i = add i32 %add147.i, %xor144.i
  %or.i17.i = call i32 @llvm.fshl.i32(i32 %add148.i, i32 %add148.i, i32 9) #6
  %xor151.i = xor i32 %xor143.i, %or.i17.i
  %add153.i = add i32 %34, 1859775393
  %add154.i = add i32 %add153.i, %or.i14.i
  %add155.i = add i32 %add154.i, %xor151.i
  %or.i18.i = call i32 @llvm.fshl.i32(i32 %add155.i, i32 %add155.i, i32 11) #6
  %xor157.i = xor i32 %or.i17.i, %or.i16.i
  %xor158.i = xor i32 %xor157.i, %or.i18.i
  %add160.i = add i32 %42, 1859775393
  %add161.i = add i32 %add160.i, %or.i15.i
  %add162.i = add i32 %add161.i, %xor158.i
  %or.i19.i = call i32 @llvm.fshl.i32(i32 %add162.i, i32 %add162.i, i32 15) #6
  %xor164.i = xor i32 %or.i18.i, %or.i17.i
  %xor165.i = xor i32 %xor164.i, %or.i19.i
  %add167.i = add i32 %32, 1859775393
  %add168.i = add i32 %add167.i, %or.i16.i
  %add169.i = add i32 %add168.i, %xor165.i
  %or.i20.i = call i32 @llvm.fshl.i32(i32 %add169.i, i32 %add169.i, i32 3) #6
  %xor171.i = xor i32 %or.i19.i, %or.i18.i
  %xor172.i = xor i32 %xor171.i, %or.i20.i
  %add174.i = add i32 %40, 1859775393
  %add175.i = add i32 %add174.i, %or.i17.i
  %add176.i = add i32 %add175.i, %xor172.i
  %or.i21.i = call i32 @llvm.fshl.i32(i32 %add176.i, i32 %add176.i, i32 9) #6
  %xor178.i = xor i32 %or.i20.i, %or.i19.i
  %xor179.i = xor i32 %xor178.i, %or.i21.i
  %add181.i = add i32 %30, 1859775393
  %add182.i = add i32 %add181.i, %or.i18.i
  %add183.i = add i32 %add182.i, %xor179.i
  %or.i22.i = call i32 @llvm.fshl.i32(i32 %add183.i, i32 %add183.i, i32 11) #6
  %xor185.i = xor i32 %or.i21.i, %or.i20.i
  %xor186.i = xor i32 %xor185.i, %or.i22.i
  %add188.i = add i32 %38, 1859775393
  %add189.i = add i32 %add188.i, %or.i19.i
  %add190.i = add i32 %add189.i, %xor186.i
  %or.i23.i = call i32 @llvm.fshl.i32(i32 %add190.i, i32 %add190.i, i32 15) #6
  %add193.i = add i32 %or.i20.i, %buf.sroa.0.1142
  %add195.i = add i32 %or.i23.i, %buf.sroa.10.1141
  %add197.i = add i32 %or.i22.i, %buf.sroa.18.1140
  %add199.i = add i32 %or.i21.i, %buf.sroa.23.1139
  %sub = add nsw i32 %len.addr.0143, -32
  %add.ptr = getelementptr i8, ptr %p.0144, i32 32
  %cmp14 = icmp ugt i32 %len.addr.0143, 32
  br i1 %cmp14, label %while.body.while.body_crit_edge, label %while.body.sw.epilog_crit_edge

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

sw.bb21:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb22

sw.bb22:                                          ; preds = %sw.bb21, %if.end9.sw.bb22_crit_edge
  %str2hashbuf.1 = phi ptr [ @str2hashbuf_signed, %if.end9.sw.bb22_crit_edge ], [ @str2hashbuf_unsigned, %sw.bb21 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp24132 = icmp sgt i32 %len, 0
  br i1 %cmp24132, label %sw.bb22.while.body25_crit_edge, label %sw.bb22.sw.epilog_crit_edge

sw.bb22.sw.epilog_crit_edge:                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb22.while.body25_crit_edge:                   ; preds = %sw.bb22
  br label %while.body25

while.body25:                                     ; preds = %TEA_transform.exit.while.body25_crit_edge, %sw.bb22.while.body25_crit_edge
  %p.1136 = phi ptr [ %add.ptr30, %TEA_transform.exit.while.body25_crit_edge ], [ %name, %sw.bb22.while.body25_crit_edge ]
  %len.addr.1135 = phi i32 [ %sub29, %TEA_transform.exit.while.body25_crit_edge ], [ %len, %sw.bb22.while.body25_crit_edge ]
  %buf.sroa.0.2134 = phi i32 [ %add20.i115, %TEA_transform.exit.while.body25_crit_edge ], [ %buf.sroa.0.0, %sw.bb22.while.body25_crit_edge ]
  %buf.sroa.10.2133 = phi i32 [ %add22.i116, %TEA_transform.exit.while.body25_crit_edge ], [ %buf.sroa.10.0, %sw.bb22.while.body25_crit_edge ]
  call void %str2hashbuf.1(ptr noundef %p.1136, i32 noundef %len.addr.1135, ptr noundef nonnull %in, i32 noundef 4) #6, !callees !13
  %45 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %in, align 4
  %47 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %0, align 4
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %1, align 4
  %51 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %2, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %while.body25
  %sum.0.i = phi i32 [ 0, %while.body25 ], [ %add.i109, %do.body.i.do.body.i_crit_edge ]
  %b0.0.i = phi i32 [ %buf.sroa.0.2134, %while.body25 ], [ %add10.i, %do.body.i.do.body.i_crit_edge ]
  %b1.0.i = phi i32 [ %buf.sroa.10.2133, %while.body25 ], [ %add18.i, %do.body.i.do.body.i_crit_edge ]
  %n.0.i = phi i32 [ 16, %while.body25 ], [ %dec.i113, %do.body.i.do.body.i_crit_edge ]
  %add.i109 = add i32 %sum.0.i, -1640531527
  %shl.i = shl i32 %b1.0.i, 4
  %add6.i = add i32 %shl.i, %46
  %add7.i110 = add i32 %b1.0.i, %add.i109
  %xor.i111 = xor i32 %add6.i, %add7.i110
  %shr.i = lshr i32 %b1.0.i, 5
  %add8.i = add i32 %shr.i, %48
  %xor9.i = xor i32 %xor.i111, %add8.i
  %add10.i = add i32 %xor9.i, %b0.0.i
  %shl11.i = shl i32 %add10.i, 4
  %add12.i112 = add i32 %shl11.i, %50
  %add13.i = add i32 %add10.i, %add.i109
  %xor14.i = xor i32 %add12.i112, %add13.i
  %shr15.i = lshr i32 %add10.i, 5
  %add16.i = add i32 %shr15.i, %52
  %xor17.i = xor i32 %xor14.i, %add16.i
  %add18.i = add i32 %xor17.i, %b1.0.i
  %dec.i113 = add nsw i32 %n.0.i, -1
  %tobool.not.i114 = icmp eq i32 %dec.i113, 0
  br i1 %tobool.not.i114, label %TEA_transform.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

TEA_transform.exit:                               ; preds = %do.body.i
  %add20.i115 = add i32 %add10.i, %buf.sroa.0.2134
  %add22.i116 = add i32 %add18.i, %buf.sroa.10.2133
  %sub29 = add nsw i32 %len.addr.1135, -16
  %add.ptr30 = getelementptr i8, ptr %p.1136, i32 16
  %cmp24 = icmp sgt i32 %len.addr.1135, 16
  br i1 %cmp24, label %TEA_transform.exit.while.body25_crit_edge, label %TEA_transform.exit.sw.epilog_crit_edge

TEA_transform.exit.sw.epilog_crit_edge:           ; preds = %TEA_transform.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

TEA_transform.exit.while.body25_crit_edge:        ; preds = %TEA_transform.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body25

sw.bb34:                                          ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %qname) #6
  %53 = getelementptr inbounds i8, ptr %qname, i32 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 -1, ptr %53, align 8
  %55 = ptrtoint ptr %qname to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %len, ptr %qname, align 8
  %hash36 = getelementptr inbounds %struct.anon.3, ptr %qname, i32 0, i32 1
  %56 = ptrtoint ptr %hash36 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %hash36, align 4
  %name37 = getelementptr inbounds %struct.qstr, ptr %qname, i32 0, i32 1
  %57 = ptrtoint ptr %name37 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %name, ptr %name37, align 8
  %i_crypt_info.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 52
  %58 = ptrtoint ptr %i_crypt_info.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %i_crypt_info.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !12
  %cmp.i.not = icmp eq ptr %59, null
  br i1 %cmp.i.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #8
  %call40 = call i64 @fscrypt_fname_siphash(ptr noundef %dir, ptr noundef nonnull %qname) #6
  %shr = lshr i64 %call40, 32
  %conv = trunc i64 %shr to i32
  %conv42 = trunc i64 %call40 to i32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %qname) #6
  br label %sw.epilog

cleanup:                                          ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %dir, ptr noundef nonnull @__func__.__ext4fs_dirhash, i32 noundef 270, ptr noundef nonnull @.str) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %qname) #6
  br label %cleanup51

sw.default:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %hinfo to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %hinfo, align 4
  br label %cleanup51

sw.epilog:                                        ; preds = %cleanup.thread, %TEA_transform.exit.sw.epilog_crit_edge, %sw.bb22.sw.epilog_crit_edge, %while.body.sw.epilog_crit_edge, %sw.bb13.sw.epilog_crit_edge, %while.end.loopexit.i103, %while.end.loopexit.i
  %hash.1 = phi i32 [ %phi.bo.i, %while.end.loopexit.i ], [ %phi.bo.i102, %while.end.loopexit.i103 ], [ %conv, %cleanup.thread ], [ %buf.sroa.10.0, %sw.bb13.sw.epilog_crit_edge ], [ %buf.sroa.0.0, %sw.bb22.sw.epilog_crit_edge ], [ %add195.i, %while.body.sw.epilog_crit_edge ], [ %add20.i115, %TEA_transform.exit.sw.epilog_crit_edge ]
  %minor_hash.1 = phi i32 [ 0, %while.end.loopexit.i ], [ 0, %while.end.loopexit.i103 ], [ %conv42, %cleanup.thread ], [ %buf.sroa.18.0, %sw.bb13.sw.epilog_crit_edge ], [ %buf.sroa.10.0, %sw.bb22.sw.epilog_crit_edge ], [ %add197.i, %while.body.sw.epilog_crit_edge ], [ %add22.i116, %TEA_transform.exit.sw.epilog_crit_edge ]
  %and = and i32 %hash.1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %hash.1)
  %cmp45 = icmp ugt i32 %hash.1, -3
  %spec.select = select i1 %cmp45, i32 -4, i32 %and
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %sw.epilog, %sw.bb10.sw.epilog.thread_crit_edge, %sw.bb.sw.epilog.thread_crit_edge
  %minor_hash.1129 = phi i32 [ 0, %sw.bb.sw.epilog.thread_crit_edge ], [ 0, %sw.bb10.sw.epilog.thread_crit_edge ], [ %minor_hash.1, %sw.epilog ]
  %61 = phi i32 [ 625474650, %sw.bb.sw.epilog.thread_crit_edge ], [ 625474650, %sw.bb10.sw.epilog.thread_crit_edge ], [ %spec.select, %sw.epilog ]
  %62 = ptrtoint ptr %hinfo to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %hinfo, align 4
  %minor_hash50 = getelementptr inbounds %struct.dx_hash_info, ptr %hinfo, i32 0, i32 1
  %63 = ptrtoint ptr %minor_hash50 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %minor_hash.1129, ptr %minor_hash50, align 4
  br label %cleanup51

cleanup51:                                        ; preds = %sw.epilog.thread, %sw.default, %cleanup
  %retval.1 = phi i32 [ -1, %sw.default ], [ 0, %sw.epilog.thread ], [ -1, %cleanup ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in) #6
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @str2hashbuf_signed(ptr nocapture noundef readonly %msg, i32 noundef %len, ptr nocapture noundef writeonly %buf, i32 noundef %num) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %len, 8
  %or = or i32 %shl, %len
  %shl1 = shl i32 %or, 16
  %or2 = or i32 %shl1, %or
  %mul = shl i32 %num, 2
  %0 = tail call i32 @llvm.smin.i32(i32 %mul, i32 %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp438 = icmp sgt i32 %0, 0
  br i1 %cmp438, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.042 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %val.041 = phi i32 [ %val.1, %for.inc.for.body_crit_edge ], [ %or2, %entry.for.body_crit_edge ]
  %num.addr.040 = phi i32 [ %num.addr.1, %for.inc.for.body_crit_edge ], [ %num, %entry.for.body_crit_edge ]
  %buf.addr.039 = phi ptr [ %buf.addr.1, %for.inc.for.body_crit_edge ], [ %buf, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %msg, i32 %i.042
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %shl5 = shl i32 %val.041, 8
  %add = add i32 %shl5, %conv
  %3 = and i32 %i.042, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp6 = icmp eq i32 %3, 3
  br i1 %cmp6, label %if.then8, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr = getelementptr i32, ptr %buf.addr.039, i32 1
  %4 = ptrtoint ptr %buf.addr.039 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %buf.addr.039, align 4
  %dec = add i32 %num.addr.040, -1
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %for.body.for.inc_crit_edge
  %buf.addr.1 = phi ptr [ %incdec.ptr, %if.then8 ], [ %buf.addr.039, %for.body.for.inc_crit_edge ]
  %num.addr.1 = phi i32 [ %dec, %if.then8 ], [ %num.addr.040, %for.body.for.inc_crit_edge ]
  %val.1 = phi i32 [ %or2, %if.then8 ], [ %add, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, %0
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %buf.addr.0.lcssa = phi ptr [ %buf, %entry.for.end_crit_edge ], [ %buf.addr.1, %for.inc.for.end_crit_edge ]
  %num.addr.0.lcssa = phi i32 [ %num, %entry.for.end_crit_edge ], [ %num.addr.1, %for.inc.for.end_crit_edge ]
  %val.0.lcssa = phi i32 [ %or2, %entry.for.end_crit_edge ], [ %val.1, %for.inc.for.end_crit_edge ]
  %dec10 = add i32 %num.addr.0.lcssa, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec10)
  %cmp11 = icmp sgt i32 %dec10, -1
  br i1 %cmp11, label %if.then13, label %for.end.if.end15_crit_edge

for.end.if.end15_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then13:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr14 = getelementptr i32, ptr %buf.addr.0.lcssa, i32 1
  %5 = ptrtoint ptr %buf.addr.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %val.0.lcssa, ptr %buf.addr.0.lcssa, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %for.end.if.end15_crit_edge
  %buf.addr.2 = phi ptr [ %incdec.ptr14, %if.then13 ], [ %buf.addr.0.lcssa, %for.end.if.end15_crit_edge ]
  %dec1645 = add i32 %num.addr.0.lcssa, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec1645)
  %cmp1746 = icmp sgt i32 %dec1645, -1
  br i1 %cmp1746, label %if.end15.while.body_crit_edge, label %if.end15.while.end_crit_edge

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end15.while.body_crit_edge:                    ; preds = %if.end15
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end15.while.body_crit_edge
  %dec1648 = phi i32 [ %dec16, %while.body.while.body_crit_edge ], [ %dec1645, %if.end15.while.body_crit_edge ]
  %buf.addr.347 = phi ptr [ %incdec.ptr19, %while.body.while.body_crit_edge ], [ %buf.addr.2, %if.end15.while.body_crit_edge ]
  %incdec.ptr19 = getelementptr i32, ptr %buf.addr.347, i32 1
  %6 = ptrtoint ptr %buf.addr.347 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or2, ptr %buf.addr.347, align 4
  %dec16 = add nsw i32 %dec1648, -1
  %cmp17 = icmp sgt i32 %dec1648, 0
  br i1 %cmp17, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end15.while.end_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @str2hashbuf_unsigned(ptr nocapture noundef readonly %msg, i32 noundef %len, ptr nocapture noundef writeonly %buf, i32 noundef %num) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %len, 8
  %or = or i32 %shl, %len
  %shl1 = shl i32 %or, 16
  %or2 = or i32 %shl1, %or
  %mul = shl i32 %num, 2
  %0 = tail call i32 @llvm.smin.i32(i32 %mul, i32 %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp438 = icmp sgt i32 %0, 0
  br i1 %cmp438, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.042 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %val.041 = phi i32 [ %val.1, %for.inc.for.body_crit_edge ], [ %or2, %entry.for.body_crit_edge ]
  %num.addr.040 = phi i32 [ %num.addr.1, %for.inc.for.body_crit_edge ], [ %num, %entry.for.body_crit_edge ]
  %buf.addr.039 = phi ptr [ %buf.addr.1, %for.inc.for.body_crit_edge ], [ %buf, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %msg, i32 %i.042
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %shl5 = shl i32 %val.041, 8
  %add = or i32 %shl5, %conv
  %3 = and i32 %i.042, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp6 = icmp eq i32 %3, 3
  br i1 %cmp6, label %if.then8, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr = getelementptr i32, ptr %buf.addr.039, i32 1
  %4 = ptrtoint ptr %buf.addr.039 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %buf.addr.039, align 4
  %dec = add i32 %num.addr.040, -1
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %for.body.for.inc_crit_edge
  %buf.addr.1 = phi ptr [ %incdec.ptr, %if.then8 ], [ %buf.addr.039, %for.body.for.inc_crit_edge ]
  %num.addr.1 = phi i32 [ %dec, %if.then8 ], [ %num.addr.040, %for.body.for.inc_crit_edge ]
  %val.1 = phi i32 [ %or2, %if.then8 ], [ %add, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, %0
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %buf.addr.0.lcssa = phi ptr [ %buf, %entry.for.end_crit_edge ], [ %buf.addr.1, %for.inc.for.end_crit_edge ]
  %num.addr.0.lcssa = phi i32 [ %num, %entry.for.end_crit_edge ], [ %num.addr.1, %for.inc.for.end_crit_edge ]
  %val.0.lcssa = phi i32 [ %or2, %entry.for.end_crit_edge ], [ %val.1, %for.inc.for.end_crit_edge ]
  %dec10 = add i32 %num.addr.0.lcssa, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec10)
  %cmp11 = icmp sgt i32 %dec10, -1
  br i1 %cmp11, label %if.then13, label %for.end.if.end15_crit_edge

for.end.if.end15_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then13:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr14 = getelementptr i32, ptr %buf.addr.0.lcssa, i32 1
  %5 = ptrtoint ptr %buf.addr.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %val.0.lcssa, ptr %buf.addr.0.lcssa, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %for.end.if.end15_crit_edge
  %buf.addr.2 = phi ptr [ %incdec.ptr14, %if.then13 ], [ %buf.addr.0.lcssa, %for.end.if.end15_crit_edge ]
  %dec1645 = add i32 %num.addr.0.lcssa, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec1645)
  %cmp1746 = icmp sgt i32 %dec1645, -1
  br i1 %cmp1746, label %if.end15.while.body_crit_edge, label %if.end15.while.end_crit_edge

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end15.while.body_crit_edge:                    ; preds = %if.end15
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end15.while.body_crit_edge
  %dec1648 = phi i32 [ %dec16, %while.body.while.body_crit_edge ], [ %dec1645, %if.end15.while.body_crit_edge ]
  %buf.addr.347 = phi ptr [ %incdec.ptr19, %while.body.while.body_crit_edge ], [ %buf.addr.2, %if.end15.while.body_crit_edge ]
  %incdec.ptr19 = getelementptr i32, ptr %buf.addr.347, i32 1
  %6 = ptrtoint ptr %buf.addr.347 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or2, ptr %buf.addr.347, align 4
  %dec16 = add nsw i32 %dec1648, -1
  %cmp17 = icmp sgt i32 %dec1648, 0
  br i1 %cmp17, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end15.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @fscrypt_fname_siphash(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_warning_inode(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @__func__.__ext4fs_dirhash, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ext4/hash.c", i32 270, i32 4}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{i64 2154840745}
!13 = !{ptr @str2hashbuf_signed, ptr @str2hashbuf_unsigned}
