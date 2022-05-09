; ModuleID = '/llk/IR_all_yes/fs/squashfs/xz_wrapper.c_pt.bc'
source_filename = "../fs/squashfs/xz_wrapper.c"
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
%struct.squashfs_xz = type { ptr, %struct.xz_buf }
%struct.xz_buf = type { ptr, i32, i32, ptr, i32, i32 }
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

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"xz\00", [29 x i8] zeroinitializer }, align 32
@squashfs_xz_comp_ops = dso_local constant { %struct.squashfs_decompressor, [36 x i8] } { %struct.squashfs_decompressor { ptr @squashfs_xz_init, ptr @squashfs_xz_comp_opts, ptr @squashfs_xz_free, ptr @squashfs_xz_uncompress, i32 4, ptr @.str, i32 1 }, [36 x i8] zeroinitializer }, align 32
@squashfs_xz_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013SQUASHFS error: Failed to initialise xz decompressor\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"squashfs_xz_init\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fs/squashfs/xz_wrapper.c\00", [39 x i8] zeroinitializer }, align 32
@squashfs_xz_init._entry_ptr = internal global ptr @squashfs_xz_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bvec_virt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/bvec.h\00", [43 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 185, i32 10 }
@___asan_gen_.9 = private unnamed_addr constant [21 x i8] c"squashfs_xz_comp_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 179, i32 36 }
@___asan_gen_.12 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private constant [28 x i8] c"../fs/squashfs/xz_wrapper.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 103, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [24 x i8] c"../include/linux/bvec.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 240, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @squashfs_xz_init._entry, ptr @squashfs_xz_init._entry_ptr, ptr @.str, ptr @squashfs_xz_comp_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_xz_comp_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_xz_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @squashfs_xz_init(ptr nocapture noundef readnone %msblk, ptr nocapture noundef readonly %buff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 28) #8
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %buff to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %buff, align 4
  %call1 = tail call ptr @xz_dec_init(i32 noundef 1, i32 noundef %2) #5
  %3 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %call7.i, align 8
  %cmp3 = icmp eq ptr %call1, null
  br i1 %cmp3, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i) #5
  br label %do.end

do.end:                                           ; preds = %if.then4, %entry.do.end_crit_edge
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %do.end ], [ %call7.i, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @squashfs_xz_comp_opts(ptr nocapture noundef readonly %msblk, ptr noundef readonly %buff, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4) #8
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %buff, null
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %len)
  %cmp2 = icmp ult i32 %len, 8
  br i1 %cmp2, label %if.then1.out_crit_edge, label %if.end4

if.then1.out_crit_edge:                           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end4:                                          ; preds = %if.then1
  %1 = ptrtoint ptr %buff to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %buff, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %call7.i, align 8
  %5 = tail call i32 @llvm.cttz.i32(i32 %3, i1 true), !range !22
  %6 = add nuw nsw i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %iszero = icmp eq i32 %2, 0
  %ffs = select i1 %iszero, i32 0, i32 %6
  %sub = add nsw i32 %ffs, -1
  %shl = shl nuw i32 1, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %shl)
  %cmp7.not = icmp eq i32 %3, %shl
  br i1 %cmp7.not, label %if.end4.cleanup_crit_edge, label %land.lhs.true

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end4
  %shl10 = shl nuw i32 1, %ffs
  %add11 = add i32 %shl, %shl10
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add11)
  %cmp12.not = icmp eq i32 %3, %add11
  br i1 %cmp12.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %block_size = getelementptr inbounds %struct.squashfs_sb_info, ptr %msblk, i32 0, i32 17
  %7 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %block_size, align 8
  %9 = tail call i32 @llvm.smax.i32(i32 %8, i32 8192)
  %10 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %call7.i, align 8
  br label %cleanup

out:                                              ; preds = %land.lhs.true.out_crit_edge, %if.then1.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %if.else, %land.lhs.true.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i, %if.end4.cleanup_crit_edge ], [ %call7.i, %land.lhs.true.cleanup_crit_edge ], [ %call7.i, %if.else ], [ inttoptr (i32 -5 to ptr), %out ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @squashfs_xz_free(ptr noundef %strm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %strm, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %strm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %strm, align 4
  tail call void @xz_dec_end(ptr noundef %1) #5
  tail call void @kfree(ptr noundef nonnull %strm) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @squashfs_xz_uncompress(ptr nocapture noundef readnone %msblk, ptr noundef %strm, ptr nocapture noundef readonly %bio, i32 noundef %offset, i32 noundef %length, ptr nocapture noundef %output) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %strm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %strm, align 4
  tail call void @xz_dec_reset(ptr noundef %1) #5
  %buf = getelementptr inbounds %struct.squashfs_xz, ptr %strm, i32 0, i32 1
  %in_pos = getelementptr inbounds %struct.squashfs_xz, ptr %strm, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %in_pos to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %in_pos, align 4
  %in_size = getelementptr inbounds %struct.squashfs_xz, ptr %strm, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %in_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %in_size, align 4
  %out_pos = getelementptr inbounds %struct.squashfs_xz, ptr %strm, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %out_pos to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %out_pos, align 4
  %out_size = getelementptr inbounds %struct.squashfs_xz, ptr %strm, i32 0, i32 1, i32 5
  %5 = ptrtoint ptr %out_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4096, ptr %out_size, align 4
  %next_page.i = getelementptr inbounds %struct.squashfs_page_actor, ptr %output, i32 0, i32 3
  %6 = ptrtoint ptr %next_page.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %next_page.i, align 4
  %7 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %output, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %out = getelementptr inbounds %struct.squashfs_xz, ptr %strm, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %out, align 4
  %bi_vcnt.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 17
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %pages.i = getelementptr inbounds %struct.squashfs_page_actor, ptr %output, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %if.end38.for.cond_crit_edge, %entry
  %iter_all.sroa.0.0 = phi ptr [ null, %entry ], [ %iter_all.sroa.0.3, %if.end38.for.cond_crit_edge ]
  %iter_all.sroa.12.0 = phi i32 [ 0, %entry ], [ %iter_all.sroa.12.2, %if.end38.for.cond_crit_edge ]
  %iter_all.sroa.15.0 = phi i32 [ 0, %entry ], [ %iter_all.sroa.15.2, %if.end38.for.cond_crit_edge ]
  %length.addr.0 = phi i32 [ %length, %entry ], [ %length.addr.2, %if.end38.for.cond_crit_edge ]
  %total.0 = phi i32 [ 0, %entry ], [ %total.1, %if.end38.for.cond_crit_edge ]
  %offset.addr.0 = phi i32 [ %offset, %entry ], [ %offset.addr.2, %if.end38.for.cond_crit_edge ]
  %12 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %in_pos, align 4
  %14 = ptrtoint ptr %in_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %in_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp = icmp eq i32 %13, %15
  br i1 %cmp, label %if.then, label %for.cond.if.end21_crit_edge

for.cond.if.end21_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then:                                          ; preds = %for.cond
  %16 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %bi_vcnt.i, align 8
  %conv.i = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %iter_all.sroa.12.0, i32 %conv.i)
  %cmp.not.i = icmp slt i32 %iter_all.sroa.12.0, %conv.i
  br i1 %cmp.not.i, label %if.end.i, label %if.then.cond.end56_crit_edge

if.then.cond.end56_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end56

if.end.i:                                         ; preds = %if.then
  %18 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bi_io_vec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter_all.sroa.15.0)
  %tobool.not.i.i = icmp eq i32 %iter_all.sroa.15.0, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr.i.i = getelementptr %struct.page, ptr %iter_all.sroa.0.0, i32 1
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr %struct.bio_vec, ptr %19, i32 %iter_all.sroa.12.0
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %bv_offset3.i.i = getelementptr %struct.bio_vec, ptr %19, i32 %iter_all.sroa.12.0, i32 2
  %22 = ptrtoint ptr %bv_offset3.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bv_offset3.i.i, align 4
  %shr.i.i = lshr i32 %23, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %21, i32 %shr.i.i
  %and.i.i = and i32 %23, 4095
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %iter_all.sroa.0.1 = phi ptr [ %add.ptr.i.i, %if.else.i.i ], [ %incdec.ptr.i.i, %if.then.i.i ]
  %.sink.i.i = phi i32 [ %and.i.i, %if.else.i.i ], [ 0, %if.then.i.i ]
  %sub.i.i = sub nuw nsw i32 4096, %.sink.i.i
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %19, i32 %iter_all.sroa.12.0, i32 1
  %24 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bv_len.i.i, align 4
  %sub9.i.i = sub i32 %25, %iter_all.sroa.15.0
  %26 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %sub9.i.i) #5
  %add.i.i = add i32 %26, %iter_all.sroa.15.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %25)
  %cmp15.i.i = icmp eq i32 %add.i.i, %25
  %inc.i.i = zext i1 %cmp15.i.i to i32
  %spec.select = add nsw i32 %iter_all.sroa.12.0, %inc.i.i
  %spec.select142 = select i1 %cmp15.i.i, i32 0, i32 %add.i.i
  %sub = sub i32 %26, %offset.addr.0
  %27 = tail call i32 @llvm.smin.i32(i32 %length.addr.0, i32 %sub)
  %28 = ptrtoint ptr %iter_all.sroa.0.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iter_all.sroa.0.1, align 4
  %shr.i.i95 = lshr i32 %29, 30
  %30 = zext i32 %shr.i.i95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i95, label %if.end.i.i.cleanup.thread_crit_edge [
    i32 2, label %if.end.i.i.land.rhs.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end.i.i.land.rhs.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

if.end.i.i.cleanup.thread_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

is_highmem_idx.exit.i:                            ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %31 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp2.i.not.i = icmp eq i32 %31, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.land.rhs.i_crit_edge, label %is_highmem_idx.exit.i.cleanup.thread_crit_edge

is_highmem_idx.exit.i.cleanup.thread_crit_edge:   ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

is_highmem_idx.exit.i.land.rhs.i_crit_edge:       ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %is_highmem_idx.exit.i.land.rhs.i_crit_edge, %if.end.i.i.land.rhs.i_crit_edge
  %.b43.i = load i1, ptr @bvec_virt.__already_done, align 1
  br i1 %.b43.i, label %land.rhs.i.cleanup.thread_crit_edge, label %if.then.i, !prof !23

land.rhs.i.cleanup.thread_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @bvec_virt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 240, i32 noundef 9, ptr noundef null) #5
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then.i, %land.rhs.i.cleanup.thread_crit_edge, %is_highmem_idx.exit.i.cleanup.thread_crit_edge, %if.end.i.i.cleanup.thread_crit_edge
  %call38.i = tail call ptr @page_address(ptr noundef %iter_all.sroa.0.1) #5
  %add.ptr.i = getelementptr i8, ptr %call38.i, i32 %.sink.i.i
  %sub14 = sub i32 %length.addr.0, %27
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %offset.addr.0
  %32 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr, ptr %buf, align 4
  %33 = ptrtoint ptr %in_size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %27, ptr %in_size, align 4
  %34 = ptrtoint ptr %in_pos to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %in_pos, align 4
  br label %if.end21

if.end21:                                         ; preds = %cleanup.thread, %for.cond.if.end21_crit_edge
  %iter_all.sroa.0.3 = phi ptr [ %iter_all.sroa.0.0, %for.cond.if.end21_crit_edge ], [ %iter_all.sroa.0.1, %cleanup.thread ]
  %iter_all.sroa.12.2 = phi i32 [ %iter_all.sroa.12.0, %for.cond.if.end21_crit_edge ], [ %spec.select, %cleanup.thread ]
  %iter_all.sroa.15.2 = phi i32 [ %iter_all.sroa.15.0, %for.cond.if.end21_crit_edge ], [ %spec.select142, %cleanup.thread ]
  %length.addr.2 = phi i32 [ %length.addr.0, %for.cond.if.end21_crit_edge ], [ %sub14, %cleanup.thread ]
  %offset.addr.2 = phi i32 [ %offset.addr.0, %for.cond.if.end21_crit_edge ], [ 0, %cleanup.thread ]
  %35 = ptrtoint ptr %out_pos to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %out_pos, align 4
  %37 = ptrtoint ptr %out_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %out_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp26 = icmp eq i32 %36, %38
  br i1 %cmp26, label %if.then27, label %if.end21.if.end38_crit_edge

if.end21.if.end38_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then27:                                        ; preds = %if.end21
  %39 = ptrtoint ptr %next_page.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %next_page.i, align 4
  %41 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pages.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp.i = icmp eq i32 %40, %42
  br i1 %cmp.i, label %squashfs_next_page.exit.thread, label %squashfs_next_page.exit

squashfs_next_page.exit.thread:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %out, align 4
  br label %if.end38

squashfs_next_page.exit:                          ; preds = %if.then27
  %44 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %output, align 4
  %inc.i = add i32 %40, 1
  %46 = ptrtoint ptr %next_page.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %inc.i, ptr %next_page.i, align 4
  %arrayidx.i97 = getelementptr ptr, ptr %45, i32 %40
  %47 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i97, align 4
  %49 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %out, align 4
  %cmp33.not = icmp eq ptr %48, null
  br i1 %cmp33.not, label %squashfs_next_page.exit.if.end38_crit_edge, label %if.then34

squashfs_next_page.exit.if.end38_crit_edge:       ; preds = %squashfs_next_page.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then34:                                        ; preds = %squashfs_next_page.exit
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %out_pos to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %out_pos, align 4
  %add = add i32 %total.0, 4096
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %squashfs_next_page.exit.if.end38_crit_edge, %squashfs_next_page.exit.thread, %if.end21.if.end38_crit_edge
  %total.1 = phi i32 [ %add, %if.then34 ], [ %total.0, %squashfs_next_page.exit.if.end38_crit_edge ], [ %total.0, %if.end21.if.end38_crit_edge ], [ %total.0, %squashfs_next_page.exit.thread ]
  %51 = ptrtoint ptr %strm to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %strm, align 4
  %call41 = tail call i32 @xz_dec_run(ptr noundef %52, ptr noundef %buf) #5
  %53 = zext i32 %call41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %call41, label %if.end38.cond.end56_crit_edge [
    i32 1, label %cond.false52
    i32 0, label %if.end38.for.cond_crit_edge
  ]

if.end38.for.cond_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.end38.cond.end56_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end56

cond.false52:                                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %out_pos to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %out_pos, align 4
  %add55 = add i32 %55, %total.1
  br label %cond.end56

cond.end56:                                       ; preds = %cond.false52, %if.end38.cond.end56_crit_edge, %if.then.cond.end56_crit_edge
  %cond57 = phi i32 [ %add55, %cond.false52 ], [ -5, %if.then.cond.end56_crit_edge ], [ -5, %if.end38.cond.end56_crit_edge ]
  ret i32 %cond57
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xz_dec_init(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xz_dec_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xz_dec_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xz_dec_run(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/squashfs/xz_wrapper.c", i32 185, i32 10}
!2 = !{ptr @squashfs_xz_comp_ops, !3, !"squashfs_xz_comp_ops", i1 false, i1 false}
!3 = !{!"../fs/squashfs/xz_wrapper.c", i32 179, i32 36}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/squashfs/xz_wrapper.c", i32 103, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @squashfs_xz_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @squashfs_xz_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
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
!22 = !{i32 0, i32 33}
!23 = !{!"branch_weights", i32 2000, i32 1}
