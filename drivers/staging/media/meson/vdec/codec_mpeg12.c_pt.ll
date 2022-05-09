; ModuleID = '/llk/IR_all_yes/drivers/staging/media/meson/vdec/codec_mpeg12.c_pt.bc'
source_filename = "../drivers/staging/media/meson/vdec/codec_mpeg12.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amvdec_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.amvdec_core = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.v4l2_device, ptr, %struct.mutex }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.codec_mpeg12 = type { ptr, i32 }
%struct.amvdec_session = type { ptr, %struct.v4l2_fh, ptr, ptr, %struct.v4l2_ctrl_handler, ptr, %struct.mutex, ptr, i32, i32, i32, i32, i32, i8, i8, i8, %struct.v4l2_fract, %struct.atomic_t, %struct.work_struct, i32, i32, i32, i32, i32, i32, i32, i32, [96 x i8], i32, ptr, i32, i32, %struct.list_head, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, i64, i32, i32, [32 x i32], i32, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_fract = type { i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@codec_mpeg12_ops = dso_local global { %struct.amvdec_codec_ops, [52 x i8] } { %struct.amvdec_codec_ops { ptr @codec_mpeg12_start, ptr @codec_mpeg12_stop, ptr null, ptr null, ptr @codec_mpeg12_can_recycle, ptr @codec_mpeg12_recycle, ptr null, ptr null, ptr @codec_mpeg12_eos_sequence, ptr @codec_mpeg12_isr, ptr @codec_mpeg12_threaded_isr }, [52 x i8] zeroinitializer }, align 32
@codec_mpeg12_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 78, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to request MPEG 1/2 Workspace\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"codec_mpeg12_start\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/staging/media/meson/vdec/codec_mpeg12.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@codec_mpeg12_start._entry_ptr = internal global ptr @codec_mpeg12_start._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@eos_sequence = internal constant { <{ i8, i8, i8, i8, [1020 x i8] }>, [256 x i8] } { <{ i8, i8, i8, i8, [1020 x i8] }> <{ i8 0, i8 0, i8 1, i8 -73, [1020 x i8] zeroinitializer }>, [256 x i8] zeroinitializer }, align 32
@codec_mpeg12_threaded_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 166, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MPEG1/2 fatal error\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"codec_mpeg12_threaded_isr\00", [38 x i8] zeroinitializer }, align 32
@codec_mpeg12_threaded_isr._entry_ptr = internal global ptr @codec_mpeg12_threaded_isr._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"codec_mpeg12_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 202, i32 25 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 78, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [13 x i8] c"eos_sequence\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 45, i32 17 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [51 x i8] c"../drivers/staging/media/meson/vdec/codec_mpeg12.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 166, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @codec_mpeg12_start._entry, ptr @codec_mpeg12_start._entry_ptr, ptr @codec_mpeg12_threaded_isr._entry, ptr @codec_mpeg12_threaded_isr._entry_ptr, ptr @codec_mpeg12_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @eos_sequence, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_mpeg12_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_mpeg12_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eos_sequence to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_mpeg12_threaded_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @codec_mpeg12_start(ptr noundef %sess) #0 align 64 {
entry:
  %.compoundliteral = alloca [2 x i32], align 4
  %.compoundliteral8 = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 8) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %workspace_paddr = getelementptr inbounds %struct.codec_mpeg12, ptr %call7.i.i, i32 0, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %4, i32 noundef 131072, ptr noundef %workspace_paddr, i32 noundef 3264, i32 noundef 0) #6
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %call7.i.i, align 8
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str) #10
  br label %free_mpeg12

if.end7:                                          ; preds = %if.end
  %8 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 9984, ptr %.compoundliteral, align 4
  %arrayinit.element = getelementptr inbounds i32, ptr %.compoundliteral, i32 1
  %9 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arrayinit.element, align 4
  %10 = ptrtoint ptr %.compoundliteral8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8, ptr %.compoundliteral8, align 4
  %arrayinit.element10 = getelementptr inbounds i32, ptr %.compoundliteral8, i32 1
  %11 = ptrtoint ptr %arrayinit.element10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayinit.element10, align 4
  %call12 = call i32 @amvdec_set_canvases(ptr noundef %sess, ptr noundef nonnull %.compoundliteral, ptr noundef nonnull %.compoundliteral8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %free_workspace

if.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  call void @amvdec_write_dos(ptr noundef %1, i32 noundef 12320, i32 noundef 16) #6
  %12 = ptrtoint ptr %workspace_paddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %workspace_paddr, align 4
  %add = add i32 %13, 5120
  call void @amvdec_write_dos(ptr noundef %1, i32 noundef 10028, i32 noundef %add) #6
  call void @amvdec_write_dos(ptr noundef %1, i32 noundef 12292, i32 noundef 0) #6
  call void @amvdec_write_dos(ptr noundef %1, i32 noundef 9284, i32 noundef 0) #6
  call void @amvdec_write_dos(ptr noundef %1, i32 noundef 12300, i32 noundef 896) #6
  call void @amvdec_write_dos(ptr noundef %1, i32 noundef 12452, i32 noundef 0) #6
  call void @amvdec_write_dos(ptr noundef %1, i32 noundef 10016, i32 noundef 0) #6
  call void @amvdec_write_dos(ptr noundef %1, i32 noundef 10020, i32 noundef 0) #6
  %width = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 10
  %14 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width, align 8
  %shl = shl i32 %15, 16
  %height = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 11
  %16 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height, align 4
  %or = or i32 %shl, %17
  call void @amvdec_write_dos(ptr noundef %1, i32 noundef 10024, i32 noundef %or) #6
  call void @amvdec_write_dos(ptr noundef %1, i32 noundef 10032, i32 noundef 0) #6
  call void @amvdec_write_dos(ptr noundef %1, i32 noundef 10044, i32 noundef 0) #6
  call void @amvdec_write_dos(ptr noundef %1, i32 noundef 10040, i32 noundef 0) #6
  %keyframe_found = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 24
  %18 = ptrtoint ptr %keyframe_found to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %keyframe_found, align 4
  %priv = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 42
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %priv, align 4
  br label %cleanup

free_workspace:                                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call7.i.i, align 8
  %24 = ptrtoint ptr %workspace_paddr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %workspace_paddr, align 4
  call void @dma_free_attrs(ptr noundef %21, i32 noundef 131072, ptr noundef %23, i32 noundef %25, i32 noundef 0) #6
  br label %free_mpeg12

free_mpeg12:                                      ; preds = %free_workspace, %do.end
  %ret.0 = phi i32 [ %call12, %free_workspace ], [ -12, %do.end ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %free_mpeg12, %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %free_mpeg12 ], [ 0, %if.end15 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @codec_mpeg12_stop(ptr nocapture noundef readonly %sess) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 42
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sess, align 8
  %dev = getelementptr inbounds %struct.amvdec_core, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %workspace_paddr = getelementptr inbounds %struct.codec_mpeg12, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %workspace_paddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %workspace_paddr, align 4
  tail call void @dma_free_attrs(ptr noundef %7, i32 noundef 131072, ptr noundef nonnull %3, i32 noundef %9, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @codec_mpeg12_can_recycle(ptr noundef %core) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amvdec_read_dos(ptr noundef %core, i32 noundef 10016) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @codec_mpeg12_recycle(ptr noundef %core, i32 noundef %buf_idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %buf_idx, 1
  tail call void @amvdec_write_dos(ptr noundef %core, i32 noundef 10016, i32 noundef %add) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal nonnull ptr @codec_mpeg12_eos_sequence(ptr nocapture noundef writeonly %len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1024, ptr %len, align 4
  ret ptr @eos_sequence
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @codec_mpeg12_isr(ptr nocapture noundef readnone %sess) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @codec_mpeg12_threaded_isr(ptr noundef %sess) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 8
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 468, i32 noundef 1) #6
  %call = tail call i32 @amvdec_read_dos(ptr noundef %1, i32 noundef 10044) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #10
  tail call void @amvdec_abort(ptr noundef %sess) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @amvdec_read_dos(ptr noundef %1, i32 noundef 10020) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %and = and i32 %call2, 16646144
  call void @__sanitizer_cov_trace_const_cmp4(i32 16646144, i32 %and)
  %cmp5 = icmp eq i32 %and, 16646144
  br i1 %cmp5, label %if.end4.end_crit_edge, label %if.end7

if.end4.end_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.end7:                                          ; preds = %if.end4
  %call8 = tail call i32 @amvdec_read_dos(ptr noundef %1, i32 noundef 10004) #6
  %and9 = and i32 %call8, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %and12 = and i32 %call8, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %cond = select i1 %tobool13.not, i32 9, i32 8
  %field.0 = select i1 %tobool10.not, i32 %cond, i32 1
  %4 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sess, align 8
  %call.i = tail call i32 @amvdec_read_dos(ptr noundef %5, i32 noundef 10000) #6
  %and.i = and i32 %call.i, 15
  %6 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %sw.default.i [
    i32 2, label %sw.bb.i
    i32 3, label %sw.bb2.i
    i32 4, label %sw.bb3.i
  ]

sw.bb.i:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @amvdec_set_par_from_dar(ptr noundef %sess, i32 noundef 4, i32 noundef 3) #6
  br label %codec_mpeg12_update_dar.exit

sw.bb2.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @amvdec_set_par_from_dar(ptr noundef %sess, i32 noundef 16, i32 noundef 9) #6
  br label %codec_mpeg12_update_dar.exit

sw.bb3.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @amvdec_set_par_from_dar(ptr noundef %sess, i32 noundef 221, i32 noundef 100) #6
  br label %codec_mpeg12_update_dar.exit

sw.default.i:                                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %pixelaspect.i = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 16
  %7 = ptrtoint ptr %pixelaspect.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %pixelaspect.i, align 8
  %denominator.i = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 16, i32 1
  %8 = ptrtoint ptr %denominator.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %denominator.i, align 4
  br label %codec_mpeg12_update_dar.exit

codec_mpeg12_update_dar.exit:                     ; preds = %sw.default.i, %sw.bb3.i, %sw.bb2.i, %sw.bb.i
  %sub = add i32 %call2, 7
  %and16 = and i32 %sub, 7
  %call17 = tail call i32 @amvdec_read_dos(ptr noundef %1, i32 noundef 10036) #6
  tail call void @amvdec_dst_buf_done_idx(ptr noundef %sess, i32 noundef %and16, i32 noundef %call17, i32 noundef %field.0) #6
  br label %end

end:                                              ; preds = %codec_mpeg12_update_dar.exit, %if.end4.end_crit_edge
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 10020, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %end, %if.end.cleanup_crit_edge, %do.end
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amvdec_set_canvases(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amvdec_write_dos(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amvdec_read_dos(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amvdec_abort(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amvdec_dst_buf_done_idx(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amvdec_set_par_from_dar(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !15, !16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @codec_mpeg12_ops, !1, !"codec_mpeg12_ops", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/meson/vdec/codec_mpeg12.c", i32 202, i32 25}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/media/meson/vdec/codec_mpeg12.c", i32 78, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @codec_mpeg12_start._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @codec_mpeg12_start._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @eos_sequence, !11, !"eos_sequence", i1 false, i1 false}
!11 = !{!"../drivers/staging/media/meson/vdec/codec_mpeg12.c", i32 45, i32 17}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/media/meson/vdec/codec_mpeg12.c", i32 166, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @codec_mpeg12_threaded_isr._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @codec_mpeg12_threaded_isr._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
