; ModuleID = '/llk/IR_all_yes/fs/f2fs/hash.c_pt.bc'
source_filename = "../fs/f2fs/hash.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.f2fs_filename = type { ptr, %struct.fscrypt_str, i32, %struct.fscrypt_str, %struct.fscrypt_str }
%struct.fscrypt_str = type { ptr, i32 }
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
%struct.anon.3 = type { i32, i32 }

@f2fs_hash_filename.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/f2fs/hash.c\00", [17 x i8] zeroinitializer }, align 32
@f2fs_hash_filename.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private constant [18 x i8] c"../fs/f2fs/hash.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 101, i32 2 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_hash_filename(ptr noundef %dir, ptr nocapture noundef %fname) local_unnamed_addr #0 align 64 {
entry:
  %in.i = alloca [8 x i32], align 4
  %tmp117 = alloca %struct.qstr, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %disk_name = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 1
  %0 = ptrtoint ptr %disk_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disk_name, align 4
  %len3 = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len3, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.rhs, label %entry.if.end32_crit_edge

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

land.rhs:                                         ; preds = %entry
  %.b151 = load i1, ptr @f2fs_hash_filename.__already_done, align 1
  br i1 %.b151, label %land.rhs.if.end32_crit_edge, label %if.then, !prof !14

land.rhs.if.end32_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @f2fs_hash_filename.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 101, i32 noundef 9, ptr noundef null) #4
  br label %if.end32

if.end32:                                         ; preds = %if.then, %land.rhs.if.end32_crit_edge, %entry.if.end32_crit_edge
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end32.if.end41_crit_edge [
    i32 1, label %land.lhs.true.i
    i32 2, label %land.lhs.true5.i
  ]

if.end32.if.end41_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

land.lhs.true.i:                                  ; preds = %if.end32
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %6)
  %cmp1.i = icmp eq i8 %6, 46
  br i1 %cmp1.i, label %land.lhs.true.i.if.then40_crit_edge, label %land.lhs.true.i.if.end41_crit_edge

land.lhs.true.i.if.end41_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

land.lhs.true.i.if.then40_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then40

land.lhs.true5.i:                                 ; preds = %if.end32
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %8)
  %cmp8.i = icmp eq i8 %8, 46
  br i1 %cmp8.i, label %land.lhs.true10.i, label %land.lhs.true5.i.if.end41_crit_edge

land.lhs.true5.i.if.end41_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

land.lhs.true10.i:                                ; preds = %land.lhs.true5.i
  %arrayidx11.i = getelementptr i8, ptr %1, i32 1
  %9 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %10)
  %cmp13.i = icmp eq i8 %10, 46
  br i1 %cmp13.i, label %land.lhs.true10.i.if.then40_crit_edge, label %land.lhs.true10.i.if.end41_crit_edge

land.lhs.true10.i.if.end41_crit_edge:             ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

land.lhs.true10.i.if.then40_crit_edge:            ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then40

if.then40:                                        ; preds = %land.lhs.true10.i.if.then40_crit_edge, %land.lhs.true.i.if.then40_crit_edge
  %hash = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 2
  %11 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %hash, align 4
  br label %cleanup

if.end41:                                         ; preds = %land.lhs.true10.i.if.end41_crit_edge, %land.lhs.true5.i.if.end41_crit_edge, %land.lhs.true.i.if.end41_crit_edge, %if.end32.if.end41_crit_edge
  %i_flags = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %12 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_flags, align 4
  %and = and i32 %13, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  br i1 %tobool42.not, label %if.end41.if.end124_crit_edge, label %if.then43

if.end41.if.end124_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end124

if.then43:                                        ; preds = %if.end41
  %14 = ptrtoint ptr %fname to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fname, align 4
  %name45 = getelementptr inbounds %struct.qstr, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %name45 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name45, align 8
  %tobool46.not = icmp eq ptr %17, null
  br i1 %tobool46.not, label %land.rhs55, label %if.then43.if.end93_crit_edge

if.then43.if.end93_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end93

land.rhs55:                                       ; preds = %if.then43
  %.b149150 = load i1, ptr @f2fs_hash_filename.__already_done.1, align 1
  br i1 %.b149150, label %land.rhs55.if.end93_crit_edge, label %if.then66, !prof !14

land.rhs55.if.end93_crit_edge:                    ; preds = %land.rhs55
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end93

if.then66:                                        ; preds = %land.rhs55
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @f2fs_hash_filename.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 118, i32 noundef 9, ptr noundef null) #4
  br label %if.end93

if.end93:                                         ; preds = %if.then66, %land.rhs55.if.end93_crit_edge, %if.then43.if.end93_crit_edge
  %cf_name = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 4
  %18 = ptrtoint ptr %cf_name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cf_name, align 4
  %tobool102.not = icmp eq ptr %19, null
  br i1 %tobool102.not, label %if.else, label %if.then103

if.then103:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #6
  %len107 = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 4, i32 1
  br label %if.end112

if.else:                                          ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %fname to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fname, align 4
  %name109 = getelementptr inbounds %struct.qstr, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %name109 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name109, align 8
  br label %if.end112

if.end112:                                        ; preds = %if.else, %if.then103
  %len.0.in = phi ptr [ %len107, %if.then103 ], [ %21, %if.else ]
  %name.0 = phi ptr [ %19, %if.then103 ], [ %23, %if.else ]
  %24 = ptrtoint ptr %len.0.in to i32
  call void @__asan_load4_noabort(i32 %24)
  %len.0 = load i32, ptr %len.0.in, align 4
  %25 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_flags, align 4
  %and114 = and i32 %26, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.end112.if.end124_crit_edge, label %if.then116

if.end112.if.end124_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end124

if.then116:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp117) #4
  %27 = getelementptr inbounds i8, ptr %tmp117, i32 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 -1, ptr %27, align 8
  %29 = ptrtoint ptr %tmp117 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %len.0, ptr %tmp117, align 8
  %hash119 = getelementptr inbounds %struct.anon.3, ptr %tmp117, i32 0, i32 1
  %30 = ptrtoint ptr %hash119 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %hash119, align 4
  %name120 = getelementptr inbounds %struct.qstr, ptr %tmp117, i32 0, i32 1
  %31 = ptrtoint ptr %name120 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %name.0, ptr %name120, align 8
  %call121 = call i64 @fscrypt_fname_siphash(ptr noundef %dir, ptr noundef nonnull %tmp117) #4
  %conv = trunc i64 %call121 to i32
  %32 = call i32 @llvm.bswap.i32(i32 %conv)
  %hash122 = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 2
  %33 = ptrtoint ptr %hash122 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %hash122, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp117) #4
  br label %cleanup

if.end124:                                        ; preds = %if.end112.if.end124_crit_edge, %if.end41.if.end124_crit_edge
  %len.1 = phi i32 [ %len.0, %if.end112.if.end124_crit_edge ], [ %3, %if.end41.if.end124_crit_edge ]
  %name.1 = phi ptr [ %name.0, %if.end112.if.end124_crit_edge ], [ %1, %if.end41.if.end124_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in.i) #4
  %34 = getelementptr inbounds [8 x i32], ptr %in.i, i32 0, i32 1
  %35 = getelementptr inbounds [8 x i32], ptr %in.i, i32 0, i32 2
  %36 = getelementptr inbounds [8 x i32], ptr %in.i, i32 0, i32 3
  %37 = call ptr @memset(ptr %in.i, i32 255, i32 32)
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i, %if.end124
  %buf.sroa.7.0.i = phi i32 [ -271733879, %if.end124 ], [ %add22.i.i, %if.end.i ]
  %buf.sroa.0.0.i = phi i32 [ 1732584193, %if.end124 ], [ %add20.i.i, %if.end.i ]
  %p.addr.0.i = phi ptr [ %name.1, %if.end124 ], [ %add.ptr.i, %if.end.i ]
  %len.addr.0.i = phi i32 [ %len.1, %if.end124 ], [ %sub.i, %if.end.i ]
  %shl.i.i = shl i32 %len.addr.0.i, 8
  %or.i.i = or i32 %shl.i.i, %len.addr.0.i
  %shl1.i.i = shl i32 %or.i.i, 16
  %or2.i.i = or i32 %shl1.i.i, %or.i.i
  %38 = tail call i32 @llvm.umin.i32(i32 %len.addr.0.i, i32 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp42.not.i.i = icmp eq i32 %38, 0
  br i1 %cmp42.not.i.i, label %while.cond.i.if.then17.i.i_crit_edge, label %while.cond.i.for.body.i.i_crit_edge

while.cond.i.for.body.i.i_crit_edge:              ; preds = %while.cond.i
  br label %for.body.i.i

while.cond.i.if.then17.i.i_crit_edge:             ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then17.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %while.cond.i.for.body.i.i_crit_edge
  %i.06.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %while.cond.i.for.body.i.i_crit_edge ]
  %val.05.i.i = phi i32 [ %val.2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %or2.i.i, %while.cond.i.for.body.i.i_crit_edge ]
  %num.addr.04.i.i = phi i32 [ %num.addr.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 4, %while.cond.i.for.body.i.i_crit_edge ]
  %buf.addr.03.i.i = phi ptr [ %buf.addr.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %in.i, %while.cond.i.for.body.i.i_crit_edge ]
  %rem.urem.i.i = and i32 %i.06.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.urem.i.i)
  %cmp5.i.i = icmp eq i32 %rem.urem.i.i, 0
  %spec.select1.i.i = select i1 %cmp5.i.i, i32 %or2.i.i, i32 %val.05.i.i
  %arrayidx.i.i = getelementptr i8, ptr %p.addr.0.i, i32 %i.06.i.i
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %40 to i32
  %shl8.i.i = shl i32 %spec.select1.i.i, 8
  %add.i.i = or i32 %shl8.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %rem.urem.i.i)
  %cmp10.i.i = icmp eq i32 %rem.urem.i.i, 3
  br i1 %cmp10.i.i, label %if.then12.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i

if.then12.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr.i.i = getelementptr i32, ptr %buf.addr.03.i.i, i32 1
  %41 = ptrtoint ptr %buf.addr.03.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add.i.i, ptr %buf.addr.03.i.i, align 4
  %dec.i.i = add i32 %num.addr.04.i.i, -1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then12.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %buf.addr.1.i.i = phi ptr [ %incdec.ptr.i.i, %if.then12.i.i ], [ %buf.addr.03.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %num.addr.1.i.i = phi i32 [ %dec.i.i, %if.then12.i.i ], [ %num.addr.04.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %val.2.i.i = phi i32 [ %or2.i.i, %if.then12.i.i ], [ %add.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %i.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %38
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  %dec14.i.i = add i32 %num.addr.1.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec14.i.i)
  %cmp15.i.i = icmp sgt i32 %dec14.i.i, -1
  br i1 %cmp15.i.i, label %for.end.i.i.if.then17.i.i_crit_edge, label %for.end.i.i.if.end19.i.i_crit_edge

for.end.i.i.if.end19.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19.i.i

for.end.i.i.if.then17.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then17.i.i

if.then17.i.i:                                    ; preds = %for.end.i.i.if.then17.i.i_crit_edge, %while.cond.i.if.then17.i.i_crit_edge
  %val.0.lcssa21.i.i = phi i32 [ %val.2.i.i, %for.end.i.i.if.then17.i.i_crit_edge ], [ %or2.i.i, %while.cond.i.if.then17.i.i_crit_edge ]
  %num.addr.0.lcssa20.i.i = phi i32 [ %num.addr.1.i.i, %for.end.i.i.if.then17.i.i_crit_edge ], [ 4, %while.cond.i.if.then17.i.i_crit_edge ]
  %buf.addr.0.lcssa18.i.i = phi ptr [ %buf.addr.1.i.i, %for.end.i.i.if.then17.i.i_crit_edge ], [ %in.i, %while.cond.i.if.then17.i.i_crit_edge ]
  %incdec.ptr18.i.i = getelementptr i32, ptr %buf.addr.0.lcssa18.i.i, i32 1
  %42 = ptrtoint ptr %buf.addr.0.lcssa18.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %val.0.lcssa21.i.i, ptr %buf.addr.0.lcssa18.i.i, align 4
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.then17.i.i, %for.end.i.i.if.end19.i.i_crit_edge
  %num.addr.0.lcssa19.i.i = phi i32 [ %num.addr.0.lcssa20.i.i, %if.then17.i.i ], [ %num.addr.1.i.i, %for.end.i.i.if.end19.i.i_crit_edge ]
  %buf.addr.2.i.i = phi ptr [ %incdec.ptr18.i.i, %if.then17.i.i ], [ %buf.addr.1.i.i, %for.end.i.i.if.end19.i.i_crit_edge ]
  %dec209.i.i = add i32 %num.addr.0.lcssa19.i.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec209.i.i)
  %cmp2110.i.i = icmp sgt i32 %dec209.i.i, -1
  br i1 %cmp2110.i.i, label %if.end19.i.i.while.body.i.i_crit_edge, label %if.end19.i.i.str2hashbuf.exit.i_crit_edge

if.end19.i.i.str2hashbuf.exit.i_crit_edge:        ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %str2hashbuf.exit.i

if.end19.i.i.while.body.i.i_crit_edge:            ; preds = %if.end19.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end19.i.i.while.body.i.i_crit_edge
  %dec2012.i.i = phi i32 [ %dec20.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %dec209.i.i, %if.end19.i.i.while.body.i.i_crit_edge ]
  %buf.addr.311.i.i = phi ptr [ %incdec.ptr23.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %buf.addr.2.i.i, %if.end19.i.i.while.body.i.i_crit_edge ]
  %incdec.ptr23.i.i = getelementptr i32, ptr %buf.addr.311.i.i, i32 1
  %43 = ptrtoint ptr %buf.addr.311.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or2.i.i, ptr %buf.addr.311.i.i, align 4
  %dec20.i.i = add nsw i32 %dec2012.i.i, -1
  %cmp21.i.not.i = icmp eq i32 %dec2012.i.i, 0
  br i1 %cmp21.i.not.i, label %while.body.i.i.str2hashbuf.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i

while.body.i.i.str2hashbuf.exit.i_crit_edge:      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %str2hashbuf.exit.i

str2hashbuf.exit.i:                               ; preds = %while.body.i.i.str2hashbuf.exit.i_crit_edge, %if.end19.i.i.str2hashbuf.exit.i_crit_edge
  %44 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %in.i, align 4
  %46 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %34, align 4
  %48 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %35, align 4
  %50 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %36, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %str2hashbuf.exit.i
  %sum.0.i.i = phi i32 [ 0, %str2hashbuf.exit.i ], [ %add.i11.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %b0.0.i.i = phi i32 [ %buf.sroa.0.0.i, %str2hashbuf.exit.i ], [ %add10.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %b1.0.i.i = phi i32 [ %buf.sroa.7.0.i, %str2hashbuf.exit.i ], [ %add18.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %n.0.i.i = phi i32 [ 16, %str2hashbuf.exit.i ], [ %dec.i13.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %add.i11.i = add i32 %sum.0.i.i, -1640531527
  %shl.i12.i = shl i32 %b1.0.i.i, 4
  %add6.i.i = add i32 %shl.i12.i, %45
  %add7.i.i = add i32 %b1.0.i.i, %add.i11.i
  %xor.i.i = xor i32 %add6.i.i, %add7.i.i
  %shr.i.i = lshr i32 %b1.0.i.i, 5
  %add8.i.i = add i32 %shr.i.i, %47
  %xor9.i.i = xor i32 %xor.i.i, %add8.i.i
  %add10.i.i = add i32 %xor9.i.i, %b0.0.i.i
  %shl11.i.i = shl i32 %add10.i.i, 4
  %add12.i.i = add i32 %shl11.i.i, %49
  %add13.i.i = add i32 %add10.i.i, %add.i11.i
  %xor14.i.i = xor i32 %add12.i.i, %add13.i.i
  %shr15.i.i = lshr i32 %add10.i.i, 5
  %add16.i.i = add i32 %shr15.i.i, %51
  %xor17.i.i = xor i32 %xor14.i.i, %add16.i.i
  %add18.i.i = add i32 %xor17.i.i, %b1.0.i.i
  %dec.i13.i = add nsw i32 %n.0.i.i, -1
  %tobool.not.i.i = icmp eq i32 %dec.i13.i, 0
  br i1 %tobool.not.i.i, label %TEA_transform.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i

TEA_transform.exit.i:                             ; preds = %do.body.i.i
  %add20.i.i = add i32 %add10.i.i, %buf.sroa.0.0.i
  %cmp.i = icmp ult i32 %len.addr.0.i, 17
  br i1 %cmp.i, label %TEA_hash_name.exit, label %if.end.i

if.end.i:                                         ; preds = %TEA_transform.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %add22.i.i = add i32 %add18.i.i, %buf.sroa.7.0.i
  %add.ptr.i = getelementptr i8, ptr %p.addr.0.i, i32 16
  %sub.i = add i32 %len.addr.0.i, -16
  br label %while.cond.i

TEA_hash_name.exit:                               ; preds = %TEA_transform.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in.i) #4
  %52 = tail call i32 @llvm.bswap.i32(i32 %add20.i.i)
  %hash126 = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 2
  %53 = ptrtoint ptr %hash126 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %hash126, align 4
  br label %cleanup

cleanup:                                          ; preds = %TEA_hash_name.exit, %if.then116, %if.then40
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @fscrypt_fname_siphash(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../fs/f2fs/hash.c", i32 101, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../fs/f2fs/hash.c", i32 118, i32 3}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{!"branch_weights", i32 2000, i32 1}
