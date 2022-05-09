; ModuleID = '/llk/IR_all_yes/fs/ntfs3/record.c_pt.bc'
source_filename = "../fs/ntfs3/record.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mft_inode = type { %struct.rb_node, ptr, ptr, %struct.ntfs_buffers, i32, i8 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ntfs_buffers = type { [8 x ptr], i32, i32, i32 }
%struct.ntfs_sb_info = type { ptr, i32, i64, i32, i32, i64, i32, i32, i32, i32, i8, i8, i64, i64, i32, i32, i16, i16, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.anon.77, %struct.anon.81, %struct.anon.82, %struct.anon.83, %struct.anon.84, %struct.anon.85, %struct.anon.86, ptr, %struct.ratelimit_state }
%struct.anon.77 = type { i64, i64, ptr, %struct.wnd_bitmap, i32, i32, i32, i32, i8, i8 }
%struct.wnd_bitmap = type { ptr, %struct.rw_semaphore, %struct.runs_tree, i32, i32, ptr, i32, i32, %struct.rb_root, %struct.rb_root, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.runs_tree = type { ptr, i32, i32 }
%struct.rb_root = type { ptr }
%struct.anon.81 = type { %struct.wnd_bitmap, i32 }
%struct.anon.82 = type { i64, i64, i64, ptr, i16, i8, i8, [65 x i8], i8 }
%struct.anon.83 = type { %struct.ntfs_index, %struct.ntfs_index, ptr, i32, i64, i32 }
%struct.ntfs_index = type { %struct.runs_tree, %struct.runs_tree, %struct.rw_semaphore, ptr, i8, i8, i8, i8 }
%struct.anon.84 = type { %struct.ntfs_index, ptr, i64 }
%struct.anon.85 = type { %struct.ntfs_index, ptr }
%struct.anon.86 = type { %struct.mutex, ptr, %struct.mutex, ptr, %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ntfs_inode = type { %struct.mft_inode, i64, %struct.timespec64, %struct.mutex, i32, i32, %struct.rb_root, i8, %union.anon.78, %struct.anon.80, i32, %struct.inode }
%struct.timespec64 = type { i64, i32 }
%union.anon.78 = type { %struct.ntfs_index }
%struct.anon.80 = type { %struct.runs_tree, ptr, i32, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.69 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.71 = type { ptr }
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
%struct.MFT_REC = type { %struct.NTFS_RECORD_HEADER, i16, i16, i16, i16, i32, i32, %struct.MFT_REF, i16, i16, i32, [0 x i16] }
%struct.NTFS_RECORD_HEADER = type { i32, i16, i16, i64 }
%struct.MFT_REF = type { i32, i16, i16 }
%struct.ATTRIB = type { i32, i32, i8, i8, i16, i16, i16, %union.anon.87 }
%union.anon.87 = type { %struct.ATTR_NONRESIDENT }
%struct.ATTR_NONRESIDENT = type { i64, i64, i16, i8, [5 x i8], i64, i64, i64, i64 }
%struct.ATTR_RESIDENT = type { i32, i16, i8, i8 }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294966741, i64 4294967294]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966741]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mi_get(ptr noundef %sbi, i32 noundef %rno, ptr nocapture noundef writeonly %mi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3392, i32 noundef 72) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %sbi1.i = getelementptr inbounds %struct.mft_inode, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %sbi1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %sbi, ptr %sbi1.i, align 4
  %rno2.i = getelementptr inbounds %struct.mft_inode, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %rno2.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %rno, ptr %rno2.i, align 8
  %record_size.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 8
  %3 = ptrtoint ptr %record_size.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %record_size.i, align 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3136) #15
  %mrec.i = getelementptr inbounds %struct.mft_inode, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %mrec.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9.i.i, ptr %mrec.i, align 8
  %tobool.not.i.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @mi_read(ptr noundef nonnull %call7.i.i, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end4
  %nb.i.i = getelementptr inbounds %struct.mft_inode, ptr %call7.i.i, i32 0, i32 3
  %nbufs1.i.i.i = getelementptr inbounds %struct.mft_inode, ptr %call7.i.i, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %nbufs1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nbufs1.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i.i19 = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i.i19, label %if.then7.mi_put.exit_crit_edge, label %if.then7.for.body.i.i.i_crit_edge

if.then7.for.body.i.i.i_crit_edge:                ; preds = %if.then7
  br label %for.body.i.i.i

if.then7.mi_put.exit_crit_edge:                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %mi_put.exit

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.then7.for.body.i.i.i_crit_edge
  %i.010.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then7.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr [8 x ptr], ptr %nb.i.i, i32 0, i32 %i.010.i.i.i
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !9
  %b_count.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 11
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %b_count.i.i.i.i, i32 1, i32 3, i32 1) #11
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i.i.i, ptr %b_count.i.i.i.i, i32 1, ptr elementtype(i32) %b_count.i.i.i.i) #11, !srcloc !10
  %inc.i.i.i = add nuw i32 %i.010.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %7
  br i1 %exitcond.not.i.i.i, label %for.end.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %nbufs1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %nbufs1.i.i.i, align 8
  br label %mi_put.exit

mi_put.exit:                                      ; preds = %for.end.i.i.i, %if.then7.mi_put.exit_crit_edge
  %12 = ptrtoint ptr %mrec.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mrec.i, align 8
  tail call void @kfree(ptr noundef %13) #11
  %14 = ptrtoint ptr %mrec.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %mrec.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %mi to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %mi, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %mi_put.exit, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then3 ], [ %call5, %mi_put.exit ], [ 0, %if.end8 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mi_init(ptr nocapture noundef writeonly %mi, ptr noundef %sbi, i32 noundef %rno) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sbi1 = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 1
  %0 = ptrtoint ptr %sbi1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %sbi, ptr %sbi1, align 4
  %rno2 = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 4
  %1 = ptrtoint ptr %rno2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %rno, ptr %rno2, align 4
  %record_size = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 8
  %2 = ptrtoint ptr %record_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %record_size, align 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3136) #15
  %mrec = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 2
  %4 = ptrtoint ptr %mrec to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9.i, ptr %mrec, align 4
  %tobool.not = icmp eq ptr %call9.i, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mi_read(ptr noundef %mi, i1 noundef zeroext %is_mft) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mrec = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 2
  %0 = ptrtoint ptr %mrec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrec, align 4
  %sbi1 = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 1
  %2 = ptrtoint ptr %sbi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sbi1, align 4
  %record_size = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %record_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %record_size, align 8
  %rno = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 4
  %6 = ptrtoint ptr %rno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rno, align 4
  %conv = zext i32 %7 to i64
  %record_bits = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %record_bits to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %record_bits, align 1
  %sh_prom = zext i8 %9 to i64
  %shl = shl i64 %conv, %sh_prom
  %ni = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 27, i32 2
  %10 = ptrtoint ptr %ni to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ni, align 8
  %tobool.not = icmp eq ptr %11, null
  %run3 = getelementptr inbounds %struct.ntfs_inode, ptr %11, i32 0, i32 8, i32 0, i32 2, i32 6, i32 1
  %spec.select = select i1 %tobool.not, ptr null, ptr %run3
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  %s_root.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_root.i, align 64
  %tobool.i.not = icmp eq ptr %15, null
  %brmerge = or i1 %tobool.i.not, %is_mft
  br i1 %brmerge, label %if.end6.thread, label %if.end6

if.end6.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %nb106 = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 3
  %call7107 = tail call i32 @ntfs_read_bh(ptr noundef %3, ptr noundef %spec.select, i64 noundef %shl, ptr noundef %1, i32 noundef %5, ptr noundef %nb106) #11
  br label %if.end10

if.end6:                                          ; preds = %entry
  %16 = getelementptr inbounds %struct.ntfs_inode, ptr %11, i32 0, i32 8
  tail call void @down_read(ptr noundef %16) #11
  %nb = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 3
  %call7 = tail call i32 @ntfs_read_bh(ptr noundef %3, ptr noundef %spec.select, i64 noundef %shl, ptr noundef %1, i32 noundef %5, ptr noundef %nb) #11
  %tobool8.not = icmp eq ptr %16, null
  br i1 %tobool8.not, label %if.end6.if.end10_crit_edge, label %if.then9

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @up_read(ptr noundef nonnull %16) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6.if.end10_crit_edge, %if.end6.thread
  %tobool8.not115 = phi i1 [ true, %if.end6.thread ], [ false, %if.then9 ], [ true, %if.end6.if.end10_crit_edge ]
  %call7114 = phi i32 [ %call7107, %if.end6.thread ], [ %call7, %if.then9 ], [ %call7, %if.end6.if.end10_crit_edge ]
  %nb113 = phi ptr [ %nb106, %if.end6.thread ], [ %nb, %if.then9 ], [ %nb, %if.end6.if.end10_crit_edge ]
  %rw_lock.0109 = phi ptr [ null, %if.end6.thread ], [ %16, %if.then9 ], [ null, %if.end6.if.end10_crit_edge ]
  %17 = zext i32 %call7114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call7114, label %if.end10.out_crit_edge [
    i32 0, label %if.end10.ok_crit_edge
    i32 -555, label %if.end10.ok.sink.split_crit_edge
    i32 -2, label %if.end20
  ]

if.end10.ok.sink.split_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %ok.sink.split

if.end10.ok_crit_edge:                            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %ok

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end20:                                         ; preds = %if.end10
  br i1 %tobool8.not115, label %if.end20.if.end23_crit_edge, label %if.then22

if.end20.if.end23_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %ni_lock.i = getelementptr inbounds %struct.ntfs_inode, ptr %11, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %ni_lock.i, i32 noundef 4) #11
  tail call void @down_write(ptr noundef nonnull %rw_lock.0109) #11
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end20.if.end23_crit_edge
  %cluster_bits = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 10
  %18 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cluster_bits, align 8
  %sh_prom26 = zext i8 %19 to i64
  %shr = lshr i64 %shl, %sh_prom26
  %conv27 = trunc i64 %shr to i32
  %call28 = tail call i32 @attr_load_runs_vcn(ptr noundef %11, i32 noundef -2147483648, ptr noundef null, i8 noundef zeroext 0, ptr noundef %run3, i32 noundef %conv27) #11
  br i1 %tobool8.not115, label %if.end31, label %if.end31.thread

if.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool32.not = icmp eq i32 %call28, 0
  br i1 %tobool32.not, label %if.end37, label %if.end31.out_crit_edge

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end31.thread:                                  ; preds = %if.end23
  tail call void @up_write(ptr noundef nonnull %rw_lock.0109) #11
  %ni_lock.i104 = getelementptr inbounds %struct.ntfs_inode, ptr %11, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %ni_lock.i104) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool32.not117 = icmp eq i32 %call28, 0
  br i1 %tobool32.not117, label %if.then42, label %if.end31.thread.out_crit_edge

if.end31.thread.out_crit_edge:                    ; preds = %if.end31.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %call40 = tail call i32 @ntfs_read_bh(ptr noundef %3, ptr noundef %spec.select, i64 noundef %shl, ptr noundef %1, i32 noundef %5, ptr noundef %nb113) #11
  br label %if.end43

if.then42:                                        ; preds = %if.end31.thread
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @down_read(ptr noundef nonnull %rw_lock.0109) #11
  %call40119 = tail call i32 @ntfs_read_bh(ptr noundef %3, ptr noundef %spec.select, i64 noundef %shl, ptr noundef %1, i32 noundef %5, ptr noundef %nb113) #11
  tail call void @up_read(ptr noundef nonnull %rw_lock.0109) #11
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end37
  %call40121 = phi i32 [ %call40119, %if.then42 ], [ %call40, %if.end37 ]
  %20 = zext i32 %call40121 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %call40121, label %if.end43.out_crit_edge [
    i32 -555, label %if.end43.ok.sink.split_crit_edge
    i32 0, label %if.end43.ok_crit_edge
  ]

if.end43.ok_crit_edge:                            ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %ok

if.end43.ok.sink.split_crit_edge:                 ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %ok.sink.split

if.end43.out_crit_edge:                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

ok.sink.split:                                    ; preds = %if.end43.ok.sink.split_crit_edge, %if.end10.ok.sink.split_crit_edge
  %dirty47 = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 5
  %21 = ptrtoint ptr %dirty47 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %dirty47, align 4
  br label %ok

ok:                                               ; preds = %ok.sink.split, %if.end43.ok_crit_edge, %if.end10.ok_crit_edge
  %total = getelementptr inbounds %struct.MFT_REC, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %total, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %5)
  %cmp52.not = icmp eq i32 %24, %5
  br i1 %cmp52.not, label %ok.cleanup_crit_edge, label %ok.out_crit_edge

ok.out_crit_edge:                                 ; preds = %ok
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

ok.cleanup_crit_edge:                             ; preds = %ok
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

out:                                              ; preds = %ok.out_crit_edge, %if.end43.out_crit_edge, %if.end31.thread.out_crit_edge, %if.end31.out_crit_edge, %if.end10.out_crit_edge
  %err.0 = phi i32 [ %call28, %if.end31.out_crit_edge ], [ %call7114, %if.end10.out_crit_edge ], [ %call40121, %if.end43.out_crit_edge ], [ -22, %ok.out_crit_edge ], [ %call28, %if.end31.thread.out_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %out, %ok.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ 0, %ok.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mi_put(ptr noundef %mi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nb.i = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 3
  %nbufs1.i.i = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %nbufs1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nbufs1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i.i, label %entry.mi_clear.exit_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.mi_clear.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mi_clear.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %i.010.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [8 x ptr], ptr %nb.i, i32 0, i32 %i.010.i.i
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !9
  %b_count.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 11
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %b_count.i.i.i, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i.i, ptr %b_count.i.i.i, i32 1, ptr elementtype(i32) %b_count.i.i.i) #11, !srcloc !10
  %inc.i.i = add nuw i32 %i.010.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %1
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %nbufs1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %nbufs1.i.i, align 4
  br label %mi_clear.exit

mi_clear.exit:                                    ; preds = %for.end.i.i, %entry.mi_clear.exit_crit_edge
  %mrec.i = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 2
  %6 = ptrtoint ptr %mrec.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mrec.i, align 4
  tail call void @kfree(ptr noundef %7) #11
  %8 = ptrtoint ptr %mrec.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %mrec.i, align 4
  tail call void @kfree(ptr noundef %mi) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_read_bh(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attr_load_runs_vcn(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mi_enum_attr(ptr nocapture noundef readonly %mi, ptr noundef %attr) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mrec = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 2
  %0 = ptrtoint ptr %mrec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrec, align 4
  %used1 = getelementptr inbounds %struct.MFT_REC, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %used1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %used1, align 8
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %tobool.not = icmp eq ptr %attr, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %total2 = getelementptr inbounds %struct.MFT_REC, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %total2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %total2, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %attr_off = getelementptr inbounds %struct.MFT_REC, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %attr_off to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %attr_off, align 4
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %7)
  %cmp = icmp ugt i32 %4, %7
  br i1 %cmp, label %if.then.cleanup97_crit_edge, label %if.end

if.then.cleanup97_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup97

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp5.not = icmp ugt i32 %4, %conv
  call void @__sanitizer_cov_trace_const_cmp2(i16 41, i16 %10)
  %cmp7 = icmp ugt i16 %10, 41
  %or.cond.not = and i1 %cmp7, %cmp5.not
  %and = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp10 = icmp eq i32 %and, 0
  %or.cond151 = and i1 %or.cond.not, %cmp10
  br i1 %or.cond151, label %cleanup, label %if.end.cleanup97_crit_edge

if.end.cleanup97_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup97

cleanup:                                          ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.MFT_REC, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %flags.i, align 2
  %13 = and i16 %12, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.i.not = icmp eq i16 %13, 0
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  br i1 %tobool.i.not, label %cleanup.cleanup97_crit_edge, label %cleanup.if.end25_crit_edge

cleanup.if.end25_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

cleanup.cleanup97_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup97

if.else:                                          ; preds = %entry
  %14 = ptrtoint ptr %attr to i32
  %15 = ptrtoint ptr %1 to i32
  %sub = sub i32 %14, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %4)
  %cmp16.not = icmp ult i32 %sub, %4
  br i1 %cmp16.not, label %if.end19, label %if.else.cleanup97_crit_edge

if.else.cleanup97_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup97

if.end19:                                         ; preds = %if.else
  %size = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 1
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %18)
  %cmp20 = icmp ult i32 %18, 24
  br i1 %cmp20, label %if.end19.cleanup97_crit_edge, label %if.end23

if.end19.cleanup97_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup97

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr24 = getelementptr i8, ptr %attr, i32 %18
  %add = add i32 %18, %sub
  br label %if.end25

if.end25:                                         ; preds = %if.end23, %cleanup.if.end25_crit_edge
  %attr.addr.1 = phi ptr [ %add.ptr24, %if.end23 ], [ %add.ptr, %cleanup.if.end25_crit_edge ]
  %off.0 = phi i32 [ %add, %if.end23 ], [ %conv, %cleanup.if.end25_crit_edge ]
  %size26 = getelementptr inbounds %struct.ATTRIB, ptr %attr.addr.1, i32 0, i32 1
  %19 = ptrtoint ptr %size26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size26, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %add27 = add i32 %off.0, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add27, i32 %4)
  %cmp28 = icmp ugt i32 %add27, %4
  br i1 %cmp28, label %if.end25.cleanup97_crit_edge, label %if.end31

if.end25.cleanup97_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup97

if.end31:                                         ; preds = %if.end25
  %22 = ptrtoint ptr %attr.addr.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %attr.addr.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp32 = icmp eq i32 %23, -1
  br i1 %cmp32, label %if.end31.cleanup97_crit_edge, label %if.end35

if.end31.cleanup97_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup97

if.end35:                                         ; preds = %if.end31
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %and37 = and i32 %24, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp ne i32 %and37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %24)
  %cmp40 = icmp ugt i32 %24, 256
  %or.cond152 = or i1 %cmp40, %tobool38.not
  %add44 = add i32 %21, %off.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add44, i32 %4)
  %cmp45 = icmp ugt i32 %add44, %4
  %or.cond154 = select i1 %or.cond152, i1 true, i1 %cmp45
  br i1 %or.cond154, label %if.end35.cleanup97_crit_edge, label %if.end48

if.end35.cleanup97_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup97

if.end48:                                         ; preds = %if.end35
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %attr.addr.1, i32 0, i32 2
  %25 = ptrtoint ptr %non_res to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %non_res, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool49.not = icmp eq i8 %26, 0
  br i1 %tobool49.not, label %if.then50, label %if.end66

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %21)
  %cmp51 = icmp ult i32 %21, 24
  br i1 %cmp51, label %if.then50.cleanup97_crit_edge, label %if.end54

if.then50.cleanup97_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup97

if.end54:                                         ; preds = %if.then50
  %27 = getelementptr inbounds %struct.ATTRIB, ptr %attr.addr.1, i32 0, i32 7
  %data_off = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %data_off to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %data_off, align 4
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %conv55 = zext i16 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv55)
  %cmp56 = icmp ult i32 %21, %conv55
  br i1 %cmp56, label %if.end54.cleanup97_crit_edge, label %if.end59

if.end54.cleanup97_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup97

if.end59:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %27, align 8
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %add61 = add i32 %33, %conv55
  call void @__sanitizer_cov_trace_cmp4(i32 %add61, i32 %21)
  %cmp62 = icmp ugt i32 %add61, %21
  %.attr.addr.1 = select i1 %cmp62, ptr null, ptr %attr.addr.1
  br label %cleanup97

if.end66:                                         ; preds = %if.end48
  %name_len = getelementptr inbounds %struct.ATTRIB, ptr %attr.addr.1, i32 0, i32 3
  %34 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %name_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool68.not = icmp eq i8 %35, 0
  br i1 %tobool68.not, label %if.end66.if.end77_crit_edge, label %land.lhs.true

if.end66.if.end77_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

land.lhs.true:                                    ; preds = %if.end66
  %conv67 = zext i8 %35 to i32
  %name_off = getelementptr inbounds %struct.ATTRIB, ptr %attr.addr.1, i32 0, i32 4
  %36 = ptrtoint ptr %name_off to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %name_off, align 2
  %38 = tail call i16 @llvm.bswap.i16(i16 %37)
  %conv69 = zext i16 %38 to i32
  %mul = shl nuw nsw i32 %conv67, 1
  %add72 = add nuw nsw i32 %mul, %conv69
  %run_off = getelementptr inbounds %struct.ATTRIB, ptr %attr.addr.1, i32 0, i32 7, i32 0, i32 2
  %39 = ptrtoint ptr %run_off to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %run_off, align 8
  %41 = tail call i16 @llvm.bswap.i16(i16 %40)
  %conv73 = zext i16 %41 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add72, i32 %conv73)
  %cmp74 = icmp ugt i32 %add72, %conv73
  br i1 %cmp74, label %land.lhs.true.cleanup97_crit_edge, label %land.lhs.true.if.end77_crit_edge

land.lhs.true.if.end77_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

land.lhs.true.cleanup97_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup97

if.end77:                                         ; preds = %land.lhs.true.if.end77_crit_edge, %if.end66.if.end77_crit_edge
  %42 = getelementptr inbounds %struct.ATTRIB, ptr %attr.addr.1, i32 0, i32 7
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %42, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %44)
  %tobool78.not = icmp eq i64 %44, 0
  br i1 %tobool78.not, label %lor.lhs.false79, label %if.end77.if.then81_crit_edge

if.end77.if.then81_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then81

lor.lhs.false79:                                  ; preds = %if.end77
  %flags.i155 = getelementptr inbounds %struct.ATTRIB, ptr %attr.addr.1, i32 0, i32 5
  %45 = ptrtoint ptr %flags.i155 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %flags.i155, align 4
  %47 = and i16 %46, 384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool.i156.not = icmp eq i16 %47, 0
  br i1 %tobool.i156.not, label %lor.lhs.false79.if.then81_crit_edge, label %if.else90

lor.lhs.false79.if.then81_crit_edge:              ; preds = %lor.lhs.false79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then81

if.then81:                                        ; preds = %lor.lhs.false79.if.then81_crit_edge, %if.end77.if.then81_crit_edge
  %add82 = add i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add82)
  %cmp83 = icmp ult i32 %add82, 64
  br i1 %cmp83, label %if.then81.cleanup97_crit_edge, label %if.end86

if.then81.cleanup97_crit_edge:                    ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup97

if.end86:                                         ; preds = %if.then81
  %c_unit = getelementptr inbounds %struct.ATTRIB, ptr %attr.addr.1, i32 0, i32 7, i32 0, i32 3
  %48 = ptrtoint ptr %c_unit to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %c_unit, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool87.not = icmp eq i8 %49, 0
  br i1 %tobool87.not, label %if.end86.if.end96_crit_edge, label %if.end86.cleanup97_crit_edge

if.end86.cleanup97_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup97

if.end86.if.end96_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end96

if.else90:                                        ; preds = %lor.lhs.false79
  %add91 = add i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %add91)
  %cmp92 = icmp ult i32 %add91, 72
  br i1 %cmp92, label %if.else90.cleanup97_crit_edge, label %if.else90.if.end96_crit_edge

if.else90.if.end96_crit_edge:                     ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end96

if.else90.cleanup97_crit_edge:                    ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup97

if.end96:                                         ; preds = %if.else90.if.end96_crit_edge, %if.end86.if.end96_crit_edge
  br label %cleanup97

cleanup97:                                        ; preds = %if.end96, %if.else90.cleanup97_crit_edge, %if.end86.cleanup97_crit_edge, %if.then81.cleanup97_crit_edge, %land.lhs.true.cleanup97_crit_edge, %if.end59, %if.end54.cleanup97_crit_edge, %if.then50.cleanup97_crit_edge, %if.end35.cleanup97_crit_edge, %if.end31.cleanup97_crit_edge, %if.end25.cleanup97_crit_edge, %if.end19.cleanup97_crit_edge, %if.else.cleanup97_crit_edge, %cleanup.cleanup97_crit_edge, %if.end.cleanup97_crit_edge, %if.then.cleanup97_crit_edge
  %retval.1 = phi ptr [ %attr.addr.1, %if.end96 ], [ null, %cleanup.cleanup97_crit_edge ], [ null, %if.else.cleanup97_crit_edge ], [ null, %if.end19.cleanup97_crit_edge ], [ null, %if.end25.cleanup97_crit_edge ], [ null, %if.end31.cleanup97_crit_edge ], [ null, %if.end35.cleanup97_crit_edge ], [ null, %if.then50.cleanup97_crit_edge ], [ null, %if.end54.cleanup97_crit_edge ], [ %.attr.addr.1, %if.end59 ], [ null, %land.lhs.true.cleanup97_crit_edge ], [ null, %if.then81.cleanup97_crit_edge ], [ null, %if.end86.cleanup97_crit_edge ], [ null, %if.else90.cleanup97_crit_edge ], [ null, %if.then.cleanup97_crit_edge ], [ null, %if.end.cleanup97_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mi_find_attr(ptr nocapture noundef readonly %mi, ptr noundef readonly %attr, i32 noundef %type, ptr nocapture noundef readonly %name, i32 noundef %name_len, ptr noundef readonly %id) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.bswap.i32(i32 %type)
  %call40 = tail call ptr @mi_enum_attr(ptr noundef %mi, ptr noundef %attr)
  %tobool.not41 = icmp eq ptr %call40, null
  br i1 %tobool.not41, label %entry.cleanup_crit_edge, label %if.end.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %name_len)
  %tobool12.not = icmp eq i32 %name_len, 0
  %mul = shl i32 %name_len, 1
  %tobool18.not = icmp eq ptr %id, null
  br label %if.end

if.end:                                           ; preds = %next_attr.backedge.if.end_crit_edge, %if.end.lr.ph
  %call42 = phi ptr [ %call40, %if.end.lr.ph ], [ %call, %next_attr.backedge.if.end_crit_edge ]
  %1 = ptrtoint ptr %call42 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call42, align 8
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %0)
  %cmp = icmp ugt i32 %3, %0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %0)
  %cmp4 = icmp ult i32 %3, %0
  br i1 %cmp4, label %if.end3.next_attr.backedge_crit_edge, label %if.end6

if.end3.next_attr.backedge_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %next_attr.backedge

next_attr.backedge:                               ; preds = %land.lhs.true19.next_attr.backedge_crit_edge, %land.lhs.true.next_attr.backedge_crit_edge, %if.end6.next_attr.backedge_crit_edge, %if.end3.next_attr.backedge_crit_edge
  %call = tail call ptr @mi_enum_attr(ptr noundef %mi, ptr noundef nonnull %call42)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %next_attr.backedge.cleanup_crit_edge, label %next_attr.backedge.if.end_crit_edge

next_attr.backedge.if.end_crit_edge:              ; preds = %next_attr.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

next_attr.backedge.cleanup_crit_edge:             ; preds = %next_attr.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %name_len7 = getelementptr inbounds %struct.ATTRIB, ptr %call42, i32 0, i32 3
  %4 = ptrtoint ptr %name_len7 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %name_len7, align 1
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %name_len)
  %cmp8.not = icmp eq i32 %conv, %name_len
  br i1 %cmp8.not, label %if.end11, label %if.end6.next_attr.backedge_crit_edge

if.end6.next_attr.backedge_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %next_attr.backedge

if.end11:                                         ; preds = %if.end6
  br i1 %tobool12.not, label %if.end11.if.end17_crit_edge, label %land.lhs.true

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end11
  %name_off.i = getelementptr inbounds %struct.ATTRIB, ptr %call42, i32 0, i32 4
  %6 = ptrtoint ptr %name_off.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %name_off.i, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #11
  %conv.i = zext i16 %8 to i32
  %add.ptr.i = getelementptr i8, ptr %call42, i32 %conv.i
  %bcmp = tail call i32 @bcmp(ptr %add.ptr.i, ptr %name, i32 %mul) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool15.not = icmp eq i32 %bcmp, 0
  br i1 %tobool15.not, label %land.lhs.true.if.end17_crit_edge, label %land.lhs.true.next_attr.backedge_crit_edge

land.lhs.true.next_attr.backedge_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %next_attr.backedge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %if.end11.if.end17_crit_edge
  br i1 %tobool18.not, label %if.end17.cleanup_crit_edge, label %land.lhs.true19

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true19:                                  ; preds = %if.end17
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %id, align 2
  %id21 = getelementptr inbounds %struct.ATTRIB, ptr %call42, i32 0, i32 6
  %11 = ptrtoint ptr %id21 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %id21, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %12)
  %cmp23.not = icmp eq i16 %10, %12
  br i1 %cmp23.not, label %land.lhs.true19.cleanup_crit_edge, label %land.lhs.true19.next_attr.backedge_crit_edge

land.lhs.true19.next_attr.backedge_crit_edge:     ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #13
  br label %next_attr.backedge

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true19.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %next_attr.backedge.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call42, %if.end17.cleanup_crit_edge ], [ %call42, %land.lhs.true19.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %next_attr.backedge.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mi_write(ptr noundef %mi, i32 noundef %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dirty = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 5
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dirty, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %sbi1 = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 1
  %2 = ptrtoint ptr %sbi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sbi1, align 4
  %mrec = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 2
  %4 = ptrtoint ptr %mrec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mrec, align 4
  %nb = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 3
  %call = tail call i32 @ntfs_write_bh(ptr noundef %3, ptr noundef %5, ptr noundef %nb, i32 noundef %wait) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rno = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 4
  %6 = ptrtoint ptr %rno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rno, align 4
  %recs_mirr = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 27, i32 7
  %8 = ptrtoint ptr %recs_mirr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %recs_mirr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp = icmp ult i32 %7, %9
  br i1 %cmp, label %if.then5, label %if.end4.if.end6_crit_edge

if.end4.if.end6_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 14
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 8
  %or = or i32 %11, 4096
  store i32 %or, ptr %flags, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end4.if.end6_crit_edge
  %12 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %dirty, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_write_bh(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mi_format_new(ptr noundef %mi, ptr noundef %sbi, i32 noundef %rno, i16 noundef zeroext %flags, i1 noundef zeroext %is_mft) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %rno to i64
  %record_bits = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 11
  %0 = ptrtoint ptr %record_bits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %record_bits, align 1
  %sh_prom = zext i8 %1 to i64
  %shl = shl i64 %conv, %sh_prom
  %sbi1.i = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 1
  %2 = ptrtoint ptr %sbi1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sbi, ptr %sbi1.i, align 4
  %rno2.i = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 4
  %3 = ptrtoint ptr %rno2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %rno, ptr %rno2.i, align 4
  %record_size.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 8
  %4 = ptrtoint ptr %record_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %record_size.i, align 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3136) #15
  %mrec.i = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 2
  %6 = ptrtoint ptr %mrec.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i.i, ptr %mrec.i, align 4
  %tobool.not.i.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rno)
  %cmp = icmp eq i32 %rno, 0
  br i1 %cmp, label %if.end.if.end31_crit_edge, label %if.else

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %rno)
  %cmp4 = icmp ult i32 %rno, 16
  br i1 %cmp4, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %conv7 = trunc i32 %rno to i16
  br label %if.end31

if.else8:                                         ; preds = %if.else
  %used = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 6
  %7 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %rno)
  %cmp9.not = icmp ugt i32 %8, %rno
  br i1 %cmp9.not, label %if.else12, label %if.else8.if.end31_crit_edge

if.else8.if.end31_crit_edge:                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.else12:                                        ; preds = %if.else8
  %call14 = tail call i32 @mi_read(ptr noundef %mi, i1 noundef zeroext %is_mft)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.else17, label %if.else12.if.end31_crit_edge

if.else12.if.end31_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.else17:                                        ; preds = %if.else12
  %9 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1179208773, i32 %10)
  %cmp18 = icmp eq i32 %10, 1179208773
  br i1 %cmp18, label %if.then20, label %if.else17.if.end31_crit_edge

if.else17.if.end31_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then20:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #13
  %seq21 = getelementptr inbounds %struct.MFT_REC, ptr %call9.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %seq21 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %seq21, align 16
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %add = add i16 %13, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add)
  %tobool24.not = icmp eq i16 %add, 0
  %spec.store.select = select i1 %tobool24.not, i16 1, i16 %add
  br label %if.end31

if.end31:                                         ; preds = %if.then20, %if.else17.if.end31_crit_edge, %if.else12.if.end31_crit_edge, %if.else8.if.end31_crit_edge, %if.then6, %if.end.if.end31_crit_edge
  %seq.0 = phi i16 [ 1, %if.end.if.end31_crit_edge ], [ %conv7, %if.then6 ], [ 1, %if.else8.if.end31_crit_edge ], [ 1, %if.else12.if.end31_crit_edge ], [ %spec.store.select, %if.then20 ], [ 1, %if.else17.if.end31_crit_edge ]
  %new_rec = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 25
  %14 = ptrtoint ptr %new_rec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %new_rec, align 8
  %16 = ptrtoint ptr %record_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %record_size.i, align 8
  %18 = call ptr @memcpy(ptr %call9.i.i, ptr %15, i32 %17)
  %19 = tail call i16 @llvm.bswap.i16(i16 %seq.0)
  %seq32 = getelementptr inbounds %struct.MFT_REC, ptr %call9.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %seq32 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %seq32, align 16
  %21 = or i16 %flags, 256
  %flags35 = getelementptr inbounds %struct.MFT_REC, ptr %call9.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %flags35 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %flags35, align 2
  %dirty = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 5
  %23 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %dirty, align 4
  %nb = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 3
  %nbufs = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 3, i32 2
  %24 = ptrtoint ptr %nbufs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nbufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool36.not = icmp eq i32 %25, 0
  br i1 %tobool36.not, label %if.then37, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then37:                                        ; preds = %if.end31
  %ni39 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 2
  %26 = ptrtoint ptr %ni39 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ni39, align 8
  %28 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sbi, align 8
  %s_root.i = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 13
  %30 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_root.i, align 64
  %tobool.i.not = icmp eq ptr %31, null
  %brmerge = or i1 %tobool.i.not, %is_mft
  br i1 %brmerge, label %if.end44, label %if.then49

if.end44:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  %run = getelementptr inbounds %struct.ntfs_inode, ptr %27, i32 0, i32 8, i32 0, i32 2, i32 6, i32 1
  %32 = ptrtoint ptr %record_size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %record_size.i, align 8
  %call47 = tail call i32 @ntfs_get_bh(ptr noundef %sbi, ptr noundef %run, i64 noundef %shl, i32 noundef %33, ptr noundef %nb) #11
  br label %cleanup

if.then49:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  %34 = getelementptr inbounds %struct.ntfs_inode, ptr %27, i32 0, i32 8
  tail call void @down_read(ptr noundef %34) #11
  %run92 = getelementptr inbounds %struct.ntfs_inode, ptr %27, i32 0, i32 8, i32 0, i32 2, i32 6, i32 1
  %35 = ptrtoint ptr %record_size.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %record_size.i, align 8
  %call4793 = tail call i32 @ntfs_get_bh(ptr noundef %sbi, ptr noundef %run92, i64 noundef %shl, i32 noundef %36, ptr noundef %nb) #11
  tail call void @up_read(ptr noundef %34) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %if.end44, %if.end31.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ], [ %call4793, %if.then49 ], [ %call47, %if.end44 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_get_bh(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mi_mark_free(ptr noundef %mi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rno1 = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 4
  %0 = ptrtoint ptr %rno1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rno1, align 4
  %sbi2 = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 1
  %2 = ptrtoint ptr %sbi2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sbi2, align 4
  %4 = add i32 %1, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %5 = icmp ult i32 %4, 5
  br i1 %5, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add = add nuw nsw i32 %1, 1
  %call = tail call i32 @ntfs_clear_mft_tail(ptr noundef %3, i32 noundef %1, i32 noundef %add) #11
  %dirty = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 5
  %6 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %dirty, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %mrec = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 2
  %7 = ptrtoint ptr %mrec to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mrec, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.end.i

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.end.i:                                         ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.MFT_REC, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags.i, align 2
  %11 = and i16 %10, -257
  store i16 %11, ptr %flags.i, align 2
  %dirty7 = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 5
  %12 = ptrtoint ptr %dirty7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %dirty7, align 4
  %13 = ptrtoint ptr %sbi2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sbi2, align 4
  %15 = ptrtoint ptr %mrec to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mrec, align 4
  %nb.i = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 3
  %call.i = tail call i32 @ntfs_write_bh(ptr noundef %14, ptr noundef %16, ptr noundef %nb.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.if.end9_crit_edge

if.end.i.if.end9_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.end4.i:                                        ; preds = %if.end.i
  %17 = ptrtoint ptr %rno1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rno1, align 4
  %recs_mirr.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %14, i32 0, i32 27, i32 7
  %19 = ptrtoint ptr %recs_mirr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %recs_mirr.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp.i = icmp ult i32 %18, %20
  br i1 %cmp.i, label %if.then5.i, label %if.end4.i.if.end6.i_crit_edge

if.end4.i.if.end6.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %flags.i23 = getelementptr inbounds %struct.ntfs_sb_info, ptr %14, i32 0, i32 14
  %21 = ptrtoint ptr %flags.i23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i23, align 8
  %or.i = or i32 %22, 4096
  store i32 %or.i, ptr %flags.i23, align 8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end4.i.if.end6.i_crit_edge
  %23 = ptrtoint ptr %dirty7 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %dirty7, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end6.i, %if.end.i.if.end9_crit_edge, %if.end.if.end9_crit_edge
  tail call void @ntfs_mark_rec_free(ptr noundef %3, i32 noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_clear_mft_tail(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_mark_rec_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mi_insert_attr(ptr nocapture noundef %mi, i32 noundef %type, ptr noundef %name, i8 noundef zeroext %name_len, i32 noundef %asize, i16 noundef zeroext %name_off) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mrec = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 2
  %0 = ptrtoint ptr %mrec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrec, align 4
  %sbi1 = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 1
  %2 = ptrtoint ptr %sbi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sbi1, align 4
  %used2 = getelementptr inbounds %struct.MFT_REC, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %used2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %used2, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %upcase3 = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 26
  %7 = ptrtoint ptr %upcase3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %upcase3, align 4
  %add = add i32 %6, %asize
  %record_size = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %record_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %record_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %10)
  %cmp = icmp ugt i32 %add, %10
  br i1 %cmp, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %11 = tail call i32 @llvm.bswap.i32(i32 %type) #11
  %conv3.i = zext i8 %name_len to i32
  br label %while.cond

while.cond:                                       ; preds = %if.end8.while.cond_crit_edge, %while.cond.preheader
  %attr.0 = phi ptr [ %call, %if.end8.while.cond_crit_edge ], [ null, %while.cond.preheader ]
  %call = tail call ptr @mi_enum_attr(ptr noundef %mi, ptr noundef %attr.0)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then16.critedge, label %while.body

while.body:                                       ; preds = %while.cond
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call, align 8
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #11
  %sub.i = sub i32 %14, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %while.body.compare_attr.exit_crit_edge

while.body.compare_attr.exit_crit_edge:           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %compare_attr.exit

if.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %name_off.i.i = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 4
  %15 = ptrtoint ptr %name_off.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %name_off.i.i, align 2
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #11
  %conv.i.i = zext i16 %17 to i32
  %add.ptr.i.i = getelementptr i8, ptr %call, i32 %conv.i.i
  %name_len2.i = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 3
  %18 = ptrtoint ptr %name_len2.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %name_len2.i, align 1
  %conv.i = zext i8 %19 to i32
  %call4.i = tail call i32 @ntfs_cmp_names(ptr noundef %add.ptr.i.i, i32 noundef %conv.i, ptr noundef %name, i32 noundef %conv3.i, ptr noundef %8, i1 noundef zeroext true) #11
  br label %compare_attr.exit

compare_attr.exit:                                ; preds = %if.end.i, %while.body.compare_attr.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.end.i ], [ %sub.i, %while.body.compare_attr.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp6 = icmp sgt i32 %retval.0.i, 0
  br i1 %cmp6, label %compare_attr.exit.if.else_crit_edge, label %if.end8

compare_attr.exit.if.else_crit_edge:              ; preds = %compare_attr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.end8:                                          ; preds = %compare_attr.exit
  %cmp9 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp9, label %if.end8.while.cond_crit_edge, label %if.end11

if.end8.while.cond_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

if.end11:                                         ; preds = %if.end8
  %non_res.i = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 2
  %20 = ptrtoint ptr %non_res.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %non_res.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i73 = icmp eq i8 %21, 0
  br i1 %tobool.not.i73, label %is_attr_indexed.exit, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

is_attr_indexed.exit:                             ; preds = %if.end11
  %22 = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7
  %flags.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %flags.i, align 2
  %25 = and i8 %24, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool1.i.not = icmp eq i8 %25, 0
  br i1 %tobool1.i.not, label %is_attr_indexed.exit.cleanup_crit_edge, label %is_attr_indexed.exit.if.else_crit_edge

is_attr_indexed.exit.if.else_crit_edge:           ; preds = %is_attr_indexed.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

is_attr_indexed.exit.cleanup_crit_edge:           ; preds = %is_attr_indexed.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then16.critedge:                               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add i32 %6, -8
  %add.ptr = getelementptr i8, ptr %1, i32 %sub
  br label %if.end19

if.else:                                          ; preds = %is_attr_indexed.exit.if.else_crit_edge, %compare_attr.exit.if.else_crit_edge
  %26 = ptrtoint ptr %call to i32
  %27 = ptrtoint ptr %1 to i32
  %sub17.neg = add i32 %6, %27
  %sub18 = sub i32 %sub17.neg, %26
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then16.critedge
  %tail.0 = phi i32 [ %sub18, %if.else ], [ 8, %if.then16.critedge ]
  %attr.1 = phi ptr [ %call, %if.else ], [ %add.ptr, %if.then16.critedge ]
  %28 = ptrtoint ptr %mrec to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mrec, align 4
  %next_attr_id.i = getelementptr inbounds %struct.MFT_REC, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %next_attr_id.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %next_attr_id.i, align 8
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 32767, i16 %32)
  %cmp.i = icmp ult i16 %32, 32767
  br i1 %cmp.i, label %if.then.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end19
  %call46.i = tail call ptr @mi_enum_attr(ptr noundef %mi, ptr noundef null) #11
  %tobool.not47.i = icmp eq ptr %call46.i, null
  br i1 %tobool.not47.i, label %for.cond.preheader.i.if.then5.i_crit_edge, label %for.cond.preheader.i.if.end10.i_crit_edge

for.cond.preheader.i.if.end10.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %if.end10.i

for.cond.preheader.i.if.then5.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5.i

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = add nuw nsw i16 %32, 1
  %33 = tail call i16 @llvm.bswap.i16(i16 %add.i) #11
  %34 = ptrtoint ptr %next_attr_id.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %next_attr_id.i, align 8
  br label %mi_new_attt_id.exit

if.then5.loopexit.i:                              ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %phi.bo.i = add i16 %max_id.1.i, 1
  br label %if.then5.i

if.then5.i:                                       ; preds = %if.then5.loopexit.i, %for.cond.preheader.i.if.then5.i_crit_edge
  %free_id.0.lcssa.i = phi i16 [ 0, %for.cond.preheader.i.if.then5.i_crit_edge ], [ %free_id.1.i, %if.then5.loopexit.i ]
  %max_id.0.lcssa.i = phi i16 [ 1, %for.cond.preheader.i.if.then5.i_crit_edge ], [ %phi.bo.i, %if.then5.loopexit.i ]
  %35 = tail call i16 @llvm.bswap.i16(i16 %max_id.0.lcssa.i) #11
  %36 = ptrtoint ptr %next_attr_id.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %next_attr_id.i, align 8
  %dirty.i = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 5
  %37 = ptrtoint ptr %dirty.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %dirty.i, align 4
  %38 = tail call i16 @llvm.bswap.i16(i16 %free_id.0.lcssa.i) #11
  br label %mi_new_attt_id.exit

if.end10.i:                                       ; preds = %if.end10.i.if.end10.i_crit_edge, %for.cond.preheader.i.if.end10.i_crit_edge
  %call50.i = phi ptr [ %call.i, %if.end10.i.if.end10.i_crit_edge ], [ %call46.i, %for.cond.preheader.i.if.end10.i_crit_edge ]
  %max_id.049.i = phi i16 [ %max_id.1.i, %if.end10.i.if.end10.i_crit_edge ], [ 0, %for.cond.preheader.i.if.end10.i_crit_edge ]
  %free_id.048.i = phi i16 [ %free_id.1.i, %if.end10.i.if.end10.i_crit_edge ], [ 0, %for.cond.preheader.i.if.end10.i_crit_edge ]
  %id11.i = getelementptr inbounds %struct.ATTRIB, ptr %call50.i, i32 0, i32 6
  %39 = ptrtoint ptr %id11.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %id11.i, align 2
  %41 = tail call i16 @llvm.bswap.i16(i16 %40) #11
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %free_id.048.i)
  %cmp14.i = icmp eq i16 %41, %free_id.048.i
  %42 = tail call i16 @llvm.umax.i16(i16 %max_id.049.i, i16 %41) #11
  %add18.i = zext i1 %cmp14.i to i16
  %free_id.1.i = add i16 %free_id.048.i, %add18.i
  %max_id.1.i = select i1 %cmp14.i, i16 %max_id.049.i, i16 %42
  %attr.1.i = select i1 %cmp14.i, ptr null, ptr %call50.i
  %call.i = tail call ptr @mi_enum_attr(ptr noundef %mi, ptr noundef %attr.1.i) #11
  %tobool.not.i74 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i74, label %if.then5.loopexit.i, label %if.end10.i.if.end10.i_crit_edge

if.end10.i.if.end10.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

mi_new_attt_id.exit:                              ; preds = %if.then5.i, %if.then.i
  %retval.0.i75 = phi i16 [ %31, %if.then.i ], [ %38, %if.then5.i ]
  %add.ptr21 = getelementptr i8, ptr %attr.1, i32 %asize
  %43 = call ptr @memmove(ptr %add.ptr21, ptr %attr.1, i32 %tail.0)
  %44 = call ptr @memset(ptr %attr.1, i32 0, i32 %asize)
  %45 = ptrtoint ptr %attr.1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %type, ptr %attr.1, align 8
  %46 = tail call i32 @llvm.bswap.i32(i32 %asize)
  %size = getelementptr inbounds %struct.ATTRIB, ptr %attr.1, i32 0, i32 1
  %47 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %size, align 4
  %name_len23 = getelementptr inbounds %struct.ATTRIB, ptr %attr.1, i32 0, i32 3
  %48 = ptrtoint ptr %name_len23 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %name_len, ptr %name_len23, align 1
  %49 = tail call i16 @llvm.bswap.i16(i16 %name_off)
  %name_off24 = getelementptr inbounds %struct.ATTRIB, ptr %attr.1, i32 0, i32 4
  %50 = ptrtoint ptr %name_off24 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %name_off24, align 2
  %id25 = getelementptr inbounds %struct.ATTRIB, ptr %attr.1, i32 0, i32 6
  %51 = ptrtoint ptr %id25 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %retval.0.i75, ptr %id25, align 2
  %conv = zext i16 %name_off to i32
  %add.ptr26 = getelementptr i8, ptr %attr.1, i32 %conv
  %mul = shl nuw nsw i32 %conv3.i, 1
  %52 = call ptr @memmove(ptr %add.ptr26, ptr %name, i32 %mul)
  %53 = tail call i32 @llvm.bswap.i32(i32 %add)
  %54 = ptrtoint ptr %used2 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %used2, align 8
  %dirty = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 5
  %55 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %dirty, align 4
  br label %cleanup

cleanup:                                          ; preds = %mi_new_attt_id.exit, %is_attr_indexed.exit.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %attr.1, %mi_new_attt_id.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %is_attr_indexed.exit.cleanup_crit_edge ], [ null, %if.end11.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mi_remove_attr(ptr noundef %ni, ptr nocapture noundef %mi, ptr noundef %attr) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mrec = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 2
  %0 = ptrtoint ptr %mrec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrec, align 4
  %2 = ptrtoint ptr %attr to i32
  %3 = ptrtoint ptr %1 to i32
  %sub = sub i32 %2, %3
  %used1 = getelementptr inbounds %struct.MFT_REC, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %used1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %used1, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %size = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 1
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %add = add i32 %9, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %6)
  %cmp = icmp ugt i32 %add, %6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %ni, null
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %non_res.i = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 2
  %10 = ptrtoint ptr %non_res.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %non_res.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %is_attr_indexed.exit, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

is_attr_indexed.exit:                             ; preds = %land.lhs.true
  %12 = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 7
  %flags.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flags.i, align 2
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool1.i.not = icmp eq i8 %15, 0
  br i1 %tobool1.i.not, label %is_attr_indexed.exit.if.end6_crit_edge, label %if.then2

is_attr_indexed.exit.if.end6_crit_edge:           ; preds = %is_attr_indexed.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then2:                                         ; preds = %is_attr_indexed.exit
  call void @__sanitizer_cov_trace_pc() #13
  %mrec4 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 2
  %16 = ptrtoint ptr %mrec4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mrec4, align 8
  %hard_links = getelementptr inbounds %struct.MFT_REC, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %hard_links to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %hard_links, align 2
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #11
  %add.i = add i16 %20, -1
  %21 = tail call i16 @llvm.bswap.i16(i16 %add.i) #11
  %22 = ptrtoint ptr %hard_links to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %hard_links, align 2
  %dirty = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 5
  %23 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %dirty, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %is_attr_indexed.exit.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %sub7 = sub i32 %6, %9
  %add.ptr = getelementptr i8, ptr %attr, i32 %9
  %sub8 = sub i32 %sub7, %sub
  %24 = call ptr @memmove(ptr %attr, ptr %add.ptr, i32 %sub8)
  %25 = tail call i32 @llvm.bswap.i32(i32 %sub7)
  %26 = ptrtoint ptr %used1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %used1, align 8
  %dirty10 = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 5
  %27 = ptrtoint ptr %dirty10 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %dirty10, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %28 = xor i1 %cmp, true
  ret i1 %28
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mi_resize_attr(ptr nocapture noundef %mi, ptr noundef %attr, i32 noundef %bytes) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mrec = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 2
  %0 = ptrtoint ptr %mrec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrec, align 4
  %2 = ptrtoint ptr %attr to i32
  %3 = ptrtoint ptr %1 to i32
  %sub = sub i32 %2, %3
  %used1 = getelementptr inbounds %struct.MFT_REC, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %used1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %used1, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %size = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 1
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 7
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = add i32 %sub, %9
  %sub3 = sub i32 %6, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub3)
  %cmp = icmp sgt i32 %sub3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %6)
  %cmp4.not = icmp ult i32 %sub, %6
  %or.cond = select i1 %cmp, i1 %cmp4.not, i1 false
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %tobool.not = icmp eq i32 %bytes, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %attr, i32 %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %cmp8 = icmp sgt i32 %bytes, 0
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  %total7 = getelementptr inbounds %struct.MFT_REC, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %total7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %total7, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %add = add nuw i32 %bytes, 7
  %and = and i32 %add, -8
  %add10 = add i32 %6, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %add10, i32 %17)
  %cmp11 = icmp ugt i32 %add10, %17
  br i1 %cmp11, label %if.then9.cleanup_crit_edge, label %if.end13

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %add14 = add i32 %9, %and
  %add.ptr15 = getelementptr i8, ptr %add.ptr, i32 %and
  %18 = call ptr @memmove(ptr %add.ptr15, ptr %add.ptr, i32 %sub3)
  %19 = call ptr @memset(ptr %add.ptr, i32 0, i32 %and)
  %add17 = add i32 %13, %and
  br label %if.end28

if.else:                                          ; preds = %if.end6
  %add19 = sub i32 7, %bytes
  %and20 = and i32 %add19, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %and20)
  %cmp21 = icmp ult i32 %9, %and20
  br i1 %cmp21, label %if.else.cleanup_crit_edge, label %if.end23

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end23:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %sub24 = sub i32 %9, %and20
  %idx.neg = sub i32 0, %and20
  %add.ptr25 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %20 = call ptr @memmove(ptr %add.ptr25, ptr %add.ptr, i32 %sub3)
  %sub26 = sub i32 %6, %and20
  %sub27 = sub i32 %13, %and20
  br label %if.end28

if.end28:                                         ; preds = %if.end23, %if.end13
  %used.0 = phi i32 [ %add10, %if.end13 ], [ %sub26, %if.end23 ]
  %nsize.0 = phi i32 [ %add14, %if.end13 ], [ %sub24, %if.end23 ]
  %rsize.0 = phi i32 [ %add17, %if.end13 ], [ %sub27, %if.end23 ]
  %21 = tail call i32 @llvm.bswap.i32(i32 %used.0)
  %22 = ptrtoint ptr %used1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %used1, align 8
  %23 = tail call i32 @llvm.bswap.i32(i32 %nsize.0)
  %24 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %size, align 4
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 2
  %25 = ptrtoint ptr %non_res to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %non_res, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool31.not = icmp eq i8 %26, 0
  br i1 %tobool31.not, label %if.then32, label %if.end28.if.end34_crit_edge

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %27 = tail call i32 @llvm.bswap.i32(i32 %rsize.0)
  %28 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %10, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end28.if.end34_crit_edge
  %dirty = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 5
  %29 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %dirty, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.else.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end34 ], [ false, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ], [ false, %if.then9.cleanup_crit_edge ], [ false, %if.else.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mi_pack_runs(ptr nocapture noundef %mi, ptr noundef %attr, ptr noundef %run, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %plen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sbi1 = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 1
  %0 = ptrtoint ptr %sbi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %plen) #11
  %2 = ptrtoint ptr %plen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %plen, align 4, !annotation !12
  %mrec = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 2
  %3 = ptrtoint ptr %mrec to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mrec, align 4
  %5 = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 7
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %5, align 8
  %8 = tail call i64 @llvm.bswap.i64(i64 %7)
  %conv = trunc i64 %8 to i32
  %used3 = getelementptr inbounds %struct.MFT_REC, ptr %4, i32 0, i32 5
  %9 = ptrtoint ptr %used3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %used3, align 8
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %attr to i32
  %13 = ptrtoint ptr %4 to i32
  %size = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 1
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %add.ptr = getelementptr i8, ptr %attr, i32 %16
  %run_off4 = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 7, i32 0, i32 2
  %17 = ptrtoint ptr %run_off4 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %run_off4, align 8
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %conv5 = zext i16 %19 to i32
  %sub6 = sub i32 %16, %conv5
  %20 = add i32 %11, %13
  %21 = add i32 %16, %12
  %sub8 = sub i32 %20, %21
  %record_size = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 8
  %22 = ptrtoint ptr %record_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %record_size, align 8
  %sub9 = sub i32 %23, %11
  %add.ptr10 = getelementptr i8, ptr %add.ptr, i32 %sub9
  %24 = call ptr @memmove(ptr %add.ptr10, ptr %add.ptr, i32 %sub8)
  %add.ptr12 = getelementptr i8, ptr %attr, i32 %conv5
  %add = add i32 %sub6, %sub9
  %call = call i32 @run_pack(ptr noundef %run, i32 noundef %conv, i32 noundef %len, ptr noundef %add.ptr12, i32 noundef %add, ptr noundef nonnull %plen) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %25 = call ptr @memmove(ptr %add.ptr, ptr %add.ptr10, i32 %sub8)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %idx.neg = sub i32 0, %sub6
  %add15 = add nuw i32 %call, 7
  %and = and i32 %add15, -8
  %add.ptr16 = getelementptr i8, ptr %add.ptr, i32 %and
  %add.ptr17 = getelementptr i8, ptr %add.ptr16, i32 %idx.neg
  %26 = call ptr @memmove(ptr %add.ptr17, ptr %add.ptr10, i32 %sub8)
  %sub20 = add nuw i32 %and, %conv5
  %27 = call i32 @llvm.bswap.i32(i32 %sub20)
  %28 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %size, align 4
  %29 = ptrtoint ptr %plen to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %plen, align 4
  %add22 = add i32 %conv, -1
  %sub23 = add i32 %add22, %30
  %conv24 = zext i32 %sub23 to i64
  %31 = call i64 @llvm.bswap.i64(i64 %conv24)
  %evcn = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 7, i32 0, i32 1
  %32 = ptrtoint ptr %evcn to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %evcn, align 8
  %add25 = sub i32 %11, %sub6
  %sub26 = add i32 %add25, %and
  %33 = call i32 @llvm.bswap.i32(i32 %sub26)
  %34 = ptrtoint ptr %used3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %used3, align 8
  %dirty = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 5
  %35 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %dirty, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plen) #11
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @run_pack(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_cmp_names(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nobuiltin }

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
!9 = !{i64 2154489561}
!10 = !{i64 2148664979, i64 2148665005, i64 2148665034, i64 2148665068, i64 2148665099, i64 2148665122}
!11 = !{i8 0, i8 2}
!12 = !{!"auto-init"}
