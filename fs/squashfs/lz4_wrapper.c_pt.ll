; ModuleID = '/llk/IR_all_yes/fs/squashfs/lz4_wrapper.c_pt.bc'
source_filename = "../fs/squashfs/lz4_wrapper.c"
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
%struct.squashfs_lz4 = type { ptr, ptr }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.74, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.74 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.6, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.squashfs_page_actor = type { ptr, i32, i32, i32 }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lz4\00", [28 x i8] zeroinitializer }, align 32
@squashfs_lz4_comp_ops = dso_local constant { %struct.squashfs_decompressor, [36 x i8] } { %struct.squashfs_decompressor { ptr @lz4_init, ptr @lz4_comp_opts, ptr @lz4_free, ptr @lz4_uncompress, i32 5, ptr @.str, i32 1 }, [36 x i8] zeroinitializer }, align 32
@lz4_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013SQUASHFS error: Failed to initialise LZ4 decompressor\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lz4_init\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fs/squashfs/lz4_wrapper.c\00", [38 x i8] zeroinitializer }, align 32
@lz4_init._entry_ptr = internal global ptr @lz4_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@lz4_comp_opts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 44, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013SQUASHFS error: Unknown LZ4 version\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lz4_comp_opts\00", [18 x i8] zeroinitializer }, align 32
@lz4_comp_opts._entry_ptr = internal global ptr @lz4_comp_opts._entry, section ".printk_index", align 4
@bvec_virt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/bvec.h\00", [43 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 141, i32 10 }
@___asan_gen_.11 = private unnamed_addr constant [22 x i8] c"squashfs_lz4_comp_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 135, i32 36 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 74, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private constant [29 x i8] c"../fs/squashfs/lz4_wrapper.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 44, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [24 x i8] c"../include/linux/bvec.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 240, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @lz4_comp_opts._entry, ptr @lz4_comp_opts._entry_ptr, ptr @lz4_init._entry, ptr @lz4_init._entry_ptr, ptr @.str, ptr @squashfs_lz4_comp_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_lz4_comp_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lz4_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lz4_comp_opts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @lz4_init(ptr nocapture noundef readonly %msblk, ptr nocapture noundef readnone %buff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %block_size1 = getelementptr inbounds %struct.squashfs_sb_info, ptr %msblk, i32 0, i32 17
  %0 = ptrtoint ptr %block_size1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %block_size1, align 8
  %2 = tail call i32 @llvm.smax.i32(i32 %1, i32 8192)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 8) #9
  %cmp2 = icmp eq ptr %call7.i.i, null
  br i1 %cmp2, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end:                                           ; preds = %entry
  %call3 = tail call noalias ptr @vmalloc(i32 noundef %2) #10
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %call7.i.i, align 8
  %cmp5 = icmp eq ptr %call3, null
  br i1 %cmp5, label %if.end.failed2_crit_edge, label %if.end7

if.end.failed2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed2

if.end7:                                          ; preds = %if.end
  %call8 = tail call noalias ptr @vmalloc(i32 noundef %2) #10
  %output = getelementptr inbounds %struct.squashfs_lz4, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %output to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8, ptr %output, align 4
  %cmp10 = icmp eq ptr %call8, null
  br i1 %cmp10, label %failed3, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

failed3:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call7.i.i, align 8
  tail call void @vfree(ptr noundef %7) #6
  br label %failed2

failed2:                                          ; preds = %failed3, %if.end.failed2_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %do.end

do.end:                                           ; preds = %failed2, %entry.do.end_crit_edge
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end7.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %do.end ], [ %call7.i.i, %if.end7.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @lz4_comp_opts(ptr nocapture noundef readnone %msblk, ptr noundef readonly %buff, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %buff, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %len)
  %cmp1 = icmp ult i32 %len, 8
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %buff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %1)
  %cmp2.not = icmp eq i32 %1, 16777216
  br i1 %cmp2.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ null, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -5 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lz4_free(ptr noundef %strm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %strm, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %strm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %strm, align 4
  tail call void @vfree(ptr noundef %1) #6
  %output = getelementptr inbounds %struct.squashfs_lz4, ptr %strm, i32 0, i32 1
  %2 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %output, align 4
  tail call void @vfree(ptr noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %strm) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lz4_uncompress(ptr nocapture noundef readnone %msblk, ptr nocapture noundef readonly %strm, ptr nocapture noundef readonly %bio, i32 noundef %offset, i32 noundef %length, ptr nocapture noundef %output) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_vcnt.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 17
  %0 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bi_vcnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not.i74.not = icmp eq i16 %1, 0
  br i1 %cmp.not.i74.not, label %entry.while.end_crit_edge, label %if.end.i.i.peel

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end.i.i.peel:                                  ; preds = %entry
  %2 = ptrtoint ptr %strm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %strm, align 4
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %4 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bi_io_vec.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %bv_offset3.i.i.peel = getelementptr %struct.bio_vec, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %bv_offset3.i.i.peel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bv_offset3.i.i.peel, align 4
  %shr.i.i.peel = lshr i32 %9, 12
  %add.ptr.i.i.peel = getelementptr %struct.page, ptr %7, i32 %shr.i.i.peel
  %and.i.i.peel = and i32 %9, 4095
  %sub.i.i.peel = sub nuw nsw i32 4096, %and.i.i.peel
  %bv_len.i.i.peel = getelementptr %struct.bio_vec, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %bv_len.i.i.peel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bv_len.i.i.peel, align 4
  %12 = tail call i32 @llvm.umin.i32(i32 %sub.i.i.peel, i32 %11) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %sub.i.i.peel)
  %cmp15.i.i.peel = icmp ule i32 %11, %sub.i.i.peel
  %inc.i.i.peel = zext i1 %cmp15.i.i.peel to i32
  %spec.select69.peel = select i1 %cmp15.i.i.peel, i32 0, i32 %12
  %sub.peel = sub i32 %12, %offset
  %13 = tail call i32 @llvm.smin.i32(i32 %length, i32 %sub.peel)
  %14 = ptrtoint ptr %add.ptr.i.i.peel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i.peel, align 4
  %shr.i.i54.peel = lshr i32 %15, 30
  %16 = zext i32 %shr.i.i54.peel to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i54.peel, label %if.end.i.i.peel.bvec_virt.exit.peel_crit_edge [
    i32 2, label %if.end.i.i.peel.land.rhs.i.peel_crit_edge
    i32 3, label %is_highmem_idx.exit.i.peel
  ]

if.end.i.i.peel.land.rhs.i.peel_crit_edge:        ; preds = %if.end.i.i.peel
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i.peel

if.end.i.i.peel.bvec_virt.exit.peel_crit_edge:    ; preds = %if.end.i.i.peel
  call void @__sanitizer_cov_trace_pc() #8
  br label %bvec_virt.exit.peel

is_highmem_idx.exit.i.peel:                       ; preds = %if.end.i.i.peel
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %17 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp2.i.not.i.peel = icmp eq i32 %17, 2
  br i1 %cmp2.i.not.i.peel, label %is_highmem_idx.exit.i.peel.land.rhs.i.peel_crit_edge, label %is_highmem_idx.exit.i.peel.bvec_virt.exit.peel_crit_edge

is_highmem_idx.exit.i.peel.bvec_virt.exit.peel_crit_edge: ; preds = %is_highmem_idx.exit.i.peel
  call void @__sanitizer_cov_trace_pc() #8
  br label %bvec_virt.exit.peel

is_highmem_idx.exit.i.peel.land.rhs.i.peel_crit_edge: ; preds = %is_highmem_idx.exit.i.peel
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i.peel

land.rhs.i.peel:                                  ; preds = %is_highmem_idx.exit.i.peel.land.rhs.i.peel_crit_edge, %if.end.i.i.peel.land.rhs.i.peel_crit_edge
  %.b43.i.peel = load i1, ptr @bvec_virt.__already_done, align 1
  br i1 %.b43.i.peel, label %land.rhs.i.peel.bvec_virt.exit.peel_crit_edge, label %if.then.i.peel, !prof !27

land.rhs.i.peel.bvec_virt.exit.peel_crit_edge:    ; preds = %land.rhs.i.peel
  call void @__sanitizer_cov_trace_pc() #8
  br label %bvec_virt.exit.peel

if.then.i.peel:                                   ; preds = %land.rhs.i.peel
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @bvec_virt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 240, i32 noundef 9, ptr noundef null) #6
  br label %bvec_virt.exit.peel

bvec_virt.exit.peel:                              ; preds = %if.then.i.peel, %land.rhs.i.peel.bvec_virt.exit.peel_crit_edge, %is_highmem_idx.exit.i.peel.bvec_virt.exit.peel_crit_edge, %if.end.i.i.peel.bvec_virt.exit.peel_crit_edge
  %call38.i.peel = tail call ptr @page_address(ptr noundef %add.ptr.i.i.peel) #6
  %add.ptr.i.peel = getelementptr i8, ptr %call38.i.peel, i32 %and.i.i.peel
  %add.ptr.peel = getelementptr i8, ptr %add.ptr.i.peel, i32 %offset
  %18 = call ptr @memcpy(ptr %3, ptr %add.ptr.peel, i32 %13)
  %19 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %bi_vcnt.i, align 8
  %21 = zext i1 %cmp15.i.i.peel to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %21)
  %cmp.not.i.peel = icmp ugt i16 %20, %21
  br i1 %cmp.not.i.peel, label %if.end.i.peel.next, label %bvec_virt.exit.peel.while.end_crit_edge

bvec_virt.exit.peel.while.end_crit_edge:          ; preds = %bvec_virt.exit.peel
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end.i.peel.next:                               ; preds = %bvec_virt.exit.peel
  %sub4.peel = sub i32 %length, %13
  %add.ptr3.peel = getelementptr i8, ptr %3, i32 %13
  br label %if.end.i

if.end.i:                                         ; preds = %bvec_virt.exit.if.end.i_crit_edge, %if.end.i.peel.next
  %bytes.080 = phi i32 [ %sub4.peel, %if.end.i.peel.next ], [ %sub4, %bvec_virt.exit.if.end.i_crit_edge ]
  %buff.079 = phi ptr [ %add.ptr3.peel, %if.end.i.peel.next ], [ %add.ptr3, %bvec_virt.exit.if.end.i_crit_edge ]
  %iter_all.sroa.15.077 = phi i32 [ %spec.select69.peel, %if.end.i.peel.next ], [ %spec.select69, %bvec_virt.exit.if.end.i_crit_edge ]
  %iter_all.sroa.12.076 = phi i32 [ %inc.i.i.peel, %if.end.i.peel.next ], [ %spec.select, %bvec_virt.exit.if.end.i_crit_edge ]
  %iter_all.sroa.0.075 = phi ptr [ %add.ptr.i.i.peel, %if.end.i.peel.next ], [ %iter_all.sroa.0.1, %bvec_virt.exit.if.end.i_crit_edge ]
  %22 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bi_io_vec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter_all.sroa.15.077)
  %tobool.not.i.i = icmp eq i32 %iter_all.sroa.15.077, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr.i.i = getelementptr %struct.page, ptr %iter_all.sroa.0.075, i32 1
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.bio_vec, ptr %23, i32 %iter_all.sroa.12.076
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %bv_offset3.i.i = getelementptr %struct.bio_vec, ptr %23, i32 %iter_all.sroa.12.076, i32 2
  %26 = ptrtoint ptr %bv_offset3.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bv_offset3.i.i, align 4
  %shr.i.i = lshr i32 %27, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %25, i32 %shr.i.i
  %and.i.i = and i32 %27, 4095
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %iter_all.sroa.0.1 = phi ptr [ %add.ptr.i.i, %if.else.i.i ], [ %incdec.ptr.i.i, %if.then.i.i ]
  %.sink.i.i = phi i32 [ %and.i.i, %if.else.i.i ], [ 0, %if.then.i.i ]
  %sub.i.i = sub nuw nsw i32 4096, %.sink.i.i
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %23, i32 %iter_all.sroa.12.076, i32 1
  %28 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bv_len.i.i, align 4
  %sub9.i.i = sub i32 %29, %iter_all.sroa.15.077
  %30 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %sub9.i.i) #6
  %add.i.i = add i32 %30, %iter_all.sroa.15.077
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %29)
  %cmp15.i.i = icmp eq i32 %add.i.i, %29
  %inc.i.i = zext i1 %cmp15.i.i to i32
  %spec.select = add nuw nsw i32 %iter_all.sroa.12.076, %inc.i.i
  %spec.select69 = select i1 %cmp15.i.i, i32 0, i32 %add.i.i
  %31 = tail call i32 @llvm.smin.i32(i32 %bytes.080, i32 %30)
  %32 = ptrtoint ptr %iter_all.sroa.0.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iter_all.sroa.0.1, align 4
  %shr.i.i54 = lshr i32 %33, 30
  %34 = zext i32 %shr.i.i54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %shr.i.i54, label %if.end.i.i.bvec_virt.exit_crit_edge [
    i32 2, label %if.end.i.i.land.rhs.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end.i.i.land.rhs.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

if.end.i.i.bvec_virt.exit_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bvec_virt.exit

is_highmem_idx.exit.i:                            ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %35 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp2.i.not.i = icmp eq i32 %35, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.land.rhs.i_crit_edge, label %is_highmem_idx.exit.i.bvec_virt.exit_crit_edge

is_highmem_idx.exit.i.bvec_virt.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bvec_virt.exit

is_highmem_idx.exit.i.land.rhs.i_crit_edge:       ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %is_highmem_idx.exit.i.land.rhs.i_crit_edge, %if.end.i.i.land.rhs.i_crit_edge
  %.b43.i = load i1, ptr @bvec_virt.__already_done, align 1
  br i1 %.b43.i, label %land.rhs.i.bvec_virt.exit_crit_edge, label %if.then.i, !prof !27

land.rhs.i.bvec_virt.exit_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bvec_virt.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @bvec_virt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 240, i32 noundef 9, ptr noundef null) #6
  br label %bvec_virt.exit

bvec_virt.exit:                                   ; preds = %if.then.i, %land.rhs.i.bvec_virt.exit_crit_edge, %is_highmem_idx.exit.i.bvec_virt.exit_crit_edge, %if.end.i.i.bvec_virt.exit_crit_edge
  %call38.i = tail call ptr @page_address(ptr noundef %iter_all.sroa.0.1) #6
  %add.ptr.i = getelementptr i8, ptr %call38.i, i32 %.sink.i.i
  %36 = call ptr @memcpy(ptr %buff.079, ptr %add.ptr.i, i32 %31)
  %add.ptr3 = getelementptr i8, ptr %buff.079, i32 %31
  %sub4 = sub i32 %bytes.080, %31
  %37 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %bi_vcnt.i, align 8
  %conv.i = zext i16 %38 to i32
  %cmp.not.i = icmp ult i32 %spec.select, %conv.i
  br i1 %cmp.not.i, label %bvec_virt.exit.if.end.i_crit_edge, label %bvec_virt.exit.while.end_crit_edge, !llvm.loop !28

bvec_virt.exit.while.end_crit_edge:               ; preds = %bvec_virt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

bvec_virt.exit.if.end.i_crit_edge:                ; preds = %bvec_virt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

while.end:                                        ; preds = %bvec_virt.exit.while.end_crit_edge, %bvec_virt.exit.peel.while.end_crit_edge, %entry.while.end_crit_edge
  %39 = ptrtoint ptr %strm to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %strm, align 4
  %output6 = getelementptr inbounds %struct.squashfs_lz4, ptr %strm, i32 0, i32 1
  %41 = ptrtoint ptr %output6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %output6, align 4
  %length7 = getelementptr inbounds %struct.squashfs_page_actor, ptr %output, i32 0, i32 2
  %43 = ptrtoint ptr %length7 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %length7, align 4
  %call8 = tail call i32 @LZ4_decompress_safe(ptr noundef %40, ptr noundef %42, i32 noundef %length, i32 noundef %44) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %while.end.cleanup_crit_edge, label %if.end

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %while.end
  %next_page.i = getelementptr inbounds %struct.squashfs_page_actor, ptr %output, i32 0, i32 3
  %45 = ptrtoint ptr %next_page.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %next_page.i, align 4
  %46 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %output, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %tobool.not81 = icmp eq ptr %49, null
  br i1 %tobool.not81, label %if.end.cleanup_crit_edge, label %while.body13.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body13.lr.ph:                               ; preds = %if.end
  %50 = ptrtoint ptr %output6 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %output6, align 4
  %pages.i = getelementptr inbounds %struct.squashfs_page_actor, ptr %output, i32 0, i32 1
  br label %while.body13

while.body13:                                     ; preds = %squashfs_next_page.exit.while.body13_crit_edge, %while.body13.lr.ph
  %bytes.184 = phi i32 [ %call8, %while.body13.lr.ph ], [ %sub18, %squashfs_next_page.exit.while.body13_crit_edge ]
  %data.083 = phi ptr [ %49, %while.body13.lr.ph ], [ %62, %squashfs_next_page.exit.while.body13_crit_edge ]
  %buff.182 = phi ptr [ %51, %while.body13.lr.ph ], [ %add.ptr17, %squashfs_next_page.exit.while.body13_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %bytes.184)
  %cmp14 = icmp ult i32 %bytes.184, 4097
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %while.body13
  call void @__sanitizer_cov_trace_pc() #8
  %52 = call ptr @memcpy(ptr %data.083, ptr %buff.182, i32 %bytes.184)
  br label %cleanup

if.end16:                                         ; preds = %while.body13
  %53 = call ptr @memcpy(ptr %data.083, ptr %buff.182, i32 4096)
  %54 = ptrtoint ptr %next_page.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %next_page.i, align 4
  %56 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pages.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp.i = icmp eq i32 %55, %57
  br i1 %cmp.i, label %if.end16.cleanup_crit_edge, label %squashfs_next_page.exit

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

squashfs_next_page.exit:                          ; preds = %if.end16
  %sub18 = add i32 %bytes.184, -4096
  %add.ptr17 = getelementptr i8, ptr %buff.182, i32 4096
  %58 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %output, align 4
  %inc.i = add i32 %55, 1
  %60 = ptrtoint ptr %next_page.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %inc.i, ptr %next_page.i, align 4
  %arrayidx.i56 = getelementptr ptr, ptr %59, i32 %55
  %61 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i56, align 4
  %tobool.not = icmp eq ptr %62, null
  br i1 %tobool.not, label %squashfs_next_page.exit.cleanup_crit_edge, label %squashfs_next_page.exit.while.body13_crit_edge

squashfs_next_page.exit.while.body13_crit_edge:   ; preds = %squashfs_next_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body13

squashfs_next_page.exit.cleanup_crit_edge:        ; preds = %squashfs_next_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %squashfs_next_page.exit.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then15, %if.end.cleanup_crit_edge, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %while.end.cleanup_crit_edge ], [ %call8, %if.then15 ], [ %call8, %if.end.cleanup_crit_edge ], [ %call8, %squashfs_next_page.exit.cleanup_crit_edge ], [ %call8, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @LZ4_decompress_safe(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/squashfs/lz4_wrapper.c", i32 141, i32 10}
!2 = !{ptr @squashfs_lz4_comp_ops, !3, !"squashfs_lz4_comp_ops", i1 false, i1 false}
!3 = !{!"../fs/squashfs/lz4_wrapper.c", i32 135, i32 36}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/squashfs/lz4_wrapper.c", i32 74, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @lz4_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @lz4_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/squashfs/lz4_wrapper.c", i32 44, i32 3}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @lz4_comp_opts._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @lz4_comp_opts._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../include/linux/bvec.h", i32 240, i32 2}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.peeled.count", i32 1}
