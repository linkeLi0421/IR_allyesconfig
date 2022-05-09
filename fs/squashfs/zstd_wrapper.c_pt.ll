; ModuleID = '/llk/IR_all_yes/fs/squashfs/zstd_wrapper.c_pt.bc'
source_filename = "../fs/squashfs/zstd_wrapper.c"
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
%struct.workspace = type { ptr, i32, i32 }
%struct.ZSTD_inBuffer_s = type { ptr, i32, i32 }
%struct.ZSTD_outBuffer_s = type { ptr, i32, i32 }
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

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"zstd\00", [27 x i8] zeroinitializer }, align 32
@squashfs_zstd_comp_ops = dso_local constant { %struct.squashfs_decompressor, [36 x i8] } { %struct.squashfs_decompressor { ptr @zstd_init, ptr null, ptr @zstd_free, ptr @zstd_uncompress, i32 6, ptr @.str, i32 1 }, [36 x i8] zeroinitializer }, align 32
@zstd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013SQUASHFS error: Failed to allocate zstd workspace\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"zstd_init\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fs/squashfs/zstd_wrapper.c\00", [37 x i8] zeroinitializer }, align 32
@zstd_init._entry_ptr = internal global ptr @zstd_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@zstd_uncompress._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013SQUASHFS error: Failed to initialize zstd decompressor\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zstd_uncompress\00", [16 x i8] zeroinitializer }, align 32
@zstd_uncompress._entry_ptr = internal global ptr @zstd_uncompress._entry, section ".printk_index", align 4
@zstd_uncompress._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.3, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013SQUASHFS error: zstd decompression error: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@zstd_uncompress._entry_ptr.8 = internal global ptr @zstd_uncompress._entry.6, section ".printk_index", align 4
@bvec_virt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/bvec.h\00", [43 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 142, i32 10 }
@___asan_gen_.13 = private unnamed_addr constant [23 x i8] c"squashfs_zstd_comp_ops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 137, i32 36 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 45, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 77, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.41 = private constant [30 x i8] c"../fs/squashfs/zstd_wrapper.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 125, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [24 x i8] c"../include/linux/bvec.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 240, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @zstd_init._entry, ptr @zstd_init._entry_ptr, ptr @zstd_uncompress._entry, ptr @zstd_uncompress._entry.6, ptr @zstd_uncompress._entry_ptr, ptr @zstd_uncompress._entry_ptr.8, ptr @.str, ptr @squashfs_zstd_comp_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_zstd_comp_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zstd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zstd_uncompress._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zstd_uncompress._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @zstd_init(ptr nocapture noundef readonly %msblk, ptr nocapture noundef readnone %buff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 12) #10
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end:                                           ; preds = %entry
  %block_size = getelementptr inbounds %struct.squashfs_sb_info, ptr %msblk, i32 0, i32 17
  %1 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %block_size, align 8
  %3 = tail call i32 @llvm.umax.i32(i32 %2, i32 8192)
  %window_size = getelementptr inbounds %struct.workspace, ptr %call7.i, i32 0, i32 2
  %4 = ptrtoint ptr %window_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %window_size, align 8
  %call3 = tail call i32 @zstd_dstream_workspace_bound(i32 noundef %3) #7
  %mem_size = getelementptr inbounds %struct.workspace, ptr %call7.i, i32 0, i32 1
  %5 = ptrtoint ptr %mem_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call3, ptr %mem_size, align 4
  %call5 = tail call noalias ptr @vmalloc(i32 noundef %call3) #11
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %call7.i, align 8
  %cmp7 = icmp eq ptr %call5, null
  br i1 %cmp7, label %if.end.do.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  tail call void @kfree(ptr noundef %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %do.end ], [ %call7.i, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zstd_free(ptr noundef %strm) #0 align 64 {
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
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %strm) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zstd_uncompress(ptr nocapture noundef readnone %msblk, ptr nocapture noundef readonly %strm, ptr nocapture noundef readonly %bio, i32 noundef %offset, i32 noundef %length, ptr nocapture noundef %output) #0 align 64 {
entry:
  %in_buf = alloca %struct.ZSTD_inBuffer_s, align 4
  %out_buf = alloca %struct.ZSTD_outBuffer_s, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %in_buf) #7
  %0 = call ptr @memset(ptr %in_buf, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %out_buf) #7
  %1 = getelementptr inbounds i8, ptr %out_buf, i32 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %1, align 4
  %window_size = getelementptr inbounds %struct.workspace, ptr %strm, i32 0, i32 2
  %3 = ptrtoint ptr %window_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %window_size, align 4
  %5 = ptrtoint ptr %strm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %strm, align 4
  %mem_size = getelementptr inbounds %struct.workspace, ptr %strm, i32 0, i32 1
  %7 = ptrtoint ptr %mem_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mem_size, align 4
  %call1 = tail call ptr @zstd_init_dstream(i32 noundef %4, ptr noundef %6, i32 noundef %8) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #12
  br label %cleanup55

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %out_buf, i32 0, i32 1
  %9 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4096, ptr %size, align 4
  %next_page.i = getelementptr inbounds %struct.squashfs_page_actor, ptr %output, i32 0, i32 3
  %10 = ptrtoint ptr %next_page.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %next_page.i, align 4
  %11 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %output, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %15 = ptrtoint ptr %out_buf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %out_buf, align 4
  %pos = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %in_buf, i32 0, i32 2
  %size4 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %in_buf, i32 0, i32 1
  %bi_vcnt.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 17
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %pos17 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %out_buf, i32 0, i32 2
  %pages.i = getelementptr inbounds %struct.squashfs_page_actor, ptr %output, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %if.end36.for.cond_crit_edge, %if.end
  %iter_all.sroa.0.0 = phi ptr [ null, %if.end ], [ %iter_all.sroa.0.3, %if.end36.for.cond_crit_edge ]
  %iter_all.sroa.12.0 = phi i32 [ 0, %if.end ], [ %iter_all.sroa.12.2, %if.end36.for.cond_crit_edge ]
  %iter_all.sroa.15.0 = phi i32 [ 0, %if.end ], [ %iter_all.sroa.15.2, %if.end36.for.cond_crit_edge ]
  %total_out.0 = phi i32 [ 0, %if.end ], [ %add, %if.end36.for.cond_crit_edge ]
  %length.addr.0 = phi i32 [ %length, %if.end ], [ %length.addr.2, %if.end36.for.cond_crit_edge ]
  %offset.addr.0 = phi i32 [ %offset, %if.end ], [ %offset.addr.2, %if.end36.for.cond_crit_edge ]
  %16 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pos, align 4
  %18 = ptrtoint ptr %size4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp = icmp eq i32 %17, %19
  br i1 %cmp, label %if.then5, label %for.cond.if.end16_crit_edge

for.cond.if.end16_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then5:                                         ; preds = %for.cond
  %20 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %bi_vcnt.i, align 8
  %conv.i = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %iter_all.sroa.12.0, i32 %conv.i)
  %cmp.not.i = icmp slt i32 %iter_all.sroa.12.0, %conv.i
  br i1 %cmp.not.i, label %if.end.i, label %if.then5.cleanup55_crit_edge

if.then5.cleanup55_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup55

if.end.i:                                         ; preds = %if.then5
  %22 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bi_io_vec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter_all.sroa.15.0)
  %tobool.not.i.i = icmp eq i32 %iter_all.sroa.15.0, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i.i = getelementptr %struct.page, ptr %iter_all.sroa.0.0, i32 1
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.bio_vec, ptr %23, i32 %iter_all.sroa.12.0
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %bv_offset3.i.i = getelementptr %struct.bio_vec, ptr %23, i32 %iter_all.sroa.12.0, i32 2
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
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %23, i32 %iter_all.sroa.12.0, i32 1
  %28 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bv_len.i.i, align 4
  %sub9.i.i = sub i32 %29, %iter_all.sroa.15.0
  %30 = call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %sub9.i.i) #7
  %add.i.i = add i32 %30, %iter_all.sroa.15.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %29)
  %cmp15.i.i = icmp eq i32 %add.i.i, %29
  %inc.i.i = zext i1 %cmp15.i.i to i32
  %spec.select = add nsw i32 %iter_all.sroa.12.0, %inc.i.i
  %spec.select129 = select i1 %cmp15.i.i, i32 0, i32 %add.i.i
  %sub = sub i32 %30, %offset.addr.0
  %31 = call i32 @llvm.smin.i32(i32 %length.addr.0, i32 %sub)
  %32 = ptrtoint ptr %iter_all.sroa.0.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iter_all.sroa.0.1, align 4
  %shr.i.i82 = lshr i32 %33, 30
  %34 = zext i32 %shr.i.i82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i82, label %if.end.i.i.cleanup.thread_crit_edge [
    i32 2, label %if.end.i.i.land.rhs.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end.i.i.land.rhs.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

if.end.i.i.cleanup.thread_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

is_highmem_idx.exit.i:                            ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %35 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp2.i.not.i = icmp eq i32 %35, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.land.rhs.i_crit_edge, label %is_highmem_idx.exit.i.cleanup.thread_crit_edge

is_highmem_idx.exit.i.cleanup.thread_crit_edge:   ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

is_highmem_idx.exit.i.land.rhs.i_crit_edge:       ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %is_highmem_idx.exit.i.land.rhs.i_crit_edge, %if.end.i.i.land.rhs.i_crit_edge
  %.b43.i = load i1, ptr @bvec_virt.__already_done, align 1
  br i1 %.b43.i, label %land.rhs.i.cleanup.thread_crit_edge, label %if.then.i, !prof !31

land.rhs.i.cleanup.thread_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @bvec_virt.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 240, i32 noundef 9, ptr noundef null) #7
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then.i, %land.rhs.i.cleanup.thread_crit_edge, %is_highmem_idx.exit.i.cleanup.thread_crit_edge, %if.end.i.i.cleanup.thread_crit_edge
  %call38.i = call ptr @page_address(ptr noundef %iter_all.sroa.0.1) #7
  %add.ptr.i = getelementptr i8, ptr %call38.i, i32 %.sink.i.i
  %sub12 = sub i32 %length.addr.0, %31
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %offset.addr.0
  %36 = ptrtoint ptr %in_buf to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr, ptr %in_buf, align 4
  %37 = ptrtoint ptr %size4 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %31, ptr %size4, align 4
  %38 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %pos, align 4
  br label %if.end16

if.end16:                                         ; preds = %cleanup.thread, %for.cond.if.end16_crit_edge
  %iter_all.sroa.0.3 = phi ptr [ %iter_all.sroa.0.0, %for.cond.if.end16_crit_edge ], [ %iter_all.sroa.0.1, %cleanup.thread ]
  %iter_all.sroa.12.2 = phi i32 [ %iter_all.sroa.12.0, %for.cond.if.end16_crit_edge ], [ %spec.select, %cleanup.thread ]
  %iter_all.sroa.15.2 = phi i32 [ %iter_all.sroa.15.0, %for.cond.if.end16_crit_edge ], [ %spec.select129, %cleanup.thread ]
  %length.addr.2 = phi i32 [ %length.addr.0, %for.cond.if.end16_crit_edge ], [ %sub12, %cleanup.thread ]
  %offset.addr.2 = phi i32 [ %offset.addr.0, %for.cond.if.end16_crit_edge ], [ 0, %cleanup.thread ]
  %39 = ptrtoint ptr %pos17 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pos17, align 4
  %41 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp19 = icmp eq i32 %40, %42
  br i1 %cmp19, label %if.then20, label %if.end16.if.end29_crit_edge

if.end16.if.end29_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then20:                                        ; preds = %if.end16
  %43 = ptrtoint ptr %next_page.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %next_page.i, align 4
  %45 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pages.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp.i = icmp eq i32 %44, %46
  br i1 %cmp.i, label %if.then20.cleanup55_crit_edge, label %squashfs_next_page.exit

if.then20.cleanup55_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup55

squashfs_next_page.exit:                          ; preds = %if.then20
  %47 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %output, align 4
  %inc.i = add i32 %44, 1
  %49 = ptrtoint ptr %next_page.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %inc.i, ptr %next_page.i, align 4
  %arrayidx.i84 = getelementptr ptr, ptr %48, i32 %44
  %50 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i84, align 4
  %52 = ptrtoint ptr %out_buf to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %out_buf, align 4
  %cmp24 = icmp eq ptr %51, null
  br i1 %cmp24, label %squashfs_next_page.exit.cleanup55_crit_edge, label %if.end26

squashfs_next_page.exit.cleanup55_crit_edge:      ; preds = %squashfs_next_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup55

if.end26:                                         ; preds = %squashfs_next_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %pos17 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %pos17, align 4
  %54 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 4096, ptr %size, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end26, %if.end16.if.end29_crit_edge
  %55 = ptrtoint ptr %pos17 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pos17, align 4
  %sub31 = sub i32 %total_out.0, %56
  %call32 = call i32 @zstd_decompress_stream(ptr noundef nonnull %call1, ptr noundef nonnull %out_buf, ptr noundef nonnull %in_buf) #7
  %57 = ptrtoint ptr %pos17 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pos17, align 4
  %add = add i32 %58, %sub31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp34 = icmp eq i32 %call32, 0
  br i1 %cmp34, label %if.end29.cleanup55_crit_edge, label %if.end36

if.end29.cleanup55_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup55

if.end36:                                         ; preds = %if.end29
  %call37 = call i32 @zstd_is_error(i32 noundef %call32) #7
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end36.for.cond_crit_edge, label %do.end42

if.end36.for.cond_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %call44 = call i32 @zstd_get_error_code(i32 noundef %call32) #7
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %call44) #12
  br label %cleanup55

cleanup55:                                        ; preds = %do.end42, %if.end29.cleanup55_crit_edge, %squashfs_next_page.exit.cleanup55_crit_edge, %if.then20.cleanup55_crit_edge, %if.then5.cleanup55_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end42 ], [ -5, %if.then20.cleanup55_crit_edge ], [ %add, %if.end29.cleanup55_crit_edge ], [ -5, %squashfs_next_page.exit.cleanup55_crit_edge ], [ -5, %if.then5.cleanup55_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %out_buf) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %in_buf) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_dstream_workspace_bound(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @zstd_init_dstream(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_decompress_stream(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_is_error(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_get_error_code(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/squashfs/zstd_wrapper.c", i32 142, i32 10}
!2 = !{ptr @squashfs_zstd_comp_ops, !3, !"squashfs_zstd_comp_ops", i1 false, i1 false}
!3 = !{!"../fs/squashfs/zstd_wrapper.c", i32 137, i32 36}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/squashfs/zstd_wrapper.c", i32 45, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @zstd_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @zstd_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/squashfs/zstd_wrapper.c", i32 77, i32 3}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @zstd_uncompress._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @zstd_uncompress._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/squashfs/zstd_wrapper.c", i32 125, i32 4}
!17 = !{ptr @zstd_uncompress._entry.6, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @zstd_uncompress._entry_ptr.8, !16, !"_entry_ptr", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../include/linux/bvec.h", i32 240, i32 2}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"branch_weights", i32 2000, i32 1}
