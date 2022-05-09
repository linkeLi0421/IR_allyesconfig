; ModuleID = '/llk/IR_all_yes/sound/usb/line6/capture.c_pt.bc'
source_filename = "../sound/usb/line6/capture.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_line6 = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.anon.68, %struct.delayed_work, ptr, ptr, ptr }
%struct.anon.68 = type { %struct.mutex, %struct.wait_queue_head, i8, %struct.anon.69 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.69 = type { %union.anon.70, [8192 x i8] }
%union.anon.70 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_line6_pcm = type { ptr, ptr, ptr, %struct.mutex, %struct.line6_pcm_stream, %struct.line6_pcm_stream, ptr, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32 }
%struct.line6_pcm_stream = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.spinlock, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.line6_pcm_properties = type { %struct.snd_pcm_hardware, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraint_ratdens, i32 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraint_ratdens = type { i32, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.line6_properties = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }

@line6_capture_copy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 115, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"driver bug: len = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"line6_capture_copy\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/usb/line6/capture.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@line6_capture_copy._entry_ptr = internal global ptr @line6_capture_copy._entry, section ".printk_index", align 4
@snd_line6_capture_ops = dso_local constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_line6_capture_open, ptr @snd_line6_capture_close, ptr null, ptr @snd_line6_hw_params, ptr @snd_line6_hw_free, ptr @snd_line6_prepare, ptr @snd_line6_trigger, ptr null, ptr @snd_line6_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@submit_audio_in_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 32, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no free URB found\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"submit_audio_in_urb\00", [44 x i8] zeroinitializer }, align 32
@submit_audio_in_urb._entry_ptr = internal global ptr @submit_audio_in_urb._entry, section ".printk_index", align 4
@submit_audio_in_urb._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 59, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"URB in #%d submission failed (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@submit_audio_in_urb._entry_ptr.9 = internal global ptr @submit_audio_in_urb._entry.7, section ".printk_index", align 4
@audio_in_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 177, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"driver and/or device bug: packet too large (%d > %d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"audio_in_callback\00", [46 x i8] zeroinitializer }, align 32
@audio_in_callback._entry_ptr = internal global ptr @audio_in_callback._entry, section ".printk_index", align 4
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 114, i32 4 }
@___asan_gen_.30 = private unnamed_addr constant [22 x i8] c"snd_line6_capture_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 247, i32 26 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 32, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 58, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [29 x i8] c"../sound/usb/line6/capture.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 175, i32 4 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @audio_in_callback._entry, ptr @audio_in_callback._entry_ptr, ptr @line6_capture_copy._entry, ptr @line6_capture_copy._entry_ptr, ptr @submit_audio_in_urb._entry, ptr @submit_audio_in_urb._entry.7, ptr @submit_audio_in_urb._entry_ptr, ptr @submit_audio_in_urb._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @snd_line6_capture_ops, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @line6_capture_copy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_line6_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_audio_in_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_audio_in_urb._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_in_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @line6_submit_audio_in_all_urbs(ptr noundef %line6pcm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %line6pcm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %line6pcm, align 4
  %iso_buffers5 = getelementptr inbounds %struct.usb_line6, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %iso_buffers5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iso_buffers5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6 = icmp sgt i32 %3, 0
  br i1 %cmp6, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.07, 1
  %4 = ptrtoint ptr %line6pcm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %line6pcm, align 4
  %iso_buffers = getelementptr inbounds %struct.usb_line6, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %iso_buffers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iso_buffers, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call fastcc i32 @submit_audio_in_urb(ptr noundef %line6pcm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %for.body.for.end_crit_edge, label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.1 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %call, %for.body.for.end_crit_edge ], [ %call, %for.cond.for.end_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @submit_audio_in_urb(ptr noundef %line6pcm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %in = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 4
  %active_urbs = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %line6pcm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %line6pcm, align 4
  %iso_buffers = getelementptr inbounds %struct.usb_line6, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %iso_buffers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iso_buffers, align 4
  %call = tail call i32 @_find_first_zero_bit_be(ptr noundef %active_urbs, i32 noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %line6pcm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %line6pcm, align 4
  %iso_buffers2 = getelementptr inbounds %struct.usb_line6, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %iso_buffers2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iso_buffers2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %7)
  %cmp3.not = icmp slt i32 %call, %7
  br i1 %cmp3.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %8 = ptrtoint ptr %line6pcm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %line6pcm, align 4
  %ifcdev = getelementptr inbounds %struct.usb_line6, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %ifcdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ifcdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.5) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %in, align 4
  %arrayidx = getelementptr ptr, ptr %13, i32 %call
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %iso_frame_desc = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 29
  %max_packet_size_in = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 8
  %length = getelementptr inbounds %struct.urb, ptr %15, i32 1, i32 1
  %16 = ptrtoint ptr %iso_frame_desc to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %iso_frame_desc, align 4
  %17 = ptrtoint ptr %max_packet_size_in to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_packet_size_in, align 4
  %19 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %length, align 4
  %20 = load i32, ptr %max_packet_size_in, align 4
  %buffer = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buffer, align 4
  %mul11 = mul i32 %20, %call
  %add.ptr = getelementptr i8, ptr %22, i32 %mul11
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 14
  %23 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr, ptr %transfer_buffer, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 19
  %24 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %20, ptr %transfer_buffer_length, align 4
  %context = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 27
  %25 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %line6pcm, ptr %context, align 4
  %call12 = tail call i32 @usb_submit_urb(ptr noundef %15, i32 noundef 2592) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %do.end19

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_set_bit(i32 noundef %call, ptr noundef %active_urbs) #5
  br label %cleanup

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %line6pcm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %line6pcm, align 4
  %ifcdev21 = getelementptr inbounds %struct.usb_line6, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %ifcdev21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ifcdev21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.8, i32 noundef %call, i32 noundef %call12) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %if.then14, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end19 ], [ 0, %if.then14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @line6_capture_copy(ptr nocapture noundef %line6pcm, ptr nocapture noundef readonly %fbuf, i32 noundef %fsize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 2
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm, align 4
  %substream1 = getelementptr %struct.snd_pcm, ptr %1, i32 0, i32 8, i32 1, i32 4
  %2 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substream1, align 8
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime2, align 4
  %properties = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 1
  %6 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %properties, align 4
  %bytes_per_channel = getelementptr inbounds %struct.line6_pcm_properties, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %bytes_per_channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bytes_per_channel, align 8
  %channels_max = getelementptr inbounds %struct.line6_pcm_properties, ptr %7, i32 0, i32 1, i32 6
  %10 = ptrtoint ptr %channels_max to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channels_max, align 8
  %mul = mul i32 %11, %9
  %div = sdiv i32 %fsize, %mul
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %pos_done = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 4, i32 6
  %12 = ptrtoint ptr %pos_done to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pos_done, align 4
  %add = add i32 %13, %div
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 18
  %14 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %15)
  %cmp4 = icmp ugt i32 %add, %15
  br i1 %cmp4, label %if.then5, label %if.else21

if.then5:                                         ; preds = %if.end
  %sub = sub i32 %15, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp9 = icmp sgt i32 %sub, 0
  br i1 %cmp9, label %if.then10, label %do.end

if.then10:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 50
  %16 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma_area, align 4
  %mul13 = mul i32 %13, %mul
  %add.ptr = getelementptr i8, ptr %17, i32 %mul13
  %mul14 = mul i32 %sub, %mul
  %18 = call ptr @memcpy(ptr %add.ptr, ptr %fbuf, i32 %mul14)
  %19 = load ptr, ptr %dma_area, align 4
  %add.ptr17 = getelementptr i8, ptr %fbuf, i32 %mul14
  %sub18 = sub i32 %div, %sub
  %mul19 = mul i32 %sub18, %mul
  %20 = call ptr @memcpy(ptr %19, ptr %add.ptr17, i32 %mul19)
  br label %if.end27

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %line6pcm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %line6pcm, align 4
  %ifcdev = getelementptr inbounds %struct.usb_line6, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %ifcdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ifcdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str, i32 noundef %sub) #8
  br label %if.end27

if.else21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dma_area22 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 50
  %25 = ptrtoint ptr %dma_area22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dma_area22, align 4
  %mul25 = mul i32 %13, %mul
  %add.ptr26 = getelementptr i8, ptr %26, i32 %mul25
  %27 = call ptr @memcpy(ptr %add.ptr26, ptr %fbuf, i32 %fsize)
  br label %if.end27

if.end27:                                         ; preds = %if.else21, %do.end, %if.then10
  %28 = ptrtoint ptr %pos_done to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pos_done, align 4
  %add30 = add i32 %29, %div
  store i32 %add30, ptr %pos_done, align 4
  %30 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add30, i32 %31)
  %cmp34.not = icmp ult i32 %add30, %31
  br i1 %cmp34.not, label %if.end27.cleanup_crit_edge, label %if.then35

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then35:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %sub39 = sub i32 %add30, %31
  %32 = ptrtoint ptr %pos_done to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub39, ptr %pos_done, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end27.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @line6_capture_check_period(ptr noundef %line6pcm, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 2
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm, align 4
  %substream1 = getelementptr %struct.snd_pcm, ptr %1, i32 0, i32 8, i32 1, i32 4
  %2 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substream1, align 8
  %bytes = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bytes, align 4
  %add = add i32 %5, %length
  store i32 %add, ptr %bytes, align 4
  %period = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 4, i32 5
  %6 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %period, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %7)
  %cmp.not = icmp ult i32 %add, %7
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rem = urem i32 %add, %7
  %8 = ptrtoint ptr %bytes to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %rem, ptr %bytes, align 4
  %lock = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 4, i32 9
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  tail call void @snd_pcm_period_elapsed(ptr noundef %3) #5
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_line6_capture_open(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %properties = getelementptr inbounds %struct.snd_line6_pcm, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %properties, align 4
  %rates = getelementptr inbounds %struct.line6_pcm_properties, ptr %5, i32 0, i32 2
  %call = tail call i32 @snd_pcm_hw_constraint_ratdens(ptr noundef %1, i32 noundef 0, i32 noundef 11, ptr noundef %rates) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @line6_pcm_acquire(ptr noundef %3, i32 noundef 3, i1 noundef zeroext false) #5
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46
  %6 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %properties, align 4
  %capture_hw = getelementptr inbounds %struct.line6_pcm_properties, ptr %7, i32 0, i32 1
  %8 = call ptr @memcpy(ptr %hw, ptr %capture_hw, i32 64)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_line6_capture_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @line6_pcm_release(ptr noundef %1, i32 noundef 3) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_line6_hw_params(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_line6_hw_free(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_line6_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_line6_trigger(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_line6_pointer(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @line6_create_audio_in_urbs(ptr nocapture noundef %line6pcm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %line6pcm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %line6pcm, align 4
  %iso_buffers = getelementptr inbounds %struct.usb_line6, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %iso_buffers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iso_buffers, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4) #5
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !33

kcalloc.exit.thread:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %in39 = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 4
  %6 = ptrtoint ptr %in39 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %in39, align 4
  br label %cleanup18

if.end7.i.i:                                      ; preds = %entry
  %7 = extractvalue { i32, i1 } %4, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #9
  %in = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 4
  %8 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8.i.i, ptr %in, align 4
  %cmp = icmp eq ptr %call8.i.i, null
  br i1 %cmp, label %if.end7.i.i.cleanup18_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup18_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup18

for.cond.preheader:                               ; preds = %if.end7.i.i
  %9 = ptrtoint ptr %iso_buffers to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iso_buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp543 = icmp sgt i32 %10, 0
  br i1 %cmp543, label %for.body.lr.ph, label %for.cond.preheader.cleanup18_crit_edge

for.cond.preheader.cleanup18_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup18

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %properties = getelementptr inbounds %struct.usb_line6, ptr %1, i32 0, i32 1
  br label %for.body

for.cond:                                         ; preds = %cleanup
  %inc = add nuw nsw i32 %i.044, 1
  %11 = ptrtoint ptr %iso_buffers to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iso_buffers, align 4
  %cmp5 = icmp slt i32 %inc, %12
  br i1 %cmp5, label %for.cond.for.body_crit_edge, label %for.cond.cleanup18_crit_edge

for.cond.cleanup18_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup18

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %call6 = tail call ptr @usb_alloc_urb(i32 noundef 1, i32 noundef 3264) #5
  %13 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %in, align 4
  %arrayidx = getelementptr ptr, ptr %14, i32 %i.044
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call6, ptr %arrayidx, align 4
  %cmp9 = icmp eq ptr %call6, null
  br i1 %cmp9, label %for.body.cleanup18_crit_edge, label %cleanup

for.body.cleanup18_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup18

cleanup:                                          ; preds = %for.body
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 8
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %dev, align 4
  %19 = load ptr, ptr %1, align 4
  %20 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %properties, align 4
  %ep_audio_r = getelementptr inbounds %struct.line6_properties, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %ep_audio_r to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ep_audio_r, align 4
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %19, align 8
  %shl.i = shl i32 %25, 8
  %and = shl i32 %23, 15
  %shl1.i = and i32 %and, 491520
  %or.i = or i32 %shl1.i, %shl.i
  %or14 = or i32 %or.i, 128
  %pipe = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 10
  %26 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or14, ptr %pipe, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 13
  %27 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %transfer_flags, align 4
  %start_frame = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 23
  %28 = ptrtoint ptr %start_frame to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %start_frame, align 4
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 24
  %29 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %number_of_packets, align 4
  %interval = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 25
  %30 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %interval, align 4
  %error_count = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 26
  %31 = ptrtoint ptr %error_count to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %error_count, align 4
  %complete = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 28
  %32 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @audio_in_callback, ptr %complete, align 4
  %call15 = tail call i32 @usb_urb_ep_type_check(ptr noundef nonnull %call6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %for.cond, label %cleanup.cleanup18_crit_edge

cleanup.cleanup18_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup18

cleanup18:                                        ; preds = %cleanup.cleanup18_crit_edge, %for.body.cleanup18_crit_edge, %for.cond.cleanup18_crit_edge, %for.cond.preheader.cleanup18_crit_edge, %if.end7.i.i.cleanup18_crit_edge, %kcalloc.exit.thread
  %retval.2 = phi i32 [ -12, %if.end7.i.i.cleanup18_crit_edge ], [ -12, %kcalloc.exit.thread ], [ 0, %for.cond.preheader.cleanup18_crit_edge ], [ -22, %cleanup.cleanup18_crit_edge ], [ 0, %for.cond.cleanup18_crit_edge ], [ -12, %for.body.cleanup18_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @audio_in_callback(ptr noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %start_frame = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 23
  %2 = ptrtoint ptr %start_frame to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_frame, align 4
  %last_frame = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 4, i32 12
  %4 = ptrtoint ptr %last_frame to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %last_frame, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %iso_buffers = getelementptr inbounds %struct.usb_line6, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %iso_buffers to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iso_buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp123 = icmp sgt i32 %8, 0
  br i1 %cmp123, label %for.body.lr.ph, label %entry.do.body3_crit_edge

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3

for.body.lr.ph:                                   ; preds = %entry
  %in = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %in, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %index.0124 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %10, i32 %index.0124
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %cmp2 = icmp eq ptr %12, %urb
  br i1 %cmp2, label %for.body.do.body3_crit_edge, label %for.inc

for.body.do.body3_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %index.0124, 1
  %exitcond.not = icmp eq i32 %inc, %8
  br i1 %exitcond.not, label %for.inc.do.body3_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.do.body3_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3

do.body3:                                         ; preds = %for.inc.do.body3_crit_edge, %for.body.do.body3_crit_edge, %entry.do.body3_crit_edge
  %index.0.lcssa = phi i32 [ 0, %entry.do.body3_crit_edge ], [ %index.0124, %for.body.do.body3_crit_edge ], [ %8, %for.inc.do.body3_crit_edge ]
  %lock = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 4, i32 9
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 1, i32 3
  %prev_fbuf = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 6
  %properties = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 1
  %prev_fsize = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 7
  %running = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 4, i32 11
  %pcm.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 2
  %pos_done.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 4, i32 6
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -18, i32 %14)
  %cmp14 = icmp eq i32 %14, -18
  br i1 %cmp14, label %do.body3.for.end46_crit_edge, label %if.end17

do.body3.for.end46_crit_edge:                     ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end46

if.end17:                                         ; preds = %do.body3
  %max_packet_size_in = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 8
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 1, i32 2
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %iso_frame_desc = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 29
  %15 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %transfer_buffer, align 4
  %17 = ptrtoint ptr %iso_frame_desc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iso_frame_desc, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 %18
  %19 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %actual_length, align 4
  %21 = ptrtoint ptr %max_packet_size_in to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_packet_size_in, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp18 = icmp sgt i32 %20, %22
  br i1 %cmp18, label %do.end23, label %if.end17.if.end26_crit_edge

if.end17.if.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %ifcdev = getelementptr inbounds %struct.usb_line6, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %ifcdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ifcdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.10, i32 noundef %20, i32 noundef %22) #8
  br label %if.end26

if.end26:                                         ; preds = %do.end23, %if.end17.if.end26_crit_edge
  %27 = ptrtoint ptr %prev_fbuf to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr, ptr %prev_fbuf, align 4
  %28 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %properties, align 4
  %bytes_per_channel = getelementptr inbounds %struct.line6_pcm_properties, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %bytes_per_channel to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bytes_per_channel, align 8
  %channels_max = getelementptr inbounds %struct.line6_pcm_properties, ptr %29, i32 0, i32 1, i32 6
  %32 = ptrtoint ptr %channels_max to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %channels_max, align 8
  %mul = mul i32 %33, %31
  %div = udiv i32 %20, %mul
  %34 = ptrtoint ptr %prev_fsize to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %div, ptr %prev_fsize, align 4
  %35 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %running, align 4
  %37 = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not = icmp eq i32 %37, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end26.for.end46_crit_edge

if.end26.for.end46_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end46

land.lhs.true:                                    ; preds = %if.end26
  %38 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %running, align 4
  %and1.i110 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i110)
  %tobool36.not = icmp ne i32 %and1.i110, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp38 = icmp sgt i32 %20, 0
  %or.cond = select i1 %tobool36.not, i1 %cmp38, i1 false
  br i1 %or.cond, label %if.then40, label %land.lhs.true.for.end46_crit_edge

land.lhs.true.for.end46_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end46

if.then40:                                        ; preds = %land.lhs.true
  %40 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pcm.i, align 4
  %substream1.i = getelementptr %struct.snd_pcm, ptr %41, i32 0, i32 8, i32 1, i32 4
  %42 = ptrtoint ptr %substream1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %substream1.i, align 8
  %runtime2.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %43, i32 0, i32 11
  %44 = ptrtoint ptr %runtime2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %runtime2.i, align 4
  %46 = ptrtoint ptr %bytes_per_channel to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bytes_per_channel, align 8
  %48 = ptrtoint ptr %channels_max to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %channels_max, align 8
  %mul.i = mul i32 %49, %47
  %div.i = sdiv i32 %20, %mul.i
  %cmp.i = icmp eq ptr %45, null
  br i1 %cmp.i, label %if.then40.for.end46_crit_edge, label %if.end.i

if.then40.for.end46_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end46

if.end.i:                                         ; preds = %if.then40
  %50 = ptrtoint ptr %pos_done.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pos_done.i, align 4
  %add.i = add i32 %51, %div.i
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %45, i32 0, i32 18
  %52 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %53)
  %cmp4.i = icmp ugt i32 %add.i, %53
  br i1 %cmp4.i, label %if.then5.i, label %if.else21.i

if.then5.i:                                       ; preds = %if.end.i
  %sub.i = sub i32 %53, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp9.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp9.i, label %if.then10.i, label %do.end.i

if.then10.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  %dma_area.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %45, i32 0, i32 50
  %54 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dma_area.i, align 4
  %mul13.i = mul i32 %51, %mul.i
  %add.ptr.i = getelementptr i8, ptr %55, i32 %mul13.i
  %mul14.i = mul i32 %sub.i, %mul.i
  %56 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr, i32 %mul14.i)
  %57 = load ptr, ptr %dma_area.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %add.ptr, i32 %mul14.i
  %sub18.i = sub i32 %div.i, %sub.i
  %mul19.i = mul i32 %sub18.i, %mul.i
  %58 = call ptr @memcpy(ptr %57, ptr %add.ptr17.i, i32 %mul19.i)
  br label %if.end27.i

do.end.i:                                         ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  %ifcdev.i = getelementptr inbounds %struct.usb_line6, ptr %60, i32 0, i32 6
  %61 = ptrtoint ptr %ifcdev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ifcdev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str, i32 noundef %sub.i) #8
  br label %if.end27.i

if.else21.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dma_area22.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %45, i32 0, i32 50
  %63 = ptrtoint ptr %dma_area22.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dma_area22.i, align 4
  %mul25.i = mul i32 %51, %mul.i
  %add.ptr26.i = getelementptr i8, ptr %64, i32 %mul25.i
  %65 = call ptr @memcpy(ptr %add.ptr26.i, ptr %add.ptr, i32 %20)
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.else21.i, %do.end.i, %if.then10.i
  %66 = ptrtoint ptr %pos_done.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pos_done.i, align 4
  %add30.i = add i32 %67, %div.i
  store i32 %add30.i, ptr %pos_done.i, align 4
  %68 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add30.i, i32 %69)
  %cmp34.not.i = icmp ult i32 %add30.i, %69
  br i1 %cmp34.not.i, label %if.end27.i.for.end46_crit_edge, label %if.then35.i

if.end27.i.for.end46_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end46

if.then35.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub39.i = sub i32 %add30.i, %69
  %70 = ptrtoint ptr %pos_done.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %sub39.i, ptr %pos_done.i, align 4
  br label %for.end46

for.end46:                                        ; preds = %if.then35.i, %if.end27.i.for.end46_crit_edge, %if.then40.for.end46_crit_edge, %land.lhs.true.for.end46_crit_edge, %if.end26.for.end46_crit_edge, %do.body3.for.end46_crit_edge
  %length.0.lcssa = phi i32 [ 0, %do.body3.for.end46_crit_edge ], [ %20, %if.then35.i ], [ %20, %if.end27.i.for.end46_crit_edge ], [ %20, %if.then40.for.end46_crit_edge ], [ %20, %if.end26.for.end46_crit_edge ], [ %20, %land.lhs.true.for.end46_crit_edge ]
  %active_urbs = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 4, i32 7
  tail call void @_clear_bit(i32 noundef %index.0.lcssa, ptr noundef %active_urbs) #5
  %unlink_urbs = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 4, i32 8
  %call49 = tail call i32 @_test_and_clear_bit(i32 noundef %index.0.lcssa, ptr noundef %unlink_urbs) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp ne i32 %call49, 0
  %71 = or i1 %cmp14, %tobool50.not
  br i1 %71, label %for.end46.if.end67_crit_edge, label %if.then54

for.end46.if.end67_crit_edge:                     ; preds = %for.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

if.then54:                                        ; preds = %for.end46
  %call55 = tail call fastcc i32 @submit_audio_in_urb(ptr noundef %1)
  %72 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %running, align 4
  %74 = and i32 %73, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool59.not = icmp eq i32 %74, 0
  br i1 %tobool59.not, label %land.lhs.true60, label %if.then54.if.end67_crit_edge

if.then54.if.end67_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

land.lhs.true60:                                  ; preds = %if.then54
  %75 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %running, align 4
  %and1.i113 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i113)
  %tobool64.not = icmp eq i32 %and1.i113, 0
  br i1 %tobool64.not, label %land.lhs.true60.if.end67_crit_edge, label %if.then65

land.lhs.true60.if.end67_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

if.then65:                                        ; preds = %land.lhs.true60
  %77 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pcm.i, align 4
  %substream1.i115 = getelementptr %struct.snd_pcm, ptr %78, i32 0, i32 8, i32 1, i32 4
  %79 = ptrtoint ptr %substream1.i115 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %substream1.i115, align 8
  %bytes.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 4, i32 3
  %81 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %bytes.i, align 4
  %add.i116 = add i32 %82, %length.0.lcssa
  store i32 %add.i116, ptr %bytes.i, align 4
  %period.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 4, i32 5
  %83 = ptrtoint ptr %period.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %period.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i116, i32 %84)
  %cmp.not.i = icmp ult i32 %add.i116, %84
  br i1 %cmp.not.i, label %if.then65.if.end67_crit_edge, label %if.then.i

if.then65.if.end67_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

if.then.i:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #7
  %rem.i = urem i32 %add.i116, %84
  %85 = ptrtoint ptr %bytes.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %rem.i, ptr %bytes.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  tail call void @snd_pcm_period_elapsed(ptr noundef %80) #5
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  br label %if.end67

if.end67:                                         ; preds = %if.then.i, %if.then65.if.end67_crit_edge, %land.lhs.true60.if.end67_crit_edge, %if.then54.if.end67_crit_edge, %for.end46.if.end67_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_urb_ep_type_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_ratdens(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @line6_pcm_acquire(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @line6_pcm_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/usb/line6/capture.c", i32 114, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @line6_capture_copy._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @line6_capture_copy._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @snd_line6_capture_ops, !9, !"snd_line6_capture_ops", i1 false, i1 false}
!9 = !{!"../sound/usb/line6/capture.c", i32 247, i32 26}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/usb/line6/capture.c", i32 32, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @submit_audio_in_urb._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @submit_audio_in_urb._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/usb/line6/capture.c", i32 58, i32 3}
!17 = !{ptr @submit_audio_in_urb._entry.7, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @submit_audio_in_urb._entry_ptr.9, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/usb/line6/capture.c", i32 175, i32 4}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @audio_in_callback._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @audio_in_callback._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"branch_weights", i32 1, i32 2000}
