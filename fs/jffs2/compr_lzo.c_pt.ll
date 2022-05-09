; ModuleID = '/llk/IR_all_yes/fs/jffs2/compr_lzo.c_pt.bc'
source_filename = "../fs/jffs2/compr_lzo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.jffs2_compressor = type { %struct.list_head, i32, ptr, i8, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@jffs2_lzo_comp = internal global { %struct.jffs2_compressor, [36 x i8] } { %struct.jffs2_compressor { %struct.list_head zeroinitializer, i32 80, ptr @.str, i8 7, ptr @jffs2_lzo_compress, ptr @jffs2_lzo_decompress, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@lzo_mem = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@lzo_compress_buf = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lzo\00", [28 x i8] zeroinitializer }, align 32
@deflate_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @deflate_mutex, i64 52), ptr getelementptr (i8, ptr @deflate_mutex, i64 52) }, ptr @deflate_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"deflate_mutex.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"deflate_mutex\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [15 x i8] c"jffs2_lzo_comp\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 82, i32 32 }
@___asan_gen_.6 = private unnamed_addr constant [8 x i8] c"lzo_mem\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 20, i32 14 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"lzo_compress_buf\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 21, i32 14 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 84, i32 10 }
@___asan_gen_.15 = private unnamed_addr constant [14 x i8] c"deflate_mutex\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [24 x i8] c"../fs/jffs2/compr_lzo.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 22, i32 8 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @jffs2_lzo_comp, ptr @lzo_mem, ptr @lzo_compress_buf, ptr @.str, ptr @deflate_mutex, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_lzo_comp to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lzo_mem to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lzo_compress_buf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deflate_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_lzo_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @alloc_workspace() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @jffs2_register_compressor(ptr noundef nonnull @jffs2_lzo_comp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %0 = load ptr, ptr @lzo_mem, align 4
  tail call void @vfree(ptr noundef %0) #5
  %1 = load ptr, ptr @lzo_compress_buf, align 4
  tail call void @vfree(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alloc_workspace() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @vmalloc(i32 noundef 16384) #9
  store ptr %call, ptr @lzo_mem, align 4
  %call1 = tail call noalias ptr @vmalloc(i32 noundef 4421) #9
  store ptr %call1, ptr @lzo_compress_buf, align 4
  %0 = load ptr, ptr @lzo_mem, align 4
  %tobool.not = icmp eq ptr %0, null
  %tobool2.not = icmp eq ptr %call1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @vfree(ptr noundef %0) #5
  %1 = load ptr, ptr @lzo_compress_buf, align 4
  tail call void @vfree(ptr noundef %1) #5
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_register_compressor(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_lzo_exit() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @jffs2_unregister_compressor(ptr noundef nonnull @jffs2_lzo_comp) #5
  %0 = load ptr, ptr @lzo_mem, align 4
  tail call void @vfree(ptr noundef %0) #5
  %1 = load ptr, ptr @lzo_compress_buf, align 4
  tail call void @vfree(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_unregister_compressor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jffs2_lzo_compress(ptr noundef %data_in, ptr nocapture noundef writeonly %cpage_out, ptr nocapture noundef readonly %sourcelen, ptr nocapture noundef %dstlen) #3 align 64 {
entry:
  %compress_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %compress_size) #5
  %0 = ptrtoint ptr %compress_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %compress_size, align 4, !annotation !21
  tail call void @mutex_lock_nested(ptr noundef nonnull @deflate_mutex, i32 noundef 0) #5
  %1 = ptrtoint ptr %sourcelen to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sourcelen, align 4
  %3 = load ptr, ptr @lzo_compress_buf, align 4
  %4 = load ptr, ptr @lzo_mem, align 4
  %call = call i32 @lzo1x_1_compress(ptr noundef %data_in, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %compress_size, ptr noundef %4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.fail_crit_edge

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %compress_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %compress_size, align 4
  %7 = ptrtoint ptr %dstlen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dstlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp1 = icmp ugt i32 %6, %8
  br i1 %cmp1, label %if.end.fail_crit_edge, label %if.end3

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %9 = load ptr, ptr @lzo_compress_buf, align 4
  %10 = call ptr @memcpy(ptr %cpage_out, ptr %9, i32 %6)
  call void @mutex_unlock(ptr noundef nonnull @deflate_mutex) #5
  %11 = ptrtoint ptr %compress_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %compress_size, align 4
  %13 = ptrtoint ptr %dstlen to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %dstlen, align 4
  br label %cleanup

fail:                                             ; preds = %if.end.fail_crit_edge, %entry.fail_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @deflate_mutex) #5
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end3
  %retval.0 = phi i32 [ -1, %fail ], [ 0, %if.end3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %compress_size) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jffs2_lzo_decompress(ptr noundef %data_in, ptr noundef %cpage_out, i32 noundef %srclen, i32 noundef %destlen) #3 align 64 {
entry:
  %dl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dl) #5
  %0 = ptrtoint ptr %dl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %destlen, ptr %dl, align 4
  %call = call i32 @lzo1x_decompress_safe(ptr noundef %data_in, i32 noundef %srclen, ptr noundef %cpage_out, ptr noundef nonnull %dl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %dl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dl, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %destlen)
  %cmp1.not = icmp ne i32 %2, %destlen
  %spec.select = sext i1 %cmp1.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dl) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lzo1x_1_compress(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lzo1x_decompress_safe(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @lzo_mem, !1, !"lzo_mem", i1 false, i1 false}
!1 = !{!"../fs/jffs2/compr_lzo.c", i32 20, i32 14}
!2 = !{ptr @lzo_compress_buf, !3, !"lzo_compress_buf", i1 false, i1 false}
!3 = !{!"../fs/jffs2/compr_lzo.c", i32 21, i32 14}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/jffs2/compr_lzo.c", i32 84, i32 10}
!6 = !{ptr @jffs2_lzo_comp, !7, !"jffs2_lzo_comp", i1 false, i1 false}
!7 = !{!"../fs/jffs2/compr_lzo.c", i32 82, i32 32}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/jffs2/compr_lzo.c", i32 22, i32 8}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @deflate_mutex, !9, !"deflate_mutex", i1 false, i1 false}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"auto-init"}
