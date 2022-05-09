; ModuleID = '/llk/IR_all_yes/sound/firewire/oxfw/oxfw-pcm.c_pt.bc'
source_filename = "../sound/firewire/oxfw/oxfw-pcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_oxfw = type { ptr, ptr, %struct.mutex, %struct.spinlock, i32, i8, i8, [10 x ptr], [10 x ptr], i8, %struct.cmp_connection, %struct.cmp_connection, %struct.amdtp_stream, %struct.amdtp_stream, i32, i32, i32, i32, i8, %struct.wait_queue_head, ptr, %struct.amdtp_domain }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.cmp_connection = type { i32, i8, %struct.mutex, %struct.fw_iso_resources, i32, i32, i32, i32 }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.92, %struct.anon.93 }
%struct.anon.92 = type { i32, i32, i32 }
%struct.anon.93 = type { i8 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_oxfw_stream_formation = type { i32, i32, i32 }
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
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_pcm_hw_rule = type { i32, i32, [5 x i32], ptr, ptr }

@snd_oxfw_create_pcm.capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @pcm_open, ptr @pcm_close, ptr null, ptr @pcm_capture_hw_params, ptr @pcm_capture_hw_free, ptr @pcm_capture_prepare, ptr @pcm_capture_trigger, ptr null, ptr @pcm_capture_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcm_capture_ack }, [32 x i8] zeroinitializer }, align 32
@snd_oxfw_create_pcm.playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @pcm_open, ptr @pcm_close, ptr null, ptr @pcm_playback_hw_params, ptr @pcm_playback_hw_free, ptr @pcm_playback_prepare, ptr @pcm_playback_trigger, ptr null, ptr @pcm_playback_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcm_playback_ack }, [32 x i8] zeroinitializer }, align 32
@__const.hw_rule_rate.t = private unnamed_addr constant { i32, i32, i8, [3 x i8] } { i32 -1, i32 0, i8 32, [3 x i8] zeroinitializer }, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.2 = private unnamed_addr constant [12 x i8] c"capture_ops\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 411, i32 34 }
@___asan_gen_.5 = private unnamed_addr constant [13 x i8] c"playback_ops\00", align 1
@___asan_gen_.6 = private constant [34 x i8] c"../sound/firewire/oxfw/oxfw-pcm.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 421, i32 34 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @snd_oxfw_create_pcm.capture_ops, ptr @snd_oxfw_create_pcm.playback_ops], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_oxfw_create_pcm.capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_oxfw_create_pcm.playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_oxfw_create_pcm(ptr noundef %oxfw) local_unnamed_addr #0 align 64 {
entry:
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #6
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !13
  %has_output = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 5
  %1 = ptrtoint ptr %has_output to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %has_output, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %not.tobool.not = xor i1 %tobool.not, true
  %spec.select = zext i1 %not.tobool.not to i32
  %3 = ptrtoint ptr %oxfw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %oxfw, align 8
  %driver = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 2
  %call = call i32 @snd_pcm_new(ptr noundef %4, ptr noundef %driver, i32 noundef 0, i32 noundef 1, i32 noundef %spec.select, ptr noundef nonnull %pcm) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %entry
  %5 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcm, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %oxfw, ptr %private_data, align 8
  %name = getelementptr inbounds %struct.snd_pcm, ptr %6, i32 0, i32 7
  %8 = ptrtoint ptr %oxfw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %oxfw, align 8
  %shortname = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 3
  %call7 = call ptr @strcpy(ptr noundef %name, ptr noundef %shortname) #9
  call void @snd_pcm_set_ops(ptr noundef %6, i32 noundef 0, ptr noundef nonnull @snd_oxfw_create_pcm.playback_ops) #6
  br i1 %tobool.not, label %if.end3.if.end10_crit_edge, label %if.then9

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then9:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %11, i32 noundef 1, ptr noundef nonnull @snd_oxfw_create_pcm.capture_ops) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end3.if.end10_crit_edge
  %12 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcm, align 4
  %call11 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %13, i32 noundef 7, ptr noundef null, i32 noundef 0, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_open(ptr noundef %substream) #0 align 64 {
entry:
  %formation.i = alloca %struct.snd_oxfw_stream_formation, align 4
  %formation.i.i = alloca %struct.snd_oxfw_stream_formation, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @snd_oxfw_stream_lock_try(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup31_crit_edge, label %if.end

entry.cleanup31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup31

if.end:                                           ; preds = %entry
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1.i, align 4
  %stream2.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  %tx_stream.i = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 12
  %tx_stream_formats.i = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 7
  %rx_stream.i = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 13
  %rx_stream_formats.i = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 8
  %formats.0.i = select i1 %cmp.i, ptr %tx_stream_formats.i, ptr %rx_stream_formats.i
  %stream.0.i = select i1 %cmp.i, ptr %tx_stream.i, ptr %rx_stream.i
  %6 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 2048, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %formation.i.i) #6
  %8 = ptrtoint ptr %formation.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %formation.i.i, align 4, !annotation !13
  %9 = getelementptr inbounds %struct.snd_oxfw_stream_formation, ptr %formation.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !13
  %11 = getelementptr inbounds %struct.snd_oxfw_stream_formation, ptr %formation.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4, !annotation !13
  %channels_min.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 5
  %13 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %channels_min.i.i, align 4
  %channels_max.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 6
  %14 = ptrtoint ptr %channels_max.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %channels_max.i.i, align 8
  %rate_min.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 3
  %15 = ptrtoint ptr %rate_min.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %rate_min.i.i, align 4
  %rate_max.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 4
  %16 = ptrtoint ptr %rate_max.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %rate_max.i.i, align 8
  %rates.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 2
  %17 = ptrtoint ptr %rates.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %rates.i.i, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end
  %i.071.i.i = phi i32 [ 0, %if.end ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %formats.0.i, i32 %i.071.i.i
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp1.i.i = icmp eq ptr %19, null
  br i1 %cmp1.i.i, label %for.body.i.i.limit_channels_and_rates.exit.i_crit_edge, label %if.end.i.i

for.body.i.i.limit_channels_and_rates.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %limit_channels_and_rates.exit.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %call.i.i = call i32 @snd_oxfw_stream_parse_format(ptr noundef nonnull %19, ptr noundef nonnull %formation.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %if.end.i.i.for.inc.i.i_crit_edge, label %if.end5.i.i

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channels_min.i.i, align 4
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %9, align 4
  %24 = call i32 @llvm.umin.i32(i32 %21, i32 %23) #6
  %25 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %channels_min.i.i, align 4
  %26 = ptrtoint ptr %channels_max.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %channels_max.i.i, align 8
  %28 = call i32 @llvm.umax.i32(i32 %27, i32 %23) #6
  %29 = ptrtoint ptr %channels_max.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %channels_max.i.i, align 8
  %30 = ptrtoint ptr %rate_min.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rate_min.i.i, align 4
  %32 = ptrtoint ptr %formation.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %formation.i.i, align 4
  %34 = call i32 @llvm.umin.i32(i32 %31, i32 %33) #6
  %35 = ptrtoint ptr %rate_min.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %rate_min.i.i, align 4
  %36 = ptrtoint ptr %rate_max.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rate_max.i.i, align 8
  %38 = call i32 @llvm.umax.i32(i32 %37, i32 %33) #6
  %39 = ptrtoint ptr %rate_max.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %rate_max.i.i, align 8
  %call36.i.i = call i32 @snd_pcm_rate_to_rate_bit(i32 noundef %33) #6
  %40 = ptrtoint ptr %rates.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rates.i.i, align 8
  %or.i.i = or i32 %41, %call36.i.i
  store i32 %or.i.i, ptr %rates.i.i, align 8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end5.i.i, %if.end.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.071.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 10
  br i1 %exitcond.not.i.i, label %for.inc.i.i.limit_channels_and_rates.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.limit_channels_and_rates.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %limit_channels_and_rates.exit.i

limit_channels_and_rates.exit.i:                  ; preds = %for.inc.i.i.limit_channels_and_rates.exit.i_crit_edge, %for.body.i.i.limit_channels_and_rates.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %formation.i.i) #6
  %call.i = call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %3, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @hw_rule_channels, ptr noundef %formats.0.i, i32 noundef 11, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8.i = icmp slt i32 %call.i, 0
  br i1 %cmp8.i, label %limit_channels_and_rates.exit.i.err_locked_crit_edge, label %if.end10.i

limit_channels_and_rates.exit.i.err_locked_crit_edge: ; preds = %limit_channels_and_rates.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_locked

if.end10.i:                                       ; preds = %limit_channels_and_rates.exit.i
  %call11.i = call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %3, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @hw_rule_rate, ptr noundef %formats.0.i, i32 noundef 10, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.end10.i.err_locked_crit_edge, label %init_hw_params.exit

if.end10.i.err_locked_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_locked

init_hw_params.exit:                              ; preds = %if.end10.i
  %call15.i = call i32 @amdtp_am824_add_pcm_hw_constraints(ptr noundef %stream.0.i, ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp2 = icmp slt i32 %call15.i, 0
  br i1 %cmp2, label %init_hw_params.exit.err_locked_crit_edge, label %if.end4

init_hw_params.exit.err_locked_crit_edge:         ; preds = %init_hw_params.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_locked

if.end4:                                          ; preds = %init_hw_params.exit
  %mutex = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %substreams_count = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 14
  %42 = ptrtoint ptr %substreams_count to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %substreams_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp5.not = icmp eq i32 %43, 0
  br i1 %cmp5.not, label %if.end4.if.end29_crit_edge, label %land.lhs.true

if.end4.if.end29_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end4
  %events_per_period = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 21, i32 1
  %44 = ptrtoint ptr %events_per_period to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %events_per_period, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp6.not = icmp eq i32 %45, 0
  br i1 %cmp6.not, label %land.lhs.true.if.end29_crit_edge, label %if.then7

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then7:                                         ; preds = %land.lhs.true
  %events_per_buffer = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 21, i32 2
  %46 = ptrtoint ptr %events_per_buffer to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %events_per_buffer, align 4
  %48 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %formation.i) #6
  %50 = ptrtoint ptr %formation.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %formation.i, align 4, !annotation !13
  %51 = getelementptr inbounds %struct.snd_oxfw_stream_formation, ptr %formation.i, i32 0, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %51, align 4, !annotation !13
  %53 = getelementptr inbounds %struct.snd_oxfw_stream_formation, ptr %formation.i, i32 0, i32 2
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %53, align 4, !annotation !13
  %55 = ptrtoint ptr %stream2.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %stream2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp.i60 = icmp eq i32 %56, 1
  %..i = zext i1 %cmp.i60 to i32
  %call.i61 = call i32 @snd_oxfw_stream_get_current_formation(ptr noundef %49, i32 noundef %..i, ptr noundef nonnull %formation.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %cmp1.i = icmp slt i32 %call.i61, 0
  br i1 %cmp1.i, label %if.then11, label %if.then15

if.then11:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %formation.i) #6
  br label %err_locked.sink.split

if.then15:                                        ; preds = %if.then7
  %57 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %51, align 4
  %59 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %runtime1.i, align 4
  %channels_min.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %60, i32 0, i32 46, i32 5
  %61 = ptrtoint ptr %channels_min.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %58, ptr %channels_min.i, align 4
  %62 = load ptr, ptr %runtime1.i, align 4
  %channels_max.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %62, i32 0, i32 46, i32 6
  %63 = ptrtoint ptr %channels_max.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %58, ptr %channels_max.i, align 8
  %64 = ptrtoint ptr %formation.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %formation.i, align 4
  %66 = load ptr, ptr %runtime1.i, align 4
  %rate_min.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %66, i32 0, i32 46, i32 3
  %67 = ptrtoint ptr %rate_min.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %65, ptr %rate_min.i, align 4
  %68 = load ptr, ptr %runtime1.i, align 4
  %rate_max.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %68, i32 0, i32 46, i32 4
  %69 = ptrtoint ptr %rate_max.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %65, ptr %rate_max.i, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %formation.i) #6
  %70 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %runtime1.i, align 4
  %call16 = call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %71, i32 noundef 13, i32 noundef %45, i32 noundef %45) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then15.err_locked.sink.split_crit_edge, label %if.end20

if.then15.err_locked.sink.split_crit_edge:        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_locked.sink.split

if.end20:                                         ; preds = %if.then15
  %72 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %runtime1.i, align 4
  %call22 = call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %73, i32 noundef 17, i32 noundef %47, i32 noundef %47) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end20.err_locked.sink.split_crit_edge, label %if.end20.if.end29_crit_edge

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.end20.err_locked.sink.split_crit_edge:         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_locked.sink.split

if.end29:                                         ; preds = %if.end20.if.end29_crit_edge, %land.lhs.true.if.end29_crit_edge, %if.end4.if.end29_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #6
  call void @snd_pcm_set_sync(ptr noundef %substream) #6
  br label %cleanup31

err_locked.sink.split:                            ; preds = %if.end20.err_locked.sink.split_crit_edge, %if.then15.err_locked.sink.split_crit_edge, %if.then11
  %err.2.ph = phi i32 [ %call.i61, %if.then11 ], [ %call16, %if.then15.err_locked.sink.split_crit_edge ], [ %call22, %if.end20.err_locked.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #6
  br label %err_locked

err_locked:                                       ; preds = %err_locked.sink.split, %init_hw_params.exit.err_locked_crit_edge, %if.end10.i.err_locked_crit_edge, %limit_channels_and_rates.exit.i.err_locked_crit_edge
  %err.2 = phi i32 [ %call15.i, %init_hw_params.exit.err_locked_crit_edge ], [ %call11.i, %if.end10.i.err_locked_crit_edge ], [ %call.i, %limit_channels_and_rates.exit.i.err_locked_crit_edge ], [ %err.2.ph, %err_locked.sink.split ]
  call void @snd_oxfw_stream_lock_release(ptr noundef %1) #6
  br label %cleanup31

cleanup31:                                        ; preds = %err_locked, %if.end29, %entry.cleanup31_crit_edge
  %retval.0 = phi i32 [ %err.2, %err_locked ], [ 0, %if.end29 ], [ %call, %entry.cleanup31_crit_edge ]
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
  tail call void @snd_oxfw_stream_lock_release(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_capture_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %hw_params) #0 align 64 {
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
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then:                                          ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i18 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %arrayidx.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i18, align 4
  %arrayidx.i.i19 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 5
  %12 = ptrtoint ptr %arrayidx.i.i19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i19, align 4
  %arrayidx.i.i20 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 9
  %14 = ptrtoint ptr %arrayidx.i.i20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i20, align 4
  %mutex = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %tx_stream = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 12
  %call4 = tail call i32 @snd_oxfw_stream_reserve_duplex(ptr noundef %1, ptr noundef %tx_stream, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp5 = icmp sgt i32 %call4, -1
  br i1 %cmp5, label %if.then6, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %substreams_count = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 14
  %16 = ptrtoint ptr %substreams_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %substreams_count, align 8
  %inc = add i32 %17, 1
  store i32 %inc, ptr %substreams_count, align 8
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  %err.0 = phi i32 [ %call4, %if.end ], [ 0, %entry.if.end8_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_capture_hw_free(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 2
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
  %substreams_count = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %substreams_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %substreams_count, align 8
  %dec = add i32 %9, -1
  store i32 %dec, ptr %substreams_count, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @snd_oxfw_stream_stop_duplex(ptr noundef %1) #6
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
  %mutex = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call = tail call i32 @snd_oxfw_stream_start_duplex(ptr noundef %1) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.end_crit_edge, label %if.end

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tx_stream = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 12
  tail call void @amdtp_stream_pcm_prepare(ptr noundef %tx_stream) #6
  br label %end

end:                                              ; preds = %if.end, %entry.end_crit_edge
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
    i32 1, label %entry.sw.epilog_crit_edge
    i32 0, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %pcm.0 = phi ptr [ null, %sw.bb1 ], [ %substream, %entry.sw.epilog_crit_edge ]
  %pcm3.i = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 12, i32 19
  %3 = ptrtoint ptr %pcm3.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %pcm.0, ptr %pcm3.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_capture_pointer(ptr nocapture noundef readonly %sbstm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %sbstm, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %domain = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 21
  %tx_stream = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 12
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
  %domain = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 21
  %tx_stream = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 12
  %call = tail call i32 @amdtp_domain_stream_pcm_ack(ptr noundef %domain, ptr noundef %tx_stream) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_playback_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %hw_params) #0 align 64 {
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
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then:                                          ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i18 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %arrayidx.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i18, align 4
  %arrayidx.i.i19 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 5
  %12 = ptrtoint ptr %arrayidx.i.i19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i19, align 4
  %arrayidx.i.i20 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 9
  %14 = ptrtoint ptr %arrayidx.i.i20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i20, align 4
  %mutex = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %rx_stream = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 13
  %call4 = tail call i32 @snd_oxfw_stream_reserve_duplex(ptr noundef %1, ptr noundef %rx_stream, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp5 = icmp sgt i32 %call4, -1
  br i1 %cmp5, label %if.then6, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %substreams_count = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 14
  %16 = ptrtoint ptr %substreams_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %substreams_count, align 8
  %inc = add i32 %17, 1
  store i32 %inc, ptr %substreams_count, align 8
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  %err.0 = phi i32 [ %call4, %if.end ], [ 0, %entry.if.end8_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_playback_hw_free(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 2
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
  %substreams_count = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %substreams_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %substreams_count, align 8
  %dec = add i32 %9, -1
  store i32 %dec, ptr %substreams_count, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @snd_oxfw_stream_stop_duplex(ptr noundef %1) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 0
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
  %mutex = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call = tail call i32 @snd_oxfw_stream_start_duplex(ptr noundef %1) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.end_crit_edge, label %if.end

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rx_stream = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 13
  tail call void @amdtp_stream_pcm_prepare(ptr noundef %rx_stream) #6
  br label %end

end:                                              ; preds = %if.end, %entry.end_crit_edge
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
    i32 1, label %entry.sw.epilog_crit_edge
    i32 0, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %pcm.0 = phi ptr [ null, %sw.bb1 ], [ %substream, %entry.sw.epilog_crit_edge ]
  %pcm3.i = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 13, i32 19
  %3 = ptrtoint ptr %pcm3.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %pcm.0, ptr %pcm3.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_playback_pointer(ptr nocapture noundef readonly %sbstm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %sbstm, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %domain = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 21
  %rx_stream = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 13
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
  %domain = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 21
  %rx_stream = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 13
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
declare dso_local i32 @snd_oxfw_stream_lock_try(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_oxfw_stream_lock_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_rule_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_rule_channels(ptr noundef %params, ptr nocapture noundef readonly %rule) #0 align 64 {
entry:
  %formation = alloca %struct.snd_oxfw_stream_formation, align 4
  %list = alloca [10 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %arrayidx.i47 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %formation) #6
  %2 = ptrtoint ptr %formation to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %formation, align 4, !annotation !13
  %3 = getelementptr inbounds %struct.snd_oxfw_stream_formation, ptr %formation, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !13
  %5 = getelementptr inbounds %struct.snd_oxfw_stream_formation, ptr %formation, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %list) #6
  %7 = call ptr @memset(ptr %list, i32 0, i32 40)
  %openmin.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 2
  %max.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 1
  %arrayidx18.1 = getelementptr inbounds [10 x i32], ptr %list, i32 0, i32 1
  %arrayidx18.2 = getelementptr inbounds [10 x i32], ptr %list, i32 0, i32 2
  %arrayidx18.3 = getelementptr inbounds [10 x i32], ptr %list, i32 0, i32 3
  %arrayidx18.4 = getelementptr inbounds [10 x i32], ptr %list, i32 0, i32 4
  %arrayidx18.5 = getelementptr inbounds [10 x i32], ptr %list, i32 0, i32 5
  %arrayidx18.6 = getelementptr inbounds [10 x i32], ptr %list, i32 0, i32 6
  %arrayidx18.7 = getelementptr inbounds [10 x i32], ptr %list, i32 0, i32 7
  %arrayidx18.8 = getelementptr inbounds [10 x i32], ptr %list, i32 0, i32 8
  %arrayidx18.9 = getelementptr inbounds [10 x i32], ptr %list, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc32.for.body_crit_edge, %entry
  %count.055 = phi i32 [ 0, %entry ], [ %count.1, %for.inc32.for.body_crit_edge ]
  %i.054 = phi i32 [ 0, %entry ], [ %inc33, %for.inc32.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %1, i32 %i.054
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %cmp2 = icmp eq ptr %9, null
  br i1 %cmp2, label %for.body.for.end34_crit_edge, label %if.end

for.body.for.end34_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end34

if.end:                                           ; preds = %for.body
  %call4 = call i32 @snd_oxfw_stream_parse_format(ptr noundef nonnull %9, ptr noundef nonnull %formation) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.for.inc32_crit_edge, label %if.end7

if.end.for.inc32_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc32

if.end7:                                          ; preds = %if.end
  %10 = ptrtoint ptr %formation to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %formation, align 4
  %12 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i47, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp.i = icmp ugt i32 %13, %11
  br i1 %cmp.i, label %if.end7.for.inc32_crit_edge, label %lor.lhs.false.i

if.end7.for.inc32_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc32

lor.lhs.false.i:                                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp2.i = icmp eq i32 %13, %11
  br i1 %cmp2.i, label %land.lhs.true.i, label %lor.lhs.false.i.lor.lhs.false3.i_crit_edge

lor.lhs.false.i.lor.lhs.false3.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false3.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %14 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %openmin.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %land.lhs.true.i.lor.lhs.false3.i_crit_edge, label %land.lhs.true.i.for.inc32_crit_edge

land.lhs.true.i.for.inc32_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc32

land.lhs.true.i.lor.lhs.false3.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false3.i

lor.lhs.false3.i:                                 ; preds = %land.lhs.true.i.lor.lhs.false3.i_crit_edge, %lor.lhs.false.i.lor.lhs.false3.i_crit_edge
  %15 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %11)
  %cmp4.i = icmp ult i32 %16, %11
  br i1 %cmp4.i, label %lor.lhs.false3.i.for.inc32_crit_edge, label %lor.rhs.i

lor.lhs.false3.i.for.inc32_crit_edge:             ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc32

lor.rhs.i:                                        ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %11)
  %cmp6.i = icmp eq i32 %16, %11
  br i1 %cmp6.i, label %snd_interval_test.exit, label %lor.rhs.i.if.end10_crit_edge

lor.rhs.i.if.end10_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

snd_interval_test.exit:                           ; preds = %lor.rhs.i
  %17 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load7.i = load i8, ptr %openmin.i, align 4
  %18 = and i8 %bf.load7.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.not = icmp eq i8 %18, 0
  br i1 %tobool.not.not, label %snd_interval_test.exit.if.end10_crit_edge, label %snd_interval_test.exit.for.inc32_crit_edge

snd_interval_test.exit.for.inc32_crit_edge:       ; preds = %snd_interval_test.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc32

snd_interval_test.exit.if.end10_crit_edge:        ; preds = %snd_interval_test.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end10:                                         ; preds = %snd_interval_test.exit.if.end10_crit_edge, %lor.rhs.i.if.end10_crit_edge
  %arrayidx11 = getelementptr [10 x i32], ptr %list, i32 0, i32 %count.055
  %19 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx11, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp12 = icmp eq i32 %20, %22
  br i1 %cmp12, label %if.end10.for.inc32_crit_edge, label %for.body17.preheader

if.end10.for.inc32_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc32

for.body17.preheader:                             ; preds = %if.end10
  %23 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %list, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %22)
  %cmp20 = icmp eq i32 %24, %22
  br i1 %cmp20, label %for.body17.preheader.for.inc32_crit_edge, label %for.inc

for.body17.preheader.for.inc32_crit_edge:         ; preds = %for.body17.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc32

for.inc:                                          ; preds = %for.body17.preheader
  %25 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx18.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %22)
  %cmp20.1 = icmp eq i32 %26, %22
  br i1 %cmp20.1, label %for.inc.for.inc32_crit_edge, label %for.inc.1

for.inc.for.inc32_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc32

for.inc.1:                                        ; preds = %for.inc
  %27 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx18.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %22)
  %cmp20.2 = icmp eq i32 %28, %22
  br i1 %cmp20.2, label %for.inc.1.for.inc32_crit_edge, label %for.inc.2

for.inc.1.for.inc32_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc32

for.inc.2:                                        ; preds = %for.inc.1
  %29 = ptrtoint ptr %arrayidx18.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx18.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %22)
  %cmp20.3 = icmp eq i32 %30, %22
  br i1 %cmp20.3, label %for.inc.2.for.inc32_crit_edge, label %for.inc.3

for.inc.2.for.inc32_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc32

for.inc.3:                                        ; preds = %for.inc.2
  %31 = ptrtoint ptr %arrayidx18.4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx18.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %22)
  %cmp20.4 = icmp eq i32 %32, %22
  br i1 %cmp20.4, label %for.inc.3.for.inc32_crit_edge, label %for.inc.4

for.inc.3.for.inc32_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc32

for.inc.4:                                        ; preds = %for.inc.3
  %33 = ptrtoint ptr %arrayidx18.5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx18.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %22)
  %cmp20.5 = icmp eq i32 %34, %22
  br i1 %cmp20.5, label %for.inc.4.for.inc32_crit_edge, label %for.inc.5

for.inc.4.for.inc32_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc32

for.inc.5:                                        ; preds = %for.inc.4
  %35 = ptrtoint ptr %arrayidx18.6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx18.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %22)
  %cmp20.6 = icmp eq i32 %36, %22
  br i1 %cmp20.6, label %for.inc.5.for.inc32_crit_edge, label %for.inc.6

for.inc.5.for.inc32_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc32

for.inc.6:                                        ; preds = %for.inc.5
  %37 = ptrtoint ptr %arrayidx18.7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx18.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %22)
  %cmp20.7 = icmp eq i32 %38, %22
  br i1 %cmp20.7, label %for.inc.6.for.inc32_crit_edge, label %for.inc.7

for.inc.6.for.inc32_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc32

for.inc.7:                                        ; preds = %for.inc.6
  %39 = ptrtoint ptr %arrayidx18.8 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx18.8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %22)
  %cmp20.8 = icmp eq i32 %40, %22
  br i1 %cmp20.8, label %for.inc.7.for.inc32_crit_edge, label %for.inc.8

for.inc.7.for.inc32_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc32

for.inc.8:                                        ; preds = %for.inc.7
  %41 = ptrtoint ptr %arrayidx18.9 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx18.9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %22)
  %cmp20.9 = icmp eq i32 %42, %22
  br i1 %cmp20.9, label %for.inc.8.for.inc32_crit_edge, label %if.then24

for.inc.8.for.inc32_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc32

if.then24:                                        ; preds = %for.inc.8
  %43 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %22, ptr %arrayidx11, align 4
  %inc27 = add i32 %count.055, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc27)
  %cmp28 = icmp eq i32 %inc27, 10
  br i1 %cmp28, label %if.then24.for.end34_crit_edge, label %if.then24.for.inc32_crit_edge

if.then24.for.inc32_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc32

if.then24.for.end34_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end34

for.inc32:                                        ; preds = %if.then24.for.inc32_crit_edge, %for.inc.8.for.inc32_crit_edge, %for.inc.7.for.inc32_crit_edge, %for.inc.6.for.inc32_crit_edge, %for.inc.5.for.inc32_crit_edge, %for.inc.4.for.inc32_crit_edge, %for.inc.3.for.inc32_crit_edge, %for.inc.2.for.inc32_crit_edge, %for.inc.1.for.inc32_crit_edge, %for.inc.for.inc32_crit_edge, %for.body17.preheader.for.inc32_crit_edge, %if.end10.for.inc32_crit_edge, %snd_interval_test.exit.for.inc32_crit_edge, %lor.lhs.false3.i.for.inc32_crit_edge, %land.lhs.true.i.for.inc32_crit_edge, %if.end7.for.inc32_crit_edge, %if.end.for.inc32_crit_edge
  %count.1 = phi i32 [ %count.055, %if.end.for.inc32_crit_edge ], [ %count.055, %if.end10.for.inc32_crit_edge ], [ %inc27, %if.then24.for.inc32_crit_edge ], [ %count.055, %snd_interval_test.exit.for.inc32_crit_edge ], [ %count.055, %lor.lhs.false3.i.for.inc32_crit_edge ], [ %count.055, %land.lhs.true.i.for.inc32_crit_edge ], [ %count.055, %if.end7.for.inc32_crit_edge ], [ %count.055, %for.inc.8.for.inc32_crit_edge ], [ %count.055, %for.inc.7.for.inc32_crit_edge ], [ %count.055, %for.inc.6.for.inc32_crit_edge ], [ %count.055, %for.inc.5.for.inc32_crit_edge ], [ %count.055, %for.inc.4.for.inc32_crit_edge ], [ %count.055, %for.inc.3.for.inc32_crit_edge ], [ %count.055, %for.inc.2.for.inc32_crit_edge ], [ %count.055, %for.inc.1.for.inc32_crit_edge ], [ %count.055, %for.inc.for.inc32_crit_edge ], [ %count.055, %for.body17.preheader.for.inc32_crit_edge ]
  %inc33 = add nuw nsw i32 %i.054, 1
  %exitcond.not = icmp eq i32 %inc33, 10
  br i1 %exitcond.not, label %for.inc32.for.end34_crit_edge, label %for.inc32.for.body_crit_edge

for.inc32.for.body_crit_edge:                     ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc32.for.end34_crit_edge:                    ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end34

for.end34:                                        ; preds = %for.inc32.for.end34_crit_edge, %if.then24.for.end34_crit_edge, %for.body.for.end34_crit_edge
  %count.2 = phi i32 [ %count.055, %for.body.for.end34_crit_edge ], [ 10, %if.then24.for.end34_crit_edge ], [ %count.1, %for.inc32.for.end34_crit_edge ]
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %call35 = call i32 @snd_interval_list(ptr noundef %arrayidx.i, i32 noundef %count.2, ptr noundef nonnull %list, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %list) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %formation) #6
  ret i32 %call35
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_rule_rate(ptr noundef %params, ptr nocapture noundef readonly %rule) #0 align 64 {
entry:
  %t = alloca %struct.snd_interval, align 4
  %formation = alloca %struct.snd_oxfw_stream_formation, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %arrayidx.i35 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %t) #6
  %2 = call ptr @memcpy(ptr %t, ptr @__const.hw_rule_rate.t, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %formation) #6
  %3 = ptrtoint ptr %formation to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %formation, align 4, !annotation !13
  %4 = getelementptr inbounds %struct.snd_oxfw_stream_formation, ptr %formation, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !13
  %6 = getelementptr inbounds %struct.snd_oxfw_stream_formation, ptr %formation, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !13
  %openmin.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2, i32 2
  %max.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2, i32 1
  %max = getelementptr inbounds %struct.snd_interval, ptr %t, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.039 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %1, i32 %i.039
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %cmp2 = icmp eq ptr %9, null
  br i1 %cmp2, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call4 = call i32 @snd_oxfw_stream_parse_format(ptr noundef nonnull %9, ptr noundef nonnull %formation) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.for.inc_crit_edge, label %if.end7

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end7:                                          ; preds = %if.end
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %4, align 4
  %12 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp.i = icmp ugt i32 %13, %11
  br i1 %cmp.i, label %if.end7.for.inc_crit_edge, label %lor.lhs.false.i

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false.i:                                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp2.i = icmp eq i32 %13, %11
  br i1 %cmp2.i, label %land.lhs.true.i, label %lor.lhs.false.i.lor.lhs.false3.i_crit_edge

lor.lhs.false.i.lor.lhs.false3.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false3.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %14 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %14)
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
  %15 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %11)
  %cmp4.i = icmp ult i32 %16, %11
  br i1 %cmp4.i, label %lor.lhs.false3.i.for.inc_crit_edge, label %lor.rhs.i

lor.lhs.false3.i.for.inc_crit_edge:               ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.rhs.i:                                        ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %11)
  %cmp6.i = icmp eq i32 %16, %11
  br i1 %cmp6.i, label %snd_interval_test.exit, label %lor.rhs.i.if.end10_crit_edge

lor.rhs.i.if.end10_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

snd_interval_test.exit:                           ; preds = %lor.rhs.i
  %17 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load7.i = load i8, ptr %openmin.i, align 4
  %18 = and i8 %bf.load7.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.not = icmp eq i8 %18, 0
  br i1 %tobool.not.not, label %snd_interval_test.exit.if.end10_crit_edge, label %snd_interval_test.exit.for.inc_crit_edge

snd_interval_test.exit.for.inc_crit_edge:         ; preds = %snd_interval_test.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

snd_interval_test.exit.if.end10_crit_edge:        ; preds = %snd_interval_test.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end10:                                         ; preds = %snd_interval_test.exit.if.end10_crit_edge, %lor.rhs.i.if.end10_crit_edge
  %19 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %t, align 4
  %21 = ptrtoint ptr %formation to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %formation, align 4
  %23 = call i32 @llvm.umin.i32(i32 %20, i32 %22)
  %24 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %t, align 4
  %25 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max, align 4
  %27 = call i32 @llvm.umax.i32(i32 %26, i32 %22)
  %28 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %max, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end10, %snd_interval_test.exit.for.inc_crit_edge, %lor.lhs.false3.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %if.end7.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.039, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %call21 = call i32 @snd_interval_refine(ptr noundef %arrayidx.i, ptr noundef nonnull %t) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %formation) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %t) #6
  ret i32 %call21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_am824_add_pcm_hw_constraints(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_oxfw_stream_parse_format(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_rate_to_rate_bit(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_list(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_refine(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_oxfw_stream_get_current_formation(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_oxfw_stream_reserve_duplex(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_oxfw_stream_stop_duplex(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_oxfw_stream_start_duplex(ptr noundef) local_unnamed_addr #3

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

declare ptr @memset(ptr, i32, i32)

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

!0 = !{ptr @snd_oxfw_create_pcm.capture_ops, !1, !"capture_ops", i1 false, i1 false}
!1 = !{!"../sound/firewire/oxfw/oxfw-pcm.c", i32 411, i32 34}
!2 = !{ptr @snd_oxfw_create_pcm.playback_ops, !3, !"playback_ops", i1 false, i1 false}
!3 = !{!"../sound/firewire/oxfw/oxfw-pcm.c", i32 421, i32 34}
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
!14 = !{i8 0, i8 2}
