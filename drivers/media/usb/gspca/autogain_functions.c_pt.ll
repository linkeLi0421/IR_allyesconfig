; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/autogain_functions.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/autogain_functions.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+gspca_expo_autogain\22, \22a\22\09"
module asm "\09.weak\09__crc_gspca_expo_autogain\09\09\09\09"
module asm "\09.long\09__crc_gspca_expo_autogain\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gspca_expo_autogain:\09\09\09\09\09"
module asm "\09.asciz \09\22gspca_expo_autogain\22\09\09\09\09\09"
module asm "__kstrtabns_gspca_expo_autogain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gspca_coarse_grained_expo_autogain\22, \22a\22\09"
module asm "\09.weak\09__crc_gspca_coarse_grained_expo_autogain\09\09\09\09"
module asm "\09.long\09__crc_gspca_coarse_grained_expo_autogain\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gspca_coarse_grained_expo_autogain:\09\09\09\09\09"
module asm "\09.asciz \09\22gspca_coarse_grained_expo_autogain\22\09\09\09\09\09"
module asm "__kstrtabns_gspca_coarse_grained_expo_autogain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.gspca_dev = type { %struct.video_device, ptr, %struct.v4l2_device, ptr, ptr, [64 x i8], %struct.cam, ptr, %struct.v4l2_ctrl_handler, %struct.anon.100, ptr, [4 x ptr], ptr, ptr, i32, i8, i8, i8, i8, %struct.v4l2_pix_format, i32, %struct.vb2_queue, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, %struct.mutex, i32, i16, i8, i8, i8, i8, i8, i32, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.cam = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.100 = type { ptr, ptr, ptr, i32, i32 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.95, i32, i32 }
%union.anon.95 = type { i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@gspca_expo_autogain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 36, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s: autogain: lum: %d, desired: %d, steps: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gspca_expo_autogain\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/usb/gspca/autogain_functions.c\00", [51 x i8] zeroinitializer }, align 32
@gspca_expo_autogain._entry_ptr = internal global ptr @gspca_expo_autogain._entry, section ".printk_index", align 4
@gspca_expo_autogain._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: autogain: changed gain: %d, expo: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@gspca_expo_autogain._entry_ptr.5 = internal global ptr @gspca_expo_autogain._entry.3, section ".printk_index", align 4
@__kstrtab_gspca_expo_autogain = external dso_local constant [0 x i8], align 1
@__kstrtabns_gspca_expo_autogain = external dso_local constant [0 x i8], align 1
@__ksymtab_gspca_expo_autogain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gspca_expo_autogain to i32), ptr @__kstrtab_gspca_expo_autogain, ptr @__kstrtabns_gspca_expo_autogain }, section "___ksymtab+gspca_expo_autogain", align 4
@gspca_coarse_grained_expo_autogain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"gspca_coarse_grained_expo_autogain\00", [61 x i8] zeroinitializer }, align 32
@gspca_coarse_grained_expo_autogain._entry_ptr = internal global ptr @gspca_coarse_grained_expo_autogain._entry, section ".printk_index", align 4
@gspca_coarse_grained_expo_autogain._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.6, ptr @.str.2, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@gspca_coarse_grained_expo_autogain._entry_ptr.8 = internal global ptr @gspca_coarse_grained_expo_autogain._entry.7, section ".printk_index", align 4
@__kstrtab_gspca_coarse_grained_expo_autogain = external dso_local constant [0 x i8], align 1
@__kstrtabns_gspca_coarse_grained_expo_autogain = external dso_local constant [0 x i8], align 1
@__ksymtab_gspca_coarse_grained_expo_autogain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gspca_coarse_grained_expo_autogain to i32), ptr @__kstrtab_gspca_coarse_grained_expo_autogain, ptr @__kstrtabns_gspca_coarse_grained_expo_autogain }, section "___ksymtab+gspca_coarse_grained_expo_autogain", align 4
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 35, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 78, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 120, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private constant [48 x i8] c"../drivers/media/usb/gspca/autogain_functions.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 161, i32 3 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab_gspca_coarse_grained_expo_autogain, ptr @__ksymtab_gspca_expo_autogain, ptr @gspca_coarse_grained_expo_autogain._entry, ptr @gspca_coarse_grained_expo_autogain._entry.7, ptr @gspca_coarse_grained_expo_autogain._entry_ptr, ptr @gspca_coarse_grained_expo_autogain._entry_ptr.8, ptr @gspca_expo_autogain._entry, ptr @gspca_expo_autogain._entry.3, ptr @gspca_expo_autogain._entry_ptr, ptr @gspca_expo_autogain._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gspca_expo_autogain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gspca_expo_autogain._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gspca_coarse_grained_expo_autogain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gspca_coarse_grained_expo_autogain._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gspca_expo_autogain(ptr noundef %gspca_dev, i32 noundef %avg_lum, i32 noundef %desired_avg_lum, i32 noundef %deadzone, i32 noundef %gain_knee, i32 noundef %exposure_knee) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %call = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %gain2 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 2
  %3 = ptrtoint ptr %gain2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gain2, align 8
  %call3 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %4) #4
  %exposure4 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 1
  %5 = ptrtoint ptr %exposure4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %exposure4, align 4
  %call5 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %6) #4
  %sub = sub i32 %desired_avg_lum, %avg_lum
  %7 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %div = sdiv i32 %7, %deadzone
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %8 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp8 = icmp sgt i32 %8, 3
  br i1 %cmp8, label %do.end, label %if.end.do.end15_crit_edge

if.end.do.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end15

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %avg_lum, i32 noundef %desired_avg_lum, i32 noundef %div) #7
  br label %do.end15

do.end15:                                         ; preds = %do.end, %if.end.do.end15_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div)
  %cmp16180 = icmp sgt i32 %div, 0
  br i1 %cmp16180, label %for.body.lr.ph, label %do.end15.cleanup_crit_edge

do.end15.cleanup_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end15
  call void @__sanitizer_cov_trace_cmp4(i32 %desired_avg_lum, i32 %avg_lum)
  %cmp17 = icmp slt i32 %desired_avg_lum, %avg_lum
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %gain.0183 = phi i32 [ %call3, %for.body.lr.ph ], [ %gain.1, %for.inc.for.body_crit_edge ]
  %i.0182 = phi i32 [ 0, %for.body.lr.ph ], [ %inc90, %for.inc.for.body_crit_edge ]
  %exposure.0181 = phi i32 [ %call5, %for.body.lr.ph ], [ %exposure.1, %for.inc.for.body_crit_edge ]
  br i1 %cmp17, label %if.then18, label %if.else51

if.then18:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %gain.0183, i32 %gain_knee)
  %cmp19 = icmp sgt i32 %gain.0183, %gain_knee
  br i1 %cmp19, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  %dec = add nsw i32 %gain.0183, -1
  br label %for.inc

if.else:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_cmp4(i32 %exposure.0181, i32 %exposure_knee)
  %cmp21 = icmp sgt i32 %exposure.0181, %exposure_knee
  br i1 %cmp21, label %if.then22, label %if.else24

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %dec23 = add nsw i32 %exposure.0181, -1
  br label %for.inc

if.else24:                                        ; preds = %if.else
  %conv = sext i32 %gain.0183 to i64
  %9 = ptrtoint ptr %gain2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gain2, align 8
  %default_value = getelementptr inbounds %struct.v4l2_ctrl, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %default_value to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %default_value, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %conv)
  %cmp26 = icmp slt i64 %12, %conv
  br i1 %cmp26, label %if.then28, label %if.else30

if.then28:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #6
  %dec29 = add i32 %gain.0183, -1
  br label %for.inc

if.else30:                                        ; preds = %if.else24
  %conv31 = sext i32 %exposure.0181 to i64
  %13 = ptrtoint ptr %exposure4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %exposure4, align 4
  %minimum = getelementptr inbounds %struct.v4l2_ctrl, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %minimum to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %minimum, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %conv31)
  %cmp33 = icmp slt i64 %16, %conv31
  br i1 %cmp33, label %if.then35, label %if.else37

if.then35:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #6
  %dec36 = add i32 %exposure.0181, -1
  br label %for.inc

if.else37:                                        ; preds = %if.else30
  %minimum40 = getelementptr inbounds %struct.v4l2_ctrl, ptr %10, i32 0, i32 11
  %17 = ptrtoint ptr %minimum40 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %minimum40, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %conv)
  %cmp41 = icmp slt i64 %18, %conv
  br i1 %cmp41, label %if.then43, label %if.else37.for.end_crit_edge

if.else37.for.end_crit_edge:                      ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.then43:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #6
  %dec44 = add i32 %gain.0183, -1
  br label %for.inc

if.else51:                                        ; preds = %for.body
  %conv52 = sext i32 %gain.0183 to i64
  %19 = ptrtoint ptr %gain2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gain2, align 8
  %default_value54 = getelementptr inbounds %struct.v4l2_ctrl, ptr %20, i32 0, i32 13
  %21 = ptrtoint ptr %default_value54 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %default_value54, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %conv52)
  %cmp55 = icmp sgt i64 %22, %conv52
  br i1 %cmp55, label %if.then57, label %if.else58

if.then57:                                        ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #6
  %inc = add i32 %gain.0183, 1
  br label %for.inc

if.else58:                                        ; preds = %if.else51
  call void @__sanitizer_cov_trace_cmp4(i32 %exposure.0181, i32 %exposure_knee)
  %cmp59 = icmp slt i32 %exposure.0181, %exposure_knee
  br i1 %cmp59, label %if.then61, label %if.else63

if.then61:                                        ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #6
  %inc62 = add nsw i32 %exposure.0181, 1
  br label %for.inc

if.else63:                                        ; preds = %if.else58
  call void @__sanitizer_cov_trace_cmp4(i32 %gain.0183, i32 %gain_knee)
  %cmp64 = icmp slt i32 %gain.0183, %gain_knee
  br i1 %cmp64, label %if.then66, label %if.else68

if.then66:                                        ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #6
  %inc67 = add nsw i32 %gain.0183, 1
  br label %for.inc

if.else68:                                        ; preds = %if.else63
  %conv69 = sext i32 %exposure.0181 to i64
  %23 = ptrtoint ptr %exposure4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %exposure4, align 4
  %maximum = getelementptr inbounds %struct.v4l2_ctrl, ptr %24, i32 0, i32 12
  %25 = ptrtoint ptr %maximum to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %maximum, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %conv69)
  %cmp71 = icmp sgt i64 %26, %conv69
  br i1 %cmp71, label %if.then73, label %if.else75

if.then73:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #6
  %inc74 = add i32 %exposure.0181, 1
  br label %for.inc

if.else75:                                        ; preds = %if.else68
  %maximum78 = getelementptr inbounds %struct.v4l2_ctrl, ptr %20, i32 0, i32 12
  %27 = ptrtoint ptr %maximum78 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %maximum78, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %conv52)
  %cmp79 = icmp sgt i64 %28, %conv52
  br i1 %cmp79, label %if.then81, label %if.else75.for.end_crit_edge

if.else75.for.end_crit_edge:                      ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.then81:                                        ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #6
  %inc82 = add i32 %gain.0183, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then81, %if.then73, %if.then66, %if.then61, %if.then57, %if.then43, %if.then35, %if.then28, %if.then22, %if.then20
  %exposure.1 = phi i32 [ %exposure.0181, %if.then20 ], [ %dec23, %if.then22 ], [ %exposure.0181, %if.then28 ], [ %dec36, %if.then35 ], [ %exposure.0181, %if.then43 ], [ %exposure.0181, %if.then57 ], [ %inc62, %if.then61 ], [ %exposure.0181, %if.then66 ], [ %inc74, %if.then73 ], [ %exposure.0181, %if.then81 ]
  %gain.1 = phi i32 [ %dec, %if.then20 ], [ %gain.0183, %if.then22 ], [ %dec29, %if.then28 ], [ %gain.0183, %if.then35 ], [ %dec44, %if.then43 ], [ %inc, %if.then57 ], [ %gain.0183, %if.then61 ], [ %inc67, %if.then66 ], [ %gain.0183, %if.then73 ], [ %inc82, %if.then81 ]
  %inc90 = add nuw nsw i32 %i.0182, 1
  %exitcond.not = icmp eq i32 %inc90, %div
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.else75.for.end_crit_edge, %if.else37.for.end_crit_edge
  %exposure.0.lcssa = phi i32 [ %exposure.1, %for.inc.for.end_crit_edge ], [ %exposure.0181, %if.else37.for.end_crit_edge ], [ %exposure.0181, %if.else75.for.end_crit_edge ]
  %gain.0.lcssa = phi i32 [ %gain.1, %for.inc.for.end_crit_edge ], [ %gain.0183, %if.else37.for.end_crit_edge ], [ %gain.0183, %if.else75.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %gain.0.lcssa, i32 %call3)
  %cmp91.not = icmp eq i32 %gain.0.lcssa, %call3
  br i1 %cmp91.not, label %for.end.if.end96_crit_edge, label %if.then93

for.end.if.end96_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end96

if.then93:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %29 = ptrtoint ptr %gain2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gain2, align 8
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %34, i32 noundef 0) #4
  %call.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %30, i32 noundef %gain.0.lcssa) #4
  %35 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %handler.i.i, align 8
  %lock.i2.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %lock.i2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lock.i2.i, align 4
  tail call void @mutex_unlock(ptr noundef %38) #4
  br label %if.end96

if.end96:                                         ; preds = %if.then93, %for.end.if.end96_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %exposure.0.lcssa, i32 %call5)
  %cmp97.not = icmp eq i32 %exposure.0.lcssa, %call5
  br i1 %cmp97.not, label %if.end102, label %if.end102.thread

if.end102.thread:                                 ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #6
  %39 = ptrtoint ptr %exposure4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %exposure4, align 4
  %handler.i.i173 = getelementptr inbounds %struct.v4l2_ctrl, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %handler.i.i173 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %handler.i.i173, align 8
  %lock.i.i174 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %lock.i.i174 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %lock.i.i174, align 4
  tail call void @mutex_lock_nested(ptr noundef %44, i32 noundef 0) #4
  %call.i175 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %40, i32 noundef %exposure.0.lcssa) #4
  %45 = ptrtoint ptr %handler.i.i173 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %handler.i.i173, align 8
  %lock.i2.i176 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %lock.i2.i176 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %lock.i2.i176, align 4
  tail call void @mutex_unlock(ptr noundef %48) #4
  br label %do.body104

if.end102:                                        ; preds = %if.end96
  br i1 %cmp91.not, label %if.end102.cleanup_crit_edge, label %if.end102.do.body104_crit_edge

if.end102.do.body104_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body104

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body104:                                       ; preds = %if.end102.do.body104_crit_edge, %if.end102.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %49 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %49)
  %cmp105 = icmp sgt i32 %49, 3
  br i1 %cmp105, label %do.end110, label %do.body104.cleanup_crit_edge

do.body104.cleanup_crit_edge:                     ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end110:                                        ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #6
  %name113 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name113, i32 noundef %gain.0.lcssa, i32 noundef %exposure.0.lcssa) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end110, %do.body104.cleanup_crit_edge, %if.end102.cleanup_crit_edge, %do.end15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %do.body104.cleanup_crit_edge ], [ 1, %do.end110 ], [ 0, %if.end102.cleanup_crit_edge ], [ 0, %do.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gspca_coarse_grained_expo_autogain(ptr noundef %gspca_dev, i32 noundef %avg_lum, i32 noundef %desired_avg_lum, i32 noundef %deadzone) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %call = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %gain2 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 2
  %3 = ptrtoint ptr %gain2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gain2, align 8
  %call3 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %4) #4
  %exposure4 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 1
  %5 = ptrtoint ptr %exposure4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %exposure4, align 4
  %call5 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %6) #4
  %7 = ptrtoint ptr %gain2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gain2, align 8
  %maximum = getelementptr inbounds %struct.v4l2_ctrl, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %maximum to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %maximum, align 8
  %minimum = getelementptr inbounds %struct.v4l2_ctrl, ptr %8, i32 0, i32 11
  %11 = ptrtoint ptr %minimum to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %minimum, align 8
  %sub = sub i64 %10, %12
  %conv = trunc i64 %sub to i32
  %div = sdiv i32 %conv, 5
  %mul = shl nsw i32 %div, 1
  %13 = trunc i64 %12 to i32
  %conv11 = add i32 %mul, %13
  %mul19 = shl nsw i32 %div, 2
  %conv24 = add i32 %mul19, %13
  %sub25 = sub i32 %desired_avg_lum, %avg_lum
  %div26 = sdiv i32 %sub25, %deadzone
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %14 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp27 = icmp sgt i32 %14, 3
  br i1 %cmp27, label %do.end, label %if.end.do.end34_crit_edge

if.end.do.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end34

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %avg_lum, i32 noundef %desired_avg_lum, i32 noundef %div26) #7
  br label %do.end34

do.end34:                                         ; preds = %do.end, %if.end.do.end34_crit_edge
  %add35 = add i32 %div26, %call3
  call void @__sanitizer_cov_trace_cmp4(i32 %add35, i32 %conv24)
  %cmp36 = icmp sgt i32 %add35, %conv24
  br i1 %cmp36, label %land.lhs.true, label %do.end34.if.else_crit_edge

do.end34.if.else_crit_edge:                       ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %do.end34
  %conv38 = sext i32 %call5 to i64
  %15 = ptrtoint ptr %exposure4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %exposure4, align 4
  %maximum40 = getelementptr inbounds %struct.v4l2_ctrl, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %maximum40 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %maximum40, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %conv38)
  %cmp41 = icmp sgt i64 %18, %conv38
  br i1 %cmp41, label %if.then43, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then43:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %exp_too_low_cnt = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 3
  %19 = ptrtoint ptr %exp_too_low_cnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %exp_too_low_cnt, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %exp_too_low_cnt, align 4
  %exp_too_high_cnt = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 4
  %21 = ptrtoint ptr %exp_too_high_cnt to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %exp_too_high_cnt, align 8
  br label %if.end83

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end34.if.else_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %add35, i32 %conv11)
  %cmp45 = icmp slt i32 %add35, %conv11
  br i1 %cmp45, label %land.lhs.true47, label %if.else.if.else57_crit_edge

if.else.if.else57_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else57

land.lhs.true47:                                  ; preds = %if.else
  %conv48 = sext i32 %call5 to i64
  %22 = ptrtoint ptr %exposure4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %exposure4, align 4
  %minimum50 = getelementptr inbounds %struct.v4l2_ctrl, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %minimum50 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %minimum50, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %conv48)
  %cmp51 = icmp slt i64 %25, %conv48
  br i1 %cmp51, label %if.then53, label %land.lhs.true47.if.else57_crit_edge

land.lhs.true47.if.else57_crit_edge:              ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else57

if.then53:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #6
  %exp_too_high_cnt54 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 4
  %26 = ptrtoint ptr %exp_too_high_cnt54 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %exp_too_high_cnt54, align 8
  %inc55 = add i32 %27, 1
  store i32 %inc55, ptr %exp_too_high_cnt54, align 8
  %exp_too_low_cnt56 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 3
  %28 = ptrtoint ptr %exp_too_low_cnt56 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %exp_too_low_cnt56, align 4
  br label %if.end83

if.else57:                                        ; preds = %land.lhs.true47.if.else57_crit_edge, %if.else.if.else57_crit_edge
  %conv59 = sext i32 %add35 to i64
  %29 = ptrtoint ptr %gain2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gain2, align 8
  %maximum61 = getelementptr inbounds %struct.v4l2_ctrl, ptr %30, i32 0, i32 12
  %31 = ptrtoint ptr %maximum61 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %maximum61, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %conv59)
  %cmp62 = icmp slt i64 %32, %conv59
  br i1 %cmp62, label %if.then64, label %if.else68

if.then64:                                        ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #6
  %conv67 = trunc i64 %32 to i32
  br label %if.end79

if.else68:                                        ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #6
  %minimum71 = getelementptr inbounds %struct.v4l2_ctrl, ptr %30, i32 0, i32 11
  %33 = ptrtoint ptr %minimum71 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %minimum71, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %conv59)
  %cmp72 = icmp sgt i64 %34, %conv59
  %conv77 = trunc i64 %34 to i32
  %spec.select = select i1 %cmp72, i32 %conv77, i32 %add35
  br label %if.end79

if.end79:                                         ; preds = %if.else68, %if.then64
  %gain.0 = phi i32 [ %conv67, %if.then64 ], [ %spec.select, %if.else68 ]
  %exp_too_high_cnt80 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 4
  %35 = ptrtoint ptr %exp_too_high_cnt80 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %exp_too_high_cnt80, align 8
  %exp_too_low_cnt81 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 3
  %36 = ptrtoint ptr %exp_too_low_cnt81 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %exp_too_low_cnt81, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.end79, %if.then53, %if.then43
  %gain.1 = phi i32 [ %conv24, %if.then43 ], [ %conv11, %if.then53 ], [ %gain.0, %if.end79 ]
  %exp_too_high_cnt84 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 4
  %37 = ptrtoint ptr %exp_too_high_cnt84 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %exp_too_high_cnt84, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %38)
  %cmp85 = icmp sgt i32 %38, 3
  br i1 %cmp85, label %if.then87, label %if.else89

if.then87:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #6
  %dec = add i32 %call5, -1
  %39 = ptrtoint ptr %exp_too_high_cnt84 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %exp_too_high_cnt84, align 8
  br label %if.end97

if.else89:                                        ; preds = %if.end83
  %exp_too_low_cnt90 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 3
  %40 = ptrtoint ptr %exp_too_low_cnt90 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %exp_too_low_cnt90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %41)
  %cmp91 = icmp sgt i32 %41, 3
  br i1 %cmp91, label %if.then93, label %if.else89.if.end97_crit_edge

if.else89.if.end97_crit_edge:                     ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end97

if.then93:                                        ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #6
  %inc94 = add i32 %call5, 1
  %42 = ptrtoint ptr %exp_too_low_cnt90 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %exp_too_low_cnt90, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then93, %if.else89.if.end97_crit_edge, %if.then87
  %exposure.0 = phi i32 [ %dec, %if.then87 ], [ %inc94, %if.then93 ], [ %call5, %if.else89.if.end97_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %gain.1, i32 %call3)
  %cmp98.not = icmp eq i32 %gain.1, %call3
  br i1 %cmp98.not, label %if.end103, label %if.end103.thread

if.end103:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_cmp4(i32 %exposure.0, i32 %call5)
  %cmp104.not = icmp eq i32 %exposure.0, %call5
  br i1 %cmp104.not, label %if.end103.cleanup_crit_edge, label %if.end103.if.end109.thread_crit_edge

if.end103.if.end109.thread_crit_edge:             ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end109.thread

if.end103.cleanup_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end103.thread:                                 ; preds = %if.end97
  %43 = ptrtoint ptr %gain2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %gain2, align 8
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %48, i32 noundef 0) #4
  %call.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %44, i32 noundef %gain.1) #4
  %49 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %handler.i.i, align 8
  %lock.i2.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %lock.i2.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %lock.i2.i, align 4
  tail call void @mutex_unlock(ptr noundef %52) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %exposure.0, i32 %call5)
  %cmp104.not193 = icmp eq i32 %exposure.0, %call5
  br i1 %cmp104.not193, label %if.end103.thread.do.body111_crit_edge, label %if.end103.thread.if.end109.thread_crit_edge

if.end103.thread.if.end109.thread_crit_edge:      ; preds = %if.end103.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end109.thread

if.end103.thread.do.body111_crit_edge:            ; preds = %if.end103.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body111

if.end109.thread:                                 ; preds = %if.end103.thread.if.end109.thread_crit_edge, %if.end103.if.end109.thread_crit_edge
  %53 = ptrtoint ptr %exposure4 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %exposure4, align 4
  %handler.i.i186 = getelementptr inbounds %struct.v4l2_ctrl, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %handler.i.i186 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %handler.i.i186, align 8
  %lock.i.i187 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %lock.i.i187 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %lock.i.i187, align 4
  tail call void @mutex_lock_nested(ptr noundef %58, i32 noundef 0) #4
  %call.i188 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %54, i32 noundef %exposure.0) #4
  %59 = ptrtoint ptr %handler.i.i186 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %handler.i.i186, align 8
  %lock.i2.i189 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %lock.i2.i189 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %lock.i2.i189, align 4
  tail call void @mutex_unlock(ptr noundef %62) #4
  br label %do.body111

do.body111:                                       ; preds = %if.end109.thread, %if.end103.thread.do.body111_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %63 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %63)
  %cmp112 = icmp sgt i32 %63, 3
  br i1 %cmp112, label %do.end117, label %do.body111.cleanup_crit_edge

do.body111.cleanup_crit_edge:                     ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end117:                                        ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #6
  %name120 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name120, i32 noundef %gain.1, i32 noundef %exposure.0) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end117, %do.body111.cleanup_crit_edge, %if.end103.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %do.body111.cleanup_crit_edge ], [ 1, %do.end117 ], [ 0, %if.end103.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !15, !16, !18, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/autogain_functions.c", i32 35, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @gspca_expo_autogain._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @gspca_expo_autogain._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/gspca/autogain_functions.c", i32 78, i32 3}
!8 = !{ptr @gspca_expo_autogain._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @gspca_expo_autogain._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__ksymtab_gspca_expo_autogain, !11, !"__ksymtab_gspca_expo_autogain", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/gspca/autogain_functions.c", i32 82, i32 1}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/gspca/autogain_functions.c", i32 120, i32 2}
!14 = !{ptr @gspca_coarse_grained_expo_autogain._entry, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @gspca_coarse_grained_expo_autogain._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @gspca_coarse_grained_expo_autogain._entry.7, !17, !"_entry", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/gspca/autogain_functions.c", i32 161, i32 3}
!18 = !{ptr @gspca_coarse_grained_expo_autogain._entry_ptr.8, !17, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @__ksymtab_gspca_coarse_grained_expo_autogain, !20, !"__ksymtab_gspca_coarse_grained_expo_autogain", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/gspca/autogain_functions.c", i32 165, i32 1}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
