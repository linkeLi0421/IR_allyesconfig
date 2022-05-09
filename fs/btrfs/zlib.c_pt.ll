; ModuleID = '/llk/IR_all_yes/fs/btrfs/zlib.c_pt.bc'
source_filename = "../fs/btrfs/zlib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.workspace_manager = type { %struct.list_head, %struct.spinlock, i32, %struct.atomic_t, %struct.wait_queue_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.btrfs_compress_op = type { ptr, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.22 }
%union.anon.22 = type { i32 }
%struct.z_stream_s = type { ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.workspace = type { %struct.z_stream_s, ptr, i32, %struct.list_head, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.70, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.70 = type { %struct.atomic_t }
%struct.compressed_bio = type { %struct.refcount_struct, i32, ptr, ptr, i64, i32, i32, i8, i8, i32, ptr, [0 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }

@zlib_compress_pages._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014BTRFS: deflateInit failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"zlib_compress_pages\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/btrfs/zlib.c\00", [16 x i8] zeroinitializer }, align 32
@zlib_compress_pages._entry_ptr = internal global ptr @zlib_compress_pages._entry, section ".printk_index", align 4
@zlib_compress_pages.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"btrfs\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"BTRFS: deflate in loop returned %d\0A\00", [60 x i8] zeroinitializer }, align 32
@zlib_decompress_bio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014BTRFS: inflateInit failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"zlib_decompress_bio\00", [44 x i8] zeroinitializer }, align 32
@zlib_decompress_bio._entry_ptr = internal global ptr @zlib_decompress_bio._entry, section ".printk_index", align 4
@zlib_decompress._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.7, ptr @.str.2, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zlib_decompress\00", [16 x i8] zeroinitializer }, align 32
@zlib_decompress._entry_ptr = internal global ptr @zlib_decompress._entry, section ".printk_index", align 4
@wsm = internal global { %struct.workspace_manager, [48 x i8] } zeroinitializer, align 32
@btrfs_zlib_compress = dso_local constant { %struct.btrfs_compress_op, [20 x i8] } { %struct.btrfs_compress_op { ptr @wsm, i32 9, i32 3 }, [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4294967291]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 116, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 180, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 311, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 397, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [4 x i8] c"wsm\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 34, i32 33 }
@___asan_gen_.63 = private unnamed_addr constant [20 x i8] c"btrfs_zlib_compress\00", align 1
@___asan_gen_.64 = private constant [19 x i8] c"../fs/btrfs/zlib.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 458, i32 32 }
@___asan_gen_.67 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 44, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 717, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @zlib_compress_pages._entry, ptr @zlib_compress_pages._entry_ptr, ptr @zlib_decompress._entry, ptr @zlib_decompress._entry_ptr, ptr @zlib_decompress_bio._entry, ptr @zlib_decompress_bio._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @wsm, ptr @btrfs_zlib_compress, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zlib_compress_pages._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zlib_decompress_bio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zlib_decompress._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsm to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_zlib_compress to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @zlib_get_workspace(i32 noundef %level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @btrfs_get_workspace(i32 noundef 1, i32 noundef %level) #7
  %level1 = getelementptr i8, ptr %call, i32 8
  %0 = ptrtoint ptr %level1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %level, ptr %level1, align 4
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_get_workspace(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zlib_free_workspace(ptr noundef %ws) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ws, i32 -56
  %workspace1 = getelementptr i8, ptr %ws, i32 -24
  %0 = ptrtoint ptr %workspace1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %workspace1, align 4
  tail call void @kvfree(ptr noundef %1) #7
  %buf = getelementptr i8, ptr %ws, i32 -8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  tail call void @kfree(ptr noundef %3) #7
  tail call void @kfree(ptr noundef %add.ptr) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @zlib_alloc_workspace(i32 noundef %level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 68) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @zlib_deflate_workspacesize(i32 noundef 15, i32 noundef 8) #7
  %call3 = tail call i32 @zlib_inflate_workspacesize() #7
  %1 = tail call i32 @llvm.smax.i32(i32 %call2, i32 %call3)
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef %1, i32 noundef 3264, i32 noundef -1) #11
  %workspace5 = getelementptr %struct.z_stream_s, ptr %call7.i.i, i32 0, i32 8
  %2 = ptrtoint ptr %workspace5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %workspace5, align 8
  %level6 = getelementptr inbounds %struct.workspace, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %level6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %level, ptr %level6, align 8
  %buf = getelementptr %struct.workspace, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %buf, align 8
  %call7 = tail call i32 @zlib_deflate_dfltcc_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end12thread-pre-split, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16384, i32 noundef 601088, i32 noundef 2) #11
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1.i.i, ptr %buf, align 8
  %buf_size = getelementptr inbounds %struct.workspace, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16384, ptr %buf_size, align 4
  br label %if.end12

if.end12thread-pre-split:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load ptr, ptr %buf, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end12thread-pre-split, %if.then9
  %8 = phi ptr [ %.pr, %if.end12thread-pre-split ], [ %call1.i.i, %if.then9 ]
  %tobool14.not = icmp eq ptr %8, null
  br i1 %tobool14.not, label %if.then15, label %if.end12.if.end19_crit_edge

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 4096) #10
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i, ptr %buf, align 8
  %buf_size18 = getelementptr inbounds %struct.workspace, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %buf_size18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4096, ptr %buf_size18, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end12.if.end19_crit_edge
  %12 = ptrtoint ptr %workspace5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %workspace5, align 8
  %tobool22.not = icmp eq ptr %13, null
  br i1 %tobool22.not, label %if.end19.fail_crit_edge, label %lor.lhs.false

if.end19.fail_crit_edge:                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

lor.lhs.false:                                    ; preds = %if.end19
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf, align 8
  %tobool24.not = icmp eq ptr %15, null
  br i1 %tobool24.not, label %lor.lhs.false.fail_crit_edge, label %if.end26

lor.lhs.false.fail_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end26:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %list = getelementptr inbounds %struct.workspace, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.workspace, ptr %call7.i.i, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %list, ptr %prev.i, align 4
  br label %cleanup

fail:                                             ; preds = %lor.lhs.false.fail_crit_edge, %if.end19.fail_crit_edge
  %18 = ptrtoint ptr %workspace5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %workspace5, align 8
  tail call void @kvfree(ptr noundef %19) #7
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buf, align 8
  tail call void @kfree(ptr noundef %21) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end26, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %list, %if.end26 ], [ inttoptr (i32 -12 to ptr), %fail ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflate_workspacesize(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflate_workspacesize() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflate_dfltcc_enabled() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zlib_compress_pages(ptr noundef %ws, ptr noundef %mapping, i64 noundef %start, ptr nocapture noundef writeonly %pages, ptr nocapture noundef %out_pages, ptr nocapture noundef writeonly %total_in, ptr nocapture noundef %total_out) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ws, i32 -56
  %0 = ptrtoint ptr %total_out to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %total_out, align 4
  %2 = ptrtoint ptr %out_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %out_pages, align 4
  %mul = shl i32 %3, 12
  store i32 0, ptr %out_pages, align 4
  store i32 0, ptr %total_out, align 4
  %4 = ptrtoint ptr %total_in to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %total_in, align 4
  %level = getelementptr i8, ptr %ws, i32 8
  %5 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %level, align 4
  %call = tail call i32 @zlib_deflateInit2(ptr noundef %add.ptr, i32 noundef %6, i32 noundef 8, i32 noundef 15, i32 noundef 8, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %out.thread

if.end:                                           ; preds = %entry
  %total_in4 = getelementptr i8, ptr %ws, i32 -48
  %7 = ptrtoint ptr %total_in4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %total_in4, align 4
  %total_out6 = getelementptr i8, ptr %ws, i32 -36
  %8 = ptrtoint ptr %total_out6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %total_out6, align 4
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3136, i32 noundef 0, i32 noundef 0, ptr noundef null) #7
  %cmp8 = icmp eq ptr %call38.i.i.i, null
  br i1 %cmp8, label %if.end.out.thread_crit_edge, label %if.end10

if.end.out.thread_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.end10:                                         ; preds = %if.end
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 44) #7
  %9 = ptrtoint ptr %call38.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call38.i.i.i, align 4
  %shr.i.i = lshr i32 %10, 30
  %11 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i, label %if.end10.if.then.i_crit_edge [
    i32 2, label %if.end10.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end10.if.else.i_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.end10.if.then.i_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %12 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp2.i.not.i = icmp eq i32 %12, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %if.end10.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #7
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end10.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef nonnull %call38.i.i.i) #7
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %13 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call38.i.i.i, ptr %pages, align 4
  %buf = getelementptr i8, ptr %ws, i32 -8
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf, align 4
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %add.ptr, align 4
  %avail_in = getelementptr i8, ptr %ws, i32 -52
  %17 = ptrtoint ptr %avail_in to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %avail_in, align 4
  %next_out = getelementptr i8, ptr %ws, i32 -44
  %18 = ptrtoint ptr %next_out to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %addr.0.i, ptr %next_out, align 4
  %avail_out = getelementptr i8, ptr %ws, i32 -40
  %19 = ptrtoint ptr %avail_out to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4096, ptr %avail_out, align 4
  %buf_size = getelementptr i8, ptr %ws, i32 -4
  br label %while.cond

while.cond:                                       ; preds = %if.end122.while.cond_crit_edge, %kmap.exit
  %nr_pages.0 = phi i32 [ 1, %kmap.exit ], [ %nr_pages.1, %if.end122.while.cond_crit_edge ]
  %in_page.0 = phi ptr [ null, %kmap.exit ], [ %in_page.3, %if.end122.while.cond_crit_edge ]
  %out_page.0 = phi ptr [ %call38.i.i.i, %kmap.exit ], [ %out_page.1, %if.end122.while.cond_crit_edge ]
  %start.addr.0 = phi i64 [ %start, %kmap.exit ], [ %start.addr.3, %if.end122.while.cond_crit_edge ]
  %20 = ptrtoint ptr %total_in4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %total_in4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %21)
  %cmp18 = icmp ugt i32 %1, %21
  br i1 %cmp18, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.cond
  %22 = ptrtoint ptr %avail_in to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %avail_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp21 = icmp eq i32 %23, 0
  br i1 %cmp21, label %if.then22, label %while.body.if.end64_crit_edge

while.body.if.end64_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then22:                                        ; preds = %while.body
  %sub = sub i32 %1, %21
  %sub25 = add i32 %sub, 4095
  %div297 = lshr i32 %sub25, 12
  %24 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buf_size, align 4
  %div26298 = lshr i32 %25, 12
  %26 = tail call i32 @llvm.umin.i32(i32 %div297, i32 %div26298)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp29 = icmp ugt i32 %26, 1
  br i1 %cmp29, label %if.then22.for.body_crit_edge, label %if.else

if.then22.for.body_crit_edge:                     ; preds = %if.then22
  br label %for.body

for.body:                                         ; preds = %kmap.exit311.for.body_crit_edge, %if.then22.for.body_crit_edge
  %start.addr.1445 = phi i64 [ %add39, %kmap.exit311.for.body_crit_edge ], [ %start.addr.0, %if.then22.for.body_crit_edge ]
  %i.0444 = phi i32 [ %inc, %kmap.exit311.for.body_crit_edge ], [ 0, %if.then22.for.body_crit_edge ]
  %in_page.1443 = phi ptr [ %call.i, %kmap.exit311.for.body_crit_edge ], [ %in_page.0, %if.then22.for.body_crit_edge ]
  %tobool.not = icmp eq ptr %in_page.1443, null
  br i1 %tobool.not, label %for.body.if.end33_crit_edge, label %if.then32

for.body.if.end33_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then32:                                        ; preds = %for.body
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 55) #7
  %27 = ptrtoint ptr %in_page.1443 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %in_page.1443, align 4
  %shr.i.i299 = lshr i32 %28, 30
  %29 = zext i32 %shr.i.i299 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %shr.i.i299, label %if.then32.kunmap.exit_crit_edge [
    i32 2, label %if.then32.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i301
  ]

if.then32.if.end.i_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then32.kunmap.exit_crit_edge:                  ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %kunmap.exit

is_highmem_idx.exit.i301:                         ; preds = %if.then32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %30 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp2.i.not.i300 = icmp eq i32 %30, 2
  br i1 %cmp2.i.not.i300, label %is_highmem_idx.exit.i301.if.end.i_crit_edge, label %is_highmem_idx.exit.i301.kunmap.exit_crit_edge

is_highmem_idx.exit.i301.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i301
  call void @__sanitizer_cov_trace_pc() #9
  br label %kunmap.exit

is_highmem_idx.exit.i301.if.end.i_crit_edge:      ; preds = %is_highmem_idx.exit.i301
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i301.if.end.i_crit_edge, %if.then32.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef nonnull %in_page.1443) #7
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i301.kunmap.exit_crit_edge, %if.then32.kunmap.exit_crit_edge
  %31 = getelementptr inbounds %struct.page, ptr %in_page.1443, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %and.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !39

if.then.i.i:                                      ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %33, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %in_page.1443 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %34, %if.end.i.i ]
  %35 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %35, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  %36 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i.i.i.i = icmp eq i32 %37, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !40

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %38, ptr noundef nonnull @.str.10) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !41
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #7
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #7, !srcloc !43
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %39, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@zlib_compress_pages, %if.then.i.i.i.i.i)) #7
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !45

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %35, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #7
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end33_crit_edge

folio_put_testzero.exit.i.i.if.end33_crit_edge:   ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__put_page(ptr noundef %35) #7
  br label %if.end33

if.end33:                                         ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end33_crit_edge, %for.body.if.end33_crit_edge
  %shr = lshr i64 %start.addr.1445, 12
  %conv = trunc i64 %shr to i32
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %mapping, i32 noundef %conv, i32 noundef 0, i32 noundef 0) #7
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 44) #7
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %call.i, align 4
  %shr.i.i302 = lshr i32 %41, 30
  %42 = zext i32 %shr.i.i302 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %shr.i.i302, label %if.end33.if.then.i306_crit_edge [
    i32 2, label %if.end33.if.else.i308_crit_edge
    i32 3, label %is_highmem_idx.exit.i304
  ]

if.end33.if.else.i308_crit_edge:                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i308

if.end33.if.then.i306_crit_edge:                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i306

is_highmem_idx.exit.i304:                         ; preds = %if.end33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %43 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp2.i.not.i303 = icmp eq i32 %43, 2
  br i1 %cmp2.i.not.i303, label %is_highmem_idx.exit.i304.if.else.i308_crit_edge, label %is_highmem_idx.exit.i304.if.then.i306_crit_edge

is_highmem_idx.exit.i304.if.then.i306_crit_edge:  ; preds = %is_highmem_idx.exit.i304
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i306

is_highmem_idx.exit.i304.if.else.i308_crit_edge:  ; preds = %is_highmem_idx.exit.i304
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i308

if.then.i306:                                     ; preds = %is_highmem_idx.exit.i304.if.then.i306_crit_edge, %if.end33.if.then.i306_crit_edge
  %call5.i305 = tail call ptr @page_address(ptr noundef %call.i) #7
  br label %kmap.exit311

if.else.i308:                                     ; preds = %is_highmem_idx.exit.i304.if.else.i308_crit_edge, %if.end33.if.else.i308_crit_edge
  %call6.i307 = tail call ptr @kmap_high(ptr noundef %call.i) #7
  br label %kmap.exit311

kmap.exit311:                                     ; preds = %if.else.i308, %if.then.i306
  %addr.0.i309 = phi ptr [ %call6.i307, %if.else.i308 ], [ %call5.i305, %if.then.i306 ]
  %44 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buf, align 4
  %mul37 = shl i32 %i.0444, 12
  %add.ptr38 = getelementptr i8, ptr %45, i32 %mul37
  %46 = call ptr @memcpy(ptr %add.ptr38, ptr %addr.0.i309, i32 4096)
  %add39 = add i64 %start.addr.1445, 4096
  %inc = add nuw nsw i32 %i.0444, 1
  %exitcond.not = icmp eq i32 %inc, %26
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %kmap.exit311.for.body_crit_edge

kmap.exit311.for.body_crit_edge:                  ; preds = %kmap.exit311
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %kmap.exit311
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %buf, align 4
  br label %if.end53

if.else:                                          ; preds = %if.then22
  %tobool43.not = icmp eq ptr %in_page.0, null
  br i1 %tobool43.not, label %if.else.if.end45_crit_edge, label %if.then44

if.else.if.end45_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then44:                                        ; preds = %if.else
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 55) #7
  %49 = ptrtoint ptr %in_page.0 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %in_page.0, align 4
  %shr.i.i312 = lshr i32 %50, 30
  %51 = zext i32 %shr.i.i312 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %shr.i.i312, label %if.then44.kunmap.exit316_crit_edge [
    i32 2, label %if.then44.if.end.i315_crit_edge
    i32 3, label %is_highmem_idx.exit.i314
  ]

if.then44.if.end.i315_crit_edge:                  ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i315

if.then44.kunmap.exit316_crit_edge:               ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %kunmap.exit316

is_highmem_idx.exit.i314:                         ; preds = %if.then44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %52 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp2.i.not.i313 = icmp eq i32 %52, 2
  br i1 %cmp2.i.not.i313, label %is_highmem_idx.exit.i314.if.end.i315_crit_edge, label %is_highmem_idx.exit.i314.kunmap.exit316_crit_edge

is_highmem_idx.exit.i314.kunmap.exit316_crit_edge: ; preds = %is_highmem_idx.exit.i314
  call void @__sanitizer_cov_trace_pc() #9
  br label %kunmap.exit316

is_highmem_idx.exit.i314.if.end.i315_crit_edge:   ; preds = %is_highmem_idx.exit.i314
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i315

if.end.i315:                                      ; preds = %is_highmem_idx.exit.i314.if.end.i315_crit_edge, %if.then44.if.end.i315_crit_edge
  tail call void @kunmap_high(ptr noundef nonnull %in_page.0) #7
  br label %kunmap.exit316

kunmap.exit316:                                   ; preds = %if.end.i315, %is_highmem_idx.exit.i314.kunmap.exit316_crit_edge, %if.then44.kunmap.exit316_crit_edge
  %53 = getelementptr inbounds %struct.page, ptr %in_page.0, i32 0, i32 1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %53, align 4
  %and.i.i317 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i317)
  %tobool.not.i.i318 = icmp eq i32 %and.i.i317, 0
  br i1 %tobool.not.i.i318, label %if.end.i.i321, label %if.then.i.i320, !prof !39

if.then.i.i320:                                   ; preds = %kunmap.exit316
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i319 = add i32 %55, -1
  br label %_compound_head.exit.i326

if.end.i.i321:                                    ; preds = %kunmap.exit316
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %in_page.0 to i32
  br label %_compound_head.exit.i326

_compound_head.exit.i326:                         ; preds = %if.end.i.i321, %if.then.i.i320
  %retval.0.i.i322 = phi i32 [ %sub.i.i319, %if.then.i.i320 ], [ %56, %if.end.i.i321 ]
  %57 = inttoptr i32 %retval.0.i.i322 to ptr
  %_refcount.i.i.i.i.i323 = getelementptr inbounds %struct.page, ptr %57, i32 0, i32 3
  %call.i.i.i.i.i.i.i324 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i323, i32 noundef 4) #7
  %58 = ptrtoint ptr %_refcount.i.i.i.i.i323 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %_refcount.i.i.i.i.i323, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.i.i.i.i325 = icmp eq i32 %59, 0
  br i1 %cmp.i.i.i.i325, label %if.then.i.i.i.i327, label %do.end5.i.i.i.i331, !prof !40

if.then.i.i.i.i327:                               ; preds = %_compound_head.exit.i326
  call void @__sanitizer_cov_trace_pc() #9
  %60 = inttoptr i32 %retval.0.i.i322 to ptr
  tail call void @dump_page(ptr noundef %60, ptr noundef nonnull @.str.10) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !41
  unreachable

do.end5.i.i.i.i331:                               ; preds = %_compound_head.exit.i326
  %call.i.i.i10.i.i.i.i328 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i323, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i323, i32 1, i32 3, i32 1) #7
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i323, ptr %_refcount.i.i.i.i.i323, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i323) #7, !srcloc !43
  %asmresult.i.i.i.i.i.i.i.i.i.i329 = extractvalue { i32, i32 } %61, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i329)
  %cmp.i.i.i.i.i.i.i330 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i329, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@zlib_compress_pages, %if.then.i.i.i.i.i333)) #7
          to label %folio_put_testzero.exit.i.i334 [label %if.then.i.i.i.i.i333], !srcloc !45

if.then.i.i.i.i.i333:                             ; preds = %do.end5.i.i.i.i331
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i332 = zext i1 %cmp.i.i.i.i.i.i.i330 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %57, i32 noundef -1, i32 noundef %conv.i.i.i.i.i332) #7
  br label %folio_put_testzero.exit.i.i334

folio_put_testzero.exit.i.i334:                   ; preds = %if.then.i.i.i.i.i333, %do.end5.i.i.i.i331
  br i1 %cmp.i.i.i.i.i.i.i330, label %if.then.i4.i335, label %folio_put_testzero.exit.i.i334.if.end45_crit_edge

folio_put_testzero.exit.i.i334.if.end45_crit_edge: ; preds = %folio_put_testzero.exit.i.i334
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then.i4.i335:                                  ; preds = %folio_put_testzero.exit.i.i334
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__put_page(ptr noundef %57) #7
  br label %if.end45

if.end45:                                         ; preds = %if.then.i4.i335, %folio_put_testzero.exit.i.i334.if.end45_crit_edge, %if.else.if.end45_crit_edge
  %shr46 = lshr i64 %start.addr.0, 12
  %conv47 = trunc i64 %shr46 to i32
  %call.i337 = tail call ptr @pagecache_get_page(ptr noundef %mapping, i32 noundef %conv47, i32 noundef 0, i32 noundef 0) #7
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 44) #7
  %62 = ptrtoint ptr %call.i337 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %call.i337, align 4
  %shr.i.i338 = lshr i32 %63, 30
  %64 = zext i32 %shr.i.i338 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %shr.i.i338, label %if.end45.if.then.i342_crit_edge [
    i32 2, label %if.end45.if.else.i344_crit_edge
    i32 3, label %is_highmem_idx.exit.i340
  ]

if.end45.if.else.i344_crit_edge:                  ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i344

if.end45.if.then.i342_crit_edge:                  ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i342

is_highmem_idx.exit.i340:                         ; preds = %if.end45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %65 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %65)
  %cmp2.i.not.i339 = icmp eq i32 %65, 2
  br i1 %cmp2.i.not.i339, label %is_highmem_idx.exit.i340.if.else.i344_crit_edge, label %is_highmem_idx.exit.i340.if.then.i342_crit_edge

is_highmem_idx.exit.i340.if.then.i342_crit_edge:  ; preds = %is_highmem_idx.exit.i340
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i342

is_highmem_idx.exit.i340.if.else.i344_crit_edge:  ; preds = %is_highmem_idx.exit.i340
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i344

if.then.i342:                                     ; preds = %is_highmem_idx.exit.i340.if.then.i342_crit_edge, %if.end45.if.then.i342_crit_edge
  %call5.i341 = tail call ptr @page_address(ptr noundef %call.i337) #7
  br label %kmap.exit347

if.else.i344:                                     ; preds = %is_highmem_idx.exit.i340.if.else.i344_crit_edge, %if.end45.if.else.i344_crit_edge
  %call6.i343 = tail call ptr @kmap_high(ptr noundef %call.i337) #7
  br label %kmap.exit347

kmap.exit347:                                     ; preds = %if.else.i344, %if.then.i342
  %addr.0.i345 = phi ptr [ %call6.i343, %if.else.i344 ], [ %call5.i341, %if.then.i342 ]
  %add50 = add i64 %start.addr.0, 4096
  br label %if.end53

if.end53:                                         ; preds = %kmap.exit347, %for.cond.for.end_crit_edge
  %storemerge = phi ptr [ %addr.0.i345, %kmap.exit347 ], [ %48, %for.cond.for.end_crit_edge ]
  %in_page.2 = phi ptr [ %call.i337, %kmap.exit347 ], [ %call.i, %for.cond.for.end_crit_edge ]
  %start.addr.2 = phi i64 [ %add50, %kmap.exit347 ], [ %add39, %for.cond.for.end_crit_edge ]
  %66 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %storemerge, ptr %add.ptr, align 4
  %67 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %buf_size, align 4
  %69 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %68)
  %70 = ptrtoint ptr %avail_in to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %avail_in, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.end53, %while.body.if.end64_crit_edge
  %in_page.3 = phi ptr [ %in_page.2, %if.end53 ], [ %in_page.0, %while.body.if.end64_crit_edge ]
  %start.addr.3 = phi i64 [ %start.addr.2, %if.end53 ], [ %start.addr.0, %while.body.if.end64_crit_edge ]
  %call66 = tail call i32 @zlib_deflate(ptr noundef %add.ptr, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67.not = icmp eq i32 %call66, 0
  br i1 %cmp67.not, label %if.end82, label %do.body70

do.body70:                                        ; preds = %if.end64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zlib_compress_pages.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zlib_compress_pages, %if.then76)) #7
          to label %do.end79 [label %if.then76], !srcloc !45

if.then76:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zlib_compress_pages.__UNIQUE_ID_ddebug262, ptr noundef nonnull @.str.4, i32 noundef %call66) #7
  br label %do.end79

do.end79:                                         ; preds = %if.then76, %do.body70
  %call81 = tail call i32 @zlib_deflateEnd(ptr noundef %add.ptr) #7
  br label %out

if.end82:                                         ; preds = %if.end64
  %71 = ptrtoint ptr %total_in4 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %total_in4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %72)
  %cmp85 = icmp ugt i32 %72, 8192
  br i1 %cmp85, label %land.lhs.true, label %if.end82.if.end94_crit_edge

if.end82.if.end94_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

land.lhs.true:                                    ; preds = %if.end82
  %73 = ptrtoint ptr %total_out6 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %total_out6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp91 = icmp ult i32 %72, %74
  br i1 %cmp91, label %land.lhs.true.out_crit_edge, label %land.lhs.true.if.end94_crit_edge

land.lhs.true.if.end94_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end94:                                         ; preds = %land.lhs.true.if.end94_crit_edge, %if.end82.if.end94_crit_edge
  %75 = ptrtoint ptr %avail_out to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %avail_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp97 = icmp eq i32 %76, 0
  br i1 %cmp97, label %if.then99, label %if.end94.if.end116_crit_edge

if.end94.if.end116_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end116

if.then99:                                        ; preds = %if.end94
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 55) #7
  %77 = ptrtoint ptr %out_page.0 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %out_page.0, align 4
  %shr.i.i348 = lshr i32 %78, 30
  %79 = zext i32 %shr.i.i348 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %shr.i.i348, label %if.then99.kunmap.exit352_crit_edge [
    i32 2, label %if.then99.if.end.i351_crit_edge
    i32 3, label %is_highmem_idx.exit.i350
  ]

if.then99.if.end.i351_crit_edge:                  ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i351

if.then99.kunmap.exit352_crit_edge:               ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #9
  br label %kunmap.exit352

is_highmem_idx.exit.i350:                         ; preds = %if.then99
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %80 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %80)
  %cmp2.i.not.i349 = icmp eq i32 %80, 2
  br i1 %cmp2.i.not.i349, label %is_highmem_idx.exit.i350.if.end.i351_crit_edge, label %is_highmem_idx.exit.i350.kunmap.exit352_crit_edge

is_highmem_idx.exit.i350.kunmap.exit352_crit_edge: ; preds = %is_highmem_idx.exit.i350
  call void @__sanitizer_cov_trace_pc() #9
  br label %kunmap.exit352

is_highmem_idx.exit.i350.if.end.i351_crit_edge:   ; preds = %is_highmem_idx.exit.i350
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i351

if.end.i351:                                      ; preds = %is_highmem_idx.exit.i350.if.end.i351_crit_edge, %if.then99.if.end.i351_crit_edge
  tail call void @kunmap_high(ptr noundef %out_page.0) #7
  br label %kunmap.exit352

kunmap.exit352:                                   ; preds = %if.end.i351, %is_highmem_idx.exit.i350.kunmap.exit352_crit_edge, %if.then99.kunmap.exit352_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %nr_pages.0, i32 %3)
  %cmp100 = icmp eq i32 %nr_pages.0, %3
  br i1 %cmp100, label %kunmap.exit352.out.thread_crit_edge, label %if.end103

kunmap.exit352.out.thread_crit_edge:              ; preds = %kunmap.exit352
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.end103:                                        ; preds = %kunmap.exit352
  %call38.i.i.i353 = tail call ptr @__alloc_pages(i32 noundef 3136, i32 noundef 0, i32 noundef 0, ptr noundef null) #7
  %cmp105 = icmp eq ptr %call38.i.i.i353, null
  br i1 %cmp105, label %if.end103.out.thread_crit_edge, label %if.end108

if.end103.out.thread_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.end108:                                        ; preds = %if.end103
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 44) #7
  %81 = ptrtoint ptr %call38.i.i.i353 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %call38.i.i.i353, align 4
  %shr.i.i354 = lshr i32 %82, 30
  %83 = zext i32 %shr.i.i354 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %shr.i.i354, label %if.end108.if.then.i358_crit_edge [
    i32 2, label %if.end108.if.else.i360_crit_edge
    i32 3, label %is_highmem_idx.exit.i356
  ]

if.end108.if.else.i360_crit_edge:                 ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i360

if.end108.if.then.i358_crit_edge:                 ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i358

is_highmem_idx.exit.i356:                         ; preds = %if.end108
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %84 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %84)
  %cmp2.i.not.i355 = icmp eq i32 %84, 2
  br i1 %cmp2.i.not.i355, label %is_highmem_idx.exit.i356.if.else.i360_crit_edge, label %is_highmem_idx.exit.i356.if.then.i358_crit_edge

is_highmem_idx.exit.i356.if.then.i358_crit_edge:  ; preds = %is_highmem_idx.exit.i356
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i358

is_highmem_idx.exit.i356.if.else.i360_crit_edge:  ; preds = %is_highmem_idx.exit.i356
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i360

if.then.i358:                                     ; preds = %is_highmem_idx.exit.i356.if.then.i358_crit_edge, %if.end108.if.then.i358_crit_edge
  %call5.i357 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i353) #7
  br label %kmap.exit363

if.else.i360:                                     ; preds = %is_highmem_idx.exit.i356.if.else.i360_crit_edge, %if.end108.if.else.i360_crit_edge
  %call6.i359 = tail call ptr @kmap_high(ptr noundef nonnull %call38.i.i.i353) #7
  br label %kmap.exit363

kmap.exit363:                                     ; preds = %if.else.i360, %if.then.i358
  %addr.0.i361 = phi ptr [ %call6.i359, %if.else.i360 ], [ %call5.i357, %if.then.i358 ]
  %arrayidx110 = getelementptr ptr, ptr %pages, i32 %nr_pages.0
  %85 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call38.i.i.i353, ptr %arrayidx110, align 4
  %inc111 = add i32 %nr_pages.0, 1
  %86 = ptrtoint ptr %avail_out to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 4096, ptr %avail_out, align 4
  %87 = ptrtoint ptr %next_out to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %addr.0.i361, ptr %next_out, align 4
  br label %if.end116

if.end116:                                        ; preds = %kmap.exit363, %if.end94.if.end116_crit_edge
  %nr_pages.1 = phi i32 [ %inc111, %kmap.exit363 ], [ %nr_pages.0, %if.end94.if.end116_crit_edge ]
  %out_page.1 = phi ptr [ %call38.i.i.i353, %kmap.exit363 ], [ %out_page.0, %if.end94.if.end116_crit_edge ]
  %88 = ptrtoint ptr %total_in4 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %total_in4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %1)
  %cmp119.not = icmp ult i32 %89, %1
  br i1 %cmp119.not, label %if.end122, label %if.end116.while.end_crit_edge

if.end116.while.end_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end122:                                        ; preds = %if.end116
  %90 = ptrtoint ptr %total_out6 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %total_out6, align 4
  %cmp125 = icmp ugt i32 %91, %mul
  br i1 %cmp125, label %if.end122.while.end_crit_edge, label %if.end122.while.cond_crit_edge

if.end122.while.cond_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

if.end122.while.end_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end122.while.end_crit_edge, %if.end116.while.end_crit_edge, %while.cond.while.end_crit_edge
  %nr_pages.2 = phi i32 [ %nr_pages.1, %if.end116.while.end_crit_edge ], [ %nr_pages.1, %if.end122.while.end_crit_edge ], [ %nr_pages.0, %while.cond.while.end_crit_edge ]
  %in_page.4 = phi ptr [ %in_page.3, %if.end116.while.end_crit_edge ], [ %in_page.3, %if.end122.while.end_crit_edge ], [ %in_page.0, %while.cond.while.end_crit_edge ]
  %out_page.2 = phi ptr [ %out_page.1, %if.end116.while.end_crit_edge ], [ %out_page.1, %if.end122.while.end_crit_edge ], [ %out_page.0, %while.cond.while.end_crit_edge ]
  %92 = ptrtoint ptr %avail_in to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %avail_in, align 4
  br label %while.cond131.outer

while.cond131.outer:                              ; preds = %kmap.exit379, %while.end
  %nr_pages.3.ph = phi i32 [ %inc166, %kmap.exit379 ], [ %nr_pages.2, %while.end ]
  %out_page.3.ph = phi ptr [ %call38.i.i.i369, %kmap.exit379 ], [ %out_page.2, %while.end ]
  br label %while.cond131

while.cond131:                                    ; preds = %if.else149.while.cond131_crit_edge, %while.cond131.outer
  %call136 = tail call i32 @zlib_deflate(ptr noundef %add.ptr, i32 noundef 5) #7
  %93 = zext i32 %call136 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %call136, label %if.then146 [
    i32 1, label %while.end173
    i32 0, label %while.cond131.if.else149_crit_edge
    i32 -5, label %while.cond131.if.else149_crit_edge549
  ]

while.cond131.if.else149_crit_edge549:            ; preds = %while.cond131
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else149

while.cond131.if.else149_crit_edge:               ; preds = %while.cond131
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else149

if.then146:                                       ; preds = %while.cond131
  call void @__sanitizer_cov_trace_pc() #9
  %call148 = tail call i32 @zlib_deflateEnd(ptr noundef %add.ptr) #7
  br label %out

if.else149:                                       ; preds = %while.cond131.if.else149_crit_edge, %while.cond131.if.else149_crit_edge549
  %94 = ptrtoint ptr %avail_out to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %avail_out, align 4
  %cmp152 = icmp eq i32 %95, 0
  br i1 %cmp152, label %if.then154, label %if.else149.while.cond131_crit_edge

if.else149.while.cond131_crit_edge:               ; preds = %if.else149
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond131

if.then154:                                       ; preds = %if.else149
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 55) #7
  %96 = ptrtoint ptr %out_page.3.ph to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %out_page.3.ph, align 4
  %shr.i.i364 = lshr i32 %97, 30
  %98 = zext i32 %shr.i.i364 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %shr.i.i364, label %if.then154.kunmap.exit368_crit_edge [
    i32 2, label %if.then154.if.end.i367_crit_edge
    i32 3, label %is_highmem_idx.exit.i366
  ]

if.then154.if.end.i367_crit_edge:                 ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i367

if.then154.kunmap.exit368_crit_edge:              ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #9
  br label %kunmap.exit368

is_highmem_idx.exit.i366:                         ; preds = %if.then154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %99 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %99)
  %cmp2.i.not.i365 = icmp eq i32 %99, 2
  br i1 %cmp2.i.not.i365, label %is_highmem_idx.exit.i366.if.end.i367_crit_edge, label %is_highmem_idx.exit.i366.kunmap.exit368_crit_edge

is_highmem_idx.exit.i366.kunmap.exit368_crit_edge: ; preds = %is_highmem_idx.exit.i366
  call void @__sanitizer_cov_trace_pc() #9
  br label %kunmap.exit368

is_highmem_idx.exit.i366.if.end.i367_crit_edge:   ; preds = %is_highmem_idx.exit.i366
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i367

if.end.i367:                                      ; preds = %is_highmem_idx.exit.i366.if.end.i367_crit_edge, %if.then154.if.end.i367_crit_edge
  tail call void @kunmap_high(ptr noundef %out_page.3.ph) #7
  br label %kunmap.exit368

kunmap.exit368:                                   ; preds = %if.end.i367, %is_highmem_idx.exit.i366.kunmap.exit368_crit_edge, %if.then154.kunmap.exit368_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %nr_pages.3.ph, i32 %3)
  %cmp155 = icmp eq i32 %nr_pages.3.ph, %3
  br i1 %cmp155, label %kunmap.exit368.out.thread_crit_edge, label %if.end158

kunmap.exit368.out.thread_crit_edge:              ; preds = %kunmap.exit368
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.end158:                                        ; preds = %kunmap.exit368
  %call38.i.i.i369 = tail call ptr @__alloc_pages(i32 noundef 3136, i32 noundef 0, i32 noundef 0, ptr noundef null) #7
  %cmp160 = icmp eq ptr %call38.i.i.i369, null
  br i1 %cmp160, label %if.end158.out.thread_crit_edge, label %if.end163

if.end158.out.thread_crit_edge:                   ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.end163:                                        ; preds = %if.end158
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 44) #7
  %100 = ptrtoint ptr %call38.i.i.i369 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %call38.i.i.i369, align 4
  %shr.i.i370 = lshr i32 %101, 30
  %102 = zext i32 %shr.i.i370 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %shr.i.i370, label %if.end163.if.then.i374_crit_edge [
    i32 2, label %if.end163.if.else.i376_crit_edge
    i32 3, label %is_highmem_idx.exit.i372
  ]

if.end163.if.else.i376_crit_edge:                 ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i376

if.end163.if.then.i374_crit_edge:                 ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i374

is_highmem_idx.exit.i372:                         ; preds = %if.end163
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %103 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %103)
  %cmp2.i.not.i371 = icmp eq i32 %103, 2
  br i1 %cmp2.i.not.i371, label %is_highmem_idx.exit.i372.if.else.i376_crit_edge, label %is_highmem_idx.exit.i372.if.then.i374_crit_edge

is_highmem_idx.exit.i372.if.then.i374_crit_edge:  ; preds = %is_highmem_idx.exit.i372
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i374

is_highmem_idx.exit.i372.if.else.i376_crit_edge:  ; preds = %is_highmem_idx.exit.i372
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i376

if.then.i374:                                     ; preds = %is_highmem_idx.exit.i372.if.then.i374_crit_edge, %if.end163.if.then.i374_crit_edge
  %call5.i373 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i369) #7
  br label %kmap.exit379

if.else.i376:                                     ; preds = %is_highmem_idx.exit.i372.if.else.i376_crit_edge, %if.end163.if.else.i376_crit_edge
  %call6.i375 = tail call ptr @kmap_high(ptr noundef nonnull %call38.i.i.i369) #7
  br label %kmap.exit379

kmap.exit379:                                     ; preds = %if.else.i376, %if.then.i374
  %addr.0.i377 = phi ptr [ %call6.i375, %if.else.i376 ], [ %call5.i373, %if.then.i374 ]
  %arrayidx165 = getelementptr ptr, ptr %pages, i32 %nr_pages.3.ph
  %104 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call38.i.i.i369, ptr %arrayidx165, align 4
  %inc166 = add i32 %nr_pages.3.ph, 1
  %105 = ptrtoint ptr %avail_out to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 4096, ptr %avail_out, align 4
  %106 = ptrtoint ptr %next_out to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %addr.0.i377, ptr %next_out, align 4
  br label %while.cond131.outer

while.end173:                                     ; preds = %while.cond131
  %call175 = tail call i32 @zlib_deflateEnd(ptr noundef %add.ptr) #7
  %107 = ptrtoint ptr %total_out6 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %total_out6, align 4
  %109 = ptrtoint ptr %total_in4 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %total_in4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %110)
  %cmp180.not = icmp ult i32 %108, %110
  br i1 %cmp180.not, label %if.end183, label %while.end173.out_crit_edge

while.end173.out_crit_edge:                       ; preds = %while.end173
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end183:                                        ; preds = %while.end173
  call void @__sanitizer_cov_trace_pc() #9
  %111 = ptrtoint ptr %total_out to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %108, ptr %total_out, align 4
  %112 = ptrtoint ptr %total_in4 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %total_in4, align 4
  %114 = ptrtoint ptr %total_in to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %total_in, align 4
  br label %out

out.thread:                                       ; preds = %if.end158.out.thread_crit_edge, %kunmap.exit368.out.thread_crit_edge, %if.end103.out.thread_crit_edge, %kunmap.exit352.out.thread_crit_edge, %if.end.out.thread_crit_edge, %do.end
  %nr_pages.5.ph = phi i32 [ 0, %if.end.out.thread_crit_edge ], [ 0, %do.end ], [ %3, %kunmap.exit368.out.thread_crit_edge ], [ %nr_pages.3.ph, %if.end158.out.thread_crit_edge ], [ %3, %kunmap.exit352.out.thread_crit_edge ], [ %nr_pages.0, %if.end103.out.thread_crit_edge ]
  %in_page.5.ph = phi ptr [ null, %if.end.out.thread_crit_edge ], [ null, %do.end ], [ %in_page.4, %if.end158.out.thread_crit_edge ], [ %in_page.4, %kunmap.exit368.out.thread_crit_edge ], [ %in_page.3, %if.end103.out.thread_crit_edge ], [ %in_page.3, %kunmap.exit352.out.thread_crit_edge ]
  %ret.3.ph = phi i32 [ -12, %if.end.out.thread_crit_edge ], [ -5, %do.end ], [ -7, %kunmap.exit368.out.thread_crit_edge ], [ -12, %if.end158.out.thread_crit_edge ], [ -7, %kunmap.exit352.out.thread_crit_edge ], [ -12, %if.end103.out.thread_crit_edge ]
  %115 = ptrtoint ptr %out_pages to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %nr_pages.5.ph, ptr %out_pages, align 4
  br label %if.end190

out:                                              ; preds = %if.end183, %while.end173.out_crit_edge, %if.then146, %land.lhs.true.out_crit_edge, %do.end79
  %nr_pages.5 = phi i32 [ %nr_pages.0, %do.end79 ], [ %nr_pages.3.ph, %if.end183 ], [ %nr_pages.3.ph, %if.then146 ], [ %nr_pages.3.ph, %while.end173.out_crit_edge ], [ %nr_pages.0, %land.lhs.true.out_crit_edge ]
  %in_page.5 = phi ptr [ %in_page.3, %do.end79 ], [ %in_page.4, %if.end183 ], [ %in_page.4, %if.then146 ], [ %in_page.4, %while.end173.out_crit_edge ], [ %in_page.3, %land.lhs.true.out_crit_edge ]
  %out_page.5 = phi ptr [ %out_page.0, %do.end79 ], [ %out_page.3.ph, %if.end183 ], [ %out_page.3.ph, %if.then146 ], [ %out_page.3.ph, %while.end173.out_crit_edge ], [ %out_page.0, %land.lhs.true.out_crit_edge ]
  %ret.3 = phi i32 [ -5, %do.end79 ], [ 0, %if.end183 ], [ -5, %if.then146 ], [ -7, %while.end173.out_crit_edge ], [ -7, %land.lhs.true.out_crit_edge ]
  %116 = ptrtoint ptr %out_pages to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %nr_pages.5, ptr %out_pages, align 4
  %tobool188.not = icmp eq ptr %out_page.5, null
  br i1 %tobool188.not, label %out.if.end190_crit_edge, label %if.then189

out.if.end190_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end190

if.then189:                                       ; preds = %out
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 55) #7
  %117 = ptrtoint ptr %out_page.5 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %out_page.5, align 4
  %shr.i.i380 = lshr i32 %118, 30
  %119 = zext i32 %shr.i.i380 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %shr.i.i380, label %if.then189.if.end190_crit_edge [
    i32 2, label %if.then189.if.end.i383_crit_edge
    i32 3, label %is_highmem_idx.exit.i382
  ]

if.then189.if.end.i383_crit_edge:                 ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i383

if.then189.if.end190_crit_edge:                   ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end190

is_highmem_idx.exit.i382:                         ; preds = %if.then189
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %120 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %120)
  %cmp2.i.not.i381 = icmp eq i32 %120, 2
  br i1 %cmp2.i.not.i381, label %is_highmem_idx.exit.i382.if.end.i383_crit_edge, label %is_highmem_idx.exit.i382.if.end190_crit_edge

is_highmem_idx.exit.i382.if.end190_crit_edge:     ; preds = %is_highmem_idx.exit.i382
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end190

is_highmem_idx.exit.i382.if.end.i383_crit_edge:   ; preds = %is_highmem_idx.exit.i382
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i383

if.end.i383:                                      ; preds = %is_highmem_idx.exit.i382.if.end.i383_crit_edge, %if.then189.if.end.i383_crit_edge
  tail call void @kunmap_high(ptr noundef nonnull %out_page.5) #7
  br label %if.end190

if.end190:                                        ; preds = %if.end.i383, %is_highmem_idx.exit.i382.if.end190_crit_edge, %if.then189.if.end190_crit_edge, %out.if.end190_crit_edge, %out.thread
  %ret.3418 = phi i32 [ %ret.3.ph, %out.thread ], [ %ret.3, %out.if.end190_crit_edge ], [ %ret.3, %if.then189.if.end190_crit_edge ], [ %ret.3, %is_highmem_idx.exit.i382.if.end190_crit_edge ], [ %ret.3, %if.end.i383 ]
  %in_page.5416 = phi ptr [ %in_page.5.ph, %out.thread ], [ %in_page.5, %out.if.end190_crit_edge ], [ %in_page.5, %if.then189.if.end190_crit_edge ], [ %in_page.5, %is_highmem_idx.exit.i382.if.end190_crit_edge ], [ %in_page.5, %if.end.i383 ]
  %tobool191.not = icmp eq ptr %in_page.5416, null
  br i1 %tobool191.not, label %if.end190.if.end193_crit_edge, label %if.then192

if.end190.if.end193_crit_edge:                    ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end193

if.then192:                                       ; preds = %if.end190
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 55) #7
  %121 = ptrtoint ptr %in_page.5416 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %in_page.5416, align 4
  %shr.i.i385 = lshr i32 %122, 30
  %123 = zext i32 %shr.i.i385 to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %shr.i.i385, label %if.then192.kunmap.exit389_crit_edge [
    i32 2, label %if.then192.if.end.i388_crit_edge
    i32 3, label %is_highmem_idx.exit.i387
  ]

if.then192.if.end.i388_crit_edge:                 ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i388

if.then192.kunmap.exit389_crit_edge:              ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #9
  br label %kunmap.exit389

is_highmem_idx.exit.i387:                         ; preds = %if.then192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %124 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %124)
  %cmp2.i.not.i386 = icmp eq i32 %124, 2
  br i1 %cmp2.i.not.i386, label %is_highmem_idx.exit.i387.if.end.i388_crit_edge, label %is_highmem_idx.exit.i387.kunmap.exit389_crit_edge

is_highmem_idx.exit.i387.kunmap.exit389_crit_edge: ; preds = %is_highmem_idx.exit.i387
  call void @__sanitizer_cov_trace_pc() #9
  br label %kunmap.exit389

is_highmem_idx.exit.i387.if.end.i388_crit_edge:   ; preds = %is_highmem_idx.exit.i387
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i388

if.end.i388:                                      ; preds = %is_highmem_idx.exit.i387.if.end.i388_crit_edge, %if.then192.if.end.i388_crit_edge
  tail call void @kunmap_high(ptr noundef nonnull %in_page.5416) #7
  br label %kunmap.exit389

kunmap.exit389:                                   ; preds = %if.end.i388, %is_highmem_idx.exit.i387.kunmap.exit389_crit_edge, %if.then192.kunmap.exit389_crit_edge
  %125 = getelementptr inbounds %struct.page, ptr %in_page.5416, i32 0, i32 1
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %125, align 4
  %and.i.i390 = and i32 %127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i390)
  %tobool.not.i.i391 = icmp eq i32 %and.i.i390, 0
  br i1 %tobool.not.i.i391, label %if.end.i.i394, label %if.then.i.i393, !prof !39

if.then.i.i393:                                   ; preds = %kunmap.exit389
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i392 = add i32 %127, -1
  br label %_compound_head.exit.i399

if.end.i.i394:                                    ; preds = %kunmap.exit389
  call void @__sanitizer_cov_trace_pc() #9
  %128 = ptrtoint ptr %in_page.5416 to i32
  br label %_compound_head.exit.i399

_compound_head.exit.i399:                         ; preds = %if.end.i.i394, %if.then.i.i393
  %retval.0.i.i395 = phi i32 [ %sub.i.i392, %if.then.i.i393 ], [ %128, %if.end.i.i394 ]
  %129 = inttoptr i32 %retval.0.i.i395 to ptr
  %_refcount.i.i.i.i.i396 = getelementptr inbounds %struct.page, ptr %129, i32 0, i32 3
  %call.i.i.i.i.i.i.i397 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i396, i32 noundef 4) #7
  %130 = ptrtoint ptr %_refcount.i.i.i.i.i396 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %_refcount.i.i.i.i.i396, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp.i.i.i.i398 = icmp eq i32 %131, 0
  br i1 %cmp.i.i.i.i398, label %if.then.i.i.i.i400, label %do.end5.i.i.i.i404, !prof !40

if.then.i.i.i.i400:                               ; preds = %_compound_head.exit.i399
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %129, ptr noundef nonnull @.str.10) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !41
  unreachable

do.end5.i.i.i.i404:                               ; preds = %_compound_head.exit.i399
  %call.i.i.i10.i.i.i.i401 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i396, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i396, i32 1, i32 3, i32 1) #7
  %132 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i396, ptr %_refcount.i.i.i.i.i396, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i396) #7, !srcloc !43
  %asmresult.i.i.i.i.i.i.i.i.i.i402 = extractvalue { i32, i32 } %132, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i402)
  %cmp.i.i.i.i.i.i.i403 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i402, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@zlib_compress_pages, %if.then.i.i.i.i.i406)) #7
          to label %folio_put_testzero.exit.i.i407 [label %if.then.i.i.i.i.i406], !srcloc !45

if.then.i.i.i.i.i406:                             ; preds = %do.end5.i.i.i.i404
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i405 = zext i1 %cmp.i.i.i.i.i.i.i403 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %129, i32 noundef -1, i32 noundef %conv.i.i.i.i.i405) #7
  br label %folio_put_testzero.exit.i.i407

folio_put_testzero.exit.i.i407:                   ; preds = %if.then.i.i.i.i.i406, %do.end5.i.i.i.i404
  br i1 %cmp.i.i.i.i.i.i.i403, label %if.then.i4.i408, label %folio_put_testzero.exit.i.i407.if.end193_crit_edge

folio_put_testzero.exit.i.i407.if.end193_crit_edge: ; preds = %folio_put_testzero.exit.i.i407
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end193

if.then.i4.i408:                                  ; preds = %folio_put_testzero.exit.i.i407
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__put_page(ptr noundef %129) #7
  br label %if.end193

if.end193:                                        ; preds = %if.then.i4.i408, %folio_put_testzero.exit.i.i407.if.end193_crit_edge, %if.end190.if.end193_crit_edge
  ret i32 %ret.3418
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflateInit2(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflateEnd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zlib_decompress_bio(ptr noundef %ws, ptr noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ws, i32 -56
  %compressed_len = getelementptr inbounds %struct.compressed_bio, ptr %cb, i32 0, i32 6
  %0 = ptrtoint ptr %compressed_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %compressed_len, align 4
  %sub = add i32 %1, 4095
  %div186 = lshr i32 %sub, 12
  %compressed_pages = getelementptr inbounds %struct.compressed_bio, ptr %cb, i32 0, i32 2
  %2 = ptrtoint ptr %compressed_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %compressed_pages, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 44) #7
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %shr.i.i = lshr i32 %7, 30
  %8 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %shr.i.i, label %entry.if.then.i_crit_edge [
    i32 2, label %entry.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %9 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp2.i.not.i = icmp eq i32 %9, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %5) #7
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %5) #7
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %addr.0.i, ptr %add.ptr, align 4
  %11 = tail call i32 @llvm.umin.i32(i32 %1, i32 4096)
  %avail_in = getelementptr i8, ptr %ws, i32 -52
  %12 = ptrtoint ptr %avail_in to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %avail_in, align 4
  %total_in = getelementptr i8, ptr %ws, i32 -48
  %13 = ptrtoint ptr %total_in to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %total_in, align 4
  %total_out5 = getelementptr i8, ptr %ws, i32 -36
  %14 = ptrtoint ptr %total_out5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %total_out5, align 4
  %buf = getelementptr i8, ptr %ws, i32 -8
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buf, align 4
  %next_out = getelementptr i8, ptr %ws, i32 -44
  %17 = ptrtoint ptr %next_out to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %next_out, align 4
  %buf_size = getelementptr i8, ptr %ws, i32 -4
  %18 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buf_size, align 4
  %avail_out = getelementptr i8, ptr %ws, i32 -40
  %20 = ptrtoint ptr %avail_out to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %avail_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp8 = icmp ugt i32 %1, 2
  br i1 %cmp8, label %land.lhs.true, label %kmap.exit.if.end_crit_edge

kmap.exit.if.end_crit_edge:                       ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %kmap.exit
  %arrayidx9 = getelementptr i8, ptr %addr.0.i, i32 1
  %21 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx9, align 1
  %conv = zext i8 %22 to i32
  %and = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true10, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true10:                                  ; preds = %land.lhs.true
  %23 = ptrtoint ptr %addr.0.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %addr.0.i, align 1
  %conv12 = zext i8 %24 to i32
  %and13 = and i32 %conv12, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and13)
  %cmp14 = icmp eq i32 %and13, 8
  br i1 %cmp14, label %land.lhs.true16, label %land.lhs.true10.if.end_crit_edge

land.lhs.true10.if.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true16:                                  ; preds = %land.lhs.true10
  %shl = shl nuw nsw i32 %conv12, 8
  %add21 = or i32 %shl, %conv
  %rem = urem i32 %add21, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool22.not = icmp eq i32 %rem, 0
  br i1 %tobool22.not, label %if.then, label %land.lhs.true16.if.end_crit_edge

land.lhs.true16.if.end_crit_edge:                 ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #9
  %25 = lshr i32 %conv12, 4
  %sub26 = sub nuw nsw i32 -8, %25
  %add.ptr29 = getelementptr i8, ptr %addr.0.i, i32 2
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr29, ptr %add.ptr, align 4
  %sub32 = add nsw i32 %11, -2
  %27 = ptrtoint ptr %avail_in to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub32, ptr %avail_in, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true16.if.end_crit_edge, %land.lhs.true10.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %kmap.exit.if.end_crit_edge
  %wbits.0 = phi i32 [ 15, %land.lhs.true.if.end_crit_edge ], [ 15, %land.lhs.true16.if.end_crit_edge ], [ %sub26, %if.then ], [ 15, %land.lhs.true10.if.end_crit_edge ], [ 15, %kmap.exit.if.end_crit_edge ]
  %call34 = tail call i32 @zlib_inflateInit2(ptr noundef %add.ptr, i32 noundef %wbits.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35.not = icmp eq i32 %call34, 0
  br i1 %cmp35.not, label %while.cond.preheader, label %do.end

while.cond.preheader:                             ; preds = %if.end
  %28 = ptrtoint ptr %total_in to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %total_in, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %1)
  %cmp44218 = icmp ult i32 %29, %1
  br i1 %cmp44218, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.done_crit_edge

while.cond.preheader.done_crit_edge:              ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

do.end:                                           ; preds = %if.end
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 55) #7
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %shr.i.i190 = lshr i32 %33, 30
  %34 = zext i32 %shr.i.i190 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %shr.i.i190, label %do.end.cleanup115_crit_edge [
    i32 2, label %do.end.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i192
  ]

do.end.if.end.i_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.cleanup115_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup115

is_highmem_idx.exit.i192:                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %35 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp2.i.not.i191 = icmp eq i32 %35, 2
  br i1 %cmp2.i.not.i191, label %is_highmem_idx.exit.i192.if.end.i_crit_edge, label %is_highmem_idx.exit.i192.cleanup115_crit_edge

is_highmem_idx.exit.i192.cleanup115_crit_edge:    ; preds = %is_highmem_idx.exit.i192
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup115

is_highmem_idx.exit.i192.if.end.i_crit_edge:      ; preds = %is_highmem_idx.exit.i192
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i192.if.end.i_crit_edge, %do.end.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %31) #7
  br label %cleanup115

while.body:                                       ; preds = %if.end101.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %page_in_index.0221 = phi i32 [ %page_in_index.1, %if.end101.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %total_out.0220 = phi i32 [ %37, %if.end101.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %data_in.0219 = phi ptr [ %data_in.2, %if.end101.while.body_crit_edge ], [ %addr.0.i, %while.cond.preheader.while.body_crit_edge ]
  %call47 = tail call i32 @zlib_inflate(ptr noundef %add.ptr, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call47)
  %switch189 = icmp ult i32 %call47, 2
  br i1 %switch189, label %if.end54, label %while.body.done_crit_edge

while.body.done_crit_edge:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end54:                                         ; preds = %while.body
  %36 = ptrtoint ptr %total_out5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %total_out5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %total_out.0220)
  %cmp57 = icmp eq i32 %37, %total_out.0220
  br i1 %cmp57, label %if.end54.while.end_crit_edge, label %if.end60

if.end54.while.end_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end60:                                         ; preds = %if.end54
  %38 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %buf, align 4
  %sub62 = sub i32 %37, %total_out.0220
  %call63 = tail call i32 @btrfs_decompress_buf2page(ptr noundef %39, i32 noundef %sub62, ptr noundef %cb, i32 noundef %total_out.0220) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp eq i32 %call63, 0
  br i1 %cmp64, label %if.end60.done_crit_edge, label %if.end67

if.end60.done_crit_edge:                          ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end67:                                         ; preds = %if.end60
  %40 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buf, align 4
  %42 = ptrtoint ptr %next_out to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %next_out, align 4
  %43 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %buf_size, align 4
  %45 = ptrtoint ptr %avail_out to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %avail_out, align 4
  %46 = ptrtoint ptr %avail_in to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %avail_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp76 = icmp eq i32 %47, 0
  br i1 %cmp76, label %if.then78, label %if.end67.if.end101_crit_edge

if.end67.if.end101_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.then78:                                        ; preds = %if.end67
  %arrayidx80 = getelementptr ptr, ptr %3, i32 %page_in_index.0221
  %48 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx80, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 55) #7
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %shr.i.i193 = lshr i32 %51, 30
  %52 = zext i32 %shr.i.i193 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %shr.i.i193, label %if.then78.kunmap.exit197_crit_edge [
    i32 2, label %if.then78.if.end.i196_crit_edge
    i32 3, label %is_highmem_idx.exit.i195
  ]

if.then78.if.end.i196_crit_edge:                  ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i196

if.then78.kunmap.exit197_crit_edge:               ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  br label %kunmap.exit197

is_highmem_idx.exit.i195:                         ; preds = %if.then78
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %53 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp2.i.not.i194 = icmp eq i32 %53, 2
  br i1 %cmp2.i.not.i194, label %is_highmem_idx.exit.i195.if.end.i196_crit_edge, label %is_highmem_idx.exit.i195.kunmap.exit197_crit_edge

is_highmem_idx.exit.i195.kunmap.exit197_crit_edge: ; preds = %is_highmem_idx.exit.i195
  call void @__sanitizer_cov_trace_pc() #9
  br label %kunmap.exit197

is_highmem_idx.exit.i195.if.end.i196_crit_edge:   ; preds = %is_highmem_idx.exit.i195
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i196

if.end.i196:                                      ; preds = %is_highmem_idx.exit.i195.if.end.i196_crit_edge, %if.then78.if.end.i196_crit_edge
  tail call void @kunmap_high(ptr noundef %49) #7
  br label %kunmap.exit197

kunmap.exit197:                                   ; preds = %if.end.i196, %is_highmem_idx.exit.i195.kunmap.exit197_crit_edge, %if.then78.kunmap.exit197_crit_edge
  %inc = add i32 %page_in_index.0221, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %div186)
  %cmp81.not = icmp ult i32 %inc, %div186
  br i1 %cmp81.not, label %if.end84, label %kunmap.exit197.while.end_crit_edge

kunmap.exit197.while.end_crit_edge:               ; preds = %kunmap.exit197
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end84:                                         ; preds = %kunmap.exit197
  %arrayidx85 = getelementptr ptr, ptr %3, i32 %inc
  %54 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx85, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 44) #7
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %shr.i.i198 = lshr i32 %57, 30
  %58 = zext i32 %shr.i.i198 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %shr.i.i198, label %if.end84.if.then.i202_crit_edge [
    i32 2, label %if.end84.if.else.i204_crit_edge
    i32 3, label %is_highmem_idx.exit.i200
  ]

if.end84.if.else.i204_crit_edge:                  ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i204

if.end84.if.then.i202_crit_edge:                  ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i202

is_highmem_idx.exit.i200:                         ; preds = %if.end84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %59 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp2.i.not.i199 = icmp eq i32 %59, 2
  br i1 %cmp2.i.not.i199, label %is_highmem_idx.exit.i200.if.else.i204_crit_edge, label %is_highmem_idx.exit.i200.if.then.i202_crit_edge

is_highmem_idx.exit.i200.if.then.i202_crit_edge:  ; preds = %is_highmem_idx.exit.i200
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i202

is_highmem_idx.exit.i200.if.else.i204_crit_edge:  ; preds = %is_highmem_idx.exit.i200
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i204

if.then.i202:                                     ; preds = %is_highmem_idx.exit.i200.if.then.i202_crit_edge, %if.end84.if.then.i202_crit_edge
  %call5.i201 = tail call ptr @page_address(ptr noundef %55) #7
  br label %cleanup.thread

if.else.i204:                                     ; preds = %is_highmem_idx.exit.i200.if.else.i204_crit_edge, %if.end84.if.else.i204_crit_edge
  %call6.i203 = tail call ptr @kmap_high(ptr noundef %55) #7
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.else.i204, %if.then.i202
  %addr.0.i205 = phi ptr [ %call6.i203, %if.else.i204 ], [ %call5.i201, %if.then.i202 ]
  %60 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %addr.0.i205, ptr %add.ptr, align 4
  %61 = ptrtoint ptr %total_in to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %total_in, align 4
  %sub91 = sub i32 %1, %62
  %63 = tail call i32 @llvm.umin.i32(i32 %sub91, i32 4096)
  %64 = ptrtoint ptr %avail_in to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %avail_in, align 4
  br label %if.end101

if.end101:                                        ; preds = %cleanup.thread, %if.end67.if.end101_crit_edge
  %data_in.2 = phi ptr [ %data_in.0219, %if.end67.if.end101_crit_edge ], [ %addr.0.i205, %cleanup.thread ]
  %page_in_index.1 = phi i32 [ %page_in_index.0221, %if.end67.if.end101_crit_edge ], [ %inc, %cleanup.thread ]
  %65 = ptrtoint ptr %total_in to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %total_in, align 4
  %cmp44 = icmp ult i32 %66, %1
  br i1 %cmp44, label %if.end101.while.body_crit_edge, label %if.end101.while.end_crit_edge

if.end101.while.end_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end101.while.body_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %if.end101.while.end_crit_edge, %kunmap.exit197.while.end_crit_edge, %if.end54.while.end_crit_edge
  %data_in.3.ph = phi ptr [ %data_in.2, %if.end101.while.end_crit_edge ], [ %data_in.0219, %if.end54.while.end_crit_edge ], [ null, %kunmap.exit197.while.end_crit_edge ]
  %page_in_index.2.ph = phi i32 [ %page_in_index.1, %if.end101.while.end_crit_edge ], [ %page_in_index.0221, %if.end54.while.end_crit_edge ], [ %inc, %kunmap.exit197.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call47)
  %phi.cmp = icmp eq i32 %call47, 1
  %spec.select252 = select i1 %phi.cmp, i32 0, i32 -5
  br label %done

done:                                             ; preds = %while.end, %if.end60.done_crit_edge, %while.body.done_crit_edge, %while.cond.preheader.done_crit_edge
  %data_in.4 = phi ptr [ %addr.0.i, %while.cond.preheader.done_crit_edge ], [ %data_in.3.ph, %while.end ], [ %data_in.0219, %while.body.done_crit_edge ], [ %data_in.0219, %if.end60.done_crit_edge ]
  %page_in_index.3 = phi i32 [ 0, %while.cond.preheader.done_crit_edge ], [ %page_in_index.2.ph, %while.end ], [ %page_in_index.0221, %while.body.done_crit_edge ], [ %page_in_index.0221, %if.end60.done_crit_edge ]
  %tobool112.not = phi i1 [ false, %while.cond.preheader.done_crit_edge ], [ %phi.cmp, %while.end ], [ %switch189, %while.body.done_crit_edge ], [ %switch189, %if.end60.done_crit_edge ]
  %ret.2 = phi i32 [ -5, %while.cond.preheader.done_crit_edge ], [ %spec.select252, %while.end ], [ 0, %if.end60.done_crit_edge ], [ -5, %while.body.done_crit_edge ]
  %call107 = tail call i32 @zlib_inflateEnd(ptr noundef %add.ptr) #7
  %tobool108.not = icmp eq ptr %data_in.4, null
  br i1 %tobool108.not, label %done.if.end111_crit_edge, label %if.then109

done.if.end111_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

if.then109:                                       ; preds = %done
  %arrayidx110 = getelementptr ptr, ptr %3, i32 %page_in_index.3
  %67 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx110, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 55) #7
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %shr.i.i208 = lshr i32 %70, 30
  %71 = zext i32 %shr.i.i208 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %shr.i.i208, label %if.then109.if.end111_crit_edge [
    i32 2, label %if.then109.if.end.i211_crit_edge
    i32 3, label %is_highmem_idx.exit.i210
  ]

if.then109.if.end.i211_crit_edge:                 ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i211

if.then109.if.end111_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

is_highmem_idx.exit.i210:                         ; preds = %if.then109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %72 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %72)
  %cmp2.i.not.i209 = icmp eq i32 %72, 2
  br i1 %cmp2.i.not.i209, label %is_highmem_idx.exit.i210.if.end.i211_crit_edge, label %is_highmem_idx.exit.i210.if.end111_crit_edge

is_highmem_idx.exit.i210.if.end111_crit_edge:     ; preds = %is_highmem_idx.exit.i210
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

is_highmem_idx.exit.i210.if.end.i211_crit_edge:   ; preds = %is_highmem_idx.exit.i210
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i211

if.end.i211:                                      ; preds = %is_highmem_idx.exit.i210.if.end.i211_crit_edge, %if.then109.if.end.i211_crit_edge
  tail call void @kunmap_high(ptr noundef %68) #7
  br label %if.end111

if.end111:                                        ; preds = %if.end.i211, %is_highmem_idx.exit.i210.if.end111_crit_edge, %if.then109.if.end111_crit_edge, %done.if.end111_crit_edge
  br i1 %tobool112.not, label %if.then113, label %if.end111.cleanup115_crit_edge

if.end111.cleanup115_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup115

if.then113:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  %orig_bio = getelementptr inbounds %struct.compressed_bio, ptr %cb, i32 0, i32 10
  %73 = ptrtoint ptr %orig_bio to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %orig_bio, align 8
  tail call void @zero_fill_bio(ptr noundef %74) #7
  br label %cleanup115

cleanup115:                                       ; preds = %if.then113, %if.end111.cleanup115_crit_edge, %if.end.i, %is_highmem_idx.exit.i192.cleanup115_crit_edge, %do.end.cleanup115_crit_edge
  %retval.0 = phi i32 [ %ret.2, %if.then113 ], [ %ret.2, %if.end111.cleanup115_crit_edge ], [ -5, %do.end.cleanup115_crit_edge ], [ -5, %is_highmem_idx.exit.i192.cleanup115_crit_edge ], [ -5, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflateInit2(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_decompress_buf2page(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflateEnd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_fill_bio(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zlib_decompress(ptr noundef %ws, ptr noundef %data_in, ptr noundef %dest_page, i32 noundef %start_byte, i32 noundef %srclen, i32 noundef %destlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ws, i32 -56
  %0 = tail call i32 @llvm.umin.i32(i32 %destlen, i32 4096)
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %data_in, ptr %add.ptr, align 4
  %avail_in = getelementptr i8, ptr %ws, i32 -52
  %2 = ptrtoint ptr %avail_in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %srclen, ptr %avail_in, align 4
  %total_in = getelementptr i8, ptr %ws, i32 -48
  %3 = ptrtoint ptr %total_in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %total_in, align 4
  %buf = getelementptr i8, ptr %ws, i32 -8
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf, align 4
  %next_out = getelementptr i8, ptr %ws, i32 -44
  %6 = ptrtoint ptr %next_out to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %next_out, align 4
  %buf_size = getelementptr i8, ptr %ws, i32 -4
  %7 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buf_size, align 4
  %avail_out = getelementptr i8, ptr %ws, i32 -40
  %9 = ptrtoint ptr %avail_out to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %avail_out, align 4
  %total_out7 = getelementptr i8, ptr %ws, i32 -36
  %10 = ptrtoint ptr %total_out7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %total_out7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %srclen)
  %cmp8 = icmp ugt i32 %srclen, 2
  br i1 %cmp8, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr i8, ptr %data_in, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %12 to i32
  %and = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true9, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true9:                                   ; preds = %land.lhs.true
  %13 = ptrtoint ptr %data_in to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %data_in, align 1
  %conv11 = zext i8 %14 to i32
  %and12 = and i32 %conv11, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and12)
  %cmp13 = icmp eq i32 %and12, 8
  br i1 %cmp13, label %land.lhs.true15, label %land.lhs.true9.if.end_crit_edge

land.lhs.true9.if.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true15:                                  ; preds = %land.lhs.true9
  %shl = shl nuw nsw i32 %conv11, 8
  %add = or i32 %shl, %conv
  %rem = urem i32 %add, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool20.not = icmp eq i32 %rem, 0
  br i1 %tobool20.not, label %if.then, label %land.lhs.true15.if.end_crit_edge

land.lhs.true15.if.end_crit_edge:                 ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  %15 = lshr i32 %conv11, 4
  %sub = sub nuw nsw i32 -8, %15
  %add.ptr26 = getelementptr i8, ptr %data_in, i32 2
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr26, ptr %add.ptr, align 4
  %sub29 = add i32 %srclen, -2
  %17 = ptrtoint ptr %avail_in to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub29, ptr %avail_in, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true15.if.end_crit_edge, %land.lhs.true9.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %wbits.0 = phi i32 [ 15, %land.lhs.true.if.end_crit_edge ], [ 15, %land.lhs.true15.if.end_crit_edge ], [ %sub, %if.then ], [ 15, %land.lhs.true9.if.end_crit_edge ], [ 15, %entry.if.end_crit_edge ]
  %call = tail call i32 @zlib_inflateInit2(ptr noundef %add.ptr, i32 noundef %wbits.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp31.not = icmp eq i32 %call, 0
  br i1 %cmp31.not, label %while.cond.preheader, label %do.end

while.cond.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp37.not185 = icmp eq i32 %0, 0
  br i1 %cmp37.not185, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  br label %cleanup110

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %pg_offset.0188 = phi i32 [ %pg_offset.1, %cleanup.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %total_out.0187 = phi i32 [ %19, %cleanup.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %bytes_left.0186 = phi i32 [ %bytes_left.1, %cleanup.while.body_crit_edge ], [ %0, %while.cond.preheader.while.body_crit_edge ]
  %call40 = tail call i32 @zlib_inflate(ptr noundef %add.ptr, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call40)
  %switch173 = icmp ult i32 %call40, 2
  br i1 %switch173, label %if.end47, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end47:                                         ; preds = %while.body
  %18 = ptrtoint ptr %total_out7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %total_out7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %total_out.0187)
  %cmp50 = icmp eq i32 %19, %total_out.0187
  br i1 %cmp50, label %if.end47.while.end_crit_edge, label %if.end53

if.end47.while.end_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end53:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %start_byte)
  %cmp54.not = icmp ugt i32 %19, %start_byte
  br i1 %cmp54.not, label %land.lhs.true60, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true60:                                  ; preds = %if.end53
  %20 = tail call i32 @llvm.usub.sat.i32(i32 %start_byte, i32 %total_out.0187)
  %sub66 = sub i32 4096, %pg_offset.0188
  %rem67 = and i32 %20, 4095
  %sub68 = sub nuw nsw i32 4096, %rem67
  %21 = tail call i32 @llvm.umin.i32(i32 %sub66, i32 %sub68)
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 %bytes_left.0186)
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buf, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %25 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %25, 512
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %dest_page, i32 noundef %or.i.i) #7
  %add.i = add i32 %22, %pg_offset.0188
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 4096
  br i1 %cmp.i, label %do.body2.i, label %memcpy_to_page.exit, !prof !40

do.body2.i:                                       ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/highmem.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 352, 0\0A.popsection", ""() #7, !srcloc !46
  unreachable

memcpy_to_page.exit:                              ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr84 = getelementptr i8, ptr %24, i32 %20
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 %pg_offset.0188
  %26 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr84, i32 %22)
  tail call void @flush_dcache_page(ptr noundef %dest_page) #7
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #7
  %sub86 = sub i32 %bytes_left.0186, %22
  br label %cleanup

cleanup:                                          ; preds = %memcpy_to_page.exit, %if.end53.cleanup_crit_edge
  %bytes_left.1 = phi i32 [ %bytes_left.0186, %if.end53.cleanup_crit_edge ], [ %sub86, %memcpy_to_page.exit ]
  %pg_offset.1 = phi i32 [ %pg_offset.0188, %if.end53.cleanup_crit_edge ], [ %add.i, %memcpy_to_page.exit ]
  %27 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buf, align 4
  %29 = ptrtoint ptr %next_out to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %next_out, align 4
  %30 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %buf_size, align 4
  %32 = ptrtoint ptr %avail_out to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %avail_out, align 4
  %cmp37.not = icmp eq i32 %bytes_left.1, 0
  br i1 %cmp37.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end47.while.end_crit_edge, %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %bytes_left.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %bytes_left.0186, %if.end47.while.end_crit_edge ], [ %bytes_left.0186, %while.body.while.end_crit_edge ], [ 0, %cleanup.while.end_crit_edge ]
  %pg_offset.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %pg_offset.0188, %if.end47.while.end_crit_edge ], [ %pg_offset.0188, %while.body.while.end_crit_edge ], [ %pg_offset.1, %cleanup.while.end_crit_edge ]
  %ret.2 = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ -5, %if.end47.while.end_crit_edge ], [ %call40, %while.body.while.end_crit_edge ], [ %call40, %cleanup.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.2)
  %cmp95.not = icmp eq i32 %ret.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_left.0.lcssa)
  %cmp98.not = icmp eq i32 %bytes_left.0.lcssa, 0
  %or.cond = select i1 %cmp95.not, i1 true, i1 %cmp98.not
  %ret.3 = select i1 %or.cond, i32 0, i32 -5
  %call104 = tail call i32 @zlib_inflateEnd(ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %pg_offset.0.lcssa)
  %cmp105 = icmp ugt i32 %0, %pg_offset.0.lcssa
  br i1 %cmp105, label %if.then107, label %while.end.cleanup110_crit_edge

while.end.cleanup110_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup110

if.then107:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub108 = sub i32 %0, %pg_offset.0.lcssa
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %33 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i174 = or i32 %33, 512
  %call.i.i175 = tail call ptr @__kmap_local_page_prot(ptr noundef %dest_page, i32 noundef %or.i.i174) #7
  %add.ptr.i176 = getelementptr i8, ptr %call.i.i175, i32 %pg_offset.0.lcssa
  %34 = call ptr @memset(ptr %add.ptr.i176, i32 0, i32 %sub108)
  tail call void @flush_dcache_page(ptr noundef %dest_page) #7
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i175) #7
  br label %cleanup110

cleanup110:                                       ; preds = %if.then107, %while.end.cleanup110_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %ret.3, %if.then107 ], [ %ret.3, %while.end.cleanup110_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !23, !25, !27}
!llvm.named.register.sp = !{!29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/zlib.c", i32 116, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @zlib_compress_pages._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @zlib_compress_pages._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/btrfs/zlib.c", i32 180, i32 4}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @zlib_compress_pages.__UNIQUE_ID_ddebug262, !7, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/btrfs/zlib.c", i32 311, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @zlib_decompress_bio._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @zlib_decompress_bio._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/btrfs/zlib.c", i32 397, i32 3}
!17 = !{ptr @zlib_decompress._entry, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @zlib_decompress._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @btrfs_zlib_compress, !20, !"btrfs_zlib_compress", i1 false, i1 false}
!20 = !{!"../fs/btrfs/zlib.c", i32 458, i32 32}
!21 = !{ptr @wsm, !22, !"wsm", i1 false, i1 false}
!22 = !{!"../fs/btrfs/zlib.c", i32 34, i32 33}
!23 = distinct !{null, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/mm.h", i32 717, i32 2}
!29 = !{!"sp"}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"branch_weights", i32 2000, i32 1}
!40 = !{!"branch_weights", i32 1, i32 2000}
!41 = !{i64 2153201630, i64 2153202113, i64 2153201667, i64 2153201723, i64 2153201757, i64 2153201781, i64 2153201822, i64 2153201843, i64 2153201871, i64 2153201905}
!42 = !{i64 2148308081}
!43 = !{i64 2148222814, i64 2148222846, i64 2148222875, i64 2148222909, i64 2148222940, i64 2148222963}
!44 = !{i64 2148308310}
!45 = !{i64 2148701444, i64 2148701449, i64 2148701462, i64 2148701506, i64 2148701540, i64 2148701561}
!46 = !{i64 2153753740, i64 2153754228, i64 2153753777, i64 2153753833, i64 2153753867, i64 2153753891, i64 2153753932, i64 2153753953, i64 2153753981, i64 2153754015}
