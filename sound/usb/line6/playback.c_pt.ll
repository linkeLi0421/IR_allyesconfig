; ModuleID = '/llk/IR_all_yes/sound/usb/line6/playback.c_pt.bc'
source_filename = "../sound/usb/line6/playback.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.line6_pcm_properties = type { %struct.snd_pcm_hardware, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraint_ratdens, i32 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraint_ratdens = type { i32, ptr }
%struct.snd_ratden = type { i32, i32, i32, i32 }
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

@snd_line6_playback_ops = dso_local constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_line6_playback_open, ptr @snd_line6_playback_close, ptr null, ptr @snd_line6_hw_params, ptr @snd_line6_hw_free, ptr @snd_line6_prepare, ptr @snd_line6_trigger, ptr null, ptr @snd_line6_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@submit_audio_out_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 159, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no free URB found\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"submit_audio_out_urb\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/usb/line6/playback.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@submit_audio_out_urb._entry_ptr = internal global ptr @submit_audio_out_urb._entry, section ".printk_index", align 4
@submit_audio_out_urb._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 192, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"driver bug: urb_size = 0\0A\00", [38 x i8] zeroinitializer }, align 32
@submit_audio_out_urb._entry_ptr.7 = internal global ptr @submit_audio_out_urb._entry.5, section ".printk_index", align 4
@submit_audio_out_urb._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 227, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"driver bug: len = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@submit_audio_out_urb._entry_ptr.10 = internal global ptr @submit_audio_out_urb._entry.8, section ".printk_index", align 4
@submit_audio_out_urb._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 277, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"URB out #%d submission failed (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@submit_audio_out_urb._entry_ptr.13 = internal global ptr @submit_audio_out_urb._entry.11, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@___asan_gen_.15 = private unnamed_addr constant [23 x i8] c"snd_line6_playback_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 392, i32 26 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 159, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 192, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 226, i32 5 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [30 x i8] c"../sound/usb/line6/playback.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 276, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @submit_audio_out_urb._entry, ptr @submit_audio_out_urb._entry.11, ptr @submit_audio_out_urb._entry.5, ptr @submit_audio_out_urb._entry.8, ptr @submit_audio_out_urb._entry_ptr, ptr @submit_audio_out_urb._entry_ptr.10, ptr @submit_audio_out_urb._entry_ptr.13, ptr @submit_audio_out_urb._entry_ptr.7, ptr @snd_line6_playback_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_line6_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_audio_out_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_audio_out_urb._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_audio_out_urb._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_audio_out_urb._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @line6_submit_audio_out_all_urbs(ptr noundef %line6pcm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call fastcc i32 @submit_audio_out_urb(ptr noundef %line6pcm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %for.body.for.end_crit_edge, label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.1 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %call, %for.body.for.end_crit_edge ], [ %call, %for.cond.for.end_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @submit_audio_out_urb(ptr noundef %line6pcm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %properties = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 1
  %0 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %properties, align 4
  %bytes_per_channel = getelementptr inbounds %struct.line6_pcm_properties, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bytes_per_channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bytes_per_channel, align 8
  %channels_max = getelementptr inbounds %struct.snd_pcm_hardware, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %channels_max to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channels_max, align 8
  %mul = mul i32 %5, %3
  %rats = getelementptr inbounds %struct.line6_pcm_properties, ptr %1, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %rats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rats, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %den = getelementptr inbounds %struct.snd_ratden, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %den to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %den, align 4
  %12 = ptrtoint ptr %line6pcm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %line6pcm, align 4
  %intervals_per_second = getelementptr inbounds %struct.usb_line6, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %intervals_per_second to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %intervals_per_second, align 4
  %mul7 = mul i32 %15, %11
  %out = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 5
  %active_urbs = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 5, i32 7
  %iso_buffers = getelementptr inbounds %struct.usb_line6, ptr %13, i32 0, i32 4
  %16 = ptrtoint ptr %iso_buffers to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iso_buffers, align 4
  %call = tail call i32 @_find_first_zero_bit_be(ptr noundef %active_urbs, i32 noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %18 = ptrtoint ptr %line6pcm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %line6pcm, align 4
  %iso_buffers10 = getelementptr inbounds %struct.usb_line6, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %iso_buffers10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iso_buffers10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %21)
  %cmp11.not = icmp slt i32 %call, %21
  br i1 %cmp11.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %22 = ptrtoint ptr %line6pcm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %line6pcm, align 4
  %ifcdev = getelementptr inbounds %struct.usb_line6, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %ifcdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ifcdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %26 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %out, align 4
  %arrayidx14 = getelementptr ptr, ptr %27, i32 %call
  %28 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx14, align 4
  %iso_frame_desc = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 29
  %prev_fsize = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 7
  %length = getelementptr inbounds %struct.urb, ptr %29, i32 1, i32 1
  %30 = ptrtoint ptr %prev_fsize to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %prev_fsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp17 = icmp eq i32 %31, 0
  br i1 %cmp17, label %if.then18, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %count = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 5, i32 4
  %32 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %count, align 4
  %add = add i32 %33, %9
  %div22 = udiv i32 %add, %mul7
  %mul23 = mul i32 %div22, %mul7
  %sub = sub i32 %add, %mul23
  store i32 %sub, ptr %count, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then18, %if.end.if.end26_crit_edge
  %fsize.0 = phi i32 [ %div22, %if.then18 ], [ %31, %if.end.if.end26_crit_edge ]
  %mul27 = mul i32 %fsize.0, %mul
  %34 = ptrtoint ptr %iso_frame_desc to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %iso_frame_desc, align 4
  %35 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %mul27, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul27)
  %cmp29 = icmp eq i32 %mul27, 0
  br i1 %cmp29, label %do.end33, label %if.end36

do.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %line6pcm to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %line6pcm, align 4
  %ifcdev35 = getelementptr inbounds %struct.usb_line6, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %ifcdev35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ifcdev35, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end36:                                         ; preds = %if.end26
  %div37 = sdiv i32 %mul27, %mul
  %buffer = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 5, i32 1
  %40 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buffer, align 4
  %max_packet_size_out = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 9
  %42 = ptrtoint ptr %max_packet_size_out to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_packet_size_out, align 4
  %mul40 = mul i32 %43, %call
  %add.ptr = getelementptr i8, ptr %41, i32 %mul40
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 14
  %44 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr, ptr %transfer_buffer, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 19
  %45 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mul27, ptr %transfer_buffer_length, align 4
  %context = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 27
  %46 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %line6pcm, ptr %context, align 4
  %running = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 5, i32 11
  %47 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %running, align 4
  %and1.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end36.if.else98_crit_edge, label %land.lhs.true

if.end36.if.else98_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else98

land.lhs.true:                                    ; preds = %if.end36
  %flags = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 15
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %flags, align 4
  %and1.i266 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i266)
  %tobool44.not = icmp eq i32 %and1.i266, 0
  br i1 %tobool44.not, label %if.then45, label %land.lhs.true.if.else98_crit_edge

land.lhs.true.if.else98_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else98

if.then45:                                        ; preds = %land.lhs.true
  %pcm = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 2
  %51 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pcm, align 4
  %substream = getelementptr inbounds %struct.snd_pcm, ptr %52, i32 0, i32 8, i32 0, i32 4
  %53 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %substream, align 8
  %runtime47 = getelementptr inbounds %struct.snd_pcm_substream, ptr %54, i32 0, i32 11
  %55 = ptrtoint ptr %runtime47 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %runtime47, align 4
  %pos = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 5, i32 2
  %57 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pos, align 4
  %add49 = add i32 %58, %div37
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %56, i32 0, i32 18
  %59 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add49, i32 %60)
  %cmp50 = icmp ugt i32 %add49, %60
  br i1 %cmp50, label %if.then51, label %if.else76

if.then51:                                        ; preds = %if.then45
  %sub55 = sub i32 %60, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub55)
  %cmp56 = icmp sgt i32 %sub55, 0
  br i1 %cmp56, label %if.then57, label %do.end72

if.then57:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %56, i32 0, i32 50
  %61 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dma_area, align 4
  %mul61 = mul i32 %58, %mul
  %add.ptr62 = getelementptr i8, ptr %62, i32 %mul61
  %mul63 = mul i32 %sub55, %mul
  %63 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr62, i32 %mul63)
  %64 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %transfer_buffer, align 4
  %add.ptr66 = getelementptr i8, ptr %65, i32 %mul63
  %66 = load ptr, ptr %dma_area, align 4
  %sub68 = sub i32 %div37, %sub55
  %mul69 = mul i32 %sub68, %mul
  %67 = call ptr @memcpy(ptr %add.ptr66, ptr %66, i32 %mul69)
  br label %if.end84

do.end72:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %line6pcm to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %line6pcm, align 4
  %ifcdev74 = getelementptr inbounds %struct.usb_line6, ptr %69, i32 0, i32 6
  %70 = ptrtoint ptr %ifcdev74 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ifcdev74, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.9, i32 noundef %sub55) #9
  br label %if.end84

if.else76:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  %dma_area78 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %56, i32 0, i32 50
  %72 = ptrtoint ptr %dma_area78 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dma_area78, align 4
  %mul81 = mul i32 %58, %mul
  %add.ptr82 = getelementptr i8, ptr %73, i32 %mul81
  %74 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr82, i32 %mul27)
  br label %if.end84

if.end84:                                         ; preds = %if.else76, %do.end72, %if.then57
  %75 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pos, align 4
  %add87 = add i32 %76, %div37
  store i32 %add87, ptr %pos, align 4
  %77 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add87, i32 %78)
  %cmp91.not = icmp ult i32 %add87, %78
  br i1 %cmp91.not, label %if.end84.if.end97_crit_edge, label %if.then92

if.end84.if.end97_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

if.then92:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  %sub96 = sub i32 %add87, %78
  %79 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %sub96, ptr %pos, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then92, %if.end84.if.end97_crit_edge
  %volume_playback = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 10
  %80 = ptrtoint ptr %volume_playback to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %volume_playback, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %81)
  %cmp.i = icmp eq i32 %81, 256
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end97.if.end.i_crit_edge

if.end97.if.end.i_crit_edge:                      ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end97
  %arrayidx1.i = getelementptr %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 10, i32 1
  %82 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %83)
  %cmp2.i = icmp eq i32 %83, 256
  br i1 %cmp2.i, label %land.lhs.true.i.do.body102_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i.do.body102_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body102

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end97.if.end.i_crit_edge
  %84 = zext i32 %mul to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mul, label %if.end.i.do.body102_crit_edge [
    i32 4, label %if.then4.i
    i32 6, label %if.then19.i
  ]

if.end.i.do.body102_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body102

if.then4.i:                                       ; preds = %if.end.i
  %85 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %transfer_buffer, align 4
  %87 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %transfer_buffer_length, align 4
  %div105.i = lshr i32 %88, 1
  %add.ptr.i = getelementptr i16, ptr %86, i32 %div105.i
  %cmp5110.i = icmp ult ptr %86, %add.ptr.i
  br i1 %cmp5110.i, label %if.then4.i.for.body.i_crit_edge, label %if.then4.i.do.body102_crit_edge

if.then4.i.do.body102_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body102

if.then4.i.for.body.i_crit_edge:                  ; preds = %if.then4.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then4.i.for.body.i_crit_edge
  %chn.0112.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then4.i.for.body.i_crit_edge ]
  %p.0111.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %86, %if.then4.i.for.body.i_crit_edge ]
  %89 = ptrtoint ptr %p.0111.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %p.0111.i, align 2
  %91 = tail call i16 @llvm.bswap.i16(i16 %90) #6
  %conv.i = sext i16 %91 to i32
  %and.i = and i32 %chn.0112.i, 1
  %arrayidx6.i = getelementptr i32, ptr %volume_playback, i32 %and.i
  %92 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx6.i, align 4
  %mul.i = mul i32 %93, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8388353, i32 %mul.i)
  %cmp7.i = icmp sgt i32 %mul.i, -8388353
  %shr.i269 = ashr i32 %mul.i, 8
  %94 = tail call i32 @llvm.smin.i32(i32 %shr.i269, i32 32767) #6
  %95 = trunc i32 %94 to i16
  %conv16.i = select i1 %cmp7.i, i16 %95, i16 -32768
  %96 = tail call i16 @llvm.bswap.i16(i16 %conv16.i) #6
  %97 = ptrtoint ptr %p.0111.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %96, ptr %p.0111.i, align 2
  %inc.i = add i32 %chn.0112.i, 1
  %incdec.ptr.i = getelementptr i16, ptr %p.0111.i, i32 1
  %cmp5.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp5.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.do.body102_crit_edge

for.body.i.do.body102_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body102

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.then19.i:                                      ; preds = %if.end.i
  %98 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %transfer_buffer, align 4
  %100 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %transfer_buffer_length, align 4
  %add.ptr24.i = getelementptr i8, ptr %99, i32 %101
  %cmp26107.i = icmp ult ptr %99, %add.ptr24.i
  br i1 %cmp26107.i, label %if.then19.i.for.body28.i_crit_edge, label %if.then19.i.do.body102_crit_edge

if.then19.i.do.body102_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body102

if.then19.i.for.body28.i_crit_edge:               ; preds = %if.then19.i
  br label %for.body28.i

for.body28.i:                                     ; preds = %for.body28.i.for.body28.i_crit_edge, %if.then19.i.for.body28.i_crit_edge
  %chn.1109.i = phi i32 [ %inc64.i, %for.body28.i.for.body28.i_crit_edge ], [ 0, %if.then19.i.for.body28.i_crit_edge ]
  %p20.0108.i = phi ptr [ %add.ptr66.i, %for.body28.i.for.body28.i_crit_edge ], [ %99, %if.then19.i.for.body28.i_crit_edge ]
  %102 = ptrtoint ptr %p20.0108.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %p20.0108.i, align 1
  %conv31.i = zext i8 %103 to i32
  %arrayidx32.i = getelementptr i8, ptr %p20.0108.i, i32 1
  %104 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx32.i, align 1
  %conv33.i = zext i8 %105 to i32
  %shl.i = shl nuw nsw i32 %conv33.i, 8
  %add.i = or i32 %shl.i, %conv31.i
  %arrayidx34.i = getelementptr i8, ptr %p20.0108.i, i32 2
  %106 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx34.i, align 1
  %conv35.i = sext i8 %107 to i32
  %shl36.i = shl nsw i32 %conv35.i, 16
  %add37.i = or i32 %add.i, %shl36.i
  %and38.i = and i32 %chn.1109.i, 1
  %arrayidx39.i = getelementptr i32, ptr %volume_playback, i32 %and38.i
  %108 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx39.i, align 4
  %mul40.i = mul i32 %add37.i, %109
  %shr41.i = ashr i32 %mul40.i, 8
  %conv56.i = trunc i32 %shr41.i to i8
  store i8 %conv56.i, ptr %p20.0108.i, align 1
  %110 = lshr i32 %shr41.i, 8
  %conv59.i = trunc i32 %110 to i8
  store i8 %conv59.i, ptr %arrayidx32.i, align 1
  %111 = lshr i32 %shr41.i, 16
  %conv62.i = trunc i32 %111 to i8
  store i8 %conv62.i, ptr %arrayidx34.i, align 1
  %inc64.i = add i32 %chn.1109.i, 1
  %add.ptr66.i = getelementptr i8, ptr %p20.0108.i, i32 3
  %cmp26.i = icmp ult ptr %add.ptr66.i, %add.ptr24.i
  br i1 %cmp26.i, label %for.body28.i.for.body28.i_crit_edge, label %for.body28.i.do.body102_crit_edge

for.body28.i.do.body102_crit_edge:                ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body102

for.body28.i.for.body28.i_crit_edge:              ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body28.i

if.else98:                                        ; preds = %land.lhs.true.if.else98_crit_edge, %if.end36.if.else98_crit_edge
  %112 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %transfer_buffer, align 4
  %114 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %transfer_buffer_length, align 4
  %116 = call ptr @memset(ptr %113, i32 0, i32 %115)
  br label %do.body102

do.body102:                                       ; preds = %if.else98, %for.body28.i.do.body102_crit_edge, %if.then19.i.do.body102_crit_edge, %for.body.i.do.body102_crit_edge, %if.then4.i.do.body102_crit_edge, %if.end.i.do.body102_crit_edge, %land.lhs.true.i.do.body102_crit_edge
  %lock = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 4, i32 9
  tail call void @_raw_spin_lock_nested(ptr noundef %lock, i32 noundef 1) #6
  %prev_fbuf = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 6
  %117 = ptrtoint ptr %prev_fbuf to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %prev_fbuf, align 4
  %tobool106.not = icmp eq ptr %118, null
  br i1 %tobool106.not, label %do.body102.if.end140_crit_edge, label %if.then107

do.body102.if.end140_crit_edge:                   ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end140

if.then107:                                       ; preds = %do.body102
  %119 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %running, align 4
  %121 = and i32 %120, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool111.not = icmp eq i32 %121, 0
  br i1 %tobool111.not, label %if.else122, label %if.then112

if.then112:                                       ; preds = %if.then107
  %122 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %transfer_buffer_length, align 4
  %div.i = udiv i32 %123, %mul
  %124 = zext i32 %mul to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %mul, label %if.then112.if.end36.i_crit_edge [
    i32 4, label %if.then.i
    i32 6, label %if.then6.i
  ]

if.then112.if.end36.i_crit_edge:                  ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

if.then.i:                                        ; preds = %if.then112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.i)
  %cmp181.i = icmp sgt i32 %div.i, 0
  br i1 %cmp181.i, label %for.body.preheader.i, label %if.then.i.if.end36.i_crit_edge

if.then.i.if.end36.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

for.body.preheader.i:                             ; preds = %if.then.i
  %125 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %transfer_buffer, align 4
  br label %for.body.i274

for.body.i274:                                    ; preds = %for.body.i274.for.body.i274_crit_edge, %for.body.preheader.i
  %po.084.i = phi ptr [ %add.ptr4.i, %for.body.i274.for.body.i274_crit_edge ], [ %126, %for.body.preheader.i ]
  %pi.083.i = phi ptr [ %add.ptr.i272, %for.body.i274.for.body.i274_crit_edge ], [ %118, %for.body.preheader.i ]
  %i.082.i = phi i32 [ %inc.i273, %for.body.i274.for.body.i274_crit_edge ], [ 0, %for.body.preheader.i ]
  %127 = ptrtoint ptr %pi.083.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %pi.083.i, align 2
  %129 = ptrtoint ptr %po.084.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %128, ptr %po.084.i, align 2
  %arrayidx3.i = getelementptr i16, ptr %po.084.i, i32 1
  %130 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 0, ptr %arrayidx3.i, align 2
  %add.ptr.i272 = getelementptr i16, ptr %pi.083.i, i32 2
  %add.ptr4.i = getelementptr i16, ptr %po.084.i, i32 2
  %inc.i273 = add nuw nsw i32 %i.082.i, 1
  %exitcond86.not.i = icmp eq i32 %inc.i273, %div.i
  br i1 %exitcond86.not.i, label %for.body.i274.if.end36.i_crit_edge, label %for.body.i274.for.body.i274_crit_edge

for.body.i274.for.body.i274_crit_edge:            ; preds = %for.body.i274
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i274

for.body.i274.if.end36.i_crit_edge:               ; preds = %for.body.i274
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

if.then6.i:                                       ; preds = %if.then112
  %131 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %transfer_buffer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.i)
  %cmp1377.i = icmp sgt i32 %div.i, 0
  br i1 %cmp1377.i, label %if.then6.i.for.end30.i_crit_edge, label %if.then6.i.if.end36.i_crit_edge

if.then6.i.if.end36.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

if.then6.i.for.end30.i_crit_edge:                 ; preds = %if.then6.i
  br label %for.end30.i

for.end30.i:                                      ; preds = %for.end30.i.for.end30.i_crit_edge, %if.then6.i.for.end30.i_crit_edge
  %po10.080.i = phi ptr [ %add.ptr32.i, %for.end30.i.for.end30.i_crit_edge ], [ %132, %if.then6.i.for.end30.i_crit_edge ]
  %pi8.079.i = phi ptr [ %add.ptr31.i, %for.end30.i.for.end30.i_crit_edge ], [ %118, %if.then6.i.for.end30.i_crit_edge ]
  %i7.078.i = phi i32 [ %inc34.i, %for.end30.i.for.end30.i_crit_edge ], [ 0, %if.then6.i.for.end30.i_crit_edge ]
  %133 = ptrtoint ptr %pi8.079.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %pi8.079.i, align 1
  %135 = ptrtoint ptr %po10.080.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %po10.080.i, align 1
  %arrayidx19.1.i = getelementptr i8, ptr %pi8.079.i, i32 1
  %136 = ptrtoint ptr %arrayidx19.1.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx19.1.i, align 1
  %arrayidx20.1.i = getelementptr i8, ptr %po10.080.i, i32 1
  %138 = ptrtoint ptr %arrayidx20.1.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %137, ptr %arrayidx20.1.i, align 1
  %arrayidx19.2.i = getelementptr i8, ptr %pi8.079.i, i32 2
  %139 = ptrtoint ptr %arrayidx19.2.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx19.2.i, align 1
  %arrayidx20.2.i = getelementptr i8, ptr %po10.080.i, i32 2
  %141 = ptrtoint ptr %arrayidx20.2.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %140, ptr %arrayidx20.2.i, align 1
  %142 = mul i32 %i7.078.i, 6
  %143 = add i32 %142, 3
  %uglygep.i = getelementptr i8, ptr %132, i32 %143
  %144 = call ptr @memset(ptr %uglygep.i, i32 0, i32 3)
  %add.ptr31.i = getelementptr i8, ptr %pi8.079.i, i32 6
  %add.ptr32.i = getelementptr i8, ptr %po10.080.i, i32 6
  %inc34.i = add nuw nsw i32 %i7.078.i, 1
  %exitcond.not.i = icmp eq i32 %inc34.i, %div.i
  br i1 %exitcond.not.i, label %for.end30.i.if.end36.i_crit_edge, label %for.end30.i.for.end30.i_crit_edge

for.end30.i.for.end30.i_crit_edge:                ; preds = %for.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end30.i

for.end30.i.if.end36.i_crit_edge:                 ; preds = %for.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

if.end36.i:                                       ; preds = %for.end30.i.if.end36.i_crit_edge, %if.then6.i.if.end36.i_crit_edge, %for.body.i274.if.end36.i_crit_edge, %if.then.i.if.end36.i_crit_edge, %if.then112.if.end36.i_crit_edge
  %impulse_count.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 14
  %145 = ptrtoint ptr %impulse_count.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %impulse_count.i, align 4
  %dec.i = add i32 %146, -1
  store i32 %dec.i, ptr %impulse_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp37.i = icmp slt i32 %dec.i, 1
  br i1 %cmp37.i, label %if.then38.i, label %if.end36.i.create_impulse_test_signal.exit_crit_edge

if.end36.i.create_impulse_test_signal.exit_crit_edge: ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %create_impulse_test_signal.exit

if.then38.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  %impulse_volume.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 12
  %147 = ptrtoint ptr %impulse_volume.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %impulse_volume.i, align 4
  %conv.i275 = trunc i32 %148 to i8
  %149 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %transfer_buffer, align 4
  %sub.i = add i32 %mul, -1
  %arrayidx40.i = getelementptr i8, ptr %150, i32 %sub.i
  %151 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %conv.i275, ptr %arrayidx40.i, align 1
  %impulse_period.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 13
  %152 = ptrtoint ptr %impulse_period.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %impulse_period.i, align 4
  %154 = ptrtoint ptr %impulse_count.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %impulse_count.i, align 4
  br label %create_impulse_test_signal.exit

create_impulse_test_signal.exit:                  ; preds = %if.then38.i, %if.end36.i.create_impulse_test_signal.exit_crit_edge
  %running114 = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 4, i32 11
  %155 = ptrtoint ptr %running114 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile i32, ptr %running114, align 4
  %and1.i268 = and i32 %156, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i268)
  %tobool116.not = icmp eq i32 %and1.i268, 0
  br i1 %tobool116.not, label %create_impulse_test_signal.exit.if.end137_crit_edge, label %if.then117

create_impulse_test_signal.exit.if.end137_crit_edge: ; preds = %create_impulse_test_signal.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end137

if.then117:                                       ; preds = %create_impulse_test_signal.exit
  call void @__sanitizer_cov_trace_pc() #8
  %157 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %transfer_buffer, align 4
  %159 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %transfer_buffer_length, align 4
  tail call void @line6_capture_copy(ptr noundef %line6pcm, ptr noundef %158, i32 noundef %160) #6
  %161 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %transfer_buffer_length, align 4
  tail call void @line6_capture_check_period(ptr noundef %line6pcm, i32 noundef %162) #6
  br label %if.end137

if.else122:                                       ; preds = %if.then107
  %163 = ptrtoint ptr %line6pcm to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %line6pcm, align 4
  %properties124 = getelementptr inbounds %struct.usb_line6, ptr %164, i32 0, i32 1
  %165 = ptrtoint ptr %properties124 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %properties124, align 4
  %capabilities = getelementptr inbounds %struct.line6_properties, ptr %166, i32 0, i32 2
  %167 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %capabilities, align 4
  %and = and i32 %168, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool125.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool129.not = icmp eq i32 %120, 0
  %or.cond = select i1 %tobool125.not, i1 true, i1 %tobool129.not
  br i1 %or.cond, label %if.else122.if.end137_crit_edge, label %land.lhs.true130

if.else122.if.end137_crit_edge:                   ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end137

land.lhs.true130:                                 ; preds = %if.else122
  %running132 = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 4, i32 11
  %169 = ptrtoint ptr %running132 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %running132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool133.not = icmp eq i32 %170, 0
  br i1 %tobool133.not, label %land.lhs.true130.if.end137_crit_edge, label %if.then134

land.lhs.true130.if.end137_crit_edge:             ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end137

if.then134:                                       ; preds = %land.lhs.true130
  %volume_monitor = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 11
  %171 = ptrtoint ptr %volume_monitor to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %volume_monitor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %cmp.i276 = icmp ne i32 %172, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mul)
  %cmp1.i = icmp eq i32 %mul, 4
  %or.cond.i = and i1 %cmp1.i, %cmp.i276
  br i1 %or.cond.i, label %if.then2.i, label %if.then134.if.end137_crit_edge

if.then134.if.end137_crit_edge:                   ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end137

if.then2.i:                                       ; preds = %if.then134
  %173 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %transfer_buffer, align 4
  %175 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %transfer_buffer_length, align 4
  %div29.i = lshr i32 %176, 1
  %add.ptr.i279 = getelementptr i16, ptr %174, i32 %div29.i
  %cmp330.i = icmp ult ptr %174, %add.ptr.i279
  br i1 %cmp330.i, label %if.then2.i.for.body.i285_crit_edge, label %if.then2.i.if.end137_crit_edge

if.then2.i.if.end137_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end137

if.then2.i.for.body.i285_crit_edge:               ; preds = %if.then2.i
  br label %for.body.i285

for.body.i285:                                    ; preds = %for.body.i285.for.body.i285_crit_edge, %if.then2.i.for.body.i285_crit_edge
  %pi.032.i = phi ptr [ %incdec.ptr.i284, %for.body.i285.for.body.i285_crit_edge ], [ %118, %if.then2.i.for.body.i285_crit_edge ]
  %po.031.i = phi ptr [ %incdec.ptr15.i, %for.body.i285.for.body.i285_crit_edge ], [ %174, %if.then2.i.for.body.i285_crit_edge ]
  %177 = ptrtoint ptr %po.031.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %po.031.i, align 2
  %179 = tail call i16 @llvm.bswap.i16(i16 %178) #6
  %180 = ptrtoint ptr %pi.032.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %pi.032.i, align 2
  %182 = tail call i16 @llvm.bswap.i16(i16 %181) #6
  %conv.i280 = sext i16 %179 to i32
  %conv4.i = sext i16 %182 to i32
  %mul.i281 = mul i32 %172, %conv4.i
  %shr.i282 = ashr i32 %mul.i281, 8
  %add.i283 = add nsw i32 %shr.i282, %conv.i280
  %183 = tail call i32 @llvm.smax.i32(i32 %add.i283, i32 -32768) #6
  %184 = tail call i32 @llvm.smin.i32(i32 %183, i32 32767) #6
  %conv14.i = trunc i32 %184 to i16
  %185 = tail call i16 @llvm.bswap.i16(i16 %conv14.i) #6
  %186 = ptrtoint ptr %po.031.i to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 %185, ptr %po.031.i, align 2
  %incdec.ptr.i284 = getelementptr i16, ptr %pi.032.i, i32 1
  %incdec.ptr15.i = getelementptr i16, ptr %po.031.i, i32 1
  %cmp3.i = icmp ult ptr %incdec.ptr15.i, %add.ptr.i279
  br i1 %cmp3.i, label %for.body.i285.for.body.i285_crit_edge, label %for.body.i285.if.end137_crit_edge

for.body.i285.if.end137_crit_edge:                ; preds = %for.body.i285
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end137

for.body.i285.for.body.i285_crit_edge:            ; preds = %for.body.i285
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i285

if.end137:                                        ; preds = %for.body.i285.if.end137_crit_edge, %if.then2.i.if.end137_crit_edge, %if.then134.if.end137_crit_edge, %land.lhs.true130.if.end137_crit_edge, %if.else122.if.end137_crit_edge, %if.then117, %create_impulse_test_signal.exit.if.end137_crit_edge
  %187 = ptrtoint ptr %prev_fbuf to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr null, ptr %prev_fbuf, align 4
  %188 = ptrtoint ptr %prev_fsize to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 0, ptr %prev_fsize, align 4
  br label %if.end140

if.end140:                                        ; preds = %if.end137, %do.body102.if.end140_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  %call143 = tail call i32 @usb_submit_urb(ptr noundef %29, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %cmp144 = icmp eq i32 %call143, 0
  br i1 %cmp144, label %if.then145, label %do.end151

if.then145:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef %call, ptr noundef %active_urbs) #6
  br label %cleanup

do.end151:                                        ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #8
  %189 = ptrtoint ptr %line6pcm to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %line6pcm, align 4
  %ifcdev153 = getelementptr inbounds %struct.usb_line6, ptr %190, i32 0, i32 6
  %191 = ptrtoint ptr %ifcdev153 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %ifcdev153, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %192, ptr noundef nonnull @.str.12, i32 noundef %call, i32 noundef %call143) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end151, %if.then145, %do.end33, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end33 ], [ 0, %do.end151 ], [ 0, %if.then145 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_line6_playback_open(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %call = tail call i32 @snd_pcm_hw_constraint_ratdens(ptr noundef %1, i32 noundef 0, i32 noundef 11, ptr noundef %rates) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46
  %6 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %properties, align 4
  %8 = call ptr @memcpy(ptr %hw, ptr %7, i32 64)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_line6_playback_close(ptr nocapture noundef readnone %substream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
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
define dso_local i32 @line6_create_audio_out_urbs(ptr nocapture noundef %line6pcm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %line6pcm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %line6pcm, align 4
  %iso_buffers = getelementptr inbounds %struct.usb_line6, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %iso_buffers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iso_buffers, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4) #6
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !31

kcalloc.exit.thread:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %out38 = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 5
  %6 = ptrtoint ptr %out38 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %out38, align 4
  br label %cleanup17

if.end7.i.i:                                      ; preds = %entry
  %7 = extractvalue { i32, i1 } %4, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #10
  %out = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 5
  %8 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8.i.i, ptr %out, align 4
  %cmp = icmp eq ptr %call8.i.i, null
  br i1 %cmp, label %if.end7.i.i.cleanup17_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup17_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup17

for.cond.preheader:                               ; preds = %if.end7.i.i
  %9 = ptrtoint ptr %iso_buffers to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iso_buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp542 = icmp sgt i32 %10, 0
  br i1 %cmp542, label %for.body.lr.ph, label %for.cond.preheader.cleanup17_crit_edge

for.cond.preheader.cleanup17_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup17

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %properties = getelementptr inbounds %struct.usb_line6, ptr %1, i32 0, i32 1
  br label %for.body

for.cond:                                         ; preds = %cleanup
  %inc = add nuw nsw i32 %i.043, 1
  %11 = ptrtoint ptr %iso_buffers to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iso_buffers, align 4
  %cmp5 = icmp slt i32 %inc, %12
  br i1 %cmp5, label %for.cond.for.body_crit_edge, label %for.cond.cleanup17_crit_edge

for.cond.cleanup17_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup17

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %call6 = tail call ptr @usb_alloc_urb(i32 noundef 1, i32 noundef 3264) #6
  %13 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %out, align 4
  %arrayidx = getelementptr ptr, ptr %14, i32 %i.043
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call6, ptr %arrayidx, align 4
  %cmp9 = icmp eq ptr %call6, null
  br i1 %cmp9, label %for.body.cleanup17_crit_edge, label %cleanup

for.body.cleanup17_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup17

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
  %ep_audio_w = getelementptr inbounds %struct.line6_properties, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %ep_audio_w to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ep_audio_w, align 4
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %19, align 8
  %shl.i = shl i32 %25, 8
  %and = shl i32 %23, 15
  %shl1.i = and i32 %and, 491520
  %or.i = or i32 %shl.i, %shl1.i
  %pipe = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 10
  %26 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or.i, ptr %pipe, align 4
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
  store ptr @audio_out_callback, ptr %complete, align 4
  %call14 = tail call i32 @usb_urb_ep_type_check(ptr noundef nonnull %call6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %for.cond, label %cleanup.cleanup17_crit_edge

cleanup.cleanup17_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup17

cleanup17:                                        ; preds = %cleanup.cleanup17_crit_edge, %for.body.cleanup17_crit_edge, %for.cond.cleanup17_crit_edge, %for.cond.preheader.cleanup17_crit_edge, %if.end7.i.i.cleanup17_crit_edge, %kcalloc.exit.thread
  %retval.2 = phi i32 [ -12, %if.end7.i.i.cleanup17_crit_edge ], [ -12, %kcalloc.exit.thread ], [ 0, %for.cond.preheader.cleanup17_crit_edge ], [ -22, %cleanup.cleanup17_crit_edge ], [ 0, %for.cond.cleanup17_crit_edge ], [ -12, %for.body.cleanup17_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @audio_out_callback(ptr noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %pcm = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcm, align 4
  %substream1 = getelementptr inbounds %struct.snd_pcm, ptr %3, i32 0, i32 8, i32 0, i32 4
  %4 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %substream1, align 8
  %properties = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %properties, align 4
  %bytes_per_channel = getelementptr inbounds %struct.line6_pcm_properties, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %bytes_per_channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bytes_per_channel, align 8
  %channels_max = getelementptr inbounds %struct.snd_pcm_hardware, ptr %7, i32 0, i32 6
  %10 = ptrtoint ptr %channels_max to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channels_max, align 8
  %mul = mul i32 %11, %9
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %12 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %transfer_buffer, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %14 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %transfer_buffer_length, align 4
  %16 = call ptr @memset(ptr %13, i32 0, i32 %15)
  %start_frame = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 23
  %17 = ptrtoint ptr %start_frame to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %start_frame, align 4
  %last_frame = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 5, i32 12
  %19 = ptrtoint ptr %last_frame to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %last_frame, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %iso_buffers = getelementptr inbounds %struct.usb_line6, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %iso_buffers to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iso_buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp142 = icmp sgt i32 %23, 0
  br i1 %cmp142, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %out = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %out, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %index.0143 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx4 = getelementptr ptr, ptr %25, i32 %index.0143
  %26 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx4, align 4
  %cmp5 = icmp eq ptr %27, %urb
  br i1 %cmp5, label %for.cond11.preheader, label %for.inc

for.cond11.preheader:                             ; preds = %for.body
  %length15 = getelementptr inbounds %struct.urb, ptr %urb, i32 1, i32 1
  %28 = ptrtoint ptr %length15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %length15, align 4
  %lock = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 5, i32 9
  %call22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %running = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 5, i32 11
  %30 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %running, align 4
  %and1.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %for.cond11.preheader.if.end40_crit_edge, label %if.then27

for.cond11.preheader.if.end40_crit_edge:          ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %index.0143, 1
  %exitcond.not = icmp eq i32 %inc, %23
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then27:                                        ; preds = %for.cond11.preheader
  %runtime28 = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 11
  %32 = ptrtoint ptr %runtime28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %runtime28, align 4
  %div = sdiv i32 %29, %mul
  %pos_done = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 5, i32 6
  %34 = ptrtoint ptr %pos_done to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pos_done, align 4
  %add30 = add i32 %35, %div
  store i32 %add30, ptr %pos_done, align 4
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %33, i32 0, i32 18
  %36 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add30, i32 %37)
  %cmp33.not = icmp ult i32 %add30, %37
  br i1 %cmp33.not, label %if.then27.if.end40_crit_edge, label %if.then35

if.then27.if.end40_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then35:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 %add30, %37
  %38 = ptrtoint ptr %pos_done to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub, ptr %pos_done, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %if.then27.if.end40_crit_edge, %for.cond11.preheader.if.end40_crit_edge
  %active_urbs = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 5, i32 7
  tail call void @_clear_bit(i32 noundef %index.0143, ptr noundef %active_urbs) #6
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 1, i32 3
  %39 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -18, i32 %40)
  %cmp48 = icmp ne i32 %40, -18
  %unlink_urbs = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 5, i32 8
  %call56 = tail call i32 @_test_and_clear_bit(i32 noundef %index.0143, ptr noundef %unlink_urbs) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  %narrow = select i1 %tobool57.not, i1 %cmp48, i1 false
  br i1 %narrow, label %if.then61, label %if.end40.if.end86_crit_edge

if.end40.if.end86_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

if.then61:                                        ; preds = %if.end40
  %call62 = tail call fastcc i32 @submit_audio_out_urb(ptr noundef %1)
  %41 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %running, align 4
  %and1.i140 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i140)
  %tobool66.not = icmp eq i32 %and1.i140, 0
  br i1 %tobool66.not, label %if.then61.if.end86_crit_edge, label %if.then67

if.then61.if.end86_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

if.then67:                                        ; preds = %if.then61
  %bytes = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 5, i32 3
  %43 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bytes, align 4
  %add69 = add i32 %44, %29
  store i32 %add69, ptr %bytes, align 4
  %period = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 5, i32 5
  %45 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %period, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add69, i32 %46)
  %cmp73.not = icmp ult i32 %add69, %46
  br i1 %cmp73.not, label %if.then67.if.end86_crit_edge, label %if.then75

if.then67.if.end86_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

if.then75:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #8
  %rem = urem i32 %add69, %46
  %47 = ptrtoint ptr %bytes to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %rem, ptr %bytes, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  tail call void @snd_pcm_period_elapsed(ptr noundef %5) #6
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  br label %if.end86

if.end86:                                         ; preds = %if.then75, %if.then67.if.end86_crit_edge, %if.then61.if.end86_crit_edge, %if.end40.if.end86_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call22) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end86, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_urb_ep_type_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @line6_capture_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @line6_capture_check_period(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_ratdens(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @snd_line6_playback_ops, !1, !"snd_line6_playback_ops", i1 false, i1 false}
!1 = !{!"../sound/usb/line6/playback.c", i32 392, i32 26}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/usb/line6/playback.c", i32 159, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @submit_audio_out_urb._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @submit_audio_out_urb._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/usb/line6/playback.c", i32 192, i32 3}
!12 = !{ptr @submit_audio_out_urb._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @submit_audio_out_urb._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/usb/line6/playback.c", i32 226, i32 5}
!16 = !{ptr @submit_audio_out_urb._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @submit_audio_out_urb._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/usb/line6/playback.c", i32 276, i32 3}
!20 = !{ptr @submit_audio_out_urb._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @submit_audio_out_urb._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"branch_weights", i32 1, i32 2000}
