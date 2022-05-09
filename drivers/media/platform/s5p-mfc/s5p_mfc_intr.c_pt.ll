; ModuleID = '/llk/IR_all_yes/drivers/media/platform/s5p-mfc/s5p_mfc_intr.c_pt.bc'
source_filename = "../drivers/media/platform/s5p-mfc/s5p_mfc_intr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.s5p_mfc_dev = type { %struct.v4l2_device, ptr, ptr, ptr, [2 x ptr], ptr, i32, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.s5p_mfc_pm, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.mutex, i32, i32, i32, %struct.wait_queue_head, %struct.s5p_mfc_priv_buf, i32, i32, ptr, ptr, [2 x i32], i32, [4 x ptr], i32, i32, %struct.atomic_t, %struct.timer_list, ptr, %struct.work_struct, i32, %struct.s5p_mfc_priv_buf, i32, ptr, ptr, ptr, i32, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.s5p_mfc_pm = type { ptr, ptr, [4 x ptr], i32, i8, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.s5p_mfc_priv_buf = type { i32, ptr, i32, i32, i32 }
%struct.s5p_mfc_ctx = type { ptr, %struct.v4l2_fh, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, %struct.vb2_queue, %struct.vb2_queue, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf, i32, i32, [32 x %struct.s5p_mfc_buf], i32, [32 x %struct.s5p_mfc_buf], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_enc_params, i32, i32, i32, i32, i32, i32, %struct.list_head, i32, i32, %union.anon.117, ptr, [128 x ptr], %struct.v4l2_ctrl_handler, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.s5p_mfc_buf = type { ptr, %struct.list_head, %union.anon.114, i32 }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type { i32, i32 }
%struct.s5p_mfc_enc_params = type { i16, i16, i32, i32, i16, i32, i16, i32, i16, i32, i8, i8, i8, i32, i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, %struct.anon.116 }
%struct.anon.116 = type { %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_mpeg4_enc_params, %struct.s5p_mfc_vp8_enc_params, %struct.s5p_mfc_hevc_enc_params }
%struct.s5p_mfc_h264_enc_params = type { i32, i32, i8, i8, i32, i8, i8, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i16, i8, i8, i8, i8, i8, i32, i32, i16, i32, i8, i8, i8, [7 x i8], i8, i8, i8, i8, i8, i8, i8, i32, [4 x i32], i8, [8 x i32] }
%struct.s5p_mfc_mpeg4_enc_params = type { i32, i32, i16, i16, i8, i8, i8, i8, i8, i32, i32 }
%struct.s5p_mfc_vp8_enc_params = type { i8, i32, i32, i8, i8, i32, i32, i8, [3 x i8], i8, i8, i8, i8, i8 }
%struct.s5p_mfc_hevc_enc_params = type { i32, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, [7 x i8], [7 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%union.anon.117 = type { i32 }

@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/media/platform/s5p-mfc/s5p_mfc_intr.c\00", [50 x i8] zeroinitializer }, align 32
@s5p_mfc_wait_for_done_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 31, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013%s:%d: Interrupt (dev->int_type:%d, command:%d) timed out\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"s5p_mfc_wait_for_done_dev\00", [38 x i8] zeroinitializer }, align 32
@s5p_mfc_wait_for_done_dev._entry_ptr = internal global ptr @s5p_mfc_wait_for_done_dev._entry, section ".printk_index", align 4
@s5p_mfc_wait_for_done_dev._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.2, ptr @.str, i32 34, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s:%d: Interrupted by a signal\0A\00", [62 x i8] zeroinitializer }, align 32
@s5p_mfc_wait_for_done_dev._entry_ptr.5 = internal global ptr @s5p_mfc_wait_for_done_dev._entry.3, section ".printk_index", align 4
@mfc_debug_level = external dso_local local_unnamed_addr global i32, align 4
@s5p_mfc_wait_for_done_dev._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str, i32 38, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017%s:%d: Finished waiting (dev->int_type:%d, command: %d)\0A\00", [37 x i8] zeroinitializer }, align 32
@s5p_mfc_wait_for_done_dev._entry_ptr.8 = internal global ptr @s5p_mfc_wait_for_done_dev._entry.6, section ".printk_index", align 4
@s5p_mfc_wait_for_done_ctx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013%s:%d: Interrupt (ctx->int_type:%d, command:%d) timed out\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"s5p_mfc_wait_for_done_ctx\00", [38 x i8] zeroinitializer }, align 32
@s5p_mfc_wait_for_done_ctx._entry_ptr = internal global ptr @s5p_mfc_wait_for_done_ctx._entry, section ".printk_index", align 4
@s5p_mfc_wait_for_done_ctx._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.10, ptr @.str, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_wait_for_done_ctx._entry_ptr.12 = internal global ptr @s5p_mfc_wait_for_done_ctx._entry.11, section ".printk_index", align 4
@s5p_mfc_wait_for_done_ctx._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.10, ptr @.str, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017%s:%d: Finished waiting (ctx->int_type:%d, command: %d)\0A\00", [37 x i8] zeroinitializer }, align 32
@s5p_mfc_wait_for_done_ctx._entry_ptr.15 = internal global ptr @s5p_mfc_wait_for_done_ctx._entry.13, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 25, i32 8 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 30, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 34, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 37, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 68, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 72, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private constant [49 x i8] c"../drivers/media/platform/s5p-mfc/s5p_mfc_intr.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 75, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @s5p_mfc_wait_for_done_ctx._entry, ptr @s5p_mfc_wait_for_done_ctx._entry.11, ptr @s5p_mfc_wait_for_done_ctx._entry.13, ptr @s5p_mfc_wait_for_done_ctx._entry_ptr, ptr @s5p_mfc_wait_for_done_ctx._entry_ptr.12, ptr @s5p_mfc_wait_for_done_ctx._entry_ptr.15, ptr @s5p_mfc_wait_for_done_dev._entry, ptr @s5p_mfc_wait_for_done_dev._entry.3, ptr @s5p_mfc_wait_for_done_dev._entry.6, ptr @s5p_mfc_wait_for_done_dev._entry_ptr, ptr @s5p_mfc_wait_for_done_dev._entry_ptr.5, ptr @s5p_mfc_wait_for_done_dev._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.14], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_wait_for_done_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_wait_for_done_dev._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_wait_for_done_dev._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_wait_for_done_ctx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_wait_for_done_ctx._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_wait_for_done_ctx._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_wait_for_done_dev(ptr noundef %dev, i32 noundef %command) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 28) #5
  %int_cond = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %int_cond to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %int_cond, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.then13_crit_edge, label %land.rhs

entry.if.then13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

land.rhs:                                         ; preds = %entry
  %int_type = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 16
  %2 = ptrtoint ptr %int_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %int_type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %command)
  %cmp = icmp eq i32 %3, %command
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp5 = icmp eq i32 %3, 32
  %spec.select = or i1 %cmp, %cmp5
  br i1 %spec.select, label %land.rhs.do.body76_crit_edge, label %land.rhs.if.then13_crit_edge

land.rhs.if.then13_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

land.rhs.do.body76_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body76

if.then13:                                        ; preds = %land.rhs.if.then13_crit_edge, %entry.if.then13_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #5
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #5
  %queue = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 18
  %int_type21 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 16
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then13
  %__ret14.0 = phi i32 [ 200, %if.then13 ], [ %call48, %cleanup ]
  %call16 = call i32 @prepare_to_wait_event(ptr noundef %queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #5
  %5 = ptrtoint ptr %int_cond to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %int_cond, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool19.not = icmp eq i32 %6, 0
  br i1 %tobool19.not, label %for.cond.land.end28.thread_crit_edge, label %land.end28

for.cond.land.end28.thread_crit_edge:             ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end28.thread

land.end28:                                       ; preds = %for.cond
  %7 = ptrtoint ptr %int_type21 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %int_type21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %command)
  %cmp22 = icmp eq i32 %8, %command
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %8)
  %cmp25 = icmp eq i32 %8, 32
  %spec.select117 = or i1 %cmp22, %cmp25
  br i1 %spec.select117, label %for.end.split.loop.exit, label %land.end28.land.end28.thread_crit_edge

land.end28.land.end28.thread_crit_edge:           ; preds = %land.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end28.thread

land.end28.thread:                                ; preds = %land.end28.land.end28.thread_crit_edge, %for.cond.land.end28.thread_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.0)
  %tobool38.not = icmp eq i32 %__ret14.0, 0
  br i1 %tobool38.not, label %land.end28.thread.for.end_crit_edge, label %if.end44

land.end28.thread.for.end_crit_edge:              ; preds = %land.end28.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end44:                                         ; preds = %land.end28.thread
  %tobool45.not = icmp eq i32 %call16, 0
  br i1 %tobool45.not, label %cleanup, label %if.end44.if.end51_crit_edge

if.end44.if.end51_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

cleanup:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  %call48 = call i32 @schedule_timeout(i32 noundef %__ret14.0) #5
  br label %for.cond

for.end.split.loop.exit:                          ; preds = %land.end28
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.0)
  %tobool32.not.le = icmp eq i32 %__ret14.0, 0
  %spec.store.select93.le = select i1 %tobool32.not.le, i32 1, i32 %__ret14.0
  br label %for.end

for.end:                                          ; preds = %for.end.split.loop.exit, %land.end28.thread.for.end_crit_edge
  %__ret14.2.ph = phi i32 [ %spec.store.select93.le, %for.end.split.loop.exit ], [ 0, %land.end28.thread.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %queue, ptr noundef nonnull %__wq_entry) #5
  br label %if.end51

if.end51:                                         ; preds = %for.end, %if.end44.if.end51_crit_edge
  %__ret14.2123 = phi i32 [ %__ret14.2.ph, %for.end ], [ %call16, %if.end44.if.end51_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  %9 = zext i32 %__ret14.2123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %__ret14.2123, label %if.end51.do.body76_crit_edge [
    i32 0, label %do.end58
    i32 -512, label %do.end69
  ]

if.end51.do.body76_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body76

do.end58:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %int_type21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %int_type21, align 4
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 31, i32 noundef %11, i32 noundef %command) #8
  br label %cleanup92

do.end69:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 34) #8
  br label %cleanup92

do.body76:                                        ; preds = %if.end51.do.body76_crit_edge, %land.rhs.do.body76_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %12 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp77 = icmp sgt i32 %12, 0
  br i1 %cmp77, label %do.end81, label %do.body76.do.end87_crit_edge

do.body76.do.end87_crit_edge:                     ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end87

do.end81:                                         ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #7
  %int_type83 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 16
  %13 = ptrtoint ptr %int_type83 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %int_type83, align 4
  %call84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, i32 noundef 38, i32 noundef %14, i32 noundef %command) #8
  br label %do.end87

do.end87:                                         ; preds = %do.end81, %do.body76.do.end87_crit_edge
  %int_type88 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 16
  %15 = ptrtoint ptr %int_type88 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %int_type88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %16)
  %cmp89 = icmp eq i32 %16, 32
  %. = zext i1 %cmp89 to i32
  br label %cleanup92

cleanup92:                                        ; preds = %do.end87, %do.end69, %do.end58
  %retval.0 = phi i32 [ 1, %do.end58 ], [ 1, %do.end69 ], [ %., %do.end87 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @s5p_mfc_clean_dev_int_flags(ptr nocapture noundef writeonly %dev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %int_cond = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %int_cond to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %int_cond, align 4
  %int_type = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 16
  %1 = ptrtoint ptr %int_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %int_type, align 4
  %int_err = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 17
  %2 = ptrtoint ptr %int_err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %int_err, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_wait_for_done_ctx(ptr noundef %ctx, i32 noundef %command, i32 noundef %interrupt) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry90 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %interrupt)
  %tobool.not = icmp eq i32 %interrupt, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 60) #5
  %int_cond = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %int_cond to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %int_cond, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool4.not = icmp eq i32 %1, 0
  br i1 %tobool4.not, label %if.then.if.then15_crit_edge, label %land.rhs

if.then.if.then15_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15

land.rhs:                                         ; preds = %if.then
  %int_type = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 4
  %2 = ptrtoint ptr %int_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %int_type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %command)
  %cmp = icmp eq i32 %3, %command
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp6 = icmp eq i32 %3, 32
  %spec.select = or i1 %cmp, %cmp6
  br i1 %spec.select, label %land.rhs.do.body160_crit_edge, label %land.rhs.if.then15_crit_edge

land.rhs.if.then15_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15

land.rhs.do.body160_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body160

if.then15:                                        ; preds = %land.rhs.if.then15_crit_edge, %if.then.if.then15_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #5
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #5
  %queue = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 6
  %int_type23 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then15
  %__ret16.0 = phi i32 [ 200, %if.then15 ], [ %call50, %cleanup ]
  %call18 = call i32 @prepare_to_wait_event(ptr noundef %queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #5
  %5 = ptrtoint ptr %int_cond to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %int_cond, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool21.not = icmp eq i32 %6, 0
  br i1 %tobool21.not, label %for.cond.land.end30.thread_crit_edge, label %land.end30

for.cond.land.end30.thread_crit_edge:             ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end30.thread

land.end30:                                       ; preds = %for.cond
  %7 = ptrtoint ptr %int_type23 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %int_type23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %command)
  %cmp24 = icmp eq i32 %8, %command
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %8)
  %cmp27 = icmp eq i32 %8, 32
  %spec.select223 = or i1 %cmp24, %cmp27
  br i1 %spec.select223, label %for.end.split.loop.exit, label %land.end30.land.end30.thread_crit_edge

land.end30.land.end30.thread_crit_edge:           ; preds = %land.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end30.thread

land.end30.thread:                                ; preds = %land.end30.land.end30.thread_crit_edge, %for.cond.land.end30.thread_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret16.0)
  %tobool40.not = icmp eq i32 %__ret16.0, 0
  br i1 %tobool40.not, label %land.end30.thread.for.end_crit_edge, label %if.end46

land.end30.thread.for.end_crit_edge:              ; preds = %land.end30.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end46:                                         ; preds = %land.end30.thread
  %tobool47.not = icmp eq i32 %call18, 0
  br i1 %tobool47.not, label %cleanup, label %if.end46.__out_crit_edge

if.end46.__out_crit_edge:                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %__out

cleanup:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %call50 = call i32 @schedule_timeout(i32 noundef %__ret16.0) #5
  br label %for.cond

for.end.split.loop.exit:                          ; preds = %land.end30
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret16.0)
  %tobool34.not.le = icmp eq i32 %__ret16.0, 0
  %spec.store.select177.le = select i1 %tobool34.not.le, i32 1, i32 %__ret16.0
  br label %for.end

for.end:                                          ; preds = %for.end.split.loop.exit, %land.end30.thread.for.end_crit_edge
  %__ret16.2.ph = phi i32 [ %spec.store.select177.le, %for.end.split.loop.exit ], [ 0, %land.end30.thread.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %queue, ptr noundef nonnull %__wq_entry) #5
  br label %__out

__out:                                            ; preds = %for.end, %if.end46.__out_crit_edge
  %__ret16.2231 = phi i32 [ %__ret16.2.ph, %for.end ], [ %call18, %if.end46.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  br label %if.end135

if.else:                                          ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 65) #5
  %int_cond64 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 3
  %9 = ptrtoint ptr %int_cond64 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %int_cond64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool65.not = icmp eq i32 %10, 0
  br i1 %tobool65.not, label %if.else.if.then89_crit_edge, label %land.rhs66

if.else.if.then89_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then89

land.rhs66:                                       ; preds = %if.else
  %int_type67 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 4
  %11 = ptrtoint ptr %int_type67 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %int_type67, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %command)
  %cmp68 = icmp eq i32 %12, %command
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %12)
  %cmp71 = icmp eq i32 %12, 32
  %spec.select224 = or i1 %cmp68, %cmp71
  br i1 %spec.select224, label %land.rhs66.do.body160_crit_edge, label %land.rhs66.if.then89_crit_edge

land.rhs66.if.then89_crit_edge:                   ; preds = %land.rhs66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then89

land.rhs66.do.body160_crit_edge:                  ; preds = %land.rhs66
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body160

if.then89:                                        ; preds = %land.rhs66.if.then89_crit_edge, %if.else.if.then89_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry90) #5
  %13 = call ptr @memset(ptr %__wq_entry90, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry90, i32 noundef 0) #5
  %queue95 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 6
  %int_type101 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 4
  br label %for.cond93

for.cond93:                                       ; preds = %cleanup126, %if.then89
  %__ret91.0 = phi i32 [ 200, %if.then89 ], [ %call125, %cleanup126 ]
  %call96 = call i32 @prepare_to_wait_event(ptr noundef %queue95, ptr noundef nonnull %__wq_entry90, i32 noundef 2) #5
  %14 = ptrtoint ptr %int_cond64 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %int_cond64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool99.not = icmp eq i32 %15, 0
  br i1 %tobool99.not, label %for.cond93.land.end108.thread_crit_edge, label %land.end108

for.cond93.land.end108.thread_crit_edge:          ; preds = %for.cond93
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end108.thread

land.end108:                                      ; preds = %for.cond93
  %16 = ptrtoint ptr %int_type101 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %int_type101, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %command)
  %cmp102 = icmp eq i32 %17, %command
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %17)
  %cmp105 = icmp eq i32 %17, 32
  %spec.select225 = or i1 %cmp102, %cmp105
  br i1 %spec.select225, label %for.end129.split.loop.exit, label %land.end108.land.end108.thread_crit_edge

land.end108.land.end108.thread_crit_edge:         ; preds = %land.end108
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end108.thread

land.end108.thread:                               ; preds = %land.end108.land.end108.thread_crit_edge, %for.cond93.land.end108.thread_crit_edge
  %tobool118.not = icmp eq i32 %__ret91.0, 0
  br i1 %tobool118.not, label %land.end108.thread.for.end129_crit_edge, label %cleanup126

land.end108.thread.for.end129_crit_edge:          ; preds = %land.end108.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end129

cleanup126:                                       ; preds = %land.end108.thread
  call void @__sanitizer_cov_trace_pc() #7
  %call125 = call i32 @schedule_timeout(i32 noundef %__ret91.0) #5
  br label %for.cond93

for.end129.split.loop.exit:                       ; preds = %land.end108
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret91.0)
  %tobool112.not.le = icmp eq i32 %__ret91.0, 0
  %spec.store.select179.le = select i1 %tobool112.not.le, i32 1, i32 %__ret91.0
  br label %for.end129

for.end129:                                       ; preds = %for.end129.split.loop.exit, %land.end108.thread.for.end129_crit_edge
  %__ret91.2.ph = phi i32 [ %spec.store.select179.le, %for.end129.split.loop.exit ], [ 0, %land.end108.thread.for.end129_crit_edge ]
  call void @finish_wait(ptr noundef %queue95, ptr noundef nonnull %__wq_entry90) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry90) #5
  br label %if.end135

if.end135:                                        ; preds = %for.end129, %__out
  %ret.0 = phi i32 [ %__ret16.2231, %__out ], [ %__ret91.2.ph, %for.end129 ]
  %18 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %ret.0, label %if.end135.do.body160_crit_edge [
    i32 0, label %do.end141
    i32 -512, label %do.end153
  ]

if.end135.do.body160_crit_edge:                   ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body160

do.end141:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #7
  %int_type143 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 4
  %19 = ptrtoint ptr %int_type143 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %int_type143, align 4
  %call144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 69, i32 noundef %20, i32 noundef %command) #8
  br label %cleanup176

do.end153:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #7
  %call155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.10, i32 noundef 72) #8
  br label %cleanup176

do.body160:                                       ; preds = %if.end135.do.body160_crit_edge, %land.rhs66.do.body160_crit_edge, %land.rhs.do.body160_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %21 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp161 = icmp sgt i32 %21, 0
  br i1 %cmp161, label %do.end165, label %do.body160.do.end171_crit_edge

do.body160.do.end171_crit_edge:                   ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end171

do.end165:                                        ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #7
  %int_type167 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 4
  %22 = ptrtoint ptr %int_type167 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %int_type167, align 4
  %call168 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 76, i32 noundef %23, i32 noundef %command) #8
  br label %do.end171

do.end171:                                        ; preds = %do.end165, %do.body160.do.end171_crit_edge
  %int_type172 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 4
  %24 = ptrtoint ptr %int_type172 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %int_type172, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %25)
  %cmp173 = icmp eq i32 %25, 32
  %. = zext i1 %cmp173 to i32
  br label %cleanup176

cleanup176:                                       ; preds = %do.end171, %do.end153, %do.end141
  %retval.0 = phi i32 [ 1, %do.end141 ], [ 1, %do.end153 ], [ %., %do.end171 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @s5p_mfc_clean_ctx_int_flags(ptr nocapture noundef writeonly %ctx) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %int_cond = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %int_cond to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %int_cond, align 4
  %int_type = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 4
  %1 = ptrtoint ptr %int_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %int_type, align 4
  %int_err = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 5
  %2 = ptrtoint ptr %int_err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %int_err, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !17, !18, !19, !20, !22, !23, !25, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_intr.c", i32 25, i32 8}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_intr.c", i32 30, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @s5p_mfc_wait_for_done_dev._entry, !3, !"_entry", i1 false, i1 false}
!6 = !{ptr @s5p_mfc_wait_for_done_dev._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_intr.c", i32 34, i32 3}
!9 = !{ptr @s5p_mfc_wait_for_done_dev._entry.3, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @s5p_mfc_wait_for_done_dev._entry_ptr.5, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_intr.c", i32 37, i32 2}
!13 = !{ptr @s5p_mfc_wait_for_done_dev._entry.6, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @s5p_mfc_wait_for_done_dev._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_intr.c", i32 68, i32 3}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @s5p_mfc_wait_for_done_ctx._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @s5p_mfc_wait_for_done_ctx._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @s5p_mfc_wait_for_done_ctx._entry.11, !21, !"_entry", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_intr.c", i32 72, i32 3}
!22 = !{ptr @s5p_mfc_wait_for_done_ctx._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_intr.c", i32 75, i32 2}
!25 = !{ptr @s5p_mfc_wait_for_done_ctx._entry.13, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @s5p_mfc_wait_for_done_ctx._entry_ptr.15, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
