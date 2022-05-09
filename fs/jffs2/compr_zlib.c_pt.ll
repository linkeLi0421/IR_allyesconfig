; ModuleID = '/llk/IR_all_yes/fs/jffs2/compr_zlib.c_pt.bc'
source_filename = "../fs/jffs2/compr_zlib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.jffs2_compressor = type { %struct.list_head, i32, ptr, i8, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.z_stream_s = type { ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@jffs2_zlib_comp = internal global { %struct.jffs2_compressor, [36 x i8] } { %struct.jffs2_compressor { %struct.list_head zeroinitializer, i32 60, ptr @.str, i8 6, ptr @jffs2_zlib_compress, ptr @jffs2_zlib_decompress, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@def_strm = internal global { %struct.z_stream_s, [48 x i8] } zeroinitializer, align 32
@inf_strm = internal global { %struct.z_stream_s, [48 x i8] } zeroinitializer, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"zlib\00", [27 x i8] zeroinitializer }, align 32
@deflate_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @deflate_mutex, i64 52), ptr getelementptr (i8, ptr @deflate_mutex, i64 52) }, ptr @deflate_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@jffs2_zlib_compress._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014jffs2: deflateInit failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"jffs2_zlib_compress\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/jffs2/compr_zlib.c\00", [42 x i8] zeroinitializer }, align 32
@jffs2_zlib_compress._entry_ptr = internal global ptr @jffs2_zlib_compress._entry, section ".printk_index", align 4
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"deflate_mutex.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"deflate_mutex\00", [18 x i8] zeroinitializer }, align 32
@inflate_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @inflate_mutex, i64 52), ptr getelementptr (i8, ptr @inflate_mutex, i64 52) }, ptr @inflate_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@jffs2_zlib_decompress._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014jffs2: inflateInit failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"jffs2_zlib_decompress\00", [42 x i8] zeroinitializer }, align 32
@jffs2_zlib_decompress._entry_ptr = internal global ptr @jffs2_zlib_decompress._entry, section ".printk_index", align 4
@jffs2_zlib_decompress._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015jffs2: inflate returned %d\0A\00", [34 x i8] zeroinitializer }, align 32
@jffs2_zlib_decompress._entry_ptr.10 = internal global ptr @jffs2_zlib_decompress._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"inflate_mutex.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"inflate_mutex\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.13 = private unnamed_addr constant [16 x i8] c"jffs2_zlib_comp\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 190, i32 32 }
@___asan_gen_.16 = private unnamed_addr constant [9 x i8] c"def_strm\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 36, i32 27 }
@___asan_gen_.19 = private unnamed_addr constant [9 x i8] c"inf_strm\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 36, i32 17 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 192, i32 13 }
@___asan_gen_.25 = private unnamed_addr constant [14 x i8] c"deflate_mutex\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 84, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 34, i32 8 }
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"inflate_mutex\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 175, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 183, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [25 x i8] c"../fs/jffs2/compr_zlib.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 35, i32 8 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @jffs2_zlib_compress._entry, ptr @jffs2_zlib_compress._entry_ptr, ptr @jffs2_zlib_decompress._entry, ptr @jffs2_zlib_decompress._entry.8, ptr @jffs2_zlib_decompress._entry_ptr, ptr @jffs2_zlib_decompress._entry_ptr.10, ptr @jffs2_zlib_comp, ptr @def_strm, ptr @inf_strm, ptr @.str, ptr @deflate_mutex, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @inflate_mutex, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_zlib_comp to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @def_strm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inf_strm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deflate_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_zlib_compress._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inflate_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_zlib_decompress._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_zlib_decompress._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_zlib_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @alloc_workspaces() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @jffs2_register_compressor(ptr noundef nonnull @jffs2_zlib_comp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load ptr, ptr getelementptr inbounds (%struct.z_stream_s, ptr @def_strm, i32 0, i32 8), align 4
  tail call void @vfree(ptr noundef %0) #6
  %1 = load ptr, ptr getelementptr inbounds (%struct.z_stream_s, ptr @inf_strm, i32 0, i32 8), align 4
  tail call void @vfree(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alloc_workspaces() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @zlib_deflate_workspacesize(i32 noundef 15, i32 noundef 8) #6
  %call1 = tail call noalias ptr @vmalloc(i32 noundef %call) #10
  store ptr %call1, ptr getelementptr inbounds (%struct.z_stream_s, ptr @def_strm, i32 0, i32 8), align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end:                                           ; preds = %entry
  %call2 = tail call i32 @zlib_inflate_workspacesize() #6
  %call3 = tail call noalias ptr @vmalloc(i32 noundef %call2) #10
  store ptr %call3, ptr getelementptr inbounds (%struct.z_stream_s, ptr @inf_strm, i32 0, i32 8), align 4
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then5, label %do.end.return_crit_edge

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load ptr, ptr getelementptr inbounds (%struct.z_stream_s, ptr @def_strm, i32 0, i32 8), align 4
  tail call void @vfree(ptr noundef %0) #6
  br label %return

return:                                           ; preds = %if.then5, %do.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %if.then5 ], [ -12, %entry.return_crit_edge ], [ 0, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_register_compressor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_zlib_exit() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @jffs2_unregister_compressor(ptr noundef nonnull @jffs2_zlib_comp) #6
  %0 = load ptr, ptr getelementptr inbounds (%struct.z_stream_s, ptr @def_strm, i32 0, i32 8), align 4
  tail call void @vfree(ptr noundef %0) #6
  %1 = load ptr, ptr getelementptr inbounds (%struct.z_stream_s, ptr @inf_strm, i32 0, i32 8), align 4
  tail call void @vfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_unregister_compressor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflate_workspacesize(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflate_workspacesize() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jffs2_zlib_compress(ptr noundef %data_in, ptr noundef %cpage_out, ptr nocapture noundef %sourcelen, ptr nocapture noundef %dstlen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dstlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dstlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %1)
  %cmp = icmp ult i32 %1, 13
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @deflate_mutex, i32 noundef 0) #6
  %call = tail call i32 @zlib_deflateInit2(ptr noundef nonnull @def_strm, i32 noundef 3, i32 noundef 8, i32 noundef 15, i32 noundef 8, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1.not = icmp eq i32 %call, 0
  br i1 %cmp1.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  store ptr %data_in, ptr @def_strm, align 4
  store i32 0, ptr getelementptr inbounds (%struct.z_stream_s, ptr @def_strm, i32 0, i32 2), align 4
  store ptr %cpage_out, ptr getelementptr inbounds (%struct.z_stream_s, ptr @def_strm, i32 0, i32 3), align 4
  store i32 0, ptr getelementptr inbounds (%struct.z_stream_s, ptr @def_strm, i32 0, i32 5), align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end4
  %2 = load i32, ptr getelementptr inbounds (%struct.z_stream_s, ptr @def_strm, i32 0, i32 5), align 4
  %3 = ptrtoint ptr %dstlen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dstlen, align 4
  %sub = add i32 %4, -12
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %sub)
  %cmp5 = icmp ult i32 %2, %sub
  br i1 %cmp5, label %land.rhs, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i32, ptr getelementptr inbounds (%struct.z_stream_s, ptr @def_strm, i32 0, i32 2), align 4
  %6 = ptrtoint ptr %sourcelen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sourcelen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp6 = icmp ult i32 %5, %7
  br i1 %cmp6, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %add.neg = sub i32 -12, %2
  %sub7 = add i32 %add.neg, %4
  store i32 %sub7, ptr getelementptr inbounds (%struct.z_stream_s, ptr @def_strm, i32 0, i32 4), align 4
  %8 = ptrtoint ptr %sourcelen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sourcelen, align 4
  %sub8 = sub i32 %9, %5
  %10 = tail call i32 @llvm.umin.i32(i32 %sub8, i32 %sub7)
  store i32 %10, ptr getelementptr inbounds (%struct.z_stream_s, ptr @def_strm, i32 0, i32 1), align 4
  %call14 = tail call i32 @zlib_deflate(ptr noundef nonnull @def_strm, i32 noundef 1) #6
  %cmp18.not = icmp eq i32 %call14, 0
  br i1 %cmp18.not, label %while.body.while.cond_crit_edge, label %do.end22

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

do.end22:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %call23 = tail call i32 @zlib_deflateEnd(ptr noundef nonnull @def_strm) #6
  br label %cleanup.sink.split

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %while.cond.while.end_crit_edge
  %11 = load i32, ptr getelementptr inbounds (%struct.z_stream_s, ptr @def_strm, i32 0, i32 4), align 4
  %add25 = add i32 %11, 12
  store i32 %add25, ptr getelementptr inbounds (%struct.z_stream_s, ptr @def_strm, i32 0, i32 4), align 4
  store i32 0, ptr getelementptr inbounds (%struct.z_stream_s, ptr @def_strm, i32 0, i32 1), align 4
  %call26 = tail call i32 @zlib_deflate(ptr noundef nonnull @def_strm, i32 noundef 5) #6
  %call27 = tail call i32 @zlib_deflateEnd(ptr noundef nonnull @def_strm) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call26)
  %cmp28.not = icmp eq i32 %call26, 1
  br i1 %cmp28.not, label %if.end33, label %while.end.cleanup.sink.split_crit_edge

while.end.cleanup.sink.split_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end33:                                         ; preds = %while.end
  %12 = load i32, ptr getelementptr inbounds (%struct.z_stream_s, ptr @def_strm, i32 0, i32 5), align 4
  %13 = load i32, ptr getelementptr inbounds (%struct.z_stream_s, ptr @def_strm, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %13)
  %cmp34.not = icmp ult i32 %12, %13
  br i1 %cmp34.not, label %do.end42, label %if.end33.cleanup.sink.split_crit_edge

if.end33.cleanup.sink.split_crit_edge:            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end42:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %dstlen to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %dstlen, align 4
  %15 = load i32, ptr getelementptr inbounds (%struct.z_stream_s, ptr @def_strm, i32 0, i32 2), align 4
  %16 = ptrtoint ptr %sourcelen to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %sourcelen, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end42, %if.end33.cleanup.sink.split_crit_edge, %while.end.cleanup.sink.split_crit_edge, %do.end22, %do.end
  %retval.0.ph = phi i32 [ -1, %do.end22 ], [ -1, %do.end ], [ 0, %do.end42 ], [ -1, %while.end.cleanup.sink.split_crit_edge ], [ -1, %if.end33.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @deflate_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jffs2_zlib_decompress(ptr noundef %data_in, ptr noundef %cpage_out, i32 noundef %srclen, i32 noundef %destlen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @inflate_mutex, i32 noundef 0) #6
  store ptr %data_in, ptr @inf_strm, align 4
  store i32 %srclen, ptr getelementptr inbounds (%struct.z_stream_s, ptr @inf_strm, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.z_stream_s, ptr @inf_strm, i32 0, i32 2), align 4
  store ptr %cpage_out, ptr getelementptr inbounds (%struct.z_stream_s, ptr @inf_strm, i32 0, i32 3), align 4
  store i32 %destlen, ptr getelementptr inbounds (%struct.z_stream_s, ptr @inf_strm, i32 0, i32 4), align 4
  store i32 0, ptr getelementptr inbounds (%struct.z_stream_s, ptr @inf_strm, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %srclen)
  %cmp = icmp ugt i32 %srclen, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr i8, ptr %data_in, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true1, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %2 = ptrtoint ptr %data_in to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data_in, align 1
  %conv3 = zext i8 %3 to i32
  %and4 = and i32 %conv3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and4)
  %cmp5 = icmp eq i32 %and4, 8
  br i1 %cmp5, label %land.lhs.true7, label %land.lhs.true1.if.end_crit_edge

land.lhs.true1.if.end_crit_edge:                  ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true1
  %shl = shl nuw nsw i32 %conv3, 8
  %add = or i32 %shl, %conv
  %rem = urem i32 %add, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool12.not = icmp eq i32 %rem, 0
  br i1 %tobool12.not, label %do.end, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  %4 = lshr i32 %conv3, 4
  %sub = sub nuw nsw i32 -8, %4
  %add.ptr = getelementptr i8, ptr %data_in, i32 2
  store ptr %add.ptr, ptr @inf_strm, align 4
  %sub16 = add i32 %srclen, -2
  store i32 %sub16, ptr getelementptr inbounds (%struct.z_stream_s, ptr @inf_strm, i32 0, i32 1), align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true7.if.end_crit_edge, %land.lhs.true1.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %wbits.0 = phi i32 [ 15, %land.lhs.true.if.end_crit_edge ], [ 15, %land.lhs.true7.if.end_crit_edge ], [ %sub, %do.end ], [ 15, %land.lhs.true1.if.end_crit_edge ], [ 15, %entry.if.end_crit_edge ]
  %call = tail call i32 @zlib_inflateInit2(ptr noundef nonnull @inf_strm, i32 noundef %wbits.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp20.not = icmp eq i32 %call, 0
  br i1 %cmp20.not, label %if.end.while.cond_crit_edge, label %do.end25

if.end.while.cond_crit_edge:                      ; preds = %if.end
  br label %while.cond

do.end25:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #11
  br label %cleanup

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end.while.cond_crit_edge
  %call28 = tail call i32 @zlib_inflate(ptr noundef nonnull @inf_strm, i32 noundef 5) #6
  %5 = zext i32 %call28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call28, label %do.end36 [
    i32 0, label %while.cond.while.cond_crit_edge
    i32 1, label %while.cond.if.end39_crit_edge
  ]

while.cond.if.end39_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

do.end36:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call28) #11
  br label %if.end39

if.end39:                                         ; preds = %do.end36, %while.cond.if.end39_crit_edge
  %call40 = tail call i32 @zlib_inflateEnd(ptr noundef nonnull @inf_strm) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %do.end25
  %retval.0 = phi i32 [ 1, %do.end25 ], [ 0, %if.end39 ]
  tail call void @mutex_unlock(ptr noundef nonnull @inflate_mutex) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflateInit2(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflateEnd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflateInit2(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflateEnd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @def_strm, !1, !"def_strm", i1 false, i1 false}
!1 = !{!"../fs/jffs2/compr_zlib.c", i32 36, i32 27}
!2 = !{ptr @inf_strm, !3, !"inf_strm", i1 false, i1 false}
!3 = !{!"../fs/jffs2/compr_zlib.c", i32 36, i32 17}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/jffs2/compr_zlib.c", i32 192, i32 13}
!6 = !{ptr @jffs2_zlib_comp, !7, !"jffs2_zlib_comp", i1 false, i1 false}
!7 = !{!"../fs/jffs2/compr_zlib.c", i32 190, i32 32}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/jffs2/compr_zlib.c", i32 84, i32 3}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @jffs2_zlib_compress._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @jffs2_zlib_compress._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/jffs2/compr_zlib.c", i32 34, i32 8}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @deflate_mutex, !15, !"deflate_mutex", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/jffs2/compr_zlib.c", i32 175, i32 3}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @jffs2_zlib_decompress._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @jffs2_zlib_decompress._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/jffs2/compr_zlib.c", i32 183, i32 3}
!25 = !{ptr @jffs2_zlib_decompress._entry.8, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @jffs2_zlib_decompress._entry_ptr.10, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/jffs2/compr_zlib.c", i32 35, i32 8}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @inflate_mutex, !28, !"inflate_mutex", i1 false, i1 false}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
