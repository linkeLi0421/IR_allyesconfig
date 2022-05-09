; ModuleID = '/llk/IR_all_yes/fs/squashfs/lzo_wrapper.c_pt.bc'
source_filename = "../fs/squashfs/lzo_wrapper.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.squashfs_decompressor = type { ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.squashfs_sb_info = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i64, i64, i32, i16, i64, i32, i32, i32, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.squashfs_lzo = type { ptr, ptr }
%struct.squashfs_page_actor = type { ptr, i32, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.74, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.74 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.6, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lzo\00", [28 x i8] zeroinitializer }, align 32
@squashfs_lzo_comp_ops = dso_local constant { %struct.squashfs_decompressor, [36 x i8] } { %struct.squashfs_decompressor { ptr @lzo_init, ptr null, ptr @lzo_free, ptr @lzo_uncompress, i32 3, ptr @.str, i32 1 }, [36 x i8] zeroinitializer }, align 32
@lzo_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013SQUASHFS error: Failed to allocate lzo workspace\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lzo_init\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fs/squashfs/lzo_wrapper.c\00", [38 x i8] zeroinitializer }, align 32
@lzo_init._entry_ptr = internal global ptr @lzo_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bvec_virt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/bvec.h\00", [43 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 118, i32 10 }
@___asan_gen_.9 = private unnamed_addr constant [22 x i8] c"squashfs_lzo_comp_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 113, i32 36 }
@___asan_gen_.12 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private constant [29 x i8] c"../fs/squashfs/lzo_wrapper.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 47, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [24 x i8] c"../include/linux/bvec.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 240, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @lzo_init._entry, ptr @lzo_init._entry_ptr, ptr @.str, ptr @squashfs_lzo_comp_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_lzo_comp_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lzo_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @lzo_init(ptr nocapture noundef readonly %msblk, ptr nocapture noundef readnone %buff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %block_size1 = getelementptr inbounds %struct.squashfs_sb_info, ptr %msblk, i32 0, i32 17
  %0 = ptrtoint ptr %block_size1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %block_size1, align 8
  %2 = tail call i32 @llvm.smax.i32(i32 %1, i32 8192)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 8) #10
  %cmp2 = icmp eq ptr %call7.i.i, null
  br i1 %cmp2, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end:                                           ; preds = %entry
  %call3 = tail call noalias ptr @vmalloc(i32 noundef %2) #11
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %call7.i.i, align 8
  %cmp5 = icmp eq ptr %call3, null
  br i1 %cmp5, label %if.end.do.end_crit_edge, label %if.end7

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end7:                                          ; preds = %if.end
  %call8 = tail call noalias ptr @vmalloc(i32 noundef %2) #11
  %output = getelementptr inbounds %struct.squashfs_lzo, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %output to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8, ptr %output, align 4
  %cmp10 = icmp eq ptr %call8, null
  br i1 %cmp10, label %failed2, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

failed2:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call7.i.i, align 8
  tail call void @vfree(ptr noundef %7) #7
  br label %do.end

do.end:                                           ; preds = %failed2, %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  tail call void @kfree(ptr noundef %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end7.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %do.end ], [ %call7.i.i, %if.end7.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lzo_free(ptr noundef %strm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %strm, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %strm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %strm, align 4
  tail call void @vfree(ptr noundef %1) #7
  %output = getelementptr inbounds %struct.squashfs_lzo, ptr %strm, i32 0, i32 1
  %2 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %output, align 4
  tail call void @vfree(ptr noundef %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %strm) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lzo_uncompress(ptr nocapture noundef readnone %msblk, ptr nocapture noundef readonly %strm, ptr nocapture noundef readonly %bio, i32 noundef %offset, i32 noundef %length, ptr nocapture noundef %output) #0 align 64 {
entry:
  %out_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %strm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %strm, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out_len) #7
  %length1 = getelementptr inbounds %struct.squashfs_page_actor, ptr %output, i32 0, i32 2
  %2 = ptrtoint ptr %length1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length1, align 4
  %4 = ptrtoint ptr %out_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %out_len, align 4
  %bi_vcnt.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 17
  %5 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %bi_vcnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp.not.i74.not = icmp eq i16 %6, 0
  br i1 %cmp.not.i74.not, label %entry.while.end_crit_edge, label %if.end.i.i.peel

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end.i.i.peel:                                  ; preds = %entry
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %7 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bi_io_vec.i, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %bv_offset3.i.i.peel = getelementptr %struct.bio_vec, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %bv_offset3.i.i.peel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bv_offset3.i.i.peel, align 4
  %shr.i.i.peel = lshr i32 %12, 12
  %add.ptr.i.i.peel = getelementptr %struct.page, ptr %10, i32 %shr.i.i.peel
  %and.i.i.peel = and i32 %12, 4095
  %sub.i.i.peel = sub nuw nsw i32 4096, %and.i.i.peel
  %bv_len.i.i.peel = getelementptr %struct.bio_vec, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %bv_len.i.i.peel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bv_len.i.i.peel, align 4
  %15 = tail call i32 @llvm.umin.i32(i32 %sub.i.i.peel, i32 %14) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %sub.i.i.peel)
  %cmp15.i.i.peel = icmp ule i32 %14, %sub.i.i.peel
  %inc.i.i.peel = zext i1 %cmp15.i.i.peel to i32
  %spec.select69.peel = select i1 %cmp15.i.i.peel, i32 0, i32 %15
  %sub.peel = sub i32 %15, %offset
  %16 = tail call i32 @llvm.smin.i32(i32 %length, i32 %sub.peel)
  %17 = ptrtoint ptr %add.ptr.i.i.peel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i.i.peel, align 4
  %shr.i.i54.peel = lshr i32 %18, 30
  %19 = zext i32 %shr.i.i54.peel to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i54.peel, label %if.end.i.i.peel.bvec_virt.exit.peel_crit_edge [
    i32 2, label %if.end.i.i.peel.land.rhs.i.peel_crit_edge
    i32 3, label %is_highmem_idx.exit.i.peel
  ]

if.end.i.i.peel.land.rhs.i.peel_crit_edge:        ; preds = %if.end.i.i.peel
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i.peel

if.end.i.i.peel.bvec_virt.exit.peel_crit_edge:    ; preds = %if.end.i.i.peel
  call void @__sanitizer_cov_trace_pc() #9
  br label %bvec_virt.exit.peel

is_highmem_idx.exit.i.peel:                       ; preds = %if.end.i.i.peel
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %20 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp2.i.not.i.peel = icmp eq i32 %20, 2
  br i1 %cmp2.i.not.i.peel, label %is_highmem_idx.exit.i.peel.land.rhs.i.peel_crit_edge, label %is_highmem_idx.exit.i.peel.bvec_virt.exit.peel_crit_edge

is_highmem_idx.exit.i.peel.bvec_virt.exit.peel_crit_edge: ; preds = %is_highmem_idx.exit.i.peel
  call void @__sanitizer_cov_trace_pc() #9
  br label %bvec_virt.exit.peel

is_highmem_idx.exit.i.peel.land.rhs.i.peel_crit_edge: ; preds = %is_highmem_idx.exit.i.peel
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i.peel

land.rhs.i.peel:                                  ; preds = %is_highmem_idx.exit.i.peel.land.rhs.i.peel_crit_edge, %if.end.i.i.peel.land.rhs.i.peel_crit_edge
  %.b43.i.peel = load i1, ptr @bvec_virt.__already_done, align 1
  br i1 %.b43.i.peel, label %land.rhs.i.peel.bvec_virt.exit.peel_crit_edge, label %if.then.i.peel, !prof !22

land.rhs.i.peel.bvec_virt.exit.peel_crit_edge:    ; preds = %land.rhs.i.peel
  call void @__sanitizer_cov_trace_pc() #9
  br label %bvec_virt.exit.peel

if.then.i.peel:                                   ; preds = %land.rhs.i.peel
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @bvec_virt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 240, i32 noundef 9, ptr noundef null) #7
  br label %bvec_virt.exit.peel

bvec_virt.exit.peel:                              ; preds = %if.then.i.peel, %land.rhs.i.peel.bvec_virt.exit.peel_crit_edge, %is_highmem_idx.exit.i.peel.bvec_virt.exit.peel_crit_edge, %if.end.i.i.peel.bvec_virt.exit.peel_crit_edge
  %call38.i.peel = tail call ptr @page_address(ptr noundef %add.ptr.i.i.peel) #7
  %add.ptr.i.peel = getelementptr i8, ptr %call38.i.peel, i32 %and.i.i.peel
  %add.ptr.peel = getelementptr i8, ptr %add.ptr.i.peel, i32 %offset
  %21 = call ptr @memcpy(ptr %1, ptr %add.ptr.peel, i32 %16)
  %22 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %bi_vcnt.i, align 8
  %24 = zext i1 %cmp15.i.i.peel to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %24)
  %cmp.not.i.peel = icmp ugt i16 %23, %24
  br i1 %cmp.not.i.peel, label %if.end.i.peel.next, label %bvec_virt.exit.peel.while.end_crit_edge

bvec_virt.exit.peel.while.end_crit_edge:          ; preds = %bvec_virt.exit.peel
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end.i.peel.next:                               ; preds = %bvec_virt.exit.peel
  %sub5.peel = sub i32 %length, %16
  %add.ptr4.peel = getelementptr i8, ptr %1, i32 %16
  br label %if.end.i

if.end.i:                                         ; preds = %bvec_virt.exit.if.end.i_crit_edge, %if.end.i.peel.next
  %bytes.080 = phi i32 [ %sub5.peel, %if.end.i.peel.next ], [ %sub5, %bvec_virt.exit.if.end.i_crit_edge ]
  %buff.079 = phi ptr [ %add.ptr4.peel, %if.end.i.peel.next ], [ %add.ptr4, %bvec_virt.exit.if.end.i_crit_edge ]
  %iter_all.sroa.15.077 = phi i32 [ %spec.select69.peel, %if.end.i.peel.next ], [ %spec.select69, %bvec_virt.exit.if.end.i_crit_edge ]
  %iter_all.sroa.12.076 = phi i32 [ %inc.i.i.peel, %if.end.i.peel.next ], [ %spec.select, %bvec_virt.exit.if.end.i_crit_edge ]
  %iter_all.sroa.0.075 = phi ptr [ %add.ptr.i.i.peel, %if.end.i.peel.next ], [ %iter_all.sroa.0.1, %bvec_virt.exit.if.end.i_crit_edge ]
  %25 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bi_io_vec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter_all.sroa.15.077)
  %tobool.not.i.i = icmp eq i32 %iter_all.sroa.15.077, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i.i = getelementptr %struct.page, ptr %iter_all.sroa.0.075, i32 1
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.bio_vec, ptr %26, i32 %iter_all.sroa.12.076
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %bv_offset3.i.i = getelementptr %struct.bio_vec, ptr %26, i32 %iter_all.sroa.12.076, i32 2
  %29 = ptrtoint ptr %bv_offset3.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bv_offset3.i.i, align 4
  %shr.i.i = lshr i32 %30, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %28, i32 %shr.i.i
  %and.i.i = and i32 %30, 4095
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %iter_all.sroa.0.1 = phi ptr [ %add.ptr.i.i, %if.else.i.i ], [ %incdec.ptr.i.i, %if.then.i.i ]
  %.sink.i.i = phi i32 [ %and.i.i, %if.else.i.i ], [ 0, %if.then.i.i ]
  %sub.i.i = sub nuw nsw i32 4096, %.sink.i.i
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %26, i32 %iter_all.sroa.12.076, i32 1
  %31 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bv_len.i.i, align 4
  %sub9.i.i = sub i32 %32, %iter_all.sroa.15.077
  %33 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %sub9.i.i) #7
  %add.i.i = add i32 %33, %iter_all.sroa.15.077
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %32)
  %cmp15.i.i = icmp eq i32 %add.i.i, %32
  %inc.i.i = zext i1 %cmp15.i.i to i32
  %spec.select = add nuw nsw i32 %iter_all.sroa.12.076, %inc.i.i
  %spec.select69 = select i1 %cmp15.i.i, i32 0, i32 %add.i.i
  %34 = tail call i32 @llvm.smin.i32(i32 %bytes.080, i32 %33)
  %35 = ptrtoint ptr %iter_all.sroa.0.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iter_all.sroa.0.1, align 4
  %shr.i.i54 = lshr i32 %36, 30
  %37 = zext i32 %shr.i.i54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %shr.i.i54, label %if.end.i.i.bvec_virt.exit_crit_edge [
    i32 2, label %if.end.i.i.land.rhs.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end.i.i.land.rhs.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

if.end.i.i.bvec_virt.exit_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bvec_virt.exit

is_highmem_idx.exit.i:                            ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %38 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp2.i.not.i = icmp eq i32 %38, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.land.rhs.i_crit_edge, label %is_highmem_idx.exit.i.bvec_virt.exit_crit_edge

is_highmem_idx.exit.i.bvec_virt.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bvec_virt.exit

is_highmem_idx.exit.i.land.rhs.i_crit_edge:       ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %is_highmem_idx.exit.i.land.rhs.i_crit_edge, %if.end.i.i.land.rhs.i_crit_edge
  %.b43.i = load i1, ptr @bvec_virt.__already_done, align 1
  br i1 %.b43.i, label %land.rhs.i.bvec_virt.exit_crit_edge, label %if.then.i, !prof !22

land.rhs.i.bvec_virt.exit_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bvec_virt.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @bvec_virt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 240, i32 noundef 9, ptr noundef null) #7
  br label %bvec_virt.exit

bvec_virt.exit:                                   ; preds = %if.then.i, %land.rhs.i.bvec_virt.exit_crit_edge, %is_highmem_idx.exit.i.bvec_virt.exit_crit_edge, %if.end.i.i.bvec_virt.exit_crit_edge
  %call38.i = tail call ptr @page_address(ptr noundef %iter_all.sroa.0.1) #7
  %add.ptr.i = getelementptr i8, ptr %call38.i, i32 %.sink.i.i
  %39 = call ptr @memcpy(ptr %buff.079, ptr %add.ptr.i, i32 %34)
  %add.ptr4 = getelementptr i8, ptr %buff.079, i32 %34
  %sub5 = sub i32 %bytes.080, %34
  %40 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %bi_vcnt.i, align 8
  %conv.i = zext i16 %41 to i32
  %cmp.not.i = icmp ult i32 %spec.select, %conv.i
  br i1 %cmp.not.i, label %bvec_virt.exit.if.end.i_crit_edge, label %bvec_virt.exit.while.end_crit_edge, !llvm.loop !23

bvec_virt.exit.while.end_crit_edge:               ; preds = %bvec_virt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

bvec_virt.exit.if.end.i_crit_edge:                ; preds = %bvec_virt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

while.end:                                        ; preds = %bvec_virt.exit.while.end_crit_edge, %bvec_virt.exit.peel.while.end_crit_edge, %entry.while.end_crit_edge
  %42 = ptrtoint ptr %strm to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %strm, align 4
  %output7 = getelementptr inbounds %struct.squashfs_lzo, ptr %strm, i32 0, i32 1
  %44 = ptrtoint ptr %output7 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %output7, align 4
  %call8 = call i32 @lzo1x_decompress_safe(ptr noundef %43, i32 noundef %length, ptr noundef %45, ptr noundef nonnull %out_len) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 0
  br i1 %cmp9.not, label %if.end, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %while.end
  %46 = ptrtoint ptr %out_len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %out_len, align 4
  %next_page.i = getelementptr inbounds %struct.squashfs_page_actor, ptr %output, i32 0, i32 3
  %48 = ptrtoint ptr %next_page.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %next_page.i, align 4
  %49 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %output, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %tobool.not81 = icmp eq ptr %52, null
  br i1 %tobool.not81, label %if.end.cleanup_crit_edge, label %while.body13.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body13.lr.ph:                               ; preds = %if.end
  %53 = ptrtoint ptr %output7 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %output7, align 4
  %pages.i = getelementptr inbounds %struct.squashfs_page_actor, ptr %output, i32 0, i32 1
  br label %while.body13

while.body13:                                     ; preds = %squashfs_next_page.exit.while.body13_crit_edge, %while.body13.lr.ph
  %bytes.184 = phi i32 [ %47, %while.body13.lr.ph ], [ %sub17, %squashfs_next_page.exit.while.body13_crit_edge ]
  %data.083 = phi ptr [ %52, %while.body13.lr.ph ], [ %65, %squashfs_next_page.exit.while.body13_crit_edge ]
  %buff.182 = phi ptr [ %54, %while.body13.lr.ph ], [ %add.ptr16, %squashfs_next_page.exit.while.body13_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %bytes.184)
  %cmp14 = icmp ult i32 %bytes.184, 4097
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %while.body13
  call void @__sanitizer_cov_trace_pc() #9
  %55 = call ptr @memcpy(ptr %data.083, ptr %buff.182, i32 %bytes.184)
  br label %cleanup

if.else:                                          ; preds = %while.body13
  %56 = call ptr @memcpy(ptr %data.083, ptr %buff.182, i32 4096)
  %57 = ptrtoint ptr %next_page.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %next_page.i, align 4
  %59 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pages.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp.i = icmp eq i32 %58, %60
  br i1 %cmp.i, label %if.else.cleanup_crit_edge, label %squashfs_next_page.exit

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

squashfs_next_page.exit:                          ; preds = %if.else
  %sub17 = add i32 %bytes.184, -4096
  %add.ptr16 = getelementptr i8, ptr %buff.182, i32 4096
  %61 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %output, align 4
  %inc.i = add i32 %58, 1
  %63 = ptrtoint ptr %next_page.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %inc.i, ptr %next_page.i, align 4
  %arrayidx.i56 = getelementptr ptr, ptr %62, i32 %58
  %64 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i56, align 4
  %tobool.not = icmp eq ptr %65, null
  br i1 %tobool.not, label %squashfs_next_page.exit.cleanup_crit_edge, label %squashfs_next_page.exit.while.body13_crit_edge

squashfs_next_page.exit.while.body13_crit_edge:   ; preds = %squashfs_next_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body13

squashfs_next_page.exit.cleanup_crit_edge:        ; preds = %squashfs_next_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %squashfs_next_page.exit.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then15, %if.end.cleanup_crit_edge, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %while.end.cleanup_crit_edge ], [ %47, %if.then15 ], [ %47, %if.end.cleanup_crit_edge ], [ %47, %squashfs_next_page.exit.cleanup_crit_edge ], [ %47, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_len) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lzo1x_decompress_safe(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/squashfs/lzo_wrapper.c", i32 118, i32 10}
!2 = !{ptr @squashfs_lzo_comp_ops, !3, !"squashfs_lzo_comp_ops", i1 false, i1 false}
!3 = !{!"../fs/squashfs/lzo_wrapper.c", i32 113, i32 36}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/squashfs/lzo_wrapper.c", i32 47, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @lzo_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @lzo_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../include/linux/bvec.h", i32 240, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.peeled.count", i32 1}
