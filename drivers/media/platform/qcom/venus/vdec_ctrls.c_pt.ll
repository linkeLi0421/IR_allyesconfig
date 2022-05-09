; ModuleID = '/llk/IR_all_yes/drivers/media/platform/qcom/venus/vdec_ctrls.c_pt.bc'
source_filename = "../drivers/media/platform/qcom/venus/vdec_ctrls.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.venus_inst = type { %struct.list_head, %struct.mutex, ptr, %struct.clock_data, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, i8, %struct.v4l2_ctrl_handler, %union.anon.95, %struct.v4l2_fh, i32, i32, i32, i32, %struct.v4l2_rect, i32, i32, i32, i32, i8, i8, i8, i32, %struct.wait_queue_head, i32, i32, [32 x %struct.venus_ts_metadata], [32 x i32], i64, %struct.v4l2_fract, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, i32, %struct.completion, i32, i8, ptr, i32, %union.hfi_get_property, i8, i32, i32, i8, i8, i32, %struct.ida }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.clock_data = type { i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.95 = type { %struct.vdec_controls, [224 x i8] }
%struct.vdec_controls = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.venus_ts_metadata = type { i8, i64, i64, i32, %struct.v4l2_timecode }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.v4l2_fract = type { i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%union.hfi_get_property = type { [11 x %struct.hfi_buffer_requirements] }
%struct.hfi_buffer_requirements = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.venus_core = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x ptr], [2 x ptr], [2 x ptr], ptr, ptr, i8, [3 x ptr], ptr, ptr, [2 x ptr], ptr, ptr, %struct.v4l2_device, ptr, ptr, ptr, ptr, i32, %struct.video_firmware, %struct.mutex, %struct.list_head, %struct.atomic_t, i32, %struct.completion, i32, i32, %struct.wait_queue_head, ptr, ptr, %struct.mutex, i32, i32, i32, ptr, ptr, %struct.delayed_work, [32 x %struct.hfi_plat_caps], i32, i32, i32, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.video_firmware = type { ptr, ptr, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hfi_plat_caps = type { i32, i32, i8, i32, [32 x %struct.hfi_capability], i32, [16 x %struct.hfi_profile_level], i32, [32 x %struct.raw_formats], i8 }
%struct.hfi_capability = type { i32, i32, i32, i32 }
%struct.hfi_profile_level = type { i32, i32 }
%struct.raw_formats = type { i32, i32 }
%struct.venus_resources = type { i64, ptr, i32, ptr, i32, ptr, i32, ptr, i32, [4 x ptr], i32, [2 x ptr], [2 x ptr], i32, [3 x ptr], i32, ptr, i32, [2 x ptr], i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr }

@vdec_ctrl_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"vdec_ctrls:101:(&inst->ctrl_handler)->_lock\00", [52 x i8] zeroinitializer }, align 32
@vdec_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr @vdec_op_g_volatile_ctrl, ptr null, ptr @vdec_op_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 9963815, i64 10029525, i64 10029671, i64 10029675, i64 10029717, i64 10029718, i64 10029823, i64 10029824, i64 10029825]
@__sancov_gen_cov_switch_values.1 = internal global [13 x i64] [i64 11, i64 32, i64 10029525, i64 10029547, i64 10029671, i64 10029675, i64 10029717, i64 10029718, i64 10029823, i64 10029824, i64 10029825, i64 10029965, i64 10029966]
@___asan_gen_.2 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 101, i32 8 }
@___asan_gen_.8 = private unnamed_addr constant [14 x i8] c"vdec_ctrl_ops\00", align 1
@___asan_gen_.9 = private constant [50 x i8] c"../drivers/media/platform/qcom/venus/vdec_ctrls.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 91, i32 35 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @vdec_ctrl_init._key, ptr @.str, ptr @vdec_ctrl_ops], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_ctrl_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vdec_ctrl_init(ptr noundef %inst) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 10
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 12, ptr noundef nonnull @vdec_ctrl_init._key, ptr noundef nonnull @.str) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @vdec_ctrl_ops, i32 noundef 10029718, i8 noundef zeroext 4, i64 noundef -4, i8 noundef zeroext 0) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %flags = getelementptr inbounds %struct.v4l2_ctrl, ptr %call2, i32 0, i32 20
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %or = or i32 %1, 128
  store i32 %or, ptr %flags, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %call7 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @vdec_ctrl_ops, i32 noundef 10029717, i8 noundef zeroext 7, i64 noundef 0, i8 noundef zeroext 0) #4
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end5.if.end12_crit_edge, label %if.then9

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %flags10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %call7, i32 0, i32 20
  %2 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags10, align 4
  %or11 = or i32 %3, 128
  store i32 %or11, ptr %flags10, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end5.if.end12_crit_edge
  %call14 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @vdec_ctrl_ops, i32 noundef 10029675, i8 noundef zeroext 16, i64 noundef -98328, i8 noundef zeroext 0) #4
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end12.if.end19_crit_edge, label %if.then16

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %flags17 = getelementptr inbounds %struct.v4l2_ctrl, ptr %call14, i32 0, i32 20
  %4 = ptrtoint ptr %flags17 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags17, align 4
  %or18 = or i32 %5, 128
  store i32 %or18, ptr %flags17, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end12.if.end19_crit_edge
  %call21 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @vdec_ctrl_ops, i32 noundef 10029671, i8 noundef zeroext 15, i64 noundef 0, i8 noundef zeroext 0) #4
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end19.if.end26_crit_edge, label %if.then23

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %flags24 = getelementptr inbounds %struct.v4l2_ctrl, ptr %call21, i32 0, i32 20
  %6 = ptrtoint ptr %flags24 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags24, align 4
  %or25 = or i32 %7, 128
  store i32 %or25, ptr %flags24, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end19.if.end26_crit_edge
  %call28 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @vdec_ctrl_ops, i32 noundef 10029823, i8 noundef zeroext 3, i64 noundef 0, i8 noundef zeroext 0) #4
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.end26.if.end33_crit_edge, label %if.then30

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  %flags31 = getelementptr inbounds %struct.v4l2_ctrl, ptr %call28, i32 0, i32 20
  %8 = ptrtoint ptr %flags31 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags31, align 4
  %or32 = or i32 %9, 128
  store i32 %or32, ptr %flags31, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end26.if.end33_crit_edge
  %call35 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @vdec_ctrl_ops, i32 noundef 10029824, i8 noundef zeroext 3, i64 noundef 0, i8 noundef zeroext 0) #4
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.end33.if.end40_crit_edge, label %if.then37

if.end33.if.end40_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end40

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %flags38 = getelementptr inbounds %struct.v4l2_ctrl, ptr %call35, i32 0, i32 20
  %10 = ptrtoint ptr %flags38 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags38, align 4
  %or39 = or i32 %11, 128
  store i32 %or39, ptr %flags38, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end33.if.end40_crit_edge
  %call42 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @vdec_ctrl_ops, i32 noundef 10029825, i8 noundef zeroext 13, i64 noundef 0, i8 noundef zeroext 0) #4
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.end40.if.end47_crit_edge, label %if.then44

if.end40.if.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  %flags45 = getelementptr inbounds %struct.v4l2_ctrl, ptr %call42, i32 0, i32 20
  %12 = ptrtoint ptr %flags45 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags45, align 4
  %or46 = or i32 %13, 128
  store i32 %or46, ptr %flags45, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end40.if.end47_crit_edge
  %call49 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @vdec_ctrl_ops, i32 noundef 10029525, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #4
  %call51 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @vdec_ctrl_ops, i32 noundef 9963815, i64 noundef 1, i64 noundef 32, i64 noundef 1, i64 noundef 1) #4
  %tobool52.not = icmp eq ptr %call51, null
  br i1 %tobool52.not, label %if.end47.if.end56_crit_edge, label %if.then53

if.end47.if.end56_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end56

if.then53:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  %flags54 = getelementptr inbounds %struct.v4l2_ctrl, ptr %call51, i32 0, i32 20
  %14 = ptrtoint ptr %flags54 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags54, align 4
  %or55 = or i32 %15, 128
  store i32 %or55, ptr %flags54, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end47.if.end56_crit_edge
  %call58 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @vdec_ctrl_ops, i32 noundef 10029965, i64 noundef 0, i64 noundef 16383, i64 noundef 1, i64 noundef 0) #4
  %call60 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @vdec_ctrl_ops, i32 noundef 10029966, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #4
  %call62 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @vdec_ctrl_ops, i32 noundef 10029547, i64 noundef 0, i64 noundef 281474976710655, i64 noundef 1, i64 noundef 549764202512) #4
  %error = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 10, i32 9
  %16 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool64.not = icmp eq i32 %17, 0
  br i1 %tobool64.not, label %if.end56.cleanup_crit_edge, label %if.then65

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then65:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %if.end56.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.then65 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end56.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vdec_ctrl_deinit(ptr noundef %inst) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 10
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_op_g_volatile_ctrl(ptr nocapture noundef %ctrl) #0 align 64 {
entry:
  %bufreq = alloca %struct.hfi_buffer_requirements, align 4
  %profile = alloca i32, align 4
  %level = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -204
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %bufreq) #4
  %2 = getelementptr inbounds %struct.hfi_buffer_requirements, ptr %bufreq, i32 0, i32 3
  %3 = getelementptr inbounds %struct.hfi_buffer_requirements, ptr %bufreq, i32 0, i32 4
  %core = getelementptr i8, ptr %1, i32 -104
  %4 = call ptr @memset(ptr %bufreq, i32 255, i32 32)
  %5 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %core, align 4
  %res = getelementptr inbounds %struct.venus_core, ptr %6, i32 0, i32 22
  %7 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %res, align 4
  %hfi_version = getelementptr inbounds %struct.venus_resources, ptr %8, i32 0, i32 20
  %9 = ptrtoint ptr %hfi_version to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hfi_version, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %profile) #4
  %11 = ptrtoint ptr %profile to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %profile, align 4, !annotation !14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %level) #4
  %12 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %level, align 4, !annotation !14
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 8
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %entry.cleanup_crit_edge [
    i32 10029675, label %entry.sw.bb_crit_edge
    i32 10029718, label %entry.sw.bb_crit_edge42
    i32 10029823, label %entry.sw.bb_crit_edge43
    i32 10029824, label %entry.sw.bb_crit_edge44
    i32 10029671, label %entry.sw.bb3_crit_edge
    i32 10029717, label %entry.sw.bb3_crit_edge45
    i32 10029825, label %entry.sw.bb3_crit_edge46
    i32 10029525, label %sw.bb11
    i32 9963815, label %sw.bb13
  ]

entry.sw.bb3_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

entry.sw.bb3_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

entry.sw.bb_crit_edge44:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.bb_crit_edge43:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.bb_crit_edge42:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge42, %entry.sw.bb_crit_edge43, %entry.sw.bb_crit_edge44
  %call = call i32 @venus_helper_get_profile_level(ptr noundef %add.ptr, ptr noundef nonnull %profile, ptr noundef nonnull %level) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %profile, align 4
  %profile1 = getelementptr i8, ptr %1, i32 192
  %18 = ptrtoint ptr %profile1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %profile1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %profile2 = getelementptr i8, ptr %1, i32 192
  %19 = ptrtoint ptr %profile2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %profile2, align 4
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge45, %entry.sw.bb3_crit_edge46
  %call4 = call i32 @venus_helper_get_profile_level(ptr noundef %add.ptr, ptr noundef nonnull %profile, ptr noundef nonnull %level) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %sw.bb3.if.end8_crit_edge

sw.bb3.if.end8_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then6:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %level, align 4
  %level7 = getelementptr i8, ptr %1, i32 196
  %23 = ptrtoint ptr %level7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %level7, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %sw.bb3.if.end8_crit_edge
  %level9 = getelementptr i8, ptr %1, i32 196
  %24 = ptrtoint ptr %level9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %level9, align 8
  br label %cleanup.sink.split

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %controls = getelementptr i8, ptr %1, i32 188
  %26 = ptrtoint ptr %controls to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %controls, align 8
  br label %cleanup.sink.split

sw.bb13:                                          ; preds = %entry
  %call14 = call i32 @venus_helper_get_bufreq(ptr noundef %add.ptr, i32 noundef 2, ptr noundef nonnull %bufreq) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %sw.bb13.cleanup_crit_edge

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then16:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp = icmp eq i32 %10, 2
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.val = load i32, ptr %2, align 4
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.val41 = load i32, ptr %3, align 4
  %30 = select i1 %cmp, i32 %.val, i32 %.val41
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then16, %sw.bb11, %if.end8, %if.end
  %.sink40 = phi i32 [ %20, %if.end ], [ %25, %if.end8 ], [ %27, %sw.bb11 ], [ %30, %if.then16 ]
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink40, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb13.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %level) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %profile) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bufreq) #4
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vdec_op_s_ctrl(ptr nocapture noundef readonly %ctrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 10029525, label %sw.bb
    i32 10029675, label %entry.sw.bb1_crit_edge
    i32 10029718, label %entry.sw.bb1_crit_edge23
    i32 10029823, label %entry.sw.bb1_crit_edge24
    i32 10029824, label %entry.sw.bb1_crit_edge25
    i32 10029671, label %entry.sw.bb3_crit_edge
    i32 10029717, label %entry.sw.bb3_crit_edge26
    i32 10029825, label %entry.sw.bb3_crit_edge27
    i32 10029965, label %sw.bb5
    i32 10029966, label %sw.bb7
    i32 10029547, label %sw.bb9
  ]

entry.sw.bb3_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

entry.sw.bb3_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

entry.sw.bb1_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1

entry.sw.bb1_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1

entry.sw.bb1_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %controls = getelementptr i8, ptr %1, i32 188
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = ptrtoint ptr %controls to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %controls, align 8
  br label %cleanup

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge23, %entry.sw.bb1_crit_edge24, %entry.sw.bb1_crit_edge25
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val2, align 4
  %profile = getelementptr i8, ptr %1, i32 192
  %10 = ptrtoint ptr %profile to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %profile, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge26, %entry.sw.bb3_crit_edge27
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %11 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val4, align 4
  %level = getelementptr i8, ptr %1, i32 196
  %13 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %level, align 8
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %14 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val6, align 4
  %display_delay = getelementptr i8, ptr %1, i32 200
  %16 = ptrtoint ptr %display_delay to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %display_delay, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %17 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val8, align 4
  %display_delay_enable = getelementptr i8, ptr %1, i32 204
  %19 = ptrtoint ptr %display_delay_enable to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %display_delay_enable, align 8
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %p_new = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 25
  %20 = ptrtoint ptr %p_new to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %p_new, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %21, align 8
  %conceal_color = getelementptr i8, ptr %1, i32 212
  %24 = ptrtoint ptr %conceal_color to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %conceal_color, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb9 ], [ 0, %sw.bb7 ], [ 0, %sw.bb5 ], [ 0, %sw.bb3 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_get_profile_level(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_get_bufreq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @vdec_ctrl_init._key, !1, !"_key", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/qcom/venus/vdec_ctrls.c", i32 101, i32 8}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @vdec_ctrl_ops, !4, !"vdec_ctrl_ops", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/qcom/venus/vdec_ctrls.c", i32 91, i32 35}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{!"auto-init"}
