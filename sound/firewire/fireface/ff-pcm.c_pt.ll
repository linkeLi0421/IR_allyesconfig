; ModuleID = '/llk/IR_all_yes/sound/firewire/fireface/ff-pcm.c_pt.bc'
source_filename = "../sound/firewire/fireface/ff-pcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
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
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.snd_ff = type { ptr, ptr, %struct.mutex, %struct.spinlock, i32, ptr, [2 x ptr], %struct.fw_address_handler, [2 x ptr], [2 x i8], [2 x [9 x i32]], [2 x %struct.work_struct], [2 x %struct.fw_transaction], [2 x i64], [2 x i8], [2 x i32], i32, %struct.amdtp_stream, %struct.amdtp_stream, %struct.fw_iso_resources, %struct.fw_iso_resources, i32, i8, %struct.wait_queue_head, %struct.amdtp_domain }
%struct.fw_address_handler = type { i64, i64, ptr, ptr, %struct.list_head }
%struct.fw_transaction = type { i32, i32, %struct.list_head, ptr, i8, %struct.timer_list, %struct.fw_packet, ptr, ptr }
%struct.fw_packet = type { i32, i32, [4 x i32], i32, ptr, i32, i32, i8, i32, ptr, i32, %struct.list_head, ptr }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.82, %struct.anon.83 }
%struct.anon.82 = type { i32, i32, i32 }
%struct.anon.83 = type { i8 }
%struct.snd_ff_spec = type { [3 x i32], [3 x i32], i32, i32, ptr, i64, i8, [2 x i64] }
%struct.snd_ff_protocol = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_pcm_hw_rule = type { i32, i32, [5 x i32], ptr, ptr }

@snd_ff_create_pcm_devices.pcm_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @pcm_open, ptr @pcm_close, ptr null, ptr @pcm_hw_params, ptr @pcm_hw_free, ptr @pcm_capture_prepare, ptr @pcm_capture_trigger, ptr null, ptr @pcm_capture_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcm_capture_ack }, [32 x i8] zeroinitializer }, align 32
@snd_ff_create_pcm_devices.pcm_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @pcm_open, ptr @pcm_close, ptr null, ptr @pcm_hw_params, ptr @pcm_hw_free, ptr @pcm_playback_prepare, ptr @pcm_playback_trigger, ptr null, ptr @pcm_playback_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcm_playback_ack }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s PCM\00", [25 x i8] zeroinitializer }, align 32
@amdtp_rate_table = external dso_local local_unnamed_addr constant [7 x i32], align 4
@__const.hw_rule_rate.t = private unnamed_addr constant { i32, i32, i8, [3 x i8] } { i32 -1, i32 0, i8 32, [3 x i8] zeroinitializer }, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.2 = private unnamed_addr constant [16 x i8] c"pcm_capture_ops\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 365, i32 34 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"pcm_playback_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 375, i32 34 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [36 x i8] c"../sound/firewire/fireface/ff-pcm.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 394, i32 4 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @snd_ff_create_pcm_devices.pcm_capture_ops, ptr @snd_ff_create_pcm_devices.pcm_playback_ops, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ff_create_pcm_devices.pcm_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ff_create_pcm_devices.pcm_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ff_create_pcm_devices(ptr noundef %ff) local_unnamed_addr #0 align 64 {
entry:
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #6
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !15
  %1 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ff, align 8
  %driver = getelementptr inbounds %struct.snd_card, ptr %2, i32 0, i32 2
  %call = call i32 @snd_pcm_new(ptr noundef %2, ptr noundef %driver, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %pcm) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcm, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ff, ptr %private_data, align 8
  %name = getelementptr inbounds %struct.snd_pcm, ptr %4, i32 0, i32 7
  %6 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ff, align 8
  %shortname = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 3
  %call5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 80, ptr noundef nonnull @.str, ptr noundef %shortname)
  %8 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %9, i32 noundef 0, ptr noundef nonnull @snd_ff_create_pcm_devices.pcm_playback_ops) #6
  %10 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %11, i32 noundef 1, ptr noundef nonnull @snd_ff_create_pcm_devices.pcm_capture_ops) #6
  %12 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcm, align 4
  %call6 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %13, i32 noundef 7, ptr noundef null, i32 noundef 0, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_open(ptr noundef %substream) #0 align 64 {
entry:
  %mode.i.i = alloca i32, align 4
  %rate = alloca i32, align 4
  %src = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate) #6
  %2 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rate, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src) #6
  %3 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %src, align 4, !annotation !15
  %call = tail call i32 @snd_ff_stream_lock_try(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup46_crit_edge, label %if.end

entry.cleanup46_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup46

if.end:                                           ; preds = %entry
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %4 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime1.i, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %6 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp eq i32 %7, 1
  %formats.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 1
  %8 = ptrtoint ptr %formats.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 2048, ptr %formats.i, align 8
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %tx_stream.i = getelementptr inbounds %struct.snd_ff, ptr %1, i32 0, i32 17
  %spec.i = getelementptr inbounds %struct.snd_ff, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spec.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %rx_stream.i = getelementptr inbounds %struct.snd_ff, ptr %1, i32 0, i32 18
  %spec4.i = getelementptr inbounds %struct.snd_ff, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %spec4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %spec4.i, align 4
  %pcm_playback_channels.i = getelementptr inbounds %struct.snd_ff_spec, ptr %12, i32 0, i32 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %s.0.i = phi ptr [ %tx_stream.i, %if.then.i ], [ %rx_stream.i, %if.else.i ]
  %pcm_channels.0.i = phi ptr [ %10, %if.then.i ], [ %pcm_playback_channels.i, %if.else.i ]
  %channels_min.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 5
  %13 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %channels_min.i.i, align 4
  %channels_max.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 6
  %14 = ptrtoint ptr %channels_max.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %channels_max.i.i, align 8
  %rate_min.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 3
  %15 = ptrtoint ptr %rate_min.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %rate_min.i.i, align 4
  %rate_max.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 4
  %16 = ptrtoint ptr %rate_max.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %rate_max.i.i, align 8
  %rates.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %if.end.i
  %i.068.i.i = phi i32 [ 0, %if.end.i ], [ %inc.i.i, %cleanup.i.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.i.i) #6
  %17 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %mode.i.i, align 4, !annotation !15
  %call.i.i = call i32 @snd_ff_stream_get_multiplier_mode(i32 noundef %i.068.i.i, ptr noundef nonnull %mode.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp1.i.i, label %for.body.i.i.cleanup.i.i_crit_edge, label %if.end.i.i

for.body.i.i.cleanup.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %18 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mode.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %pcm_channels.0.i, i32 %19
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp3.i.i = icmp eq i32 %21, 0
  br i1 %cmp3.i.i, label %if.end.i.i.cleanup.i.i_crit_edge, label %if.end5.i.i

if.end.i.i.cleanup.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %channels_min.i.i, align 4
  %24 = call i32 @llvm.umin.i32(i32 %23, i32 %21) #6
  %25 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %channels_min.i.i, align 4
  %26 = ptrtoint ptr %channels_max.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %channels_max.i.i, align 8
  %28 = call i32 @llvm.umax.i32(i32 %27, i32 %21) #6
  %29 = ptrtoint ptr %channels_max.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %channels_max.i.i, align 8
  %arrayidx17.i.i = getelementptr [7 x i32], ptr @amdtp_rate_table, i32 0, i32 %i.068.i.i
  %30 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx17.i.i, align 4
  %call18.i.i = call i32 @snd_pcm_rate_to_rate_bit(i32 noundef %31) #6
  %32 = ptrtoint ptr %rates.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rates.i.i, align 8
  %or.i.i = or i32 %33, %call18.i.i
  store i32 %or.i.i, ptr %rates.i.i, align 8
  %34 = ptrtoint ptr %rate_min.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rate_min.i.i, align 4
  %36 = call i32 @llvm.umin.i32(i32 %35, i32 %31) #6
  %37 = ptrtoint ptr %rate_min.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %rate_min.i.i, align 4
  %38 = ptrtoint ptr %rate_max.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rate_max.i.i, align 8
  %40 = call i32 @llvm.umax.i32(i32 %39, i32 %31) #6
  %41 = ptrtoint ptr %rate_max.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %rate_max.i.i, align 8
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end5.i.i, %if.end.i.i.cleanup.i.i_crit_edge, %for.body.i.i.cleanup.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.i.i) #6
  %inc.i.i = add nuw nsw i32 %i.068.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 7
  br i1 %exitcond.not.i.i, label %limit_channels_and_rates.exit.i, label %cleanup.i.i.for.body.i.i_crit_edge

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

limit_channels_and_rates.exit.i:                  ; preds = %cleanup.i.i
  %call.i = call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %5, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @hw_rule_channels, ptr noundef %pcm_channels.0.i, i32 noundef 11, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7.i = icmp slt i32 %call.i, 0
  br i1 %cmp7.i, label %limit_channels_and_rates.exit.i.release_lock_crit_edge, label %if.end9.i

limit_channels_and_rates.exit.i.release_lock_crit_edge: ; preds = %limit_channels_and_rates.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %release_lock

if.end9.i:                                        ; preds = %limit_channels_and_rates.exit.i
  %call10.i = call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %5, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @hw_rule_rate, ptr noundef %pcm_channels.0.i, i32 noundef 10, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.end9.i.release_lock_crit_edge, label %pcm_init_hw_params.exit

if.end9.i.release_lock_crit_edge:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %release_lock

pcm_init_hw_params.exit:                          ; preds = %if.end9.i
  %call14.i = call i32 @amdtp_ff_add_pcm_hw_constraints(ptr noundef %s.0.i, ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp2 = icmp slt i32 %call14.i, 0
  br i1 %cmp2, label %pcm_init_hw_params.exit.release_lock_crit_edge, label %if.end4

pcm_init_hw_params.exit.release_lock_crit_edge:   ; preds = %pcm_init_hw_params.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %release_lock

if.end4:                                          ; preds = %pcm_init_hw_params.exit
  %spec = getelementptr inbounds %struct.snd_ff, ptr %1, i32 0, i32 5
  %42 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %spec, align 4
  %protocol = getelementptr inbounds %struct.snd_ff_spec, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %protocol, align 8
  %get_clock = getelementptr inbounds %struct.snd_ff_protocol, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %get_clock to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %get_clock, align 4
  %call5 = call i32 %47(ptr noundef %1, ptr noundef nonnull %rate, ptr noundef nonnull %src) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.release_lock_crit_edge, label %if.end8

if.end4.release_lock_crit_edge:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %release_lock

if.end8:                                          ; preds = %if.end4
  %mutex = getelementptr inbounds %struct.snd_ff, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %48 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp9.not = icmp eq i32 %49, 0
  br i1 %cmp9.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end8
  %50 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rate, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdtp_rate_table to i32))
  %52 = load i32, ptr @amdtp_rate_table, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %51)
  %cmp12 = icmp eq i32 %52, %51
  br i1 %cmp12, label %for.cond.preheader.if.end18_crit_edge, label %for.cond

for.cond.preheader.if.end18_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

for.cond:                                         ; preds = %for.cond.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 1) to i32))
  %53 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %51)
  %cmp12.1 = icmp eq i32 %53, %51
  br i1 %cmp12.1, label %for.cond.if.end18_crit_edge, label %for.cond.1

for.cond.if.end18_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

for.cond.1:                                       ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 2) to i32))
  %54 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %51)
  %cmp12.2 = icmp eq i32 %54, %51
  br i1 %cmp12.2, label %for.cond.1.if.end18_crit_edge, label %for.cond.2

for.cond.1.if.end18_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

for.cond.2:                                       ; preds = %for.cond.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 3) to i32))
  %55 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %51)
  %cmp12.3 = icmp eq i32 %55, %51
  br i1 %cmp12.3, label %for.cond.2.if.end18_crit_edge, label %for.cond.3

for.cond.2.if.end18_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

for.cond.3:                                       ; preds = %for.cond.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 4) to i32))
  %56 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %51)
  %cmp12.4 = icmp eq i32 %56, %51
  br i1 %cmp12.4, label %for.cond.3.if.end18_crit_edge, label %for.cond.4

for.cond.3.if.end18_crit_edge:                    ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

for.cond.4:                                       ; preds = %for.cond.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 5) to i32))
  %57 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %51)
  %cmp12.5 = icmp eq i32 %57, %51
  br i1 %cmp12.5, label %for.cond.4.if.end18_crit_edge, label %for.cond.5

for.cond.4.if.end18_crit_edge:                    ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

for.cond.5:                                       ; preds = %for.cond.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 6) to i32))
  %58 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %51)
  %cmp12.6 = icmp eq i32 %58, %51
  br i1 %cmp12.6, label %for.cond.5.if.end18_crit_edge, label %for.cond.5.release_lock.sink.split_crit_edge

for.cond.5.release_lock.sink.split_crit_edge:     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %release_lock.sink.split

for.cond.5.if.end18_crit_edge:                    ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.end18:                                         ; preds = %for.cond.5.if.end18_crit_edge, %for.cond.4.if.end18_crit_edge, %for.cond.3.if.end18_crit_edge, %for.cond.2.if.end18_crit_edge, %for.cond.1.if.end18_crit_edge, %for.cond.if.end18_crit_edge, %for.cond.preheader.if.end18_crit_edge
  %59 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rate, align 4
  %61 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %runtime1.i, align 4
  %rate_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %62, i32 0, i32 46, i32 3
  %63 = ptrtoint ptr %rate_min to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %60, ptr %rate_min, align 4
  %64 = load ptr, ptr %runtime1.i, align 4
  %rate_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %64, i32 0, i32 46, i32 4
  %65 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %60, ptr %rate_max, align 8
  br label %if.end44

if.else:                                          ; preds = %if.end8
  %substreams_counter = getelementptr inbounds %struct.snd_ff, ptr %1, i32 0, i32 16
  %66 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %substreams_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp21.not = icmp eq i32 %67, 0
  br i1 %cmp21.not, label %if.else.if.end44_crit_edge, label %if.then22

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then22:                                        ; preds = %if.else
  %events_per_period = getelementptr inbounds %struct.snd_ff, ptr %1, i32 0, i32 24, i32 1
  %68 = ptrtoint ptr %events_per_period to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %events_per_period, align 4
  %events_per_buffer = getelementptr inbounds %struct.snd_ff, ptr %1, i32 0, i32 24, i32 2
  %70 = ptrtoint ptr %events_per_buffer to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %events_per_buffer, align 4
  %sfc = getelementptr inbounds %struct.snd_ff, ptr %1, i32 0, i32 18, i32 17
  %72 = ptrtoint ptr %sfc to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sfc, align 4
  %arrayidx23 = getelementptr [7 x i32], ptr @amdtp_rate_table, i32 0, i32 %73
  %74 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx23, align 4
  %76 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %rate, align 4
  %77 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %runtime1.i, align 4
  %rate_min26 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %78, i32 0, i32 46, i32 3
  %79 = ptrtoint ptr %rate_min26 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %75, ptr %rate_min26, align 4
  %80 = load ptr, ptr %runtime1.i, align 4
  %rate_max29 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %80, i32 0, i32 46, i32 4
  %81 = ptrtoint ptr %rate_max29 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %75, ptr %rate_max29, align 8
  %82 = load ptr, ptr %runtime1.i, align 4
  %call31 = call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %82, i32 noundef 13, i32 noundef %69, i32 noundef %69) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then22.release_lock.sink.split_crit_edge, label %if.end35

if.then22.release_lock.sink.split_crit_edge:      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %release_lock.sink.split

if.end35:                                         ; preds = %if.then22
  %83 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %runtime1.i, align 4
  %call37 = call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %84, i32 noundef 17, i32 noundef %71, i32 noundef %71) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end35.release_lock.sink.split_crit_edge, label %if.end35.if.end44_crit_edge

if.end35.if.end44_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.end35.release_lock.sink.split_crit_edge:       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %release_lock.sink.split

if.end44:                                         ; preds = %if.end35.if.end44_crit_edge, %if.else.if.end44_crit_edge, %if.end18
  call void @mutex_unlock(ptr noundef %mutex) #6
  call void @snd_pcm_set_sync(ptr noundef %substream) #6
  br label %cleanup46

release_lock.sink.split:                          ; preds = %if.end35.release_lock.sink.split_crit_edge, %if.then22.release_lock.sink.split_crit_edge, %for.cond.5.release_lock.sink.split_crit_edge
  %err.1.ph = phi i32 [ -5, %for.cond.5.release_lock.sink.split_crit_edge ], [ %call31, %if.then22.release_lock.sink.split_crit_edge ], [ %call37, %if.end35.release_lock.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #6
  br label %release_lock

release_lock:                                     ; preds = %release_lock.sink.split, %if.end4.release_lock_crit_edge, %pcm_init_hw_params.exit.release_lock_crit_edge, %if.end9.i.release_lock_crit_edge, %limit_channels_and_rates.exit.i.release_lock_crit_edge
  %err.1 = phi i32 [ %call14.i, %pcm_init_hw_params.exit.release_lock_crit_edge ], [ %call5, %if.end4.release_lock_crit_edge ], [ %call10.i, %if.end9.i.release_lock_crit_edge ], [ %call.i, %limit_channels_and_rates.exit.i.release_lock_crit_edge ], [ %err.1.ph, %release_lock.sink.split ]
  call void @snd_ff_stream_lock_release(ptr noundef %1) #6
  br label %cleanup46

cleanup46:                                        ; preds = %release_lock, %if.end44, %entry.cleanup46_crit_edge
  %retval.0 = phi i32 [ %err.1, %release_lock ], [ 0, %if.end44 ], [ %call, %entry.cleanup46_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @snd_ff_stream_lock_release(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %hw_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime, align 4
  %status = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 37
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %status, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then:                                          ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i15 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 5
  %10 = ptrtoint ptr %arrayidx.i.i15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i15, align 4
  %arrayidx.i.i16 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 9
  %12 = ptrtoint ptr %arrayidx.i.i16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i16, align 4
  %mutex = getelementptr inbounds %struct.snd_ff, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call3 = tail call i32 @snd_ff_stream_reserve_duplex(ptr noundef %1, i32 noundef %9, i32 noundef %11, i32 noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp4 = icmp sgt i32 %call3, -1
  br i1 %cmp4, label %if.then5, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %substreams_counter = getelementptr inbounds %struct.snd_ff, ptr %1, i32 0, i32 16
  %14 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %substreams_counter, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %substreams_counter, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  %err.0 = phi i32 [ %call3, %if.end ], [ 0, %entry.if.end7_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_hw_free(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.snd_ff, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime, align 4
  %status = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 37
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %status, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %substreams_counter = getelementptr inbounds %struct.snd_ff, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %substreams_counter, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %substreams_counter, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @snd_ff_stream_stop_duplex(ptr noundef %1) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_capture_prepare(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %mutex = getelementptr inbounds %struct.snd_ff, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rate, align 4
  %call = tail call i32 @snd_ff_stream_start_duplex(ptr noundef %1, i32 noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tx_stream = getelementptr inbounds %struct.snd_ff, ptr %1, i32 0, i32 17
  tail call void @amdtp_stream_pcm_prepare(ptr noundef %tx_stream) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 %call
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_capture_trigger(ptr noundef %substream, i32 noundef %cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.cleanup.sink.split_crit_edge
    i32 0, label %sw.bb1
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb1, %entry.cleanup.sink.split_crit_edge
  %substream.sink = phi ptr [ null, %sw.bb1 ], [ %substream, %entry.cleanup.sink.split_crit_edge ]
  %pcm3.i = getelementptr inbounds %struct.snd_ff, ptr %1, i32 0, i32 17, i32 19
  %3 = ptrtoint ptr %pcm3.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %substream.sink, ptr %pcm3.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_capture_pointer(ptr nocapture noundef readonly %sbstrm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %sbstrm, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %domain = getelementptr inbounds %struct.snd_ff, ptr %1, i32 0, i32 24
  %tx_stream = getelementptr inbounds %struct.snd_ff, ptr %1, i32 0, i32 17
  %call = tail call i32 @amdtp_domain_stream_pcm_pointer(ptr noundef %domain, ptr noundef %tx_stream) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_capture_ack(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %domain = getelementptr inbounds %struct.snd_ff, ptr %1, i32 0, i32 24
  %tx_stream = getelementptr inbounds %struct.snd_ff, ptr %1, i32 0, i32 17
  %call = tail call i32 @amdtp_domain_stream_pcm_ack(ptr noundef %domain, ptr noundef %tx_stream) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_playback_prepare(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %mutex = getelementptr inbounds %struct.snd_ff, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rate, align 4
  %call = tail call i32 @snd_ff_stream_start_duplex(ptr noundef %1, i32 noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rx_stream = getelementptr inbounds %struct.snd_ff, ptr %1, i32 0, i32 18
  tail call void @amdtp_stream_pcm_prepare(ptr noundef %rx_stream) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 %call
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_playback_trigger(ptr noundef %substream, i32 noundef %cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.cleanup.sink.split_crit_edge
    i32 0, label %sw.bb1
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb1, %entry.cleanup.sink.split_crit_edge
  %substream.sink = phi ptr [ null, %sw.bb1 ], [ %substream, %entry.cleanup.sink.split_crit_edge ]
  %pcm3.i = getelementptr inbounds %struct.snd_ff, ptr %1, i32 0, i32 18, i32 19
  %3 = ptrtoint ptr %pcm3.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %substream.sink, ptr %pcm3.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_playback_pointer(ptr nocapture noundef readonly %sbstrm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %sbstrm, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %domain = getelementptr inbounds %struct.snd_ff, ptr %1, i32 0, i32 24
  %rx_stream = getelementptr inbounds %struct.snd_ff, ptr %1, i32 0, i32 18
  %call = tail call i32 @amdtp_domain_stream_pcm_pointer(ptr noundef %domain, ptr noundef %rx_stream) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_playback_ack(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %domain = getelementptr inbounds %struct.snd_ff, ptr %1, i32 0, i32 24
  %rx_stream = getelementptr inbounds %struct.snd_ff, ptr %1, i32 0, i32 18
  %call = tail call i32 @amdtp_domain_stream_pcm_ack(ptr noundef %domain, ptr noundef %rx_stream) #6
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ff_stream_lock_try(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ff_stream_lock_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_rule_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_rule_channels(ptr noundef %params, ptr nocapture noundef readonly %rule) #0 align 64 {
entry:
  %t = alloca %struct.snd_interval, align 4
  %mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %arrayidx.i37 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %t) #6
  %2 = call ptr @memcpy(ptr %t, ptr @__const.hw_rule_rate.t, i32 12)
  %openmin.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 2
  %max.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 1
  %max = getelementptr inbounds %struct.snd_interval, ptr %t, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.041 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #6
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %mode, align 4, !annotation !15
  %call2 = call i32 @snd_ff_stream_get_multiplier_mode(i32 noundef %i.041, ptr noundef nonnull %mode) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr [7 x i32], ptr @amdtp_rate_table, i32 0, i32 %i.041
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp.i = icmp ugt i32 %7, %5
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %lor.lhs.false.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp2.i = icmp eq i32 %7, %5
  br i1 %cmp2.i, label %land.lhs.true.i, label %lor.lhs.false.i.lor.lhs.false3.i_crit_edge

lor.lhs.false.i.lor.lhs.false3.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false3.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %8 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %openmin.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %land.lhs.true.i.lor.lhs.false3.i_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i.lor.lhs.false3.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false3.i

lor.lhs.false3.i:                                 ; preds = %land.lhs.true.i.lor.lhs.false3.i_crit_edge, %lor.lhs.false.i.lor.lhs.false3.i_crit_edge
  %9 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %5)
  %cmp4.i = icmp ult i32 %10, %5
  br i1 %cmp4.i, label %lor.lhs.false3.i.cleanup_crit_edge, label %lor.rhs.i

lor.lhs.false3.i.cleanup_crit_edge:               ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.rhs.i:                                        ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %5)
  %cmp6.i = icmp eq i32 %10, %5
  br i1 %cmp6.i, label %snd_interval_test.exit, label %lor.rhs.i.if.end6_crit_edge

lor.rhs.i.if.end6_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

snd_interval_test.exit:                           ; preds = %lor.rhs.i
  %11 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load7.i = load i8, ptr %openmin.i, align 4
  %12 = and i8 %bf.load7.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.not = icmp eq i8 %12, 0
  br i1 %tobool.not.not, label %snd_interval_test.exit.if.end6_crit_edge, label %snd_interval_test.exit.cleanup_crit_edge

snd_interval_test.exit.cleanup_crit_edge:         ; preds = %snd_interval_test.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

snd_interval_test.exit.if.end6_crit_edge:         ; preds = %snd_interval_test.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6:                                          ; preds = %snd_interval_test.exit.if.end6_crit_edge, %lor.rhs.i.if.end6_crit_edge
  %13 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %t, align 4
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode, align 4
  %arrayidx7 = getelementptr i32, ptr %1, i32 %16
  %17 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx7, align 4
  %19 = call i32 @llvm.umin.i32(i32 %14, i32 %18)
  %20 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %t, align 4
  %21 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max, align 4
  %23 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx7, align 4
  %25 = call i32 @llvm.umax.i32(i32 %22, i32 %24)
  %26 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %max, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %snd_interval_test.exit.cleanup_crit_edge, %lor.lhs.false3.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #6
  %inc = add nuw nsw i32 %i.041, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %call19 = call i32 @snd_interval_refine(ptr noundef %arrayidx.i, ptr noundef nonnull %t) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %t) #6
  ret i32 %call19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_rule_rate(ptr noundef %params, ptr nocapture noundef readonly %rule) #0 align 64 {
entry:
  %t = alloca %struct.snd_interval, align 4
  %mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %arrayidx.i37 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %t) #6
  %2 = call ptr @memcpy(ptr %t, ptr @__const.hw_rule_rate.t, i32 12)
  %openmin.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2, i32 2
  %max.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2, i32 1
  %max = getelementptr inbounds %struct.snd_interval, ptr %t, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.041 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #6
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %mode, align 4, !annotation !15
  %call2 = call i32 @snd_ff_stream_get_multiplier_mode(i32 noundef %i.041, ptr noundef nonnull %mode) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp.i = icmp ugt i32 %9, %7
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %lor.lhs.false.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp2.i = icmp eq i32 %9, %7
  br i1 %cmp2.i, label %land.lhs.true.i, label %lor.lhs.false.i.lor.lhs.false3.i_crit_edge

lor.lhs.false.i.lor.lhs.false3.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false3.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %10 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %openmin.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %land.lhs.true.i.lor.lhs.false3.i_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i.lor.lhs.false3.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false3.i

lor.lhs.false3.i:                                 ; preds = %land.lhs.true.i.lor.lhs.false3.i_crit_edge, %lor.lhs.false.i.lor.lhs.false3.i_crit_edge
  %11 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %7)
  %cmp4.i = icmp ult i32 %12, %7
  br i1 %cmp4.i, label %lor.lhs.false3.i.cleanup_crit_edge, label %lor.rhs.i

lor.lhs.false3.i.cleanup_crit_edge:               ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.rhs.i:                                        ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %7)
  %cmp6.i = icmp eq i32 %12, %7
  br i1 %cmp6.i, label %snd_interval_test.exit, label %lor.rhs.i.if.end6_crit_edge

lor.rhs.i.if.end6_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

snd_interval_test.exit:                           ; preds = %lor.rhs.i
  %13 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load7.i = load i8, ptr %openmin.i, align 4
  %14 = and i8 %bf.load7.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.not = icmp eq i8 %14, 0
  br i1 %tobool.not.not, label %snd_interval_test.exit.if.end6_crit_edge, label %snd_interval_test.exit.cleanup_crit_edge

snd_interval_test.exit.cleanup_crit_edge:         ; preds = %snd_interval_test.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

snd_interval_test.exit.if.end6_crit_edge:         ; preds = %snd_interval_test.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6:                                          ; preds = %snd_interval_test.exit.if.end6_crit_edge, %lor.rhs.i.if.end6_crit_edge
  %15 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %t, align 4
  %arrayidx7 = getelementptr [7 x i32], ptr @amdtp_rate_table, i32 0, i32 %i.041
  %17 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx7, align 4
  %19 = call i32 @llvm.umin.i32(i32 %16, i32 %18)
  %20 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %t, align 4
  %21 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max, align 4
  %23 = call i32 @llvm.umax.i32(i32 %22, i32 %18)
  %24 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %max, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %snd_interval_test.exit.cleanup_crit_edge, %lor.lhs.false3.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #6
  %inc = add nuw nsw i32 %i.041, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %call19 = call i32 @snd_interval_refine(ptr noundef %arrayidx.i, ptr noundef nonnull %t) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %t) #6
  ret i32 %call19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_ff_add_pcm_hw_constraints(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ff_stream_get_multiplier_mode(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_rate_to_rate_bit(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_refine(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ff_stream_reserve_duplex(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ff_stream_stop_duplex(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ff_stream_start_duplex(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_stream_pcm_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_domain_stream_pcm_pointer(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_domain_stream_pcm_ack(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @snd_ff_create_pcm_devices.pcm_capture_ops, !1, !"pcm_capture_ops", i1 false, i1 false}
!1 = !{!"../sound/firewire/fireface/ff-pcm.c", i32 365, i32 34}
!2 = !{ptr @snd_ff_create_pcm_devices.pcm_playback_ops, !3, !"pcm_playback_ops", i1 false, i1 false}
!3 = !{!"../sound/firewire/fireface/ff-pcm.c", i32 375, i32 34}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/firewire/fireface/ff-pcm.c", i32 394, i32 4}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"auto-init"}
