; ModuleID = '/llk/IR_all_yes/sound/firewire/fireworks/fireworks_pcm.c_pt.bc'
source_filename = "../sound/firewire/fireworks/fireworks_pcm.c"
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
%struct.snd_efw = type { ptr, ptr, i32, %struct.mutex, %struct.spinlock, i32, i8, i8, i8, i32, i32, i32, i32, [3 x i32], [3 x i32], %struct.amdtp_stream, %struct.amdtp_stream, %struct.cmp_connection, %struct.cmp_connection, i32, i32, i32, i32, i32, [8 x %struct.snd_efw_phys_grp], [8 x %struct.snd_efw_phys_grp], i32, i8, %struct.wait_queue_head, ptr, ptr, ptr, %struct.amdtp_domain }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.cmp_connection = type { i32, i8, %struct.mutex, %struct.fw_iso_resources, i32, i32, i32, i32 }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.snd_efw_phys_grp = type { i8, i8 }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.82, %struct.anon.83 }
%struct.anon.82 = type { i32, i32, i32 }
%struct.anon.83 = type { i8 }
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

@freq_table = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 32000, i32 44100, i32 48000, i32 88200, i32 96000, i32 176400, i32 192000], [36 x i8] zeroinitializer }, align 32
@snd_efw_create_pcm_devices.capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @pcm_open, ptr @pcm_close, ptr null, ptr @pcm_hw_params, ptr @pcm_hw_free, ptr @pcm_capture_prepare, ptr @pcm_capture_trigger, ptr null, ptr @pcm_capture_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcm_capture_ack }, [32 x i8] zeroinitializer }, align 32
@snd_efw_create_pcm_devices.playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @pcm_open, ptr @pcm_close, ptr null, ptr @pcm_hw_params, ptr @pcm_hw_free, ptr @pcm_playback_prepare, ptr @pcm_playback_trigger, ptr null, ptr @pcm_playback_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcm_playback_ack }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s PCM\00", [25 x i8] zeroinitializer }, align 32
@__const.hw_rule_rate.t = private unnamed_addr constant { i32, i32, i8, [3 x i8] } { i32 -1, i32 0, i8 32, [3 x i8] zeroinitializer }, align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.3 = private unnamed_addr constant [11 x i8] c"freq_table\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 30, i32 27 }
@___asan_gen_.6 = private unnamed_addr constant [12 x i8] c"capture_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 372, i32 34 }
@___asan_gen_.9 = private unnamed_addr constant [13 x i8] c"playback_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 382, i32 34 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [44 x i8] c"../sound/firewire/fireworks/fireworks_pcm.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 400, i32 41 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @freq_table, ptr @snd_efw_create_pcm_devices.capture_ops, ptr @snd_efw_create_pcm_devices.playback_ops, ptr @.str], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freq_table to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_efw_create_pcm_devices.capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_efw_create_pcm_devices.playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local i32 @snd_efw_get_multiplier_mode(i32 noundef %sampling_rate, ptr nocapture noundef writeonly %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %sampling_rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %sampling_rate, label %entry.cleanup_crit_edge [
    i32 32000, label %entry.if.then_crit_edge
    i32 44100, label %entry.if.then_crit_edge12
    i32 48000, label %entry.if.then_crit_edge13
    i32 88200, label %if.then.fold.split
    i32 96000, label %if.then.fold.split9
    i32 176400, label %if.then.fold.split10
    i32 192000, label %if.then.fold.split11
  ]

entry.if.then_crit_edge13:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.if.then_crit_edge12:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split9:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split10:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split11:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %if.then.fold.split11, %if.then.fold.split10, %if.then.fold.split9, %if.then.fold.split, %entry.if.then_crit_edge, %entry.if.then_crit_edge12, %entry.if.then_crit_edge13
  %i.07.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 0, %entry.if.then_crit_edge12 ], [ 0, %entry.if.then_crit_edge13 ], [ 1, %if.then.fold.split ], [ 1, %if.then.fold.split9 ], [ 2, %if.then.fold.split10 ], [ 2, %if.then.fold.split11 ]
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %i.07.lcssa, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_efw_create_pcm_devices(ptr noundef %efw) local_unnamed_addr #2 align 64 {
entry:
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #7
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !17
  %1 = ptrtoint ptr %efw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %efw, align 8
  %driver = getelementptr inbounds %struct.snd_card, ptr %2, i32 0, i32 2
  %call = call i32 @snd_pcm_new(ptr noundef %2, ptr noundef %driver, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %pcm) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.end_crit_edge, label %if.end

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcm, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %efw, ptr %private_data, align 8
  %name = getelementptr inbounds %struct.snd_pcm, ptr %4, i32 0, i32 7
  %6 = ptrtoint ptr %efw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %efw, align 8
  %shortname = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 3
  %call5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 80, ptr noundef nonnull @.str, ptr noundef %shortname)
  %8 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %9, i32 noundef 0, ptr noundef nonnull @snd_efw_create_pcm_devices.playback_ops) #7
  %10 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %11, i32 noundef 1, ptr noundef nonnull @snd_efw_create_pcm_devices.capture_ops) #7
  %12 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcm, align 4
  %call6 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %13, i32 noundef 7, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  br label %end

end:                                              ; preds = %if.end, %entry.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_open(ptr noundef %substream) #2 align 64 {
entry:
  %clock_source = alloca i32, align 4
  %sampling_rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clock_source) #7
  %2 = ptrtoint ptr %clock_source to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %clock_source, align 4, !annotation !17
  %call = tail call i32 @snd_efw_stream_lock_try(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup40_crit_edge, label %if.end

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup40

if.end:                                           ; preds = %entry
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %3 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %runtime1.i, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %5 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i = icmp eq i32 %6, 1
  %tx_stream.i = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 15
  %pcm_capture_channels.i = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 13
  %rx_stream.i = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 16
  %pcm_playback_channels.i = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 14
  %s.0.i = select i1 %cmp.i, ptr %tx_stream.i, ptr %rx_stream.i
  %pcm_channels.0.i = select i1 %cmp.i, ptr %pcm_capture_channels.i, ptr %pcm_playback_channels.i
  %7 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 46, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 2048, ptr %7, align 8
  %supported_sampling_rate.i = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %supported_sampling_rate.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %supported_sampling_rate.i, align 8
  %hw5.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 46
  %rates.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 46, i32 2
  %11 = ptrtoint ptr %rates.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %rates.i, align 8
  %call.i.i = tail call i32 @snd_pcm_hw_limit_rates(ptr noundef %hw5.i) #7
  %channels_min.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 46, i32 5
  %12 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %channels_min.i.i, align 4
  %channels_max.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 46, i32 6
  %13 = ptrtoint ptr %channels_max.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %channels_max.i.i, align 8
  %14 = ptrtoint ptr %pcm_channels.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pcm_channels.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp1.i.i = icmp eq i32 %15, 0
  br i1 %cmp1.i.i, label %if.end.for.inc.2.i.i_crit_edge, label %for.inc.i.i

if.end.for.inc.2.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i.i

for.inc.i.i:                                      ; preds = %if.end
  %16 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %channels_min.i.i, align 4
  %17 = ptrtoint ptr %pcm_channels.0.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pcm_channels.0.i, align 4
  %19 = ptrtoint ptr %channels_max.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %channels_max.i.i, align 8
  %.pr.i.i = load i32, ptr %pcm_channels.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i.i)
  %cmp1.1.i.i = icmp eq i32 %.pr.i.i, 0
  br i1 %cmp1.1.i.i, label %for.inc.i.i.for.inc.2.i.i_crit_edge, label %for.inc.1.i.i

for.inc.i.i.for.inc.2.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %20 = tail call i32 @llvm.umin.i32(i32 %15, i32 %.pr.i.i) #7
  %21 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %channels_min.i.i, align 4
  %22 = ptrtoint ptr %pcm_channels.0.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pcm_channels.0.i, align 4
  %24 = tail call i32 @llvm.umax.i32(i32 %18, i32 %23) #7
  %25 = ptrtoint ptr %channels_max.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %channels_max.i.i, align 8
  %26 = ptrtoint ptr %pcm_channels.0.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr36.i.i = load i32, ptr %pcm_channels.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr36.i.i)
  %cmp1.2.i.i = icmp eq i32 %.pr36.i.i, 0
  br i1 %cmp1.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge, label %if.end.2.i.i

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i.i

if.end.2.i.i:                                     ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = tail call i32 @llvm.umin.i32(i32 %20, i32 %.pr36.i.i) #7
  %28 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %channels_min.i.i, align 4
  %29 = ptrtoint ptr %pcm_channels.0.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pcm_channels.0.i, align 4
  %31 = tail call i32 @llvm.umax.i32(i32 %24, i32 %30) #7
  %32 = ptrtoint ptr %channels_max.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %channels_max.i.i, align 8
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %if.end.2.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge, %for.inc.i.i.for.inc.2.i.i_crit_edge, %if.end.for.inc.2.i.i_crit_edge
  %arrayidx.3.i.i = getelementptr i32, ptr %pcm_channels.0.i, i32 1
  %33 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp1.3.i.i = icmp eq i32 %34, 0
  br i1 %cmp1.3.i.i, label %for.inc.2.i.i.for.inc.4.i.i_crit_edge, label %for.inc.3.i.i

for.inc.2.i.i.for.inc.4.i.i_crit_edge:            ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.i.i

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  %35 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %channels_min.i.i, align 4
  %37 = tail call i32 @llvm.umin.i32(i32 %36, i32 %34) #7
  %38 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %channels_min.i.i, align 4
  %39 = ptrtoint ptr %channels_max.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %channels_max.i.i, align 8
  %41 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.3.i.i, align 4
  %43 = tail call i32 @llvm.umax.i32(i32 %40, i32 %42) #7
  %44 = ptrtoint ptr %channels_max.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %channels_max.i.i, align 8
  %45 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr38.i.i = load i32, ptr %arrayidx.3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr38.i.i)
  %cmp1.4.i.i = icmp eq i32 %.pr38.i.i, 0
  br i1 %cmp1.4.i.i, label %for.inc.3.i.i.for.inc.4.i.i_crit_edge, label %if.end.4.i.i

for.inc.3.i.i.for.inc.4.i.i_crit_edge:            ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.i.i

if.end.4.i.i:                                     ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = tail call i32 @llvm.umin.i32(i32 %37, i32 %.pr38.i.i) #7
  %47 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %channels_min.i.i, align 4
  %48 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.3.i.i, align 4
  %50 = tail call i32 @llvm.umax.i32(i32 %43, i32 %49) #7
  %51 = ptrtoint ptr %channels_max.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %channels_max.i.i, align 8
  br label %for.inc.4.i.i

for.inc.4.i.i:                                    ; preds = %if.end.4.i.i, %for.inc.3.i.i.for.inc.4.i.i_crit_edge, %for.inc.2.i.i.for.inc.4.i.i_crit_edge
  %arrayidx.5.i.i = getelementptr i32, ptr %pcm_channels.0.i, i32 2
  %52 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp1.5.i.i = icmp eq i32 %53, 0
  br i1 %cmp1.5.i.i, label %for.inc.4.i.i.limit_channels.exit.i_crit_edge, label %for.inc.5.i.i

for.inc.4.i.i.limit_channels.exit.i_crit_edge:    ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %limit_channels.exit.i

for.inc.5.i.i:                                    ; preds = %for.inc.4.i.i
  %54 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %channels_min.i.i, align 4
  %56 = tail call i32 @llvm.umin.i32(i32 %55, i32 %53) #7
  %57 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %channels_min.i.i, align 4
  %58 = ptrtoint ptr %channels_max.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %channels_max.i.i, align 8
  %60 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.5.i.i, align 4
  %62 = tail call i32 @llvm.umax.i32(i32 %59, i32 %61) #7
  %63 = ptrtoint ptr %channels_max.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %channels_max.i.i, align 8
  %64 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pr40.i.i = load i32, ptr %arrayidx.5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr40.i.i)
  %cmp1.6.i.i = icmp eq i32 %.pr40.i.i, 0
  br i1 %cmp1.6.i.i, label %for.inc.5.i.i.limit_channels.exit.i_crit_edge, label %if.end.6.i.i

for.inc.5.i.i.limit_channels.exit.i_crit_edge:    ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %limit_channels.exit.i

if.end.6.i.i:                                     ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %65 = tail call i32 @llvm.umin.i32(i32 %56, i32 %.pr40.i.i) #7
  %66 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %channels_min.i.i, align 4
  %67 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.5.i.i, align 4
  %69 = tail call i32 @llvm.umax.i32(i32 %62, i32 %68) #7
  %70 = ptrtoint ptr %channels_max.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %channels_max.i.i, align 8
  br label %limit_channels.exit.i

limit_channels.exit.i:                            ; preds = %if.end.6.i.i, %for.inc.5.i.i.limit_channels.exit.i_crit_edge, %for.inc.4.i.i.limit_channels.exit.i_crit_edge
  %call7.i = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %4, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @hw_rule_channels, ptr noundef %pcm_channels.0.i, i32 noundef 11, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %limit_channels.exit.i.err_locked_crit_edge, label %if.end10.i

limit_channels.exit.i.err_locked_crit_edge:       ; preds = %limit_channels.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_locked

if.end10.i:                                       ; preds = %limit_channels.exit.i
  %call11.i = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %4, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @hw_rule_rate, ptr noundef %pcm_channels.0.i, i32 noundef 10, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.end10.i.err_locked_crit_edge, label %pcm_init_hw_params.exit

if.end10.i.err_locked_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_locked

pcm_init_hw_params.exit:                          ; preds = %if.end10.i
  %call15.i = tail call i32 @amdtp_am824_add_pcm_hw_constraints(ptr noundef %s.0.i, ptr noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp2 = icmp slt i32 %call15.i, 0
  br i1 %cmp2, label %pcm_init_hw_params.exit.err_locked_crit_edge, label %if.end4

pcm_init_hw_params.exit.err_locked_crit_edge:     ; preds = %pcm_init_hw_params.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_locked

if.end4:                                          ; preds = %pcm_init_hw_params.exit
  %call5 = call i32 @snd_efw_command_get_clock_source(ptr noundef %1, ptr noundef nonnull %clock_source) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.err_locked_crit_edge, label %if.end8

if.end4.err_locked_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_locked

if.end8:                                          ; preds = %if.end4
  %mutex = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %71 = ptrtoint ptr %clock_source to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %clock_source, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp9.not = icmp eq i32 %72, 0
  br i1 %cmp9.not, label %lor.lhs.false, label %if.end8.if.then12_crit_edge

if.end8.if.then12_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.end8
  %substreams_counter = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 19
  %73 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %substreams_counter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp10.not = icmp eq i32 %74, 0
  br i1 %cmp10.not, label %lor.lhs.false.if.end38_crit_edge, label %land.lhs.true

lor.lhs.false.if.end38_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

land.lhs.true:                                    ; preds = %lor.lhs.false
  %events_per_period = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 32, i32 1
  %75 = ptrtoint ptr %events_per_period to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %events_per_period, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp11.not = icmp eq i32 %76, 0
  br i1 %cmp11.not, label %land.lhs.true.if.end38_crit_edge, label %land.lhs.true.if.then12_crit_edge

land.lhs.true.if.then12_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then12:                                        ; preds = %land.lhs.true.if.then12_crit_edge, %if.end8.if.then12_crit_edge
  %events_per_period13 = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 32, i32 1
  %77 = ptrtoint ptr %events_per_period13 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %events_per_period13, align 4
  %events_per_buffer = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 32, i32 2
  %79 = ptrtoint ptr %events_per_buffer to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %events_per_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sampling_rate) #7
  %81 = ptrtoint ptr %sampling_rate to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %sampling_rate, align 4, !annotation !17
  %call14 = call i32 @snd_efw_command_get_sampling_rate(ptr noundef %1, ptr noundef nonnull %sampling_rate) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then12.cleanup.thread_crit_edge, label %if.end18

if.then12.cleanup.thread_crit_edge:               ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end18:                                         ; preds = %if.then12
  %82 = ptrtoint ptr %sampling_rate to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %sampling_rate, align 4
  %84 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %runtime1.i, align 4
  %rate_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %85, i32 0, i32 46, i32 3
  %86 = ptrtoint ptr %rate_min to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %83, ptr %rate_min, align 4
  %87 = load ptr, ptr %runtime1.i, align 4
  %rate_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %87, i32 0, i32 46, i32 4
  %88 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %83, ptr %rate_max, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp21.not = icmp eq i32 %78, 0
  br i1 %cmp21.not, label %if.end18.cleanup_crit_edge, label %if.then22

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then22:                                        ; preds = %if.end18
  %89 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %runtime1.i, align 4
  %call24 = call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %90, i32 noundef 13, i32 noundef %78, i32 noundef %78) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then22.cleanup.thread_crit_edge, label %if.end28

if.then22.cleanup.thread_crit_edge:               ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end28:                                         ; preds = %if.then22
  %91 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %runtime1.i, align 4
  %call30 = call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %92, i32 noundef 17, i32 noundef %80, i32 noundef %80) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end28.cleanup.thread_crit_edge, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28.cleanup.thread_crit_edge:                ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end28.cleanup.thread_crit_edge, %if.then22.cleanup.thread_crit_edge, %if.then12.cleanup.thread_crit_edge
  %err.1.ph = phi i32 [ %call14, %if.then12.cleanup.thread_crit_edge ], [ %call24, %if.then22.cleanup.thread_crit_edge ], [ %call30, %if.end28.cleanup.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sampling_rate) #7
  br label %err_locked

cleanup:                                          ; preds = %if.end28.cleanup_crit_edge, %if.end18.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sampling_rate) #7
  br label %if.end38

if.end38:                                         ; preds = %cleanup, %land.lhs.true.if.end38_crit_edge, %lor.lhs.false.if.end38_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #7
  call void @snd_pcm_set_sync(ptr noundef %substream) #7
  br label %cleanup40

err_locked:                                       ; preds = %cleanup.thread, %if.end4.err_locked_crit_edge, %pcm_init_hw_params.exit.err_locked_crit_edge, %if.end10.i.err_locked_crit_edge, %limit_channels.exit.i.err_locked_crit_edge
  %err.2 = phi i32 [ %call15.i, %pcm_init_hw_params.exit.err_locked_crit_edge ], [ %call5, %if.end4.err_locked_crit_edge ], [ %err.1.ph, %cleanup.thread ], [ %call11.i, %if.end10.i.err_locked_crit_edge ], [ %call7.i, %limit_channels.exit.i.err_locked_crit_edge ]
  call void @snd_efw_stream_lock_release(ptr noundef %1) #7
  br label %cleanup40

cleanup40:                                        ; preds = %err_locked, %if.end38, %entry.cleanup40_crit_edge
  %retval.0 = phi i32 [ %err.2, %err_locked ], [ 0, %if.end38 ], [ %call, %entry.cleanup40_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clock_source) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @snd_efw_stream_lock_release(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %hw_params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
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
  %mutex = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %call3 = tail call i32 @snd_efw_stream_reserve_duplex(ptr noundef %1, i32 noundef %9, i32 noundef %11, i32 noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp4 = icmp sgt i32 %call3, -1
  br i1 %cmp4, label %if.then5, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %substreams_counter = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 19
  %14 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %substreams_counter, align 8
  %inc = add i32 %15, 1
  store i32 %inc, ptr %substreams_counter, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  %err.0 = phi i32 [ %call3, %if.end ], [ 0, %entry.if.end7_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_hw_free(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %substreams_counter = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %substreams_counter, align 8
  %dec = add i32 %9, -1
  store i32 %dec, ptr %substreams_counter, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @snd_efw_stream_stop_duplex(ptr noundef %1) #7
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_capture_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @snd_efw_stream_start_duplex(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tx_stream = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 15
  tail call void @amdtp_stream_pcm_prepare(ptr noundef %tx_stream) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_capture_trigger(ptr noundef %substream, i32 noundef %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb1, %entry.cleanup.sink.split_crit_edge
  %substream.sink = phi ptr [ null, %sw.bb1 ], [ %substream, %entry.cleanup.sink.split_crit_edge ]
  %pcm3.i = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 15, i32 19
  %3 = ptrtoint ptr %pcm3.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %substream.sink, ptr %pcm3.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_capture_pointer(ptr nocapture noundef readonly %sbstrm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %sbstrm, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %domain = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 32
  %tx_stream = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 15
  %call = tail call i32 @amdtp_domain_stream_pcm_pointer(ptr noundef %domain, ptr noundef %tx_stream) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_capture_ack(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %domain = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 32
  %tx_stream = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 15
  %call = tail call i32 @amdtp_domain_stream_pcm_ack(ptr noundef %domain, ptr noundef %tx_stream) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_playback_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @snd_efw_stream_start_duplex(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rx_stream = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 16
  tail call void @amdtp_stream_pcm_prepare(ptr noundef %rx_stream) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_playback_trigger(ptr noundef %substream, i32 noundef %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.cleanup.sink.split_crit_edge
    i32 0, label %sw.bb1
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb1, %entry.cleanup.sink.split_crit_edge
  %substream.sink = phi ptr [ null, %sw.bb1 ], [ %substream, %entry.cleanup.sink.split_crit_edge ]
  %pcm3.i = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 16, i32 19
  %3 = ptrtoint ptr %pcm3.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %substream.sink, ptr %pcm3.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_playback_pointer(ptr nocapture noundef readonly %sbstrm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %sbstrm, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %domain = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 32
  %rx_stream = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 16
  %call = tail call i32 @amdtp_domain_stream_pcm_pointer(ptr noundef %domain, ptr noundef %rx_stream) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_playback_ack(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %domain = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 32
  %rx_stream = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 16
  %call = tail call i32 @amdtp_domain_stream_pcm_ack(ptr noundef %domain, ptr noundef %rx_stream) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_efw_stream_lock_try(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_efw_command_get_clock_source(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_efw_command_get_sampling_rate(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_efw_stream_lock_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_rule_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_rule_channels(ptr noundef %params, ptr nocapture noundef readonly %rule) #2 align 64 {
entry:
  %t = alloca %struct.snd_interval, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %arrayidx.i29 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %t) #7
  %2 = call ptr @memcpy(ptr %t, ptr @__const.hw_rule_rate.t, i32 12)
  %3 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i29, align 4
  %openmin.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 2
  %max.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 1
  %max = getelementptr inbounds %struct.snd_interval, ptr %t, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.034 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %5 = trunc i32 %i.034 to i8
  %div.i.lhs.trunc = add i8 %5, -1
  %div.i33 = sdiv i8 %div.i.lhs.trunc, 2
  %div.i.sext = sext i8 %div.i33 to i32
  %arrayidx = getelementptr [7 x i32], ptr @freq_table, i32 0, i32 %i.034
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %7)
  %cmp.i = icmp ugt i32 %4, %7
  br i1 %cmp.i, label %for.body.for.inc_crit_edge, label %lor.lhs.false.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false.i:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %7)
  %cmp2.i = icmp eq i32 %4, %7
  br i1 %cmp2.i, label %land.lhs.true.i, label %lor.lhs.false.i.lor.lhs.false3.i_crit_edge

lor.lhs.false.i.lor.lhs.false3.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false3.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %8 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %openmin.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %land.lhs.true.i.lor.lhs.false3.i_crit_edge, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true.i.lor.lhs.false3.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false3.i

lor.lhs.false3.i:                                 ; preds = %land.lhs.true.i.lor.lhs.false3.i_crit_edge, %lor.lhs.false.i.lor.lhs.false3.i_crit_edge
  %9 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %7)
  %cmp4.i = icmp ult i32 %10, %7
  br i1 %cmp4.i, label %lor.lhs.false3.i.for.inc_crit_edge, label %lor.rhs.i

lor.lhs.false3.i.for.inc_crit_edge:               ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.rhs.i:                                        ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %7)
  %cmp6.i = icmp eq i32 %10, %7
  br i1 %cmp6.i, label %snd_interval_test.exit, label %lor.rhs.i.if.end_crit_edge

lor.rhs.i.if.end_crit_edge:                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

snd_interval_test.exit:                           ; preds = %lor.rhs.i
  %11 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load7.i = load i8, ptr %openmin.i, align 4
  %12 = and i8 %bf.load7.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.not = icmp eq i8 %12, 0
  br i1 %tobool.not.not, label %snd_interval_test.exit.if.end_crit_edge, label %snd_interval_test.exit.for.inc_crit_edge

snd_interval_test.exit.for.inc_crit_edge:         ; preds = %snd_interval_test.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

snd_interval_test.exit.if.end_crit_edge:          ; preds = %snd_interval_test.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %snd_interval_test.exit.if.end_crit_edge, %lor.rhs.i.if.end_crit_edge
  %13 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %t, align 4
  %arrayidx4 = getelementptr i32, ptr %1, i32 %div.i.sext
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx4, align 4
  %17 = tail call i32 @llvm.umin.i32(i32 %14, i32 %16)
  %18 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %t, align 4
  %19 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max, align 4
  %21 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx4, align 4
  %23 = tail call i32 @llvm.umax.i32(i32 %20, i32 %22)
  %24 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %max, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %snd_interval_test.exit.for.inc_crit_edge, %lor.lhs.false3.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %call15 = call i32 @snd_interval_refine(ptr noundef %arrayidx.i, ptr noundef nonnull %t) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %t) #7
  ret i32 %call15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_rule_rate(ptr noundef %params, ptr nocapture noundef readonly %rule) #2 align 64 {
entry:
  %t = alloca %struct.snd_interval, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %arrayidx.i28 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %t) #7
  %2 = call ptr @memcpy(ptr %t, ptr @__const.hw_rule_rate.t, i32 12)
  %3 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i28, align 4
  %openmin.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2, i32 2
  %max.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2, i32 1
  %max = getelementptr inbounds %struct.snd_interval, ptr %t, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.033 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %5 = trunc i32 %i.033 to i8
  %div.i.lhs.trunc = add i8 %5, -1
  %div.i32 = sdiv i8 %div.i.lhs.trunc, 2
  %div.i.sext = sext i8 %div.i32 to i32
  %arrayidx = getelementptr i32, ptr %1, i32 %div.i.sext
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %7)
  %cmp.i = icmp ugt i32 %4, %7
  br i1 %cmp.i, label %for.body.for.inc_crit_edge, label %lor.lhs.false.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false.i:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %7)
  %cmp2.i = icmp eq i32 %4, %7
  br i1 %cmp2.i, label %land.lhs.true.i, label %lor.lhs.false.i.lor.lhs.false3.i_crit_edge

lor.lhs.false.i.lor.lhs.false3.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false3.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %8 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %openmin.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %land.lhs.true.i.lor.lhs.false3.i_crit_edge, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true.i.lor.lhs.false3.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false3.i

lor.lhs.false3.i:                                 ; preds = %land.lhs.true.i.lor.lhs.false3.i_crit_edge, %lor.lhs.false.i.lor.lhs.false3.i_crit_edge
  %9 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %7)
  %cmp4.i = icmp ult i32 %10, %7
  br i1 %cmp4.i, label %lor.lhs.false3.i.for.inc_crit_edge, label %lor.rhs.i

lor.lhs.false3.i.for.inc_crit_edge:               ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.rhs.i:                                        ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %7)
  %cmp6.i = icmp eq i32 %10, %7
  br i1 %cmp6.i, label %snd_interval_test.exit, label %lor.rhs.i.if.end_crit_edge

lor.rhs.i.if.end_crit_edge:                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

snd_interval_test.exit:                           ; preds = %lor.rhs.i
  %11 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load7.i = load i8, ptr %openmin.i, align 4
  %12 = and i8 %bf.load7.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.not = icmp eq i8 %12, 0
  br i1 %tobool.not.not, label %snd_interval_test.exit.if.end_crit_edge, label %snd_interval_test.exit.for.inc_crit_edge

snd_interval_test.exit.for.inc_crit_edge:         ; preds = %snd_interval_test.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

snd_interval_test.exit.if.end_crit_edge:          ; preds = %snd_interval_test.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %snd_interval_test.exit.if.end_crit_edge, %lor.rhs.i.if.end_crit_edge
  %13 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %t, align 4
  %arrayidx4 = getelementptr [7 x i32], ptr @freq_table, i32 0, i32 %i.033
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx4, align 4
  %17 = tail call i32 @llvm.umin.i32(i32 %14, i32 %16)
  %18 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %t, align 4
  %19 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max, align 4
  %21 = tail call i32 @llvm.umax.i32(i32 %20, i32 %16)
  %22 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %max, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %snd_interval_test.exit.for.inc_crit_edge, %lor.lhs.false3.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %call15 = call i32 @snd_interval_refine(ptr noundef %arrayidx.i, ptr noundef nonnull %t) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %t) #7
  ret i32 %call15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_am824_add_pcm_hw_constraints(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_limit_rates(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_refine(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_efw_stream_reserve_duplex(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_efw_stream_stop_duplex(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_efw_stream_start_duplex(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_stream_pcm_prepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_domain_stream_pcm_pointer(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_domain_stream_pcm_ack(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @snd_efw_create_pcm_devices.capture_ops, !1, !"capture_ops", i1 false, i1 false}
!1 = !{!"../sound/firewire/fireworks/fireworks_pcm.c", i32 372, i32 34}
!2 = !{ptr @snd_efw_create_pcm_devices.playback_ops, !3, !"playback_ops", i1 false, i1 false}
!3 = !{!"../sound/firewire/fireworks/fireworks_pcm.c", i32 382, i32 34}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/firewire/fireworks/fireworks_pcm.c", i32 400, i32 41}
!6 = !{ptr @freq_table, !7, !"freq_table", i1 false, i1 false}
!7 = !{!"../sound/firewire/fireworks/fireworks_pcm.c", i32 30, i32 27}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"auto-init"}
