; ModuleID = '/llk/IR_all_yes/fs/squashfs/zlib_wrapper.c_pt.bc'
source_filename = "../fs/squashfs/zlib_wrapper.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.squashfs_decompressor = type { ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.z_stream_s = type { ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.squashfs_page_actor = type { ptr, i32, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.74, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.74 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.6, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.63 = type { %struct.atomic_t }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"zlib\00", [27 x i8] zeroinitializer }, align 32
@squashfs_zlib_comp_ops = dso_local constant { %struct.squashfs_decompressor, [36 x i8] } { %struct.squashfs_decompressor { ptr @zlib_init, ptr null, ptr @zlib_free, ptr @zlib_uncompress, i32 1, ptr @.str, i32 1 }, [36 x i8] zeroinitializer }, align 32
@zlib_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 36, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013SQUASHFS error: Failed to allocate zlib workspace\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"zlib_init\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fs/squashfs/zlib_wrapper.c\00", [37 x i8] zeroinitializer }, align 32
@zlib_init._entry_ptr = internal global ptr @zlib_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bvec_virt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/bvec.h\00", [43 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 124, i32 10 }
@___asan_gen_.9 = private unnamed_addr constant [23 x i8] c"squashfs_zlib_comp_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 119, i32 36 }
@___asan_gen_.12 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private constant [30 x i8] c"../fs/squashfs/zlib_wrapper.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 36, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [24 x i8] c"../include/linux/bvec.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 240, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @zlib_init._entry, ptr @zlib_init._entry_ptr, ptr @.str, ptr @squashfs_zlib_comp_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_zlib_comp_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zlib_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @zlib_init(ptr nocapture noundef readnone %dummy, ptr nocapture noundef readnone %buff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 48) #9
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @zlib_inflate_workspacesize() #6
  %call2 = tail call noalias ptr @vmalloc(i32 noundef %call1) #10
  %workspace = getelementptr inbounds %struct.z_stream_s, ptr %call7.i, i32 0, i32 8
  %1 = ptrtoint ptr %workspace to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %workspace, align 8
  %cmp4 = icmp eq ptr %call2, null
  br i1 %cmp4, label %if.end.do.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  tail call void @kfree(ptr noundef %call7.i) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %do.end ], [ %call7.i, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zlib_free(ptr noundef %strm) #0 align 64 {
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
  %workspace = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 8
  %0 = ptrtoint ptr %workspace to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %workspace, align 4
  tail call void @vfree(ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %strm) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zlib_uncompress(ptr nocapture noundef readnone %msblk, ptr noundef %strm, ptr nocapture noundef readonly %bio, i32 noundef %offset, i32 noundef %length, ptr nocapture noundef %output) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 4
  %0 = ptrtoint ptr %avail_out to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4096, ptr %avail_out, align 4
  %next_page.i = getelementptr inbounds %struct.squashfs_page_actor, ptr %output, i32 0, i32 3
  %1 = ptrtoint ptr %next_page.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %next_page.i, align 4
  %2 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %output, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 3
  %6 = ptrtoint ptr %next_out to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %next_out, align 4
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 1
  %7 = ptrtoint ptr %avail_in to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %avail_in, align 4
  %bi_vcnt.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 17
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %pages.i = getelementptr inbounds %struct.squashfs_page_actor, ptr %output, i32 0, i32 1
  br label %for.cond

for.condthread-pre-split:                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %avail_in to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %avail_in, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.condthread-pre-split, %entry
  %9 = phi i32 [ %.pr, %for.condthread-pre-split ], [ 0, %entry ]
  %iter_all.sroa.0.0 = phi ptr [ %iter_all.sroa.0.3, %for.condthread-pre-split ], [ null, %entry ]
  %iter_all.sroa.12.0 = phi i32 [ %iter_all.sroa.12.2, %for.condthread-pre-split ], [ 0, %entry ]
  %iter_all.sroa.15.0 = phi i32 [ %iter_all.sroa.15.2, %for.condthread-pre-split ], [ 0, %entry ]
  %length.addr.0 = phi i32 [ %length.addr.2, %for.condthread-pre-split ], [ %length, %entry ]
  %tobool.not = phi i1 [ false, %for.condthread-pre-split ], [ true, %entry ]
  %offset.addr.0 = phi i32 [ %offset.addr.2, %for.condthread-pre-split ], [ %offset, %entry ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %for.cond.if.end10_crit_edge

for.cond.if.end10_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then:                                          ; preds = %for.cond
  %10 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bi_vcnt.i, align 8
  %conv.i = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %iter_all.sroa.12.0, i32 %conv.i)
  %cmp.not.i = icmp slt i32 %iter_all.sroa.12.0, %conv.i
  br i1 %cmp.not.i, label %if.end.i, label %if.then.cond.end48_crit_edge

if.then.cond.end48_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end48

if.end.i:                                         ; preds = %if.then
  %12 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bi_io_vec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter_all.sroa.15.0)
  %tobool.not.i.i = icmp eq i32 %iter_all.sroa.15.0, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr.i.i = getelementptr %struct.page, ptr %iter_all.sroa.0.0, i32 1
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.bio_vec, ptr %13, i32 %iter_all.sroa.12.0
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %bv_offset3.i.i = getelementptr %struct.bio_vec, ptr %13, i32 %iter_all.sroa.12.0, i32 2
  %16 = ptrtoint ptr %bv_offset3.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bv_offset3.i.i, align 4
  %shr.i.i = lshr i32 %17, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %15, i32 %shr.i.i
  %and.i.i = and i32 %17, 4095
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %iter_all.sroa.0.1 = phi ptr [ %add.ptr.i.i, %if.else.i.i ], [ %incdec.ptr.i.i, %if.then.i.i ]
  %.sink.i.i = phi i32 [ %and.i.i, %if.else.i.i ], [ 0, %if.then.i.i ]
  %sub.i.i = sub nuw nsw i32 4096, %.sink.i.i
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %13, i32 %iter_all.sroa.12.0, i32 1
  %18 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bv_len.i.i, align 4
  %sub9.i.i = sub i32 %19, %iter_all.sroa.15.0
  %20 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %sub9.i.i) #6
  %add.i.i = add i32 %20, %iter_all.sroa.15.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %19)
  %cmp15.i.i = icmp eq i32 %add.i.i, %19
  %inc.i.i = zext i1 %cmp15.i.i to i32
  %spec.select = add nsw i32 %iter_all.sroa.12.0, %inc.i.i
  %spec.select130 = select i1 %cmp15.i.i, i32 0, i32 %add.i.i
  %sub = sub i32 %20, %offset.addr.0
  %21 = tail call i32 @llvm.smin.i32(i32 %length.addr.0, i32 %sub)
  %22 = ptrtoint ptr %iter_all.sroa.0.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iter_all.sroa.0.1, align 4
  %shr.i.i83 = lshr i32 %23, 30
  %24 = zext i32 %shr.i.i83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i83, label %if.end.i.i.cleanup.thread_crit_edge [
    i32 2, label %if.end.i.i.land.rhs.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end.i.i.land.rhs.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

if.end.i.i.cleanup.thread_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

is_highmem_idx.exit.i:                            ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %25 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp2.i.not.i = icmp eq i32 %25, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.land.rhs.i_crit_edge, label %is_highmem_idx.exit.i.cleanup.thread_crit_edge

is_highmem_idx.exit.i.cleanup.thread_crit_edge:   ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

is_highmem_idx.exit.i.land.rhs.i_crit_edge:       ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %is_highmem_idx.exit.i.land.rhs.i_crit_edge, %if.end.i.i.land.rhs.i_crit_edge
  %.b43.i = load i1, ptr @bvec_virt.__already_done, align 1
  br i1 %.b43.i, label %land.rhs.i.cleanup.thread_crit_edge, label %if.then.i, !prof !22

land.rhs.i.cleanup.thread_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @bvec_virt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 240, i32 noundef 9, ptr noundef null) #6
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then.i, %land.rhs.i.cleanup.thread_crit_edge, %is_highmem_idx.exit.i.cleanup.thread_crit_edge, %if.end.i.i.cleanup.thread_crit_edge
  %call38.i = tail call ptr @page_address(ptr noundef %iter_all.sroa.0.1) #6
  %add.ptr.i = getelementptr i8, ptr %call38.i, i32 %.sink.i.i
  %sub7 = sub i32 %length.addr.0, %21
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %offset.addr.0
  %26 = ptrtoint ptr %strm to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr, ptr %strm, align 4
  %27 = ptrtoint ptr %avail_in to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %21, ptr %avail_in, align 4
  br label %if.end10

if.end10:                                         ; preds = %cleanup.thread, %for.cond.if.end10_crit_edge
  %iter_all.sroa.0.3 = phi ptr [ %iter_all.sroa.0.0, %for.cond.if.end10_crit_edge ], [ %iter_all.sroa.0.1, %cleanup.thread ]
  %iter_all.sroa.12.2 = phi i32 [ %iter_all.sroa.12.0, %for.cond.if.end10_crit_edge ], [ %spec.select, %cleanup.thread ]
  %iter_all.sroa.15.2 = phi i32 [ %iter_all.sroa.15.0, %for.cond.if.end10_crit_edge ], [ %spec.select130, %cleanup.thread ]
  %length.addr.2 = phi i32 [ %length.addr.0, %for.cond.if.end10_crit_edge ], [ %sub7, %cleanup.thread ]
  %offset.addr.2 = phi i32 [ %offset.addr.0, %for.cond.if.end10_crit_edge ], [ 0, %cleanup.thread ]
  %28 = ptrtoint ptr %avail_out to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %avail_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp12 = icmp eq i32 %29, 0
  br i1 %cmp12, label %if.then13, label %if.end10.if.end21_crit_edge

if.end10.if.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then13:                                        ; preds = %if.end10
  %30 = ptrtoint ptr %next_page.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %next_page.i, align 4
  %32 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pages.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp.i = icmp eq i32 %31, %33
  br i1 %cmp.i, label %squashfs_next_page.exit.thread, label %squashfs_next_page.exit

squashfs_next_page.exit.thread:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %next_out to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %next_out, align 4
  br label %if.end21

squashfs_next_page.exit:                          ; preds = %if.then13
  %35 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %output, align 4
  %inc.i = add i32 %31, 1
  %37 = ptrtoint ptr %next_page.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %inc.i, ptr %next_page.i, align 4
  %arrayidx.i85 = getelementptr ptr, ptr %36, i32 %31
  %38 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i85, align 4
  %40 = ptrtoint ptr %next_out to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %next_out, align 4
  %cmp17.not = icmp eq ptr %39, null
  br i1 %cmp17.not, label %squashfs_next_page.exit.if.end21_crit_edge, label %if.then18

squashfs_next_page.exit.if.end21_crit_edge:       ; preds = %squashfs_next_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then18:                                        ; preds = %squashfs_next_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %avail_out to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4096, ptr %avail_out, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %squashfs_next_page.exit.if.end21_crit_edge, %squashfs_next_page.exit.thread, %if.end10.if.end21_crit_edge
  br i1 %tobool.not, label %if.then22, label %if.end21.if.end27_crit_edge

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then22:                                        ; preds = %if.end21
  %call23 = tail call i32 @zlib_inflateInit2(ptr noundef %strm, i32 noundef 15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24.not = icmp eq i32 %call23, 0
  br i1 %cmp24.not, label %if.then22.if.end27_crit_edge, label %if.then22.cond.end48_crit_edge

if.then22.cond.end48_crit_edge:                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end48

if.then22.if.end27_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.end27:                                         ; preds = %if.then22.if.end27_crit_edge, %if.end21.if.end27_crit_edge
  %call28 = tail call i32 @zlib_inflate(ptr noundef %strm, i32 noundef 3) #6
  %42 = zext i32 %call28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %call28, label %if.end27.cond.end48_crit_edge [
    i32 1, label %if.then39
    i32 0, label %for.condthread-pre-split
  ]

if.end27.cond.end48_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end48

if.then39:                                        ; preds = %if.end27
  %call40 = tail call i32 @zlib_inflateEnd(ptr noundef %strm) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41.not = icmp eq i32 %call40, 0
  br i1 %cmp41.not, label %cond.false47, label %if.then39.cond.end48_crit_edge

if.then39.cond.end48_crit_edge:                   ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end48

cond.false47:                                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 5
  %43 = ptrtoint ptr %total_out to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %total_out, align 4
  br label %cond.end48

cond.end48:                                       ; preds = %cond.false47, %if.then39.cond.end48_crit_edge, %if.end27.cond.end48_crit_edge, %if.then22.cond.end48_crit_edge, %if.then.cond.end48_crit_edge
  %cond49 = phi i32 [ %44, %cond.false47 ], [ -5, %if.then39.cond.end48_crit_edge ], [ -5, %if.then.cond.end48_crit_edge ], [ -5, %if.then22.cond.end48_crit_edge ], [ -5, %if.end27.cond.end48_crit_edge ]
  ret i32 %cond49
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflate_workspacesize() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflateInit2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/squashfs/zlib_wrapper.c", i32 124, i32 10}
!2 = !{ptr @squashfs_zlib_comp_ops, !3, !"squashfs_zlib_comp_ops", i1 false, i1 false}
!3 = !{!"../fs/squashfs/zlib_wrapper.c", i32 119, i32 36}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/squashfs/zlib_wrapper.c", i32 36, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @zlib_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @zlib_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
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
