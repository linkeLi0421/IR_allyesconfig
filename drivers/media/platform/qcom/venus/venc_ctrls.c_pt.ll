; ModuleID = '/llk/IR_all_yes/drivers/media/platform/qcom/venus/venc_ctrls.c_pt.bc'
source_filename = "../drivers/media/platform/qcom/venus/venc_ctrls.c"
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
%struct.hfi_enable = type { i32 }
%struct.hfi_bitrate = type { i32, i32 }
%struct.hfi_ltr_use = type { i32, i32, i32 }
%struct.hfi_ltr_mark = type { i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@venc_ctrl_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"venc_ctrls:356:(&inst->ctrl_handler)->_lock\00", [52 x i8] zeroinitializer }, align 32
@venc_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @venc_op_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [60 x i64] [i64 58, i64 32, i64 10029514, i64 10029515, i64 10029518, i64 10029519, i64 10029520, i64 10029527, i64 10029528, i64 10029531, i64 10029532, i64 10029533, i64 10029541, i64 10029542, i64 10029543, i64 10029544, i64 10029545, i64 10029546, i64 10029548, i64 10029662, i64 10029663, i64 10029664, i64 10029665, i64 10029666, i64 10029667, i64 10029669, i64 10029670, i64 10029671, i64 10029672, i64 10029673, i64 10029674, i64 10029675, i64 10029697, i64 10029698, i64 10029699, i64 10029700, i64 10029701, i64 10029702, i64 10029717, i64 10029718, i64 10029819, i64 10029820, i64 10029823, i64 10029912, i64 10029913, i64 10029914, i64 10029915, i64 10029916, i64 10029927, i64 10029928, i64 10029957, i64 10029958, i64 10029959, i64 10029960, i64 10029961, i64 10029962, i64 10029963, i64 10029964, i64 10815744, i64 10815745]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 64]
@___asan_gen_.2 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 356, i32 8 }
@___asan_gen_.8 = private unnamed_addr constant [14 x i8] c"venc_ctrl_ops\00", align 1
@___asan_gen_.9 = private constant [50 x i8] c"../drivers/media/platform/qcom/venus/venc_ctrls.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 348, i32 35 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @venc_ctrl_init._key, ptr @.str, ptr @venc_ctrl_ops], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_ctrl_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @venc_ctrl_init(ptr noundef %inst) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 10
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 58, ptr noundef nonnull @venc_ctrl_init._key, ptr noundef nonnull @.str) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029518, i8 noundef zeroext 1, i64 noundef -8, i8 noundef zeroext 0) #4
  %call4 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029669, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0) #4
  %call6 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029718, i8 noundef zeroext 4, i64 noundef -4, i8 noundef zeroext 0) #4
  %call8 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029717, i8 noundef zeroext 7, i64 noundef 0, i8 noundef zeroext 0) #4
  %call10 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029927, i8 noundef zeroext 2, i64 noundef -8, i8 noundef zeroext 0) #4
  %call12 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029928, i8 noundef zeroext 12, i64 noundef 0, i8 noundef zeroext 0) #4
  %call14 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029675, i8 noundef zeroext 16, i64 noundef -98328, i8 noundef zeroext 4) #4
  %call16 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029671, i8 noundef zeroext 15, i64 noundef 0, i8 noundef zeroext 0) #4
  %call18 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029674, i8 noundef zeroext 2, i64 noundef 0, i8 noundef zeroext 1) #4
  %call20 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029528, i8 noundef zeroext 1, i64 noundef -4, i8 noundef zeroext 1) #4
  %call22 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029533, i8 noundef zeroext 2, i64 noundef 0, i8 noundef zeroext 0) #4
  %call24 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029823, i8 noundef zeroext 3, i64 noundef 0, i8 noundef zeroext 0) #4
  %call26 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029519, i64 noundef 32000, i64 noundef 160000000, i64 noundef 100, i64 noundef 1000000) #4
  %call28 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029520, i64 noundef 32000, i64 noundef 160000000, i64 noundef 100, i64 noundef 2000000) #4
  %call30 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029662, i64 noundef 1, i64 noundef 51, i64 noundef 1, i64 noundef 26) #4
  %call32 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029663, i64 noundef 1, i64 noundef 51, i64 noundef 1, i64 noundef 28) #4
  %call34 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029664, i64 noundef 1, i64 noundef 51, i64 noundef 1, i64 noundef 30) #4
  %call36 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029665, i64 noundef 1, i64 noundef 51, i64 noundef 1, i64 noundef 1) #4
  %call38 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029697, i64 noundef 1, i64 noundef 51, i64 noundef 1, i64 noundef 1) #4
  %call40 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029667, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #4
  %call42 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029699, i64 noundef 1, i64 noundef 51, i64 noundef 1, i64 noundef 1) #4
  %call44 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029701, i64 noundef 1, i64 noundef 51, i64 noundef 1, i64 noundef 1) #4
  %call46 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029666, i64 noundef 1, i64 noundef 51, i64 noundef 1, i64 noundef 51) #4
  %call48 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029698, i64 noundef 1, i64 noundef 51, i64 noundef 1, i64 noundef 51) #4
  %call50 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029700, i64 noundef 1, i64 noundef 51, i64 noundef 1, i64 noundef 51) #4
  %call52 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029702, i64 noundef 1, i64 noundef 51, i64 noundef 1, i64 noundef 51) #4
  %call54 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029914, i64 noundef 1, i64 noundef 63, i64 noundef 1, i64 noundef 26) #4
  %call56 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029915, i64 noundef 1, i64 noundef 63, i64 noundef 1, i64 noundef 28) #4
  %call58 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029916, i64 noundef 1, i64 noundef 63, i64 noundef 1, i64 noundef 30) #4
  %call60 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029912, i64 noundef 1, i64 noundef 63, i64 noundef 1, i64 noundef 1) #4
  %call62 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029959, i64 noundef 1, i64 noundef 63, i64 noundef 1, i64 noundef 1) #4
  %call64 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029961, i64 noundef 1, i64 noundef 63, i64 noundef 1, i64 noundef 1) #4
  %call66 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029963, i64 noundef 1, i64 noundef 63, i64 noundef 1, i64 noundef 1) #4
  %call68 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029913, i64 noundef 1, i64 noundef 63, i64 noundef 1, i64 noundef 63) #4
  %call70 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029960, i64 noundef 1, i64 noundef 63, i64 noundef 1, i64 noundef 63) #4
  %call72 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029962, i64 noundef 1, i64 noundef 63, i64 noundef 1, i64 noundef 63) #4
  %call74 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029964, i64 noundef 1, i64 noundef 63, i64 noundef 1, i64 noundef 63) #4
  %call76 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029531, i64 noundef 1024, i64 noundef 1024, i64 noundef 1, i64 noundef 1024) #4
  %call78 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029532, i64 noundef 1, i64 noundef 300, i64 noundef 1, i64 noundef 1) #4
  %call80 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029672, i64 noundef -6, i64 noundef 6, i64 noundef 1, i64 noundef 0) #4
  %call82 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029673, i64 noundef -6, i64 noundef 6, i64 noundef 1, i64 noundef 0) #4
  %call84 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029515, i64 noundef 0, i64 noundef 65535, i64 noundef 1, i64 noundef 30) #4
  %call86 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029819, i64 noundef 1, i64 noundef 128, i64 noundef 1, i64 noundef 1) #4
  %call88 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029820, i64 noundef 1, i64 noundef 128, i64 noundef 1, i64 noundef 128) #4
  %call90 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029514, i64 noundef 0, i64 noundef 4, i64 noundef 1, i64 noundef 0) #4
  %call92 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029670, i64 noundef 0, i64 noundef 65535, i64 noundef 1, i64 noundef 0) #4
  %call94 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029541, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #4
  %call96 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029527, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #4
  %call98 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029957, i64 noundef 0, i64 noundef 100, i64 noundef 1, i64 noundef 0) #4
  %call100 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029958, i8 noundef zeroext 2, i64 noundef -6, i8 noundef zeroext 0) #4
  %call102 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029542, i64 noundef 0, i64 noundef 6, i64 noundef 1, i64 noundef 0) #4
  %call104 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029543, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #4
  %call106 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029546, i64 noundef 0, i64 noundef 15, i64 noundef 0, i64 noundef 0) #4
  %call108 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029544, i64 noundef 0, i64 noundef 4, i64 noundef 1, i64 noundef 0) #4
  %call110 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029545, i64 noundef 0, i64 noundef 3, i64 noundef 1, i64 noundef 0) #4
  %call114 = tail call ptr @v4l2_ctrl_new_std_compound(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10815744, [1 x i32] zeroinitializer) #4
  %call121 = tail call ptr @v4l2_ctrl_new_std_compound(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10815745, [1 x i32] zeroinitializer) #4
  %call123 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @venc_ctrl_ops, i32 noundef 10029548, i64 noundef 0, i64 noundef 36864, i64 noundef 1, i64 noundef 0) #4
  %error = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 10, i32 9
  %0 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool125.not = icmp eq i32 %1, 0
  br i1 %tobool125.not, label %if.end127, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end127:                                        ; preds = %if.end
  %call129 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_handler) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end127.cleanup_crit_edge, label %if.end127.err_crit_edge

if.end127.err_crit_edge:                          ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end127.cleanup_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

err:                                              ; preds = %if.end127.err_crit_edge, %if.end.err_crit_edge
  %ret.0 = phi i32 [ %1, %if.end.err_crit_edge ], [ %call129, %if.end127.err_crit_edge ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end127.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end127.cleanup_crit_edge ]
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
declare dso_local ptr @v4l2_ctrl_new_std_compound(ptr noundef, ptr noundef, i32 noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @venc_ctrl_deinit(ptr noundef %inst) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 10
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_op_s_ctrl(ptr noundef readonly %ctrl) #0 align 64 {
entry:
  %en = alloca %struct.hfi_enable, align 4
  %brate = alloca %struct.hfi_bitrate, align 4
  %ltr_use = alloca %struct.hfi_ltr_use, align 4
  %ltr_mark = alloca %struct.hfi_ltr_mark, align 4
  %bframes = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -204
  %controls = getelementptr i8, ptr %1, i32 188
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %en) #4
  %2 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %en, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %brate) #4
  %3 = ptrtoint ptr %brate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %brate, align 4, !annotation !14
  %4 = getelementptr inbounds %struct.hfi_bitrate, ptr %brate, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ltr_use) #4
  %6 = ptrtoint ptr %ltr_use to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %ltr_use, align 4, !annotation !14
  %7 = getelementptr inbounds %struct.hfi_ltr_use, ptr %ltr_use, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !14
  %9 = getelementptr inbounds %struct.hfi_ltr_use, ptr %ltr_use, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ltr_mark) #4
  %11 = ptrtoint ptr %ltr_mark to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %ltr_mark, align 4, !annotation !14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bframes) #4
  %12 = ptrtoint ptr %bframes to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %bframes, align 4, !annotation !14
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 8
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %entry.cleanup_crit_edge [
    i32 10029518, label %sw.bb
    i32 10029519, label %sw.bb1
    i32 10029520, label %sw.bb11
    i32 10029669, label %sw.bb13
    i32 10029718, label %sw.bb15
    i32 10029675, label %sw.bb17
    i32 10029927, label %sw.bb20
    i32 10029823, label %sw.bb23
    i32 10029717, label %sw.bb26
    i32 10029671, label %sw.bb29
    i32 10029928, label %sw.bb33
    i32 10029662, label %sw.bb37
    i32 10029663, label %sw.bb39
    i32 10029664, label %sw.bb41
    i32 10029665, label %sw.bb43
    i32 10029697, label %sw.bb45
    i32 10029699, label %sw.bb47
    i32 10029701, label %sw.bb49
    i32 10029666, label %sw.bb51
    i32 10029698, label %sw.bb53
    i32 10029700, label %sw.bb55
    i32 10029702, label %sw.bb57
    i32 10029914, label %sw.bb59
    i32 10029915, label %sw.bb61
    i32 10029916, label %sw.bb63
    i32 10029912, label %sw.bb65
    i32 10029959, label %sw.bb67
    i32 10029961, label %sw.bb69
    i32 10029963, label %sw.bb71
    i32 10029913, label %sw.bb73
    i32 10029960, label %sw.bb75
    i32 10029962, label %sw.bb77
    i32 10029964, label %sw.bb79
    i32 10029533, label %sw.bb81
    i32 10029531, label %sw.bb83
    i32 10029532, label %sw.bb85
    i32 10029672, label %sw.bb87
    i32 10029673, label %sw.bb89
    i32 10029674, label %sw.bb91
    i32 10029528, label %sw.bb93
    i32 10029515, label %sw.bb113
    i32 10029670, label %sw.bb120
    i32 10029819, label %sw.bb122
    i32 10029820, label %sw.bb124
    i32 10029514, label %sw.bb126
    i32 10029541, label %sw.bb136
    i32 10029527, label %sw.bb151
    i32 10029957, label %sw.bb153
    i32 10029958, label %sw.bb155
    i32 10029542, label %sw.bb157
    i32 10029543, label %sw.bb159
    i32 10029544, label %sw.bb162
    i32 10029545, label %sw.bb164
    i32 10029546, label %sw.bb180
    i32 10815744, label %sw.bb196
    i32 10815745, label %sw.bb197
    i32 10029548, label %sw.bb199
    i32 10029667, label %sw.bb201
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  %bitrate_mode = getelementptr i8, ptr %1, i32 200
  %18 = ptrtoint ptr %bitrate_mode to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %bitrate_mode, align 4
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %19 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val2, align 4
  %bitrate = getelementptr i8, ptr %1, i32 204
  %21 = ptrtoint ptr %bitrate to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %bitrate, align 4
  %lock = getelementptr i8, ptr %1, i32 -196
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %streamon_out = getelementptr i8, ptr %1, i32 640
  %22 = ptrtoint ptr %streamon_out to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %streamon_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not = icmp eq i32 %23, 0
  br i1 %tobool.not, label %sw.bb1.if.end9_crit_edge, label %land.lhs.true

sw.bb1.if.end9_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

land.lhs.true:                                    ; preds = %sw.bb1
  %streamon_cap = getelementptr i8, ptr %1, i32 636
  %24 = ptrtoint ptr %streamon_cap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %streamon_cap, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool3.not = icmp eq i32 %25, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end9_crit_edge, label %if.then

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then:                                          ; preds = %land.lhs.true
  %26 = ptrtoint ptr %bitrate to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bitrate, align 4
  %28 = ptrtoint ptr %brate to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %brate, align 4
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %4, align 4
  %call = call i32 @hfi_session_set_property(ptr noundef %add.ptr, i32 noundef 33579009, ptr noundef nonnull %brate) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.then.if.end9_crit_edge, label %if.then7

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  call void @mutex_unlock(ptr noundef %lock) #4
  br label %cleanup

if.end9:                                          ; preds = %if.then.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %sw.bb1.if.end9_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #4
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %30 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val12, align 4
  %bitrate_peak = getelementptr i8, ptr %1, i32 208
  %32 = ptrtoint ptr %bitrate_peak to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %bitrate_peak, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %33 = ptrtoint ptr %val14 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val14, align 4
  %h264_entropy_mode = getelementptr i8, ptr %1, i32 228
  %35 = ptrtoint ptr %h264_entropy_mode to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %h264_entropy_mode, align 4
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %36 = ptrtoint ptr %val16 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val16, align 4
  %mpeg4 = getelementptr i8, ptr %1, i32 372
  %38 = ptrtoint ptr %mpeg4 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %mpeg4, align 4
  br label %cleanup

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %39 = ptrtoint ptr %val18 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val18, align 4
  %profile19 = getelementptr i8, ptr %1, i32 368
  %41 = ptrtoint ptr %profile19 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %profile19, align 4
  br label %cleanup

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %42 = ptrtoint ptr %val21 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val21, align 4
  %hevc = getelementptr i8, ptr %1, i32 376
  %44 = ptrtoint ptr %hevc to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %hevc, align 4
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val24 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %45 = ptrtoint ptr %val24 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val24, align 4
  %vp8 = getelementptr i8, ptr %1, i32 380
  %47 = ptrtoint ptr %vp8 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %vp8, align 4
  br label %cleanup

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val27 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %48 = ptrtoint ptr %val27 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %val27, align 4
  %mpeg428 = getelementptr i8, ptr %1, i32 392
  %50 = ptrtoint ptr %mpeg428 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %mpeg428, align 4
  br label %cleanup

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val30 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %51 = ptrtoint ptr %val30 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %val30, align 4
  %level31 = getelementptr i8, ptr %1, i32 388
  %53 = ptrtoint ptr %level31 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %level31, align 4
  br label %cleanup

sw.bb33:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val34 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %54 = ptrtoint ptr %val34 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val34, align 4
  %hevc36 = getelementptr i8, ptr %1, i32 396
  %56 = ptrtoint ptr %hevc36 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %hevc36, align 4
  br label %cleanup

sw.bb37:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val38 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %57 = ptrtoint ptr %val38 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %val38, align 4
  %h264_i_qp = getelementptr i8, ptr %1, i32 232
  %59 = ptrtoint ptr %h264_i_qp to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %h264_i_qp, align 4
  br label %cleanup

sw.bb39:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val40 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %60 = ptrtoint ptr %val40 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %val40, align 4
  %h264_p_qp = getelementptr i8, ptr %1, i32 236
  %62 = ptrtoint ptr %h264_p_qp to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %h264_p_qp, align 4
  br label %cleanup

sw.bb41:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val42 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %63 = ptrtoint ptr %val42 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %val42, align 4
  %h264_b_qp = getelementptr i8, ptr %1, i32 240
  %65 = ptrtoint ptr %h264_b_qp to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %h264_b_qp, align 4
  br label %cleanup

sw.bb43:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val44 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %66 = ptrtoint ptr %val44 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %val44, align 4
  %h264_min_qp = getelementptr i8, ptr %1, i32 244
  %68 = ptrtoint ptr %h264_min_qp to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %h264_min_qp, align 4
  br label %cleanup

sw.bb45:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val46 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %69 = ptrtoint ptr %val46 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %val46, align 4
  %h264_i_min_qp = getelementptr i8, ptr %1, i32 252
  %71 = ptrtoint ptr %h264_i_min_qp to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %h264_i_min_qp, align 4
  br label %cleanup

sw.bb47:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val48 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %72 = ptrtoint ptr %val48 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %val48, align 4
  %h264_p_min_qp = getelementptr i8, ptr %1, i32 260
  %74 = ptrtoint ptr %h264_p_min_qp to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %h264_p_min_qp, align 4
  br label %cleanup

sw.bb49:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val50 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %75 = ptrtoint ptr %val50 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %val50, align 4
  %h264_b_min_qp = getelementptr i8, ptr %1, i32 268
  %77 = ptrtoint ptr %h264_b_min_qp to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %h264_b_min_qp, align 4
  br label %cleanup

sw.bb51:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val52 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %78 = ptrtoint ptr %val52 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %val52, align 4
  %h264_max_qp = getelementptr i8, ptr %1, i32 248
  %80 = ptrtoint ptr %h264_max_qp to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %h264_max_qp, align 4
  br label %cleanup

sw.bb53:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val54 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %81 = ptrtoint ptr %val54 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %val54, align 4
  %h264_i_max_qp = getelementptr i8, ptr %1, i32 256
  %83 = ptrtoint ptr %h264_i_max_qp to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %h264_i_max_qp, align 4
  br label %cleanup

sw.bb55:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val56 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %84 = ptrtoint ptr %val56 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %val56, align 4
  %h264_p_max_qp = getelementptr i8, ptr %1, i32 264
  %86 = ptrtoint ptr %h264_p_max_qp to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %h264_p_max_qp, align 4
  br label %cleanup

sw.bb57:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val58 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %87 = ptrtoint ptr %val58 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %val58, align 4
  %h264_b_max_qp = getelementptr i8, ptr %1, i32 272
  %89 = ptrtoint ptr %h264_b_max_qp to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %h264_b_max_qp, align 4
  br label %cleanup

sw.bb59:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val60 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %90 = ptrtoint ptr %val60 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %val60, align 4
  %hevc_i_qp = getelementptr i8, ptr %1, i32 292
  %92 = ptrtoint ptr %hevc_i_qp to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %hevc_i_qp, align 4
  br label %cleanup

sw.bb61:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val62 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %93 = ptrtoint ptr %val62 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %val62, align 4
  %hevc_p_qp = getelementptr i8, ptr %1, i32 296
  %95 = ptrtoint ptr %hevc_p_qp to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %hevc_p_qp, align 4
  br label %cleanup

sw.bb63:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val64 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %96 = ptrtoint ptr %val64 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %val64, align 4
  %hevc_b_qp = getelementptr i8, ptr %1, i32 300
  %98 = ptrtoint ptr %hevc_b_qp to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %hevc_b_qp, align 4
  br label %cleanup

sw.bb65:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val66 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %99 = ptrtoint ptr %val66 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %val66, align 4
  %hevc_min_qp = getelementptr i8, ptr %1, i32 304
  %101 = ptrtoint ptr %hevc_min_qp to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %hevc_min_qp, align 4
  br label %cleanup

sw.bb67:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val68 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %102 = ptrtoint ptr %val68 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %val68, align 4
  %hevc_i_min_qp = getelementptr i8, ptr %1, i32 312
  %104 = ptrtoint ptr %hevc_i_min_qp to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %hevc_i_min_qp, align 4
  br label %cleanup

sw.bb69:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val70 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %105 = ptrtoint ptr %val70 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %val70, align 4
  %hevc_p_min_qp = getelementptr i8, ptr %1, i32 320
  %107 = ptrtoint ptr %hevc_p_min_qp to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %hevc_p_min_qp, align 4
  br label %cleanup

sw.bb71:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val72 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %108 = ptrtoint ptr %val72 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %val72, align 4
  %hevc_b_min_qp = getelementptr i8, ptr %1, i32 328
  %110 = ptrtoint ptr %hevc_b_min_qp to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %hevc_b_min_qp, align 4
  br label %cleanup

sw.bb73:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val74 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %111 = ptrtoint ptr %val74 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %val74, align 4
  %hevc_max_qp = getelementptr i8, ptr %1, i32 308
  %113 = ptrtoint ptr %hevc_max_qp to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %hevc_max_qp, align 4
  br label %cleanup

sw.bb75:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val76 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %114 = ptrtoint ptr %val76 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %val76, align 4
  %hevc_i_max_qp = getelementptr i8, ptr %1, i32 316
  %116 = ptrtoint ptr %hevc_i_max_qp to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %hevc_i_max_qp, align 4
  br label %cleanup

sw.bb77:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val78 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %117 = ptrtoint ptr %val78 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %val78, align 4
  %hevc_p_max_qp = getelementptr i8, ptr %1, i32 324
  %119 = ptrtoint ptr %hevc_p_max_qp to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %hevc_p_max_qp, align 4
  br label %cleanup

sw.bb79:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val80 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %120 = ptrtoint ptr %val80 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %val80, align 4
  %hevc_b_max_qp = getelementptr i8, ptr %1, i32 332
  %122 = ptrtoint ptr %hevc_b_max_qp to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %hevc_b_max_qp, align 4
  br label %cleanup

sw.bb81:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val82 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %123 = ptrtoint ptr %val82 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %val82, align 4
  %multi_slice_mode = getelementptr i8, ptr %1, i32 344
  %125 = ptrtoint ptr %multi_slice_mode to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %multi_slice_mode, align 4
  br label %cleanup

sw.bb83:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val84 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %126 = ptrtoint ptr %val84 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %val84, align 4
  %multi_slice_max_bytes = getelementptr i8, ptr %1, i32 348
  %128 = ptrtoint ptr %multi_slice_max_bytes to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %multi_slice_max_bytes, align 4
  br label %cleanup

sw.bb85:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val86 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %129 = ptrtoint ptr %val86 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %val86, align 4
  %multi_slice_max_mb = getelementptr i8, ptr %1, i32 352
  %131 = ptrtoint ptr %multi_slice_max_mb to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %multi_slice_max_mb, align 4
  br label %cleanup

sw.bb87:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val88 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %132 = ptrtoint ptr %val88 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %val88, align 4
  %h264_loop_filter_alpha = getelementptr i8, ptr %1, i32 280
  %134 = ptrtoint ptr %h264_loop_filter_alpha to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %h264_loop_filter_alpha, align 4
  br label %cleanup

sw.bb89:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val90 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %135 = ptrtoint ptr %val90 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %val90, align 4
  %h264_loop_filter_beta = getelementptr i8, ptr %1, i32 284
  %137 = ptrtoint ptr %h264_loop_filter_beta to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %h264_loop_filter_beta, align 4
  br label %cleanup

sw.bb91:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val92 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %138 = ptrtoint ptr %val92 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %val92, align 4
  %h264_loop_filter_mode = getelementptr i8, ptr %1, i32 276
  %140 = ptrtoint ptr %h264_loop_filter_mode to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %h264_loop_filter_mode, align 4
  br label %cleanup

sw.bb93:                                          ; preds = %entry
  %val94 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %141 = ptrtoint ptr %val94 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %val94, align 4
  %header_mode = getelementptr i8, ptr %1, i32 356
  %143 = ptrtoint ptr %header_mode to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %header_mode, align 4
  %lock95 = getelementptr i8, ptr %1, i32 -196
  tail call void @mutex_lock_nested(ptr noundef %lock95, i32 noundef 0) #4
  %streamon_out96 = getelementptr i8, ptr %1, i32 640
  %144 = ptrtoint ptr %streamon_out96 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %streamon_out96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool97.not = icmp eq i32 %145, 0
  br i1 %tobool97.not, label %sw.bb93.if.end111_crit_edge, label %land.lhs.true98

sw.bb93.if.end111_crit_edge:                      ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end111

land.lhs.true98:                                  ; preds = %sw.bb93
  %streamon_cap99 = getelementptr i8, ptr %1, i32 636
  %146 = ptrtoint ptr %streamon_cap99 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %streamon_cap99, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool100.not = icmp eq i32 %147, 0
  br i1 %tobool100.not, label %land.lhs.true98.if.end111_crit_edge, label %if.then101

land.lhs.true98.if.end111_crit_edge:              ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end111

if.then101:                                       ; preds = %land.lhs.true98
  %148 = ptrtoint ptr %val94 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %val94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %cmp = icmp ne i32 %149, 0
  %. = zext i1 %cmp to i32
  %150 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %., ptr %en, align 4
  %call106 = call i32 @hfi_session_set_property(ptr noundef %add.ptr, i32 noundef 33579016, ptr noundef nonnull %en) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.then101.if.end111_crit_edge, label %if.then108

if.then101.if.end111_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end111

if.then108:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #6
  call void @mutex_unlock(ptr noundef %lock95) #4
  br label %cleanup

if.end111:                                        ; preds = %if.then101.if.end111_crit_edge, %land.lhs.true98.if.end111_crit_edge, %sw.bb93.if.end111_crit_edge
  call void @mutex_unlock(ptr noundef %lock95) #4
  br label %cleanup

sw.bb113:                                         ; preds = %entry
  %val114 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %151 = ptrtoint ptr %val114 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %val114, align 4
  %num_b_frames = getelementptr i8, ptr %1, i32 196
  %153 = ptrtoint ptr %num_b_frames to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %num_b_frames, align 4
  %num_p_frames = getelementptr i8, ptr %1, i32 192
  %call115 = call fastcc i32 @venc_calc_bpframes(i32 noundef %152, i32 noundef %154, ptr noundef nonnull %bframes, ptr noundef %num_p_frames)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end118, label %sw.bb113.cleanup_crit_edge

sw.bb113.cleanup_crit_edge:                       ; preds = %sw.bb113
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end118:                                        ; preds = %sw.bb113
  call void @__sanitizer_cov_trace_pc() #6
  %155 = ptrtoint ptr %val114 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %val114, align 4
  %conv = trunc i32 %156 to i16
  %157 = ptrtoint ptr %controls to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %conv, ptr %controls, align 4
  br label %cleanup

sw.bb120:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val121 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %158 = ptrtoint ptr %val121 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %val121, align 4
  %h264_i_period = getelementptr i8, ptr %1, i32 224
  %160 = ptrtoint ptr %h264_i_period to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %h264_i_period, align 4
  br label %cleanup

sw.bb122:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val123 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %161 = ptrtoint ptr %val123 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %val123, align 4
  %vp8_min_qp = getelementptr i8, ptr %1, i32 336
  %163 = ptrtoint ptr %vp8_min_qp to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %vp8_min_qp, align 4
  br label %cleanup

sw.bb124:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val125 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %164 = ptrtoint ptr %val125 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %val125, align 4
  %vp8_max_qp = getelementptr i8, ptr %1, i32 340
  %166 = ptrtoint ptr %vp8_max_qp to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %vp8_max_qp, align 4
  br label %cleanup

sw.bb126:                                         ; preds = %entry
  %167 = ptrtoint ptr %controls to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %controls, align 4
  %conv128 = zext i16 %168 to i32
  %val129 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %169 = ptrtoint ptr %val129 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %val129, align 4
  %num_p_frames130 = getelementptr i8, ptr %1, i32 192
  %call131 = call fastcc i32 @venc_calc_bpframes(i32 noundef %conv128, i32 noundef %170, ptr noundef nonnull %bframes, ptr noundef %num_p_frames130)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end134, label %sw.bb126.cleanup_crit_edge

sw.bb126.cleanup_crit_edge:                       ; preds = %sw.bb126
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end134:                                        ; preds = %sw.bb126
  call void @__sanitizer_cov_trace_pc() #6
  %171 = ptrtoint ptr %bframes to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %bframes, align 4
  %num_b_frames135 = getelementptr i8, ptr %1, i32 196
  %173 = ptrtoint ptr %num_b_frames135 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %num_b_frames135, align 4
  br label %cleanup

sw.bb136:                                         ; preds = %entry
  %lock137 = getelementptr i8, ptr %1, i32 -196
  tail call void @mutex_lock_nested(ptr noundef %lock137, i32 noundef 0) #4
  %streamon_out138 = getelementptr i8, ptr %1, i32 640
  %174 = ptrtoint ptr %streamon_out138 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %streamon_out138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool139.not = icmp eq i32 %175, 0
  br i1 %tobool139.not, label %sw.bb136.if.end149_crit_edge, label %land.lhs.true140

sw.bb136.if.end149_crit_edge:                     ; preds = %sw.bb136
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end149

land.lhs.true140:                                 ; preds = %sw.bb136
  %streamon_cap141 = getelementptr i8, ptr %1, i32 636
  %176 = ptrtoint ptr %streamon_cap141 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %streamon_cap141, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool142.not = icmp eq i32 %177, 0
  br i1 %tobool142.not, label %land.lhs.true140.if.end149_crit_edge, label %if.then143

land.lhs.true140.if.end149_crit_edge:             ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end149

if.then143:                                       ; preds = %land.lhs.true140
  %call144 = call i32 @hfi_session_set_property(ptr noundef %add.ptr, i32 noundef 33579012, ptr noundef nonnull %en) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.then143.if.end149_crit_edge, label %if.then146

if.then143.if.end149_crit_edge:                   ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end149

if.then146:                                       ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #6
  call void @mutex_unlock(ptr noundef %lock137) #4
  br label %cleanup

if.end149:                                        ; preds = %if.then143.if.end149_crit_edge, %land.lhs.true140.if.end149_crit_edge, %sw.bb136.if.end149_crit_edge
  call void @mutex_unlock(ptr noundef %lock137) #4
  br label %cleanup

sw.bb151:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val152 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %178 = ptrtoint ptr %val152 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %val152, align 4
  %rc_enable = getelementptr i8, ptr %1, i32 212
  %180 = ptrtoint ptr %rc_enable to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %rc_enable, align 4
  br label %cleanup

sw.bb153:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val154 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %181 = ptrtoint ptr %val154 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %val154, align 4
  %const_quality = getelementptr i8, ptr %1, i32 216
  %183 = ptrtoint ptr %const_quality to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %182, ptr %const_quality, align 4
  br label %cleanup

sw.bb155:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val156 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %184 = ptrtoint ptr %val156 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %val156, align 4
  %frame_skip_mode = getelementptr i8, ptr %1, i32 220
  %186 = ptrtoint ptr %frame_skip_mode to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %185, ptr %frame_skip_mode, align 4
  br label %cleanup

sw.bb157:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val158 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %187 = ptrtoint ptr %val158 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %val158, align 4
  %base_priority_id = getelementptr i8, ptr %1, i32 404
  %189 = ptrtoint ptr %base_priority_id to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %base_priority_id, align 4
  br label %cleanup

sw.bb159:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val160 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %190 = ptrtoint ptr %val160 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %val160, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %tobool161 = icmp ne i32 %191, 0
  %aud_enable = getelementptr i8, ptr %1, i32 360
  %frombool = zext i1 %tobool161 to i8
  %192 = ptrtoint ptr %aud_enable to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %frombool, ptr %aud_enable, align 4
  br label %cleanup

sw.bb162:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val163 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %193 = ptrtoint ptr %val163 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %val163, align 4
  %ltr_count = getelementptr i8, ptr %1, i32 408
  %195 = ptrtoint ptr %ltr_count to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %194, ptr %ltr_count, align 4
  br label %cleanup

sw.bb164:                                         ; preds = %entry
  %lock165 = getelementptr i8, ptr %1, i32 -196
  tail call void @mutex_lock_nested(ptr noundef %lock165, i32 noundef 0) #4
  %streamon_out166 = getelementptr i8, ptr %1, i32 640
  %196 = ptrtoint ptr %streamon_out166 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %streamon_out166, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %tobool167.not = icmp eq i32 %197, 0
  br i1 %tobool167.not, label %sw.bb164.if.end178_crit_edge, label %land.lhs.true168

sw.bb164.if.end178_crit_edge:                     ; preds = %sw.bb164
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end178

land.lhs.true168:                                 ; preds = %sw.bb164
  %streamon_cap169 = getelementptr i8, ptr %1, i32 636
  %198 = ptrtoint ptr %streamon_cap169 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %streamon_cap169, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %tobool170.not = icmp eq i32 %199, 0
  br i1 %tobool170.not, label %land.lhs.true168.if.end178_crit_edge, label %if.then171

land.lhs.true168.if.end178_crit_edge:             ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end178

if.then171:                                       ; preds = %land.lhs.true168
  %val172 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %200 = ptrtoint ptr %val172 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %val172, align 4
  %202 = ptrtoint ptr %ltr_mark to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %201, ptr %ltr_mark, align 4
  %call173 = call i32 @hfi_session_set_property(ptr noundef %add.ptr, i32 noundef 33579017, ptr noundef nonnull %ltr_mark) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %if.then171.if.end178_crit_edge, label %if.then175

if.then171.if.end178_crit_edge:                   ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end178

if.then175:                                       ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #6
  call void @mutex_unlock(ptr noundef %lock165) #4
  br label %cleanup

if.end178:                                        ; preds = %if.then171.if.end178_crit_edge, %land.lhs.true168.if.end178_crit_edge, %sw.bb164.if.end178_crit_edge
  call void @mutex_unlock(ptr noundef %lock165) #4
  br label %cleanup

sw.bb180:                                         ; preds = %entry
  %lock181 = getelementptr i8, ptr %1, i32 -196
  tail call void @mutex_lock_nested(ptr noundef %lock181, i32 noundef 0) #4
  %streamon_out182 = getelementptr i8, ptr %1, i32 640
  %203 = ptrtoint ptr %streamon_out182 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %streamon_out182, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %tobool183.not = icmp eq i32 %204, 0
  br i1 %tobool183.not, label %sw.bb180.if.end194_crit_edge, label %land.lhs.true184

sw.bb180.if.end194_crit_edge:                     ; preds = %sw.bb180
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end194

land.lhs.true184:                                 ; preds = %sw.bb180
  %streamon_cap185 = getelementptr i8, ptr %1, i32 636
  %205 = ptrtoint ptr %streamon_cap185 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %streamon_cap185, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %tobool186.not = icmp eq i32 %206, 0
  br i1 %tobool186.not, label %land.lhs.true184.if.end194_crit_edge, label %if.then187

land.lhs.true184.if.end194_crit_edge:             ; preds = %land.lhs.true184
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end194

if.then187:                                       ; preds = %land.lhs.true184
  %val188 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %207 = ptrtoint ptr %val188 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %val188, align 4
  %209 = ptrtoint ptr %ltr_use to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %208, ptr %ltr_use, align 4
  %210 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 1, ptr %7, align 4
  %211 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 0, ptr %9, align 4
  %call189 = call i32 @hfi_session_set_property(ptr noundef %add.ptr, i32 noundef 33579018, ptr noundef nonnull %ltr_use) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %if.then187.if.end194_crit_edge, label %if.then191

if.then187.if.end194_crit_edge:                   ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end194

if.then191:                                       ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #6
  call void @mutex_unlock(ptr noundef %lock181) #4
  br label %cleanup

if.end194:                                        ; preds = %if.then187.if.end194_crit_edge, %land.lhs.true184.if.end194_crit_edge, %sw.bb180.if.end194_crit_edge
  call void @mutex_unlock(ptr noundef %lock181) #4
  br label %cleanup

sw.bb196:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %cll = getelementptr i8, ptr %1, i32 412
  %p_new = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 25
  %212 = ptrtoint ptr %p_new to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %p_new, align 8
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_loadN_noabort(i32 %214, i32 4)
  %215 = load i32, ptr %213, align 2
  %216 = ptrtoint ptr %cll to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %215, ptr %cll, align 4
  br label %cleanup

sw.bb197:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mastering = getelementptr i8, ptr %1, i32 416
  %p_new198 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 25
  %217 = ptrtoint ptr %p_new198 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %p_new198, align 8
  %219 = call ptr @memcpy(ptr %mastering, ptr %218, i32 24)
  br label %cleanup

sw.bb199:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val200 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %220 = ptrtoint ptr %val200 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %val200, align 4
  %intra_refresh_period = getelementptr i8, ptr %1, i32 364
  %222 = ptrtoint ptr %intra_refresh_period to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %221, ptr %intra_refresh_period, align 4
  br label %cleanup

sw.bb201:                                         ; preds = %entry
  %profile202 = getelementptr i8, ptr %1, i32 368
  %223 = ptrtoint ptr %profile202 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %profile202, align 4
  %225 = zext i32 %224 to i64
  call void @__sanitizer_cov_trace_switch(i64 %225, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %224, label %sw.bb201.cleanup_crit_edge [
    i32 4, label %sw.bb201.if.end212_crit_edge
    i32 64, label %sw.bb201.if.end212_crit_edge397
  ]

sw.bb201.if.end212_crit_edge397:                  ; preds = %sw.bb201
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end212

sw.bb201.if.end212_crit_edge:                     ; preds = %sw.bb201
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end212

sw.bb201.cleanup_crit_edge:                       ; preds = %sw.bb201
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end212:                                        ; preds = %sw.bb201.if.end212_crit_edge, %sw.bb201.if.end212_crit_edge397
  %val213 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %226 = ptrtoint ptr %val213 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %val213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %cmp214 = icmp eq i32 %227, 0
  br i1 %cmp214, label %if.end212.cleanup_crit_edge, label %if.end217

if.end212.cleanup_crit_edge:                      ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end217:                                        ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #6
  %h264_8x8_transform = getelementptr i8, ptr %1, i32 288
  %228 = ptrtoint ptr %h264_8x8_transform to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %227, ptr %h264_8x8_transform, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end217, %if.end212.cleanup_crit_edge, %sw.bb201.cleanup_crit_edge, %sw.bb199, %sw.bb197, %sw.bb196, %if.end194, %if.then191, %if.end178, %if.then175, %sw.bb162, %sw.bb159, %sw.bb157, %sw.bb155, %sw.bb153, %sw.bb151, %if.end149, %if.then146, %if.end134, %sw.bb126.cleanup_crit_edge, %sw.bb124, %sw.bb122, %sw.bb120, %if.end118, %sw.bb113.cleanup_crit_edge, %if.end111, %if.then108, %sw.bb91, %sw.bb89, %sw.bb87, %sw.bb85, %sw.bb83, %sw.bb81, %sw.bb79, %sw.bb77, %sw.bb75, %sw.bb73, %sw.bb71, %sw.bb69, %sw.bb67, %sw.bb65, %sw.bb63, %sw.bb61, %sw.bb59, %sw.bb57, %sw.bb55, %sw.bb53, %sw.bb51, %sw.bb49, %sw.bb47, %sw.bb45, %sw.bb43, %sw.bb41, %sw.bb39, %sw.bb37, %sw.bb33, %sw.bb29, %sw.bb26, %sw.bb23, %sw.bb20, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %if.end9, %if.then7, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call189, %if.then191 ], [ %call173, %if.then175 ], [ %call144, %if.then146 ], [ %call106, %if.then108 ], [ %call, %if.then7 ], [ %call115, %sw.bb113.cleanup_crit_edge ], [ %call131, %sw.bb126.cleanup_crit_edge ], [ -22, %sw.bb201.cleanup_crit_edge ], [ -22, %if.end212.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end217 ], [ 0, %sw.bb199 ], [ 0, %sw.bb197 ], [ 0, %sw.bb196 ], [ 0, %if.end194 ], [ 0, %if.end178 ], [ 0, %sw.bb162 ], [ 0, %sw.bb159 ], [ 0, %sw.bb157 ], [ 0, %sw.bb155 ], [ 0, %sw.bb153 ], [ 0, %sw.bb151 ], [ 0, %if.end149 ], [ 0, %if.end134 ], [ 0, %sw.bb124 ], [ 0, %sw.bb122 ], [ 0, %sw.bb120 ], [ 0, %if.end118 ], [ 0, %if.end111 ], [ 0, %sw.bb91 ], [ 0, %sw.bb89 ], [ 0, %sw.bb87 ], [ 0, %sw.bb85 ], [ 0, %sw.bb83 ], [ 0, %sw.bb81 ], [ 0, %sw.bb79 ], [ 0, %sw.bb77 ], [ 0, %sw.bb75 ], [ 0, %sw.bb73 ], [ 0, %sw.bb71 ], [ 0, %sw.bb69 ], [ 0, %sw.bb67 ], [ 0, %sw.bb65 ], [ 0, %sw.bb63 ], [ 0, %sw.bb61 ], [ 0, %sw.bb59 ], [ 0, %sw.bb57 ], [ 0, %sw.bb55 ], [ 0, %sw.bb53 ], [ 0, %sw.bb51 ], [ 0, %sw.bb49 ], [ 0, %sw.bb47 ], [ 0, %sw.bb45 ], [ 0, %sw.bb43 ], [ 0, %sw.bb41 ], [ 0, %sw.bb39 ], [ 0, %sw.bb37 ], [ 0, %sw.bb33 ], [ 0, %sw.bb29 ], [ 0, %sw.bb26 ], [ 0, %sw.bb23 ], [ 0, %sw.bb20 ], [ 0, %sw.bb17 ], [ 0, %sw.bb15 ], [ 0, %sw.bb13 ], [ 0, %sw.bb11 ], [ 0, %if.end9 ], [ 0, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bframes) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ltr_mark) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ltr_use) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %brate) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %en) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfi_session_set_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal fastcc i32 @venc_calc_bpframes(i32 noundef %gop_size, i32 noundef %conseq_b, ptr nocapture noundef writeonly %bf, ptr nocapture noundef writeonly %pf) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %gop_size, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gop_size)
  %tobool.not = icmp eq i32 %gop_size, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %pf, align 4
  %1 = ptrtoint ptr %bf to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %bf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conseq_b)
  %tobool1.not = icmp eq i32 %conseq_b, 0
  br i1 %tobool1.not, label %if.end.cleanup.sink.split_crit_edge, label %for.body.preheader

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

for.body.preheader:                               ; preds = %if.end
  %shr = lshr i32 %sub, 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %p.050 = phi i32 [ %dec, %for.inc.for.body_crit_edge ], [ %shr, %for.body.preheader ]
  %b.048 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %shr, %for.body.preheader ]
  %b.048.frozen = freeze i32 %b.048
  %p.050.frozen = freeze i32 %p.050
  %div = udiv i32 %b.048.frozen, %p.050.frozen
  %2 = mul i32 %div, %p.050.frozen
  %rem.decomposed = sub i32 %b.048.frozen, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool6.not = icmp eq i32 %rem.decomposed, 0
  br i1 %tobool6.not, label %if.end8, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end8:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %conseq_b)
  %cmp9 = icmp eq i32 %div, %conseq_b
  br i1 %cmp9, label %if.end17, label %if.end11

if.end11:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %conseq_b)
  %cmp12 = icmp ugt i32 %div, %conseq_b
  br i1 %cmp12, label %if.end11.cleanup_crit_edge, label %if.end11.for.inc_crit_edge

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc:                                          ; preds = %if.end11.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add i32 %b.048, 1
  %dec = add i32 %p.050, -1
  %cmp.not = icmp ugt i32 %inc, %sub
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %add = add i32 %b.048, 1
  %add18 = add i32 %add, %p.050
  call void @__sanitizer_cov_trace_cmp4(i32 %add18, i32 %gop_size)
  %cmp19.not = icmp eq i32 %add18, %gop_size
  br i1 %cmp19.not, label %if.end21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %bf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %b.048, ptr %bf, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end21, %if.end.cleanup.sink.split_crit_edge
  %p.050.lcssa.sink = phi i32 [ %p.050, %if.end21 ], [ %sub, %if.end.cleanup.sink.split_crit_edge ]
  %4 = ptrtoint ptr %pf to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %p.050.lcssa.sink, ptr %pf, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end17.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ -22, %if.end11.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @venc_ctrl_init._key, !1, !"_key", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/qcom/venus/venc_ctrls.c", i32 356, i32 8}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @venc_ctrl_ops, !4, !"venc_ctrl_ops", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/qcom/venus/venc_ctrls.c", i32 348, i32 35}
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
