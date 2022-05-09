; ModuleID = '/llk/IR_all_yes/fs/hfs/trans.c_pt.bc'
source_filename = "../fs/hfs/trans.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.hfs_sb_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, %struct.kuid_t, %struct.kgid_t, i32, i32, ptr, ptr, %struct.mutex, i32, i16, i32, ptr, i32, %struct.delayed_work, %struct.spinlock }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hfs_name = type { i8, [31 x i8] }
%struct.nls_table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfs_mac2asc(ptr nocapture noundef readonly %sb, ptr noundef %out, ptr noundef %in) local_unnamed_addr #0 align 64 {
entry:
  %ch = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %nls_disk1 = getelementptr inbounds %struct.hfs_sb_info, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %nls_disk1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nls_disk1, align 4
  %nls_io3 = getelementptr inbounds %struct.hfs_sb_info, ptr %1, i32 0, i32 27
  %4 = ptrtoint ptr %nls_io3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nls_io3, align 4
  %name = getelementptr inbounds %struct.hfs_name, ptr %in, i32 0, i32 1
  %6 = ptrtoint ptr %in to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %in, align 1
  %8 = tail call i8 @llvm.umin.i8(i8 %7, i8 31)
  %9 = zext i8 %8 to i32
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %while.cond34.preheader, label %if.then5

while.cond34.preheader:                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp3689.not = icmp eq i8 %8, 0
  br i1 %cmp3689.not, label %while.cond34.preheader.out48_crit_edge, label %while.cond34.preheader.while.body38_crit_edge

while.cond34.preheader.while.body38_crit_edge:    ; preds = %while.cond34.preheader
  br label %while.body38

while.cond34.preheader.out48_crit_edge:           ; preds = %while.cond34.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %out48

if.then5:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ch) #3
  %10 = ptrtoint ptr %ch to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %ch, align 2, !annotation !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp681.not = icmp eq i8 %8, 0
  br i1 %cmp681.not, label %if.then5.cleanup_crit_edge, label %while.body.lr.ph

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.then5
  %tobool8.not = icmp eq ptr %3, null
  %char2uni = getelementptr inbounds %struct.nls_table, ptr %3, i32 0, i32 3
  %uni2char = getelementptr inbounds %struct.nls_table, ptr %5, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end29.while.body_crit_edge, %while.body.lr.ph
  %dstlen.086 = phi i32 [ 128, %while.body.lr.ph ], [ %sub31, %if.end29.while.body_crit_edge ]
  %srclen.085 = phi i32 [ %9, %while.body.lr.ph ], [ %srclen.1, %if.end29.while.body_crit_edge ]
  %dst.083 = phi ptr [ %out, %while.body.lr.ph ], [ %add.ptr30, %if.end29.while.body_crit_edge ]
  %src.082 = phi ptr [ %name, %while.body.lr.ph ], [ %src.1, %if.end29.while.body_crit_edge ]
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %while.body
  %11 = ptrtoint ptr %char2uni to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %char2uni, align 4
  %call = call i32 %12(ptr noundef %src.082, i32 noundef %srclen.085, ptr noundef nonnull %ch) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp10 = icmp slt i32 %call, 1
  br i1 %cmp10, label %if.then12, label %if.then9.if.end13_crit_edge

if.then9.if.end13_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %ch to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 63, ptr %ch, align 2
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then9.if.end13_crit_edge
  %size.0 = phi i32 [ 1, %if.then12 ], [ %call, %if.then9.if.end13_crit_edge ]
  %add.ptr = getelementptr i8, ptr %src.082, i32 %size.0
  %sub = sub nsw i32 %srclen.085, %size.0
  %14 = ptrtoint ptr %ch to i32
  call void @__asan_load2_noabort(i32 %14)
  %.pr = load i16, ptr %ch, align 2
  br label %if.end15

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  %incdec.ptr = getelementptr i8, ptr %src.082, i32 1
  %15 = ptrtoint ptr %src.082 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %src.082, align 1
  %conv14 = zext i8 %16 to i16
  %17 = ptrtoint ptr %ch to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv14, ptr %ch, align 2
  %dec = add nsw i32 %srclen.085, -1
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.end13
  %18 = phi i16 [ %conv14, %if.else ], [ %.pr, %if.end13 ]
  %src.1 = phi ptr [ %incdec.ptr, %if.else ], [ %add.ptr, %if.end13 ]
  %srclen.1 = phi i32 [ %dec, %if.else ], [ %sub, %if.end13 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 47, i16 %18)
  %cmp17 = icmp eq i16 %18, 47
  br i1 %cmp17, label %if.then19, label %if.end15.if.end20_crit_edge

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %ch to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 58, ptr %ch, align 2
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end15.if.end20_crit_edge
  %20 = ptrtoint ptr %uni2char to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %uni2char, align 4
  %22 = ptrtoint ptr %ch to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %ch, align 2
  %call21 = call i32 %21(i16 noundef zeroext %23, ptr noundef %dst.083, i32 noundef %dstlen.086) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then24, label %if.end20.if.end29_crit_edge

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end29

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -36, i32 %call21)
  %cmp25 = icmp eq i32 %call21, -36
  br i1 %cmp25, label %if.then24.cleanup_crit_edge, label %if.end28

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end28:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #5
  %24 = ptrtoint ptr %dst.083 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 63, ptr %dst.083, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end20.if.end29_crit_edge
  %size.1 = phi i32 [ 1, %if.end28 ], [ %call21, %if.end20.if.end29_crit_edge ]
  %add.ptr30 = getelementptr i8, ptr %dst.083, i32 %size.1
  %sub31 = sub i32 %dstlen.086, %size.1
  %cmp6 = icmp sgt i32 %srclen.1, 0
  br i1 %cmp6, label %if.end29.while.body_crit_edge, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end29.while.body_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

cleanup:                                          ; preds = %if.end29.cleanup_crit_edge, %if.then24.cleanup_crit_edge, %if.then5.cleanup_crit_edge
  %dst.0.lcssa = phi ptr [ %out, %if.then5.cleanup_crit_edge ], [ %add.ptr30, %if.end29.cleanup_crit_edge ], [ %dst.083, %if.then24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ch) #3
  br label %out48

while.body38:                                     ; preds = %while.body38.while.body38_crit_edge, %while.cond34.preheader.while.body38_crit_edge
  %dec3592.in = phi i32 [ %dec3592, %while.body38.while.body38_crit_edge ], [ %9, %while.cond34.preheader.while.body38_crit_edge ]
  %dst.191 = phi ptr [ %incdec.ptr45, %while.body38.while.body38_crit_edge ], [ %out, %while.cond34.preheader.while.body38_crit_edge ]
  %src.290 = phi ptr [ %incdec.ptr39, %while.body38.while.body38_crit_edge ], [ %name, %while.cond34.preheader.while.body38_crit_edge ]
  %dec3592 = add nsw i32 %dec3592.in, -1
  %incdec.ptr39 = getelementptr i8, ptr %src.290, i32 1
  %25 = ptrtoint ptr %src.290 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %src.290, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %26)
  %cmp41 = icmp eq i8 %26, 47
  %spec.select = select i1 %cmp41, i8 58, i8 %26
  %incdec.ptr45 = getelementptr i8, ptr %dst.191, i32 1
  %27 = ptrtoint ptr %dst.191 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %spec.select, ptr %dst.191, align 1
  %cmp36 = icmp ugt i32 %dec3592.in, 1
  br i1 %cmp36, label %while.body38.while.body38_crit_edge, label %while.body38.out48_crit_edge

while.body38.out48_crit_edge:                     ; preds = %while.body38
  call void @__sanitizer_cov_trace_pc() #5
  br label %out48

while.body38.while.body38_crit_edge:              ; preds = %while.body38
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body38

out48:                                            ; preds = %while.body38.out48_crit_edge, %cleanup, %while.cond34.preheader.out48_crit_edge
  %dst.2 = phi ptr [ %dst.0.lcssa, %cleanup ], [ %out, %while.cond34.preheader.out48_crit_edge ], [ %incdec.ptr45, %while.body38.out48_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %dst.2 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %out to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i32 %sub.ptr.sub
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfs_asc2mac(ptr nocapture noundef readonly %sb, ptr noundef %out, ptr nocapture noundef readonly %in) local_unnamed_addr #0 align 64 {
entry:
  %ch = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %nls_disk1 = getelementptr inbounds %struct.hfs_sb_info, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %nls_disk1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nls_disk1, align 4
  %nls_io3 = getelementptr inbounds %struct.hfs_sb_info, ptr %1, i32 0, i32 27
  %4 = ptrtoint ptr %nls_io3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nls_io3, align 4
  %name = getelementptr inbounds %struct.qstr, ptr %in, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 8
  %8 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %in, align 8
  %name4 = getelementptr inbounds %struct.hfs_name, ptr %out, i32 0, i32 1
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else30, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ch) #3
  %10 = ptrtoint ptr %ch to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %ch, align 2, !annotation !9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp109 = icmp sgt i32 %9, 0
  br i1 %cmp109, label %while.body.lr.ph, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.then
  %char2uni = getelementptr inbounds %struct.nls_table, ptr %5, i32 0, i32 3
  %tobool11.not = icmp eq ptr %3, null
  %uni2char = getelementptr inbounds %struct.nls_table, ptr %3, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end29.while.body_crit_edge, %while.body.lr.ph
  %dstlen.0114 = phi i32 [ 31, %while.body.lr.ph ], [ %dstlen.1, %if.end29.while.body_crit_edge ]
  %srclen.0113 = phi i32 [ %9, %while.body.lr.ph ], [ %sub108, %if.end29.while.body_crit_edge ]
  %dst.0111 = phi ptr [ %name4, %while.body.lr.ph ], [ %dst.1, %if.end29.while.body_crit_edge ]
  %src.0110 = phi ptr [ %7, %while.body.lr.ph ], [ %add.ptr107, %if.end29.while.body_crit_edge ]
  %11 = ptrtoint ptr %char2uni to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %char2uni, align 4
  %call = call i32 %12(ptr noundef %src.0110, i32 noundef %srclen.0113, ptr noundef nonnull %ch) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %ch to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 63, ptr %ch, align 2
  %add.ptr104 = getelementptr i8, ptr %src.0110, i32 1
  %sub105 = add nsw i32 %srclen.0113, -1
  br label %if.end10

if.end:                                           ; preds = %while.body
  %14 = ptrtoint ptr %ch to i32
  call void @__asan_load2_noabort(i32 %14)
  %.pr = load i16, ptr %ch, align 2
  %add.ptr = getelementptr i8, ptr %src.0110, i32 %call
  %sub = sub nsw i32 %srclen.0113, %call
  call void @__sanitizer_cov_trace_const_cmp2(i16 58, i16 %.pr)
  %cmp7 = icmp eq i16 %.pr, 58
  br i1 %cmp7, label %if.then9, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %ch to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 47, ptr %ch, align 2
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.if.end10_crit_edge, %if.end.thread
  %sub108 = phi i32 [ %sub105, %if.end.thread ], [ %sub, %if.then9 ], [ %sub, %if.end.if.end10_crit_edge ]
  %add.ptr107 = phi ptr [ %add.ptr104, %if.end.thread ], [ %add.ptr, %if.then9 ], [ %add.ptr, %if.end.if.end10_crit_edge ]
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end10
  %16 = ptrtoint ptr %uni2char to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %uni2char, align 4
  %18 = ptrtoint ptr %ch to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %ch, align 2
  %call13 = call i32 %17(i16 noundef zeroext %19, ptr noundef %dst.0111, i32 noundef %dstlen.0114) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.then12.if.end21_crit_edge

if.then12.if.end21_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21

if.then16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -36, i32 %call13)
  %cmp17 = icmp eq i32 %call13, -36
  br i1 %cmp17, label %if.then16.cleanup_crit_edge, label %if.end20

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end20:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #5
  %20 = ptrtoint ptr %dst.0111 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 63, ptr %dst.0111, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then12.if.end21_crit_edge
  %size.1 = phi i32 [ 1, %if.end20 ], [ %call13, %if.then12.if.end21_crit_edge ]
  %add.ptr22 = getelementptr i8, ptr %dst.0111, i32 %size.1
  %sub23 = sub i32 %dstlen.0114, %size.1
  br label %if.end29

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %ch to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ch, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %22)
  %cmp25 = icmp ugt i16 %22, 255
  %conv24 = trunc i16 %22 to i8
  %spec.select = select i1 %cmp25, i8 63, i8 %conv24
  %incdec.ptr = getelementptr i8, ptr %dst.0111, i32 1
  %23 = ptrtoint ptr %dst.0111 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %spec.select, ptr %dst.0111, align 1
  %dec = add i32 %dstlen.0114, -1
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.end21
  %dst.1 = phi ptr [ %add.ptr22, %if.end21 ], [ %incdec.ptr, %if.else ]
  %dstlen.1 = phi i32 [ %sub23, %if.end21 ], [ %dec, %if.else ]
  %cmp = icmp sgt i32 %sub108, 0
  br i1 %cmp, label %if.end29.while.body_crit_edge, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end29.while.body_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

cleanup:                                          ; preds = %if.end29.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %dst.0.lcssa = phi ptr [ %name4, %if.then.cleanup_crit_edge ], [ %dst.1, %if.end29.cleanup_crit_edge ], [ %dst.0111, %if.then16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ch) #3
  br label %out54

if.else30:                                        ; preds = %entry
  %24 = tail call i32 @llvm.smin.i32(i32 %9, i32 31)
  %dec37116 = add i32 %24, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec37116)
  %cmp38117 = icmp sgt i32 %dec37116, -1
  br i1 %cmp38117, label %if.else30.while.body40_crit_edge, label %if.else30.out54_crit_edge

if.else30.out54_crit_edge:                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #5
  br label %out54

if.else30.while.body40_crit_edge:                 ; preds = %if.else30
  br label %while.body40

while.body40:                                     ; preds = %while.body40.while.body40_crit_edge, %if.else30.while.body40_crit_edge
  %dec37120 = phi i32 [ %dec37, %while.body40.while.body40_crit_edge ], [ %dec37116, %if.else30.while.body40_crit_edge ]
  %dst.2119 = phi ptr [ %incdec.ptr51, %while.body40.while.body40_crit_edge ], [ %name4, %if.else30.while.body40_crit_edge ]
  %src.1118 = phi ptr [ %incdec.ptr41, %while.body40.while.body40_crit_edge ], [ %7, %if.else30.while.body40_crit_edge ]
  %incdec.ptr41 = getelementptr i8, ptr %src.1118, i32 1
  %25 = ptrtoint ptr %src.1118 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %src.1118, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %26)
  %cmp43 = icmp eq i8 %26, 58
  %spec.select102 = select i1 %cmp43, i8 47, i8 %26
  %incdec.ptr51 = getelementptr i8, ptr %dst.2119, i32 1
  %27 = ptrtoint ptr %dst.2119 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %spec.select102, ptr %dst.2119, align 1
  %dec37 = add nsw i32 %dec37120, -1
  %cmp38 = icmp sgt i32 %dec37120, 0
  br i1 %cmp38, label %while.body40.while.body40_crit_edge, label %while.body40.out54_crit_edge

while.body40.out54_crit_edge:                     ; preds = %while.body40
  call void @__sanitizer_cov_trace_pc() #5
  br label %out54

while.body40.while.body40_crit_edge:              ; preds = %while.body40
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body40

out54:                                            ; preds = %while.body40.out54_crit_edge, %if.else30.out54_crit_edge, %cleanup
  %dst.3 = phi ptr [ %dst.0.lcssa, %cleanup ], [ %name4, %if.else30.out54_crit_edge ], [ %incdec.ptr51, %while.body40.out54_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %dst.3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %name4 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv57 = trunc i32 %sub.ptr.sub to i8
  %28 = ptrtoint ptr %out to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv57, ptr %out, align 1
  %conv60 = and i32 %sub.ptr.sub, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %conv60)
  %cmp64123 = icmp ult i32 %conv60, 31
  br i1 %cmp64123, label %while.body66.preheader, label %out54.while.end68_crit_edge

out54.while.end68_crit_edge:                      ; preds = %out54
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end68

while.body66.preheader:                           ; preds = %out54
  call void @__sanitizer_cov_trace_pc() #5
  %29 = sub nsw i32 29, %conv60
  %smin = call i32 @llvm.smin.i32(i32 %29, i32 -1)
  %30 = add nsw i32 %smin, %conv60
  %31 = sub nsw i32 30, %30
  %32 = call ptr @memset(ptr %dst.3, i32 0, i32 %31)
  br label %while.end68

while.end68:                                      ; preds = %while.body66.preheader, %out54.while.end68_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
