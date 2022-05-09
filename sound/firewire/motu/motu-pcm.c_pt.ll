; ModuleID = '/llk/IR_all_yes/sound/firewire/motu/motu-pcm.c_pt.bc'
source_filename = "../sound/firewire/motu/motu-pcm.c"
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
%struct.snd_motu = type { ptr, ptr, %struct.mutex, %struct.spinlock, ptr, %struct.snd_motu_packet_format, %struct.snd_motu_packet_format, %struct.amdtp_stream, %struct.amdtp_stream, %struct.fw_iso_resources, %struct.fw_iso_resources, i32, %struct.fw_address_handler, i32, i32, i8, %struct.wait_queue_head, ptr, %struct.amdtp_domain, %struct.amdtp_motu_cache, ptr }
%struct.snd_motu_packet_format = type { i8, i8, i8, i8, [3 x i8] }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.fw_address_handler = type { i64, i64, ptr, ptr, %struct.list_head }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.92, %struct.anon.93 }
%struct.anon.92 = type { i32, i32, i32 }
%struct.anon.93 = type { i8 }
%struct.amdtp_motu_cache = type { ptr, i32, i32, i32, i32, i32 }
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
%struct.snd_motu_spec = type { ptr, i32, i32, [3 x i8], [3 x i8] }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_pcm_hw_rule = type { i32, i32, [5 x i32], ptr, ptr }

@snd_motu_create_pcm_devices.capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @pcm_open, ptr @pcm_close, ptr null, ptr @pcm_hw_params, ptr @pcm_hw_free, ptr @capture_prepare, ptr @capture_trigger, ptr null, ptr @capture_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @capture_ack }, [32 x i8] zeroinitializer }, align 32
@snd_motu_create_pcm_devices.playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @pcm_open, ptr @pcm_close, ptr null, ptr @pcm_hw_params, ptr @pcm_hw_free, ptr @playback_prepare, ptr @playback_trigger, ptr null, ptr @playback_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @playback_ack }, [32 x i8] zeroinitializer }, align 32
@snd_motu_clock_rates = external dso_local local_unnamed_addr constant [6 x i32], align 4
@__const.motu_channels_constraint.channels = private unnamed_addr constant { i32, i32, i8, [3 x i8] } { i32 -1, i32 0, i8 32, [3 x i8] zeroinitializer }, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 11]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.5 = private unnamed_addr constant [12 x i8] c"capture_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 336, i32 34 }
@___asan_gen_.8 = private unnamed_addr constant [13 x i8] c"playback_ops\00", align 1
@___asan_gen_.9 = private constant [34 x i8] c"../sound/firewire/motu/motu-pcm.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 346, i32 34 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @snd_motu_create_pcm_devices.capture_ops, ptr @snd_motu_create_pcm_devices.playback_ops], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_motu_create_pcm_devices.capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_motu_create_pcm_devices.playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_motu_create_pcm_devices(ptr noundef %motu) local_unnamed_addr #0 align 64 {
entry:
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #6
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !13
  %1 = ptrtoint ptr %motu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %motu, align 8
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
  store ptr %motu, ptr %private_data, align 8
  %name = getelementptr inbounds %struct.snd_pcm, ptr %4, i32 0, i32 7
  %6 = ptrtoint ptr %motu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %motu, align 8
  %shortname = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 3
  %call5 = call ptr @strcpy(ptr noundef %name, ptr noundef %shortname) #9
  call void @snd_pcm_set_ops(ptr noundef %4, i32 noundef 1, ptr noundef nonnull @snd_motu_create_pcm_devices.capture_ops) #6
  %8 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %9, i32 noundef 0, ptr noundef nonnull @snd_motu_create_pcm_devices.playback_ops) #6
  %10 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcm, align 4
  %call6 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %11, i32 noundef 7, ptr noundef null, i32 noundef 0, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_open(ptr noundef %substream) #0 align 64 {
entry:
  %src = alloca i32, align 4
  %rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src) #6
  %2 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %src, align 4, !annotation !13
  %call = tail call i32 @snd_motu_stream_lock_try(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup44_crit_edge, label %if.end

entry.cleanup44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup44

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call1 = tail call i32 @snd_motu_stream_cache_packet_formats(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.err_locked_crit_edge, label %if.end4

if.end.err_locked_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_locked

if.end4:                                          ; preds = %if.end
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %3 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %runtime1.i, align 4
  %stream3.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %5 = ptrtoint ptr %stream3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stream3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i = icmp eq i32 %6, 1
  %tx_stream.i = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 7
  %tx_packet_formats.i = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 5
  %rx_stream.i = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 8
  %rx_packet_formats.i = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 6
  %stream.0.i = select i1 %cmp.i, ptr %tx_stream.i, ptr %rx_stream.i
  %formats.0.i = select i1 %cmp.i, ptr %tx_packet_formats.i, ptr %rx_packet_formats.i
  %7 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 46, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 2048, ptr %7, align 8
  %channels_min.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 46, i32 5
  %9 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %channels_min.i.i, align 4
  %channels_max.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 46, i32 6
  %10 = ptrtoint ptr %channels_max.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %channels_max.i.i, align 8
  %rates.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 46, i32 2
  %arrayidx2.i.i = getelementptr %struct.snd_motu_packet_format, ptr %formats.0.i, i32 0, i32 4, i32 0
  %11 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp3.i.i = icmp eq i8 %12, 0
  br i1 %cmp3.i.i, label %if.end4.for.inc.1.i.i_crit_edge, label %for.inc.i.i

if.end4.for.inc.1.i.i_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i.i

for.inc.i.i:                                      ; preds = %if.end4
  %conv.i.i = zext i8 %12 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snd_motu_clock_rates to i32))
  %13 = load i32, ptr @snd_motu_clock_rates, align 4
  %call.i.i = tail call i32 @snd_pcm_rate_to_rate_bit(i32 noundef %13) #6
  %14 = ptrtoint ptr %rates.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rates.i.i, align 8
  %or.i.i = or i32 %15, %call.i.i
  store i32 %or.i.i, ptr %rates.i.i, align 8
  %16 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channels_min.i.i, align 4
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 %conv.i.i) #6
  %19 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %channels_min.i.i, align 4
  %20 = ptrtoint ptr %channels_max.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channels_max.i.i, align 8
  %22 = tail call i32 @llvm.umax.i32(i32 %21, i32 %conv.i.i) #6
  %23 = ptrtoint ptr %channels_max.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %channels_max.i.i, align 8
  %24 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %.pr.i.i = load i8, ptr %arrayidx2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i.i)
  %cmp3.1.i.i = icmp eq i8 %.pr.i.i, 0
  br i1 %cmp3.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge, label %if.end.1.i.i

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i.i

if.end.1.i.i:                                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.1.i.i = zext i8 %.pr.i.i to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 1) to i32))
  %25 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 1), align 4
  %call.1.i.i = tail call i32 @snd_pcm_rate_to_rate_bit(i32 noundef %25) #6
  %26 = ptrtoint ptr %rates.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rates.i.i, align 8
  %or.1.i.i = or i32 %27, %call.1.i.i
  store i32 %or.1.i.i, ptr %rates.i.i, align 8
  %28 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %channels_min.i.i, align 4
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 %conv.1.i.i) #6
  %31 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %channels_min.i.i, align 4
  %32 = ptrtoint ptr %channels_max.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %channels_max.i.i, align 8
  %34 = tail call i32 @llvm.umax.i32(i32 %33, i32 %conv.1.i.i) #6
  %35 = ptrtoint ptr %channels_max.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %channels_max.i.i, align 8
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.end.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge, %if.end4.for.inc.1.i.i_crit_edge
  %arrayidx2.2.i.i = getelementptr %struct.snd_motu_packet_format, ptr %formats.0.i, i32 0, i32 4, i32 1
  %36 = ptrtoint ptr %arrayidx2.2.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx2.2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp3.2.i.i = icmp eq i8 %37, 0
  br i1 %cmp3.2.i.i, label %for.inc.1.i.i.for.inc.3.i.i_crit_edge, label %for.inc.2.i.i

for.inc.1.i.i.for.inc.3.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3.i.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  %conv.2.i.i = zext i8 %37 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 2) to i32))
  %38 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 2), align 4
  %call.2.i.i = tail call i32 @snd_pcm_rate_to_rate_bit(i32 noundef %38) #6
  %39 = ptrtoint ptr %rates.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rates.i.i, align 8
  %or.2.i.i = or i32 %40, %call.2.i.i
  store i32 %or.2.i.i, ptr %rates.i.i, align 8
  %41 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %channels_min.i.i, align 4
  %43 = tail call i32 @llvm.umin.i32(i32 %42, i32 %conv.2.i.i) #6
  %44 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %channels_min.i.i, align 4
  %45 = ptrtoint ptr %channels_max.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %channels_max.i.i, align 8
  %47 = tail call i32 @llvm.umax.i32(i32 %46, i32 %conv.2.i.i) #6
  %48 = ptrtoint ptr %channels_max.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %channels_max.i.i, align 8
  %49 = ptrtoint ptr %arrayidx2.2.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %.pr5.i.i = load i8, ptr %arrayidx2.2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr5.i.i)
  %cmp3.3.i.i = icmp eq i8 %.pr5.i.i, 0
  br i1 %cmp3.3.i.i, label %for.inc.2.i.i.for.inc.3.i.i_crit_edge, label %if.end.3.i.i

for.inc.2.i.i.for.inc.3.i.i_crit_edge:            ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3.i.i

if.end.3.i.i:                                     ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.3.i.i = zext i8 %.pr5.i.i to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 3) to i32))
  %50 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 3), align 4
  %call.3.i.i = tail call i32 @snd_pcm_rate_to_rate_bit(i32 noundef %50) #6
  %51 = ptrtoint ptr %rates.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rates.i.i, align 8
  %or.3.i.i = or i32 %52, %call.3.i.i
  store i32 %or.3.i.i, ptr %rates.i.i, align 8
  %53 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %channels_min.i.i, align 4
  %55 = tail call i32 @llvm.umin.i32(i32 %54, i32 %conv.3.i.i) #6
  %56 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %channels_min.i.i, align 4
  %57 = ptrtoint ptr %channels_max.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %channels_max.i.i, align 8
  %59 = tail call i32 @llvm.umax.i32(i32 %58, i32 %conv.3.i.i) #6
  %60 = ptrtoint ptr %channels_max.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %channels_max.i.i, align 8
  br label %for.inc.3.i.i

for.inc.3.i.i:                                    ; preds = %if.end.3.i.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge, %for.inc.1.i.i.for.inc.3.i.i_crit_edge
  %arrayidx2.4.i.i = getelementptr %struct.snd_motu_packet_format, ptr %formats.0.i, i32 0, i32 4, i32 2
  %61 = ptrtoint ptr %arrayidx2.4.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx2.4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp3.4.i.i = icmp eq i8 %62, 0
  br i1 %cmp3.4.i.i, label %for.inc.3.i.i.limit_channels_and_rates.exit.i_crit_edge, label %for.inc.4.i.i

for.inc.3.i.i.limit_channels_and_rates.exit.i_crit_edge: ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %limit_channels_and_rates.exit.i

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  %conv.4.i.i = zext i8 %62 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 4) to i32))
  %63 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 4), align 4
  %call.4.i.i = tail call i32 @snd_pcm_rate_to_rate_bit(i32 noundef %63) #6
  %64 = ptrtoint ptr %rates.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rates.i.i, align 8
  %or.4.i.i = or i32 %65, %call.4.i.i
  store i32 %or.4.i.i, ptr %rates.i.i, align 8
  %66 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %channels_min.i.i, align 4
  %68 = tail call i32 @llvm.umin.i32(i32 %67, i32 %conv.4.i.i) #6
  %69 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %channels_min.i.i, align 4
  %70 = ptrtoint ptr %channels_max.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %channels_max.i.i, align 8
  %72 = tail call i32 @llvm.umax.i32(i32 %71, i32 %conv.4.i.i) #6
  %73 = ptrtoint ptr %channels_max.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %channels_max.i.i, align 8
  %74 = ptrtoint ptr %arrayidx2.4.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %.pr7.i.i = load i8, ptr %arrayidx2.4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr7.i.i)
  %cmp3.5.i.i = icmp eq i8 %.pr7.i.i, 0
  br i1 %cmp3.5.i.i, label %for.inc.4.i.i.limit_channels_and_rates.exit.i_crit_edge, label %if.end.5.i.i

for.inc.4.i.i.limit_channels_and_rates.exit.i_crit_edge: ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %limit_channels_and_rates.exit.i

if.end.5.i.i:                                     ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.5.i.i = zext i8 %.pr7.i.i to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 5) to i32))
  %75 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 5), align 4
  %call.5.i.i = tail call i32 @snd_pcm_rate_to_rate_bit(i32 noundef %75) #6
  %76 = ptrtoint ptr %rates.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rates.i.i, align 8
  %or.5.i.i = or i32 %77, %call.5.i.i
  store i32 %or.5.i.i, ptr %rates.i.i, align 8
  %78 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %channels_min.i.i, align 4
  %80 = tail call i32 @llvm.umin.i32(i32 %79, i32 %conv.5.i.i) #6
  %81 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %channels_min.i.i, align 4
  %82 = ptrtoint ptr %channels_max.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %channels_max.i.i, align 8
  %84 = tail call i32 @llvm.umax.i32(i32 %83, i32 %conv.5.i.i) #6
  %85 = ptrtoint ptr %channels_max.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %channels_max.i.i, align 8
  br label %limit_channels_and_rates.exit.i

limit_channels_and_rates.exit.i:                  ; preds = %if.end.5.i.i, %for.inc.4.i.i.limit_channels_and_rates.exit.i_crit_edge, %for.inc.3.i.i.limit_channels_and_rates.exit.i_crit_edge
  %hw.i.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 46
  %call.i.i.i = tail call i32 @snd_pcm_hw_limit_rates(ptr noundef %hw.i.i.i) #6
  %call.i = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %4, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @motu_rate_constraint, ptr noundef %formats.0.i, i32 noundef 10, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6.i = icmp slt i32 %call.i, 0
  br i1 %cmp6.i, label %limit_channels_and_rates.exit.i.err_locked_crit_edge, label %if.end8.i

limit_channels_and_rates.exit.i.err_locked_crit_edge: ; preds = %limit_channels_and_rates.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_locked

if.end8.i:                                        ; preds = %limit_channels_and_rates.exit.i
  %call9.i = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %4, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @motu_channels_constraint, ptr noundef %formats.0.i, i32 noundef 11, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.end8.i.err_locked_crit_edge, label %init_hw_info.exit

if.end8.i.err_locked_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_locked

init_hw_info.exit:                                ; preds = %if.end8.i
  %call13.i = tail call i32 @amdtp_motu_add_pcm_hw_constraints(ptr noundef %stream.0.i, ptr noundef %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp6 = icmp slt i32 %call13.i, 0
  br i1 %cmp6, label %init_hw_info.exit.err_locked_crit_edge, label %if.end8

init_hw_info.exit.err_locked_crit_edge:           ; preds = %init_hw_info.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_locked

if.end8:                                          ; preds = %init_hw_info.exit
  %spec.i = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 4
  %86 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %spec.i, align 8
  %protocol_version.i = getelementptr inbounds %struct.snd_motu_spec, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %protocol_version.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %protocol_version.i, align 4
  %90 = zext i32 %89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values)
  switch i32 %89, label %if.end8.err_locked_crit_edge [
    i32 1, label %if.then.i
    i32 2, label %if.then4.i
    i32 0, label %if.then10.i
  ]

if.end8.err_locked_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_locked

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %call.i79 = call i32 @snd_motu_protocol_v2_get_clock_source(ptr noundef %1, ptr noundef nonnull %src) #6
  br label %snd_motu_protocol_get_clock_source.exit

if.then4.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = call i32 @snd_motu_protocol_v3_get_clock_source(ptr noundef %1, ptr noundef nonnull %src) #6
  br label %snd_motu_protocol_get_clock_source.exit

if.then10.i:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %call11.i = call i32 @snd_motu_protocol_v1_get_clock_source(ptr noundef %1, ptr noundef nonnull %src) #6
  br label %snd_motu_protocol_get_clock_source.exit

snd_motu_protocol_get_clock_source.exit:          ; preds = %if.then10.i, %if.then4.i, %if.then.i
  %retval.0.i80 = phi i32 [ %call.i79, %if.then.i ], [ %call5.i, %if.then4.i ], [ %call11.i, %if.then10.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i80)
  %cmp10 = icmp slt i32 %retval.0.i80, 0
  br i1 %cmp10, label %snd_motu_protocol_get_clock_source.exit.err_locked_crit_edge, label %if.end12

snd_motu_protocol_get_clock_source.exit.err_locked_crit_edge: ; preds = %snd_motu_protocol_get_clock_source.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_locked

if.end12:                                         ; preds = %snd_motu_protocol_get_clock_source.exit
  %91 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %src, align 4
  %93 = zext i32 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %92, label %if.end12.if.then18_crit_edge [
    i32 0, label %if.end12.lor.lhs.false_crit_edge
    i32 11, label %if.end12.lor.lhs.false_crit_edge99
  ]

if.end12.lor.lhs.false_crit_edge99:               ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

if.end12.lor.lhs.false_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

if.end12.if.then18_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then18

lor.lhs.false:                                    ; preds = %if.end12.lor.lhs.false_crit_edge, %if.end12.lor.lhs.false_crit_edge99
  %substreams_counter = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 11
  %94 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %substreams_counter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp15.not = icmp eq i32 %95, 0
  br i1 %cmp15.not, label %lor.lhs.false.if.end41_crit_edge, label %land.lhs.true16

lor.lhs.false.if.end41_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

land.lhs.true16:                                  ; preds = %lor.lhs.false
  %events_per_period = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 18, i32 1
  %96 = ptrtoint ptr %events_per_period to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %events_per_period, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp17.not = icmp eq i32 %97, 0
  br i1 %cmp17.not, label %land.lhs.true16.if.end41_crit_edge, label %land.lhs.true16.if.then18_crit_edge

land.lhs.true16.if.then18_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then18

land.lhs.true16.if.end41_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then18:                                        ; preds = %land.lhs.true16.if.then18_crit_edge, %if.end12.if.then18_crit_edge
  %events_per_period19 = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 18, i32 1
  %98 = ptrtoint ptr %events_per_period19 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %events_per_period19, align 4
  %events_per_buffer = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 18, i32 2
  %100 = ptrtoint ptr %events_per_buffer to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %events_per_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate) #6
  %102 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 -1, ptr %rate, align 4, !annotation !13
  %103 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %spec.i, align 8
  %protocol_version.i82 = getelementptr inbounds %struct.snd_motu_spec, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %protocol_version.i82 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %protocol_version.i82, align 4
  %107 = zext i32 %106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %106, label %if.then18.cleanup.thread_crit_edge [
    i32 1, label %if.then.i84
    i32 2, label %if.then4.i86
    i32 0, label %if.then10.i88
  ]

if.then18.cleanup.thread_crit_edge:               ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.then.i84:                                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  %call.i83 = call i32 @snd_motu_protocol_v2_get_clock_rate(ptr noundef %1, ptr noundef nonnull %rate) #6
  br label %snd_motu_protocol_get_clock_rate.exit

if.then4.i86:                                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i85 = call i32 @snd_motu_protocol_v3_get_clock_rate(ptr noundef %1, ptr noundef nonnull %rate) #6
  br label %snd_motu_protocol_get_clock_rate.exit

if.then10.i88:                                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  %call11.i87 = call i32 @snd_motu_protocol_v1_get_clock_rate(ptr noundef %1, ptr noundef nonnull %rate) #6
  br label %snd_motu_protocol_get_clock_rate.exit

snd_motu_protocol_get_clock_rate.exit:            ; preds = %if.then10.i88, %if.then4.i86, %if.then.i84
  %retval.0.i89 = phi i32 [ %call.i83, %if.then.i84 ], [ %call5.i85, %if.then4.i86 ], [ %call11.i87, %if.then10.i88 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i89)
  %cmp21 = icmp slt i32 %retval.0.i89, 0
  br i1 %cmp21, label %snd_motu_protocol_get_clock_rate.exit.cleanup.thread_crit_edge, label %if.end23

snd_motu_protocol_get_clock_rate.exit.cleanup.thread_crit_edge: ; preds = %snd_motu_protocol_get_clock_rate.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end23:                                         ; preds = %snd_motu_protocol_get_clock_rate.exit
  %108 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %rate, align 4
  %110 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %runtime1.i, align 4
  %rate_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %111, i32 0, i32 46, i32 3
  %112 = ptrtoint ptr %rate_min to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %109, ptr %rate_min, align 4
  %113 = load ptr, ptr %runtime1.i, align 4
  %rate_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %113, i32 0, i32 46, i32 4
  %114 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %109, ptr %rate_max, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp26.not = icmp eq i32 %99, 0
  br i1 %cmp26.not, label %if.end23.cleanup_crit_edge, label %if.then27

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then27:                                        ; preds = %if.end23
  %115 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %runtime1.i, align 4
  %call29 = call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %116, i32 noundef 13, i32 noundef %99, i32 noundef %99) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then27.cleanup.thread_crit_edge, label %if.end32

if.then27.cleanup.thread_crit_edge:               ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end32:                                         ; preds = %if.then27
  %117 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %runtime1.i, align 4
  %call34 = call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %118, i32 noundef 17, i32 noundef %101, i32 noundef %101) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.end32.cleanup.thread_crit_edge, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32.cleanup.thread_crit_edge:                ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end32.cleanup.thread_crit_edge, %if.then27.cleanup.thread_crit_edge, %snd_motu_protocol_get_clock_rate.exit.cleanup.thread_crit_edge, %if.then18.cleanup.thread_crit_edge
  %err.1.ph = phi i32 [ %call34, %if.end32.cleanup.thread_crit_edge ], [ %call29, %if.then27.cleanup.thread_crit_edge ], [ %retval.0.i89, %snd_motu_protocol_get_clock_rate.exit.cleanup.thread_crit_edge ], [ -6, %if.then18.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate) #6
  br label %err_locked

cleanup:                                          ; preds = %if.end32.cleanup_crit_edge, %if.end23.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate) #6
  br label %if.end41

if.end41:                                         ; preds = %cleanup, %land.lhs.true16.if.end41_crit_edge, %lor.lhs.false.if.end41_crit_edge
  call void @snd_pcm_set_sync(ptr noundef %substream) #6
  call void @mutex_unlock(ptr noundef %mutex) #6
  br label %cleanup44

err_locked:                                       ; preds = %cleanup.thread, %snd_motu_protocol_get_clock_source.exit.err_locked_crit_edge, %if.end8.err_locked_crit_edge, %init_hw_info.exit.err_locked_crit_edge, %if.end8.i.err_locked_crit_edge, %limit_channels_and_rates.exit.i.err_locked_crit_edge, %if.end.err_locked_crit_edge
  %err.2 = phi i32 [ %call1, %if.end.err_locked_crit_edge ], [ %call13.i, %init_hw_info.exit.err_locked_crit_edge ], [ %retval.0.i80, %snd_motu_protocol_get_clock_source.exit.err_locked_crit_edge ], [ %err.1.ph, %cleanup.thread ], [ %call9.i, %if.end8.i.err_locked_crit_edge ], [ %call.i, %limit_channels_and_rates.exit.i.err_locked_crit_edge ], [ -6, %if.end8.err_locked_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #6
  call void @snd_motu_stream_lock_release(ptr noundef %1) #6
  br label %cleanup44

cleanup44:                                        ; preds = %err_locked, %if.end41, %entry.cleanup44_crit_edge
  %retval.0 = phi i32 [ %err.2, %err_locked ], [ 0, %if.end41 ], [ %call, %entry.cleanup44_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src) #6
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
  tail call void @snd_motu_stream_lock_release(ptr noundef %1) #6
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
  %mutex = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call3 = tail call i32 @snd_motu_stream_reserve_duplex(ptr noundef %1, i32 noundef %9, i32 noundef %11, i32 noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp4 = icmp sgt i32 %call3, -1
  br i1 %cmp4, label %if.then5, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %substreams_counter = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %substreams_counter, align 8
  %inc = add i32 %15, 1
  store i32 %inc, ptr %substreams_counter, align 8
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
  %mutex = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 2
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
  %substreams_counter = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %substreams_counter, align 8
  %dec = add i32 %9, -1
  store i32 %dec, ptr %substreams_counter, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @snd_motu_stream_stop_duplex(ptr noundef %1) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capture_prepare(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call = tail call i32 @snd_motu_stream_start_duplex(ptr noundef %1) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tx_stream = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 7
  tail call void @amdtp_stream_pcm_prepare(ptr noundef %tx_stream) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capture_trigger(ptr noundef %substream, i32 noundef %cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.3)
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
  %pcm3.i = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 7, i32 19
  %3 = ptrtoint ptr %pcm3.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %substream.sink, ptr %pcm3.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capture_pointer(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %domain = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 18
  %tx_stream = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 7
  %call = tail call i32 @amdtp_domain_stream_pcm_pointer(ptr noundef %domain, ptr noundef %tx_stream) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capture_ack(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %domain = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 18
  %tx_stream = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 7
  %call = tail call i32 @amdtp_domain_stream_pcm_ack(ptr noundef %domain, ptr noundef %tx_stream) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @playback_prepare(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call = tail call i32 @snd_motu_stream_start_duplex(ptr noundef %1) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rx_stream = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 8
  tail call void @amdtp_stream_pcm_prepare(ptr noundef %rx_stream) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @playback_trigger(ptr noundef %substream, i32 noundef %cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.4)
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
  %pcm3.i = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 8, i32 19
  %3 = ptrtoint ptr %pcm3.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %substream.sink, ptr %pcm3.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @playback_pointer(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %domain = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 18
  %rx_stream = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 8
  %call = tail call i32 @amdtp_domain_stream_pcm_pointer(ptr noundef %domain, ptr noundef %rx_stream) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @playback_ack(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %domain = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 18
  %rx_stream = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 8
  %call = tail call i32 @amdtp_domain_stream_pcm_ack(ptr noundef %domain, ptr noundef %rx_stream) #6
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_stream_lock_try(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_stream_cache_packet_formats(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_motu_stream_lock_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_rule_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @motu_rate_constraint(ptr noundef %params, ptr nocapture noundef readonly %rule) #0 align 64 {
entry:
  %rates = alloca %struct.snd_interval, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rates) #6
  %2 = call ptr @memcpy(ptr %rates, ptr @__const.motu_channels_constraint.channels, i32 12)
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %openmin.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2, i32 2
  %max.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2, i32 1
  %max = getelementptr inbounds %struct.snd_interval, ptr %rates, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.032 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 %i.032
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %div27 = lshr i32 %i.032, 1
  %arrayidx2 = getelementptr %struct.snd_motu_packet_format, ptr %1, i32 0, i32 4, i32 %div27
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx2, align 1
  %conv = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp.i = icmp ugt i32 %4, %conv
  br i1 %cmp.i, label %for.body.for.inc_crit_edge, label %lor.lhs.false.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false.i:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp2.i = icmp eq i32 %4, %conv
  br i1 %cmp2.i, label %land.lhs.true.i, label %lor.lhs.false.i.lor.lhs.false3.i_crit_edge

lor.lhs.false.i.lor.lhs.false3.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false3.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %9 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i = load i8, ptr %openmin.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %land.lhs.true.i.lor.lhs.false3.i_crit_edge, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true.i.lor.lhs.false3.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false3.i

lor.lhs.false3.i:                                 ; preds = %land.lhs.true.i.lor.lhs.false3.i_crit_edge, %lor.lhs.false.i.lor.lhs.false3.i_crit_edge
  %10 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv)
  %cmp4.i = icmp ult i32 %11, %conv
  br i1 %cmp4.i, label %lor.lhs.false3.i.for.inc_crit_edge, label %lor.rhs.i

lor.lhs.false3.i.for.inc_crit_edge:               ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.rhs.i:                                        ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv)
  %cmp6.i = icmp eq i32 %11, %conv
  br i1 %cmp6.i, label %snd_interval_test.exit, label %lor.rhs.i.if.end_crit_edge

lor.rhs.i.if.end_crit_edge:                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

snd_interval_test.exit:                           ; preds = %lor.rhs.i
  %12 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load7.i = load i8, ptr %openmin.i, align 4
  %13 = and i8 %bf.load7.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.not = icmp eq i8 %13, 0
  br i1 %tobool.not.not, label %snd_interval_test.exit.if.end_crit_edge, label %snd_interval_test.exit.for.inc_crit_edge

snd_interval_test.exit.for.inc_crit_edge:         ; preds = %snd_interval_test.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

snd_interval_test.exit.if.end_crit_edge:          ; preds = %snd_interval_test.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %snd_interval_test.exit.if.end_crit_edge, %lor.rhs.i.if.end_crit_edge
  %14 = ptrtoint ptr %rates to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rates, align 4
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 %6)
  %17 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %rates, align 4
  %18 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max, align 4
  %20 = tail call i32 @llvm.umax.i32(i32 %19, i32 %6)
  %21 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %max, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %snd_interval_test.exit.for.inc_crit_edge, %lor.lhs.false3.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i28 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %call15 = call i32 @snd_interval_refine(ptr noundef %arrayidx.i28, ptr noundef nonnull %rates) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rates) #6
  ret i32 %call15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @motu_channels_constraint(ptr noundef %params, ptr nocapture noundef readonly %rule) #0 align 64 {
entry:
  %channels = alloca %struct.snd_interval, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %channels) #6
  %2 = call ptr @memcpy(ptr %channels, ptr @__const.motu_channels_constraint.channels, i32 12)
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %openmin.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 2
  %max.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 1
  %max = getelementptr inbounds %struct.snd_interval, ptr %channels, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.031 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 %i.031
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.i = icmp ugt i32 %4, %6
  br i1 %cmp.i, label %for.body.for.inc_crit_edge, label %lor.lhs.false.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false.i:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp2.i = icmp eq i32 %4, %6
  br i1 %cmp2.i, label %land.lhs.true.i, label %lor.lhs.false.i.lor.lhs.false3.i_crit_edge

lor.lhs.false.i.lor.lhs.false3.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false3.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %7 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %openmin.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %land.lhs.true.i.lor.lhs.false3.i_crit_edge, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true.i.lor.lhs.false3.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false3.i

lor.lhs.false3.i:                                 ; preds = %land.lhs.true.i.lor.lhs.false3.i_crit_edge, %lor.lhs.false.i.lor.lhs.false3.i_crit_edge
  %8 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %6)
  %cmp4.i = icmp ult i32 %9, %6
  br i1 %cmp4.i, label %lor.lhs.false3.i.for.inc_crit_edge, label %lor.rhs.i

lor.lhs.false3.i.for.inc_crit_edge:               ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.rhs.i:                                        ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %6)
  %cmp6.i = icmp eq i32 %9, %6
  br i1 %cmp6.i, label %snd_interval_test.exit, label %lor.rhs.i.if.end_crit_edge

lor.rhs.i.if.end_crit_edge:                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

snd_interval_test.exit:                           ; preds = %lor.rhs.i
  %10 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load7.i = load i8, ptr %openmin.i, align 4
  %11 = and i8 %bf.load7.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.not = icmp eq i8 %11, 0
  br i1 %tobool.not.not, label %snd_interval_test.exit.if.end_crit_edge, label %snd_interval_test.exit.for.inc_crit_edge

snd_interval_test.exit.for.inc_crit_edge:         ; preds = %snd_interval_test.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

snd_interval_test.exit.if.end_crit_edge:          ; preds = %snd_interval_test.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %snd_interval_test.exit.if.end_crit_edge, %lor.rhs.i.if.end_crit_edge
  %div26 = lshr i32 %i.031, 1
  %arrayidx3 = getelementptr %struct.snd_motu_packet_format, ptr %1, i32 0, i32 4, i32 %div26
  %12 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx3, align 1
  %conv = zext i8 %13 to i32
  %14 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channels, align 4
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 %conv)
  %17 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %channels, align 4
  %18 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max, align 4
  %20 = tail call i32 @llvm.umax.i32(i32 %19, i32 %conv)
  %21 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %max, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %snd_interval_test.exit.for.inc_crit_edge, %lor.lhs.false3.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i27 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %call15 = call i32 @snd_interval_refine(ptr noundef %arrayidx.i27, ptr noundef nonnull %channels) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %channels) #6
  ret i32 %call15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_motu_add_pcm_hw_constraints(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_rate_to_rate_bit(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_limit_rates(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_refine(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_protocol_v2_get_clock_source(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_protocol_v3_get_clock_source(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_protocol_v1_get_clock_source(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_protocol_v2_get_clock_rate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_protocol_v3_get_clock_rate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_protocol_v1_get_clock_rate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_stream_reserve_duplex(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_motu_stream_stop_duplex(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_stream_start_duplex(ptr noundef) local_unnamed_addr #3

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @snd_motu_create_pcm_devices.capture_ops, !1, !"capture_ops", i1 false, i1 false}
!1 = !{!"../sound/firewire/motu/motu-pcm.c", i32 336, i32 34}
!2 = !{ptr @snd_motu_create_pcm_devices.playback_ops, !3, !"playback_ops", i1 false, i1 false}
!3 = !{!"../sound/firewire/motu/motu-pcm.c", i32 346, i32 34}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"auto-init"}
