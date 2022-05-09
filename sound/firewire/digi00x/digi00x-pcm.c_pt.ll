; ModuleID = '/llk/IR_all_yes/sound/firewire/digi00x/digi00x-pcm.c_pt.bc'
source_filename = "../sound/firewire/digi00x/digi00x-pcm.c"
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
%struct.snd_dg00x = type { ptr, ptr, %struct.mutex, %struct.spinlock, %struct.amdtp_stream, %struct.fw_iso_resources, %struct.amdtp_stream, %struct.fw_iso_resources, i32, i32, i8, %struct.wait_queue_head, %struct.fw_address_handler, i32, i8, %struct.amdtp_domain }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.fw_address_handler = type { i64, i64, ptr, ptr, %struct.list_head }
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

@snd_dg00x_create_pcm_devices.capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @pcm_open, ptr @pcm_close, ptr null, ptr @pcm_hw_params, ptr @pcm_hw_free, ptr @pcm_capture_prepare, ptr @pcm_capture_trigger, ptr null, ptr @pcm_capture_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcm_capture_ack }, [32 x i8] zeroinitializer }, align 32
@snd_dg00x_create_pcm_devices.playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @pcm_open, ptr @pcm_close, ptr null, ptr @pcm_hw_params, ptr @pcm_hw_free, ptr @pcm_playback_prepare, ptr @pcm_playback_trigger, ptr null, ptr @pcm_playback_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcm_playback_ack }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s PCM\00", [25 x i8] zeroinitializer }, align 32
@snd_dg00x_stream_rates = external dso_local local_unnamed_addr constant [4 x i32], align 4
@snd_dg00x_stream_pcm_channels = external dso_local local_unnamed_addr constant [4 x i32], align 4
@__const.hw_rule_rate.t = private unnamed_addr constant { i32, i32, i8, [3 x i8] } { i32 -1, i32 0, i8 32, [3 x i8] zeroinitializer }, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.2 = private unnamed_addr constant [12 x i8] c"capture_ops\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 325, i32 34 }
@___asan_gen_.5 = private unnamed_addr constant [13 x i8] c"playback_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 335, i32 34 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [40 x i8] c"../sound/firewire/digi00x/digi00x-pcm.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 354, i32 4 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @snd_dg00x_create_pcm_devices.capture_ops, ptr @snd_dg00x_create_pcm_devices.playback_ops, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_dg00x_create_pcm_devices.capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_dg00x_create_pcm_devices.playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_dg00x_create_pcm_devices(ptr noundef %dg00x) local_unnamed_addr #0 align 64 {
entry:
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #6
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !15
  %1 = ptrtoint ptr %dg00x to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dg00x, align 8
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
  store ptr %dg00x, ptr %private_data, align 8
  %name = getelementptr inbounds %struct.snd_pcm, ptr %4, i32 0, i32 7
  %6 = ptrtoint ptr %dg00x to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dg00x, align 8
  %shortname = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 3
  %call5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 80, ptr noundef nonnull @.str, ptr noundef %shortname)
  %8 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %9, i32 noundef 0, ptr noundef nonnull @snd_dg00x_create_pcm_devices.playback_ops) #6
  %10 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %11, i32 noundef 1, ptr noundef nonnull @snd_dg00x_create_pcm_devices.capture_ops) #6
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
  %clock = alloca i32, align 4
  %detect = alloca i8, align 1
  %rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clock) #6
  %2 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %clock, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %detect) #6
  %3 = ptrtoint ptr %detect to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %detect, align 1, !annotation !15
  %call = tail call i32 @snd_dg00x_stream_lock_try(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup49_crit_edge, label %if.end

entry.cleanup49_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup49

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
  %tx_stream.i = getelementptr inbounds %struct.snd_dg00x, ptr %1, i32 0, i32 4
  %rx_stream.i = getelementptr inbounds %struct.snd_dg00x, ptr %1, i32 0, i32 6
  %s.0.i = select i1 %cmp.i, ptr %tx_stream.i, ptr %rx_stream.i
  %8 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 2048, ptr %8, align 8
  %channels_min.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 5
  %10 = ptrtoint ptr %channels_min.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 10, ptr %channels_min.i, align 4
  %channels_max.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 6
  %11 = ptrtoint ptr %channels_max.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 18, ptr %channels_max.i, align 8
  %rates.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 2
  %12 = ptrtoint ptr %rates.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1728, ptr %rates.i, align 8
  %hw.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46
  %call.i.i = tail call i32 @snd_pcm_hw_limit_rates(ptr noundef %hw.i.i) #6
  %13 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %runtime1.i, align 4
  %call9.i = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %14, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @hw_rule_channels, ptr noundef null, i32 noundef 11, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.end.err_locked_crit_edge, label %if.end12.i

if.end.err_locked_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_locked

if.end12.i:                                       ; preds = %if.end
  %15 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %runtime1.i, align 4
  %call14.i = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %16, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @hw_rule_rate, ptr noundef null, i32 noundef 10, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %if.end12.i.err_locked_crit_edge, label %pcm_init_hw_params.exit

if.end12.i.err_locked_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_locked

pcm_init_hw_params.exit:                          ; preds = %if.end12.i
  %17 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %runtime1.i, align 4
  %call19.i = tail call i32 @amdtp_dot_add_pcm_hw_constraints(ptr noundef %s.0.i, ptr noundef %18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp2 = icmp slt i32 %call19.i, 0
  br i1 %cmp2, label %pcm_init_hw_params.exit.err_locked_crit_edge, label %if.end4

pcm_init_hw_params.exit.err_locked_crit_edge:     ; preds = %pcm_init_hw_params.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_locked

if.end4:                                          ; preds = %pcm_init_hw_params.exit
  %call5 = call i32 @snd_dg00x_stream_get_clock(ptr noundef %1, ptr noundef nonnull %clock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.err_locked_crit_edge, label %if.end8

if.end4.err_locked_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_locked

if.end8:                                          ; preds = %if.end4
  %19 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp9.not = icmp eq i32 %20, 0
  br i1 %cmp9.not, label %if.end8.if.end17_crit_edge, label %if.then10

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then10:                                        ; preds = %if.end8
  %call11 = call i32 @snd_dg00x_stream_check_external_clock(ptr noundef %1, ptr noundef nonnull %detect) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then10.err_locked_crit_edge, label %if.end14

if.then10.err_locked_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_locked

if.end14:                                         ; preds = %if.then10
  %21 = ptrtoint ptr %detect to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %detect, align 1, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %if.end14.err_locked_crit_edge, label %if.end14.if.end17_crit_edge

if.end14.if.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.end14.err_locked_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_locked

if.end17:                                         ; preds = %if.end14.if.end17_crit_edge, %if.end8.if.end17_crit_edge
  %mutex = getelementptr inbounds %struct.snd_dg00x, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %23 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp18.not = icmp eq i32 %24, 0
  br i1 %cmp18.not, label %lor.lhs.false, label %if.end17.if.then21_crit_edge

if.end17.if.then21_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

lor.lhs.false:                                    ; preds = %if.end17
  %substreams_counter = getelementptr inbounds %struct.snd_dg00x, ptr %1, i32 0, i32 8
  %25 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %substreams_counter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp19.not = icmp eq i32 %26, 0
  br i1 %cmp19.not, label %lor.lhs.false.if.end47_crit_edge, label %land.lhs.true

lor.lhs.false.if.end47_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

land.lhs.true:                                    ; preds = %lor.lhs.false
  %events_per_period = getelementptr inbounds %struct.snd_dg00x, ptr %1, i32 0, i32 15, i32 1
  %27 = ptrtoint ptr %events_per_period to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %events_per_period, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp20.not = icmp eq i32 %28, 0
  br i1 %cmp20.not, label %land.lhs.true.if.end47_crit_edge, label %land.lhs.true.if.then21_crit_edge

land.lhs.true.if.then21_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then21:                                        ; preds = %land.lhs.true.if.then21_crit_edge, %if.end17.if.then21_crit_edge
  %events_per_period22 = getelementptr inbounds %struct.snd_dg00x, ptr %1, i32 0, i32 15, i32 1
  %29 = ptrtoint ptr %events_per_period22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %events_per_period22, align 4
  %events_per_buffer = getelementptr inbounds %struct.snd_dg00x, ptr %1, i32 0, i32 15, i32 2
  %31 = ptrtoint ptr %events_per_buffer to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %events_per_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate) #6
  %33 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %rate, align 4, !annotation !15
  %call23 = call i32 @snd_dg00x_stream_get_external_rate(ptr noundef %1, ptr noundef nonnull %rate) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then21.cleanup.thread_crit_edge, label %if.end27

if.then21.cleanup.thread_crit_edge:               ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end27:                                         ; preds = %if.then21
  %34 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rate, align 4
  %36 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %runtime1.i, align 4
  %rate_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %37, i32 0, i32 46, i32 3
  %38 = ptrtoint ptr %rate_min to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %35, ptr %rate_min, align 4
  %39 = load ptr, ptr %runtime1.i, align 4
  %rate_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %39, i32 0, i32 46, i32 4
  %40 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %35, ptr %rate_max, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp30.not = icmp eq i32 %30, 0
  br i1 %cmp30.not, label %if.end27.cleanup_crit_edge, label %if.then31

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then31:                                        ; preds = %if.end27
  %41 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %runtime1.i, align 4
  %call33 = call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %42, i32 noundef 13, i32 noundef %30, i32 noundef %30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then31.cleanup.thread_crit_edge, label %if.end37

if.then31.cleanup.thread_crit_edge:               ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end37:                                         ; preds = %if.then31
  %43 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %runtime1.i, align 4
  %call39 = call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %44, i32 noundef 17, i32 noundef %32, i32 noundef %32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.end37.cleanup.thread_crit_edge, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end37.cleanup.thread_crit_edge:                ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end37.cleanup.thread_crit_edge, %if.then31.cleanup.thread_crit_edge, %if.then21.cleanup.thread_crit_edge
  %err.1.ph = phi i32 [ %call23, %if.then21.cleanup.thread_crit_edge ], [ %call33, %if.then31.cleanup.thread_crit_edge ], [ %call39, %if.end37.cleanup.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate) #6
  br label %err_locked

cleanup:                                          ; preds = %if.end37.cleanup_crit_edge, %if.end27.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate) #6
  br label %if.end47

if.end47:                                         ; preds = %cleanup, %land.lhs.true.if.end47_crit_edge, %lor.lhs.false.if.end47_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #6
  call void @snd_pcm_set_sync(ptr noundef %substream) #6
  br label %cleanup49

err_locked:                                       ; preds = %cleanup.thread, %if.end14.err_locked_crit_edge, %if.then10.err_locked_crit_edge, %if.end4.err_locked_crit_edge, %pcm_init_hw_params.exit.err_locked_crit_edge, %if.end12.i.err_locked_crit_edge, %if.end.err_locked_crit_edge
  %err.2 = phi i32 [ %call19.i, %pcm_init_hw_params.exit.err_locked_crit_edge ], [ %call5, %if.end4.err_locked_crit_edge ], [ %call11, %if.then10.err_locked_crit_edge ], [ -16, %if.end14.err_locked_crit_edge ], [ %err.1.ph, %cleanup.thread ], [ %call14.i, %if.end12.i.err_locked_crit_edge ], [ %call9.i, %if.end.err_locked_crit_edge ]
  call void @snd_dg00x_stream_lock_release(ptr noundef %1) #6
  br label %cleanup49

cleanup49:                                        ; preds = %err_locked, %if.end47, %entry.cleanup49_crit_edge
  %retval.0 = phi i32 [ %err.2, %err_locked ], [ 0, %if.end47 ], [ %call, %entry.cleanup49_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %detect) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clock) #6
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
  tail call void @snd_dg00x_stream_lock_release(ptr noundef %1) #6
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
  %mutex = getelementptr inbounds %struct.snd_dg00x, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call3 = tail call i32 @snd_dg00x_stream_reserve_duplex(ptr noundef %1, i32 noundef %9, i32 noundef %11, i32 noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp4 = icmp sgt i32 %call3, -1
  br i1 %cmp4, label %if.then5, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %substreams_counter = getelementptr inbounds %struct.snd_dg00x, ptr %1, i32 0, i32 8
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
  %mutex = getelementptr inbounds %struct.snd_dg00x, ptr %1, i32 0, i32 2
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
  %substreams_counter = getelementptr inbounds %struct.snd_dg00x, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %substreams_counter, align 8
  %dec = add i32 %9, -1
  store i32 %dec, ptr %substreams_counter, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @snd_dg00x_stream_stop_duplex(ptr noundef %1) #6
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
  %mutex = getelementptr inbounds %struct.snd_dg00x, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call = tail call i32 @snd_dg00x_stream_start_duplex(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tx_stream = getelementptr inbounds %struct.snd_dg00x, ptr %1, i32 0, i32 4
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
  %pcm3.i = getelementptr inbounds %struct.snd_dg00x, ptr %1, i32 0, i32 4, i32 19
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
  %domain = getelementptr inbounds %struct.snd_dg00x, ptr %1, i32 0, i32 15
  %tx_stream = getelementptr inbounds %struct.snd_dg00x, ptr %1, i32 0, i32 4
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
  %domain = getelementptr inbounds %struct.snd_dg00x, ptr %1, i32 0, i32 15
  %tx_stream = getelementptr inbounds %struct.snd_dg00x, ptr %1, i32 0, i32 4
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
  %mutex = getelementptr inbounds %struct.snd_dg00x, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call = tail call i32 @snd_dg00x_stream_start_duplex(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rx_stream = getelementptr inbounds %struct.snd_dg00x, ptr %1, i32 0, i32 6
  tail call void @amdtp_stream_pcm_prepare(ptr noundef %rx_stream) #6
  tail call void @amdtp_dot_reset(ptr noundef %rx_stream) #6
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
  %pcm3.i = getelementptr inbounds %struct.snd_dg00x, ptr %1, i32 0, i32 6, i32 19
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
  %domain = getelementptr inbounds %struct.snd_dg00x, ptr %1, i32 0, i32 15
  %rx_stream = getelementptr inbounds %struct.snd_dg00x, ptr %1, i32 0, i32 6
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
  %domain = getelementptr inbounds %struct.snd_dg00x, ptr %1, i32 0, i32 15
  %rx_stream = getelementptr inbounds %struct.snd_dg00x, ptr %1, i32 0, i32 6
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
declare dso_local i32 @snd_dg00x_stream_lock_try(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dg00x_stream_get_clock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dg00x_stream_check_external_clock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dg00x_stream_get_external_rate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dg00x_stream_lock_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_rule_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_rule_channels(ptr noundef %params, ptr nocapture noundef readnone %rule) #0 align 64 {
entry:
  %t = alloca %struct.snd_interval, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i27 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %t) #6
  %0 = call ptr @memcpy(ptr %t, ptr @__const.hw_rule_rate.t, i32 12)
  %1 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i27, align 4
  %openmin.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 2
  %max.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snd_dg00x_stream_rates to i32))
  %3 = load i32, ptr @snd_dg00x_stream_rates, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %3)
  %cmp.i = icmp ugt i32 %2, %3
  br i1 %cmp.i, label %entry.for.inc_crit_edge, label %lor.lhs.false.i

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %3)
  %cmp2.i = icmp eq i32 %2, %3
  br i1 %cmp2.i, label %land.lhs.true.i, label %lor.lhs.false.i.lor.lhs.false3.i_crit_edge

lor.lhs.false.i.lor.lhs.false3.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false3.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %4 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %4)
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
  %5 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp4.i = icmp ult i32 %6, %3
  br i1 %cmp4.i, label %lor.lhs.false3.i.for.inc_crit_edge, label %lor.rhs.i

lor.lhs.false3.i.for.inc_crit_edge:               ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.rhs.i:                                        ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp6.i = icmp eq i32 %6, %3
  br i1 %cmp6.i, label %snd_interval_test.exit, label %lor.rhs.i.if.end_crit_edge

lor.rhs.i.if.end_crit_edge:                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

snd_interval_test.exit:                           ; preds = %lor.rhs.i
  %7 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load7.i = load i8, ptr %openmin.i, align 4
  %8 = and i8 %bf.load7.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.not = icmp eq i8 %8, 0
  br i1 %tobool.not.not, label %snd_interval_test.exit.if.end_crit_edge, label %snd_interval_test.exit.for.inc_crit_edge

snd_interval_test.exit.for.inc_crit_edge:         ; preds = %snd_interval_test.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

snd_interval_test.exit.if.end_crit_edge:          ; preds = %snd_interval_test.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %snd_interval_test.exit.if.end_crit_edge, %lor.rhs.i.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snd_dg00x_stream_pcm_channels to i32))
  %9 = load i32, ptr @snd_dg00x_stream_pcm_channels, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %snd_interval_test.exit.for.inc_crit_edge, %lor.lhs.false3.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %entry.for.inc_crit_edge
  %10 = phi i32 [ 0, %entry.for.inc_crit_edge ], [ 0, %land.lhs.true.i.for.inc_crit_edge ], [ 0, %lor.lhs.false3.i.for.inc_crit_edge ], [ 0, %snd_interval_test.exit.for.inc_crit_edge ], [ %9, %if.end ]
  %11 = phi i32 [ -1, %entry.for.inc_crit_edge ], [ -1, %land.lhs.true.i.for.inc_crit_edge ], [ -1, %lor.lhs.false3.i.for.inc_crit_edge ], [ -1, %snd_interval_test.exit.for.inc_crit_edge ], [ %9, %if.end ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x i32], ptr @snd_dg00x_stream_rates, i32 0, i32 1) to i32))
  %12 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @snd_dg00x_stream_rates, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %12)
  %cmp.i.1 = icmp ugt i32 %2, %12
  br i1 %cmp.i.1, label %for.inc.for.inc.1_crit_edge, label %lor.lhs.false.i.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

lor.lhs.false.i.1:                                ; preds = %for.inc
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %12)
  %cmp2.i.1 = icmp eq i32 %2, %12
  br i1 %cmp2.i.1, label %land.lhs.true.i.1, label %lor.lhs.false.i.1.lor.lhs.false3.i.1_crit_edge

lor.lhs.false.i.1.lor.lhs.false3.i.1_crit_edge:   ; preds = %lor.lhs.false.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false3.i.1

land.lhs.true.i.1:                                ; preds = %lor.lhs.false.i.1
  %13 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i.1 = load i8, ptr %openmin.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.1)
  %tobool.not.i.1 = icmp sgt i8 %bf.load.i.1, -1
  br i1 %tobool.not.i.1, label %land.lhs.true.i.1.lor.lhs.false3.i.1_crit_edge, label %land.lhs.true.i.1.for.inc.1_crit_edge

land.lhs.true.i.1.for.inc.1_crit_edge:            ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

land.lhs.true.i.1.lor.lhs.false3.i.1_crit_edge:   ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false3.i.1

lor.lhs.false3.i.1:                               ; preds = %land.lhs.true.i.1.lor.lhs.false3.i.1_crit_edge, %lor.lhs.false.i.1.lor.lhs.false3.i.1_crit_edge
  %14 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %12)
  %cmp4.i.1 = icmp ult i32 %15, %12
  br i1 %cmp4.i.1, label %lor.lhs.false3.i.1.for.inc.1_crit_edge, label %lor.rhs.i.1

lor.lhs.false3.i.1.for.inc.1_crit_edge:           ; preds = %lor.lhs.false3.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

lor.rhs.i.1:                                      ; preds = %lor.lhs.false3.i.1
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %12)
  %cmp6.i.1 = icmp eq i32 %15, %12
  br i1 %cmp6.i.1, label %snd_interval_test.exit.1, label %lor.rhs.i.1.if.end.1_crit_edge

lor.rhs.i.1.if.end.1_crit_edge:                   ; preds = %lor.rhs.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.1

snd_interval_test.exit.1:                         ; preds = %lor.rhs.i.1
  %16 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load7.i.1 = load i8, ptr %openmin.i, align 4
  %17 = and i8 %bf.load7.i.1, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.not.1 = icmp eq i8 %17, 0
  br i1 %tobool.not.not.1, label %snd_interval_test.exit.1.if.end.1_crit_edge, label %snd_interval_test.exit.1.for.inc.1_crit_edge

snd_interval_test.exit.1.for.inc.1_crit_edge:     ; preds = %snd_interval_test.exit.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

snd_interval_test.exit.1.if.end.1_crit_edge:      ; preds = %snd_interval_test.exit.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.1

if.end.1:                                         ; preds = %snd_interval_test.exit.1.if.end.1_crit_edge, %lor.rhs.i.1.if.end.1_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x i32], ptr @snd_dg00x_stream_pcm_channels, i32 0, i32 1) to i32))
  %18 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @snd_dg00x_stream_pcm_channels, i32 0, i32 1), align 4
  %19 = tail call i32 @llvm.umin.i32(i32 %11, i32 %18)
  %20 = tail call i32 @llvm.umax.i32(i32 %10, i32 %18)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %snd_interval_test.exit.1.for.inc.1_crit_edge, %lor.lhs.false3.i.1.for.inc.1_crit_edge, %land.lhs.true.i.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %21 = phi i32 [ %10, %for.inc.for.inc.1_crit_edge ], [ %10, %land.lhs.true.i.1.for.inc.1_crit_edge ], [ %10, %lor.lhs.false3.i.1.for.inc.1_crit_edge ], [ %10, %snd_interval_test.exit.1.for.inc.1_crit_edge ], [ %20, %if.end.1 ]
  %22 = phi i32 [ %11, %for.inc.for.inc.1_crit_edge ], [ %11, %land.lhs.true.i.1.for.inc.1_crit_edge ], [ %11, %lor.lhs.false3.i.1.for.inc.1_crit_edge ], [ %11, %snd_interval_test.exit.1.for.inc.1_crit_edge ], [ %19, %if.end.1 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x i32], ptr @snd_dg00x_stream_rates, i32 0, i32 2) to i32))
  %23 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @snd_dg00x_stream_rates, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %23)
  %cmp.i.2 = icmp ugt i32 %2, %23
  br i1 %cmp.i.2, label %for.inc.1.for.inc.2_crit_edge, label %lor.lhs.false.i.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

lor.lhs.false.i.2:                                ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %23)
  %cmp2.i.2 = icmp eq i32 %2, %23
  br i1 %cmp2.i.2, label %land.lhs.true.i.2, label %lor.lhs.false.i.2.lor.lhs.false3.i.2_crit_edge

lor.lhs.false.i.2.lor.lhs.false3.i.2_crit_edge:   ; preds = %lor.lhs.false.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false3.i.2

land.lhs.true.i.2:                                ; preds = %lor.lhs.false.i.2
  %24 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i.2 = load i8, ptr %openmin.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.2)
  %tobool.not.i.2 = icmp sgt i8 %bf.load.i.2, -1
  br i1 %tobool.not.i.2, label %land.lhs.true.i.2.lor.lhs.false3.i.2_crit_edge, label %land.lhs.true.i.2.for.inc.2_crit_edge

land.lhs.true.i.2.for.inc.2_crit_edge:            ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

land.lhs.true.i.2.lor.lhs.false3.i.2_crit_edge:   ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false3.i.2

lor.lhs.false3.i.2:                               ; preds = %land.lhs.true.i.2.lor.lhs.false3.i.2_crit_edge, %lor.lhs.false.i.2.lor.lhs.false3.i.2_crit_edge
  %25 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %23)
  %cmp4.i.2 = icmp ult i32 %26, %23
  br i1 %cmp4.i.2, label %lor.lhs.false3.i.2.for.inc.2_crit_edge, label %lor.rhs.i.2

lor.lhs.false3.i.2.for.inc.2_crit_edge:           ; preds = %lor.lhs.false3.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

lor.rhs.i.2:                                      ; preds = %lor.lhs.false3.i.2
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %23)
  %cmp6.i.2 = icmp eq i32 %26, %23
  br i1 %cmp6.i.2, label %snd_interval_test.exit.2, label %lor.rhs.i.2.if.end.2_crit_edge

lor.rhs.i.2.if.end.2_crit_edge:                   ; preds = %lor.rhs.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.2

snd_interval_test.exit.2:                         ; preds = %lor.rhs.i.2
  %27 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load7.i.2 = load i8, ptr %openmin.i, align 4
  %28 = and i8 %bf.load7.i.2, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.not.2 = icmp eq i8 %28, 0
  br i1 %tobool.not.not.2, label %snd_interval_test.exit.2.if.end.2_crit_edge, label %snd_interval_test.exit.2.for.inc.2_crit_edge

snd_interval_test.exit.2.for.inc.2_crit_edge:     ; preds = %snd_interval_test.exit.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

snd_interval_test.exit.2.if.end.2_crit_edge:      ; preds = %snd_interval_test.exit.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.2

if.end.2:                                         ; preds = %snd_interval_test.exit.2.if.end.2_crit_edge, %lor.rhs.i.2.if.end.2_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x i32], ptr @snd_dg00x_stream_pcm_channels, i32 0, i32 2) to i32))
  %29 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @snd_dg00x_stream_pcm_channels, i32 0, i32 2), align 4
  %30 = tail call i32 @llvm.umin.i32(i32 %22, i32 %29)
  %31 = tail call i32 @llvm.umax.i32(i32 %21, i32 %29)
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %snd_interval_test.exit.2.for.inc.2_crit_edge, %lor.lhs.false3.i.2.for.inc.2_crit_edge, %land.lhs.true.i.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %32 = phi i32 [ %21, %for.inc.1.for.inc.2_crit_edge ], [ %21, %land.lhs.true.i.2.for.inc.2_crit_edge ], [ %21, %lor.lhs.false3.i.2.for.inc.2_crit_edge ], [ %21, %snd_interval_test.exit.2.for.inc.2_crit_edge ], [ %31, %if.end.2 ]
  %33 = phi i32 [ %22, %for.inc.1.for.inc.2_crit_edge ], [ %22, %land.lhs.true.i.2.for.inc.2_crit_edge ], [ %22, %lor.lhs.false3.i.2.for.inc.2_crit_edge ], [ %22, %snd_interval_test.exit.2.for.inc.2_crit_edge ], [ %30, %if.end.2 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x i32], ptr @snd_dg00x_stream_rates, i32 0, i32 3) to i32))
  %34 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @snd_dg00x_stream_rates, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %34)
  %cmp.i.3 = icmp ugt i32 %2, %34
  br i1 %cmp.i.3, label %for.inc.2.for.inc.3_crit_edge, label %lor.lhs.false.i.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

lor.lhs.false.i.3:                                ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %34)
  %cmp2.i.3 = icmp eq i32 %2, %34
  br i1 %cmp2.i.3, label %land.lhs.true.i.3, label %lor.lhs.false.i.3.lor.lhs.false3.i.3_crit_edge

lor.lhs.false.i.3.lor.lhs.false3.i.3_crit_edge:   ; preds = %lor.lhs.false.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false3.i.3

land.lhs.true.i.3:                                ; preds = %lor.lhs.false.i.3
  %35 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load.i.3 = load i8, ptr %openmin.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.3)
  %tobool.not.i.3 = icmp sgt i8 %bf.load.i.3, -1
  br i1 %tobool.not.i.3, label %land.lhs.true.i.3.lor.lhs.false3.i.3_crit_edge, label %land.lhs.true.i.3.for.inc.3_crit_edge

land.lhs.true.i.3.for.inc.3_crit_edge:            ; preds = %land.lhs.true.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

land.lhs.true.i.3.lor.lhs.false3.i.3_crit_edge:   ; preds = %land.lhs.true.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false3.i.3

lor.lhs.false3.i.3:                               ; preds = %land.lhs.true.i.3.lor.lhs.false3.i.3_crit_edge, %lor.lhs.false.i.3.lor.lhs.false3.i.3_crit_edge
  %36 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %34)
  %cmp4.i.3 = icmp ult i32 %37, %34
  br i1 %cmp4.i.3, label %lor.lhs.false3.i.3.for.inc.3_crit_edge, label %lor.rhs.i.3

lor.lhs.false3.i.3.for.inc.3_crit_edge:           ; preds = %lor.lhs.false3.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

lor.rhs.i.3:                                      ; preds = %lor.lhs.false3.i.3
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %34)
  %cmp6.i.3 = icmp eq i32 %37, %34
  br i1 %cmp6.i.3, label %snd_interval_test.exit.3, label %lor.rhs.i.3.if.end.3_crit_edge

lor.rhs.i.3.if.end.3_crit_edge:                   ; preds = %lor.rhs.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.3

snd_interval_test.exit.3:                         ; preds = %lor.rhs.i.3
  %38 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load7.i.3 = load i8, ptr %openmin.i, align 4
  %39 = and i8 %bf.load7.i.3, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.not.3 = icmp eq i8 %39, 0
  br i1 %tobool.not.not.3, label %snd_interval_test.exit.3.if.end.3_crit_edge, label %snd_interval_test.exit.3.for.inc.3_crit_edge

snd_interval_test.exit.3.for.inc.3_crit_edge:     ; preds = %snd_interval_test.exit.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

snd_interval_test.exit.3.if.end.3_crit_edge:      ; preds = %snd_interval_test.exit.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.3

if.end.3:                                         ; preds = %snd_interval_test.exit.3.if.end.3_crit_edge, %lor.rhs.i.3.if.end.3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x i32], ptr @snd_dg00x_stream_pcm_channels, i32 0, i32 3) to i32))
  %40 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @snd_dg00x_stream_pcm_channels, i32 0, i32 3), align 4
  %41 = tail call i32 @llvm.umin.i32(i32 %33, i32 %40)
  %42 = tail call i32 @llvm.umax.i32(i32 %32, i32 %40)
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3, %snd_interval_test.exit.3.for.inc.3_crit_edge, %lor.lhs.false3.i.3.for.inc.3_crit_edge, %land.lhs.true.i.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %43 = phi i32 [ %32, %for.inc.2.for.inc.3_crit_edge ], [ %32, %land.lhs.true.i.3.for.inc.3_crit_edge ], [ %32, %lor.lhs.false3.i.3.for.inc.3_crit_edge ], [ %32, %snd_interval_test.exit.3.for.inc.3_crit_edge ], [ %42, %if.end.3 ]
  %44 = phi i32 [ %33, %for.inc.2.for.inc.3_crit_edge ], [ %33, %land.lhs.true.i.3.for.inc.3_crit_edge ], [ %33, %lor.lhs.false3.i.3.for.inc.3_crit_edge ], [ %33, %snd_interval_test.exit.3.for.inc.3_crit_edge ], [ %41, %if.end.3 ]
  %max = getelementptr inbounds %struct.snd_interval, ptr %t, i32 0, i32 1
  %45 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %t, align 4
  %46 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %43, ptr %max, align 4
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %call14 = call i32 @snd_interval_refine(ptr noundef %arrayidx.i, ptr noundef nonnull %t) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %t) #6
  ret i32 %call14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_rule_rate(ptr noundef %params, ptr nocapture noundef readnone %rule) #0 align 64 {
entry:
  %t = alloca %struct.snd_interval, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i27 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %t) #6
  %0 = call ptr @memcpy(ptr %t, ptr @__const.hw_rule_rate.t, i32 12)
  %1 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i27, align 4
  %openmin.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2, i32 2
  %max.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snd_dg00x_stream_pcm_channels to i32))
  %3 = load i32, ptr @snd_dg00x_stream_pcm_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %3)
  %cmp.i = icmp ugt i32 %2, %3
  br i1 %cmp.i, label %entry.for.inc_crit_edge, label %lor.lhs.false.i

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %3)
  %cmp2.i = icmp eq i32 %2, %3
  br i1 %cmp2.i, label %land.lhs.true.i, label %lor.lhs.false.i.lor.lhs.false3.i_crit_edge

lor.lhs.false.i.lor.lhs.false3.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false3.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %4 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %4)
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
  %5 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp4.i = icmp ult i32 %6, %3
  br i1 %cmp4.i, label %lor.lhs.false3.i.for.inc_crit_edge, label %lor.rhs.i

lor.lhs.false3.i.for.inc_crit_edge:               ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.rhs.i:                                        ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp6.i = icmp eq i32 %6, %3
  br i1 %cmp6.i, label %snd_interval_test.exit, label %lor.rhs.i.if.end_crit_edge

lor.rhs.i.if.end_crit_edge:                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

snd_interval_test.exit:                           ; preds = %lor.rhs.i
  %7 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load7.i = load i8, ptr %openmin.i, align 4
  %8 = and i8 %bf.load7.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.not = icmp eq i8 %8, 0
  br i1 %tobool.not.not, label %snd_interval_test.exit.if.end_crit_edge, label %snd_interval_test.exit.for.inc_crit_edge

snd_interval_test.exit.for.inc_crit_edge:         ; preds = %snd_interval_test.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

snd_interval_test.exit.if.end_crit_edge:          ; preds = %snd_interval_test.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %snd_interval_test.exit.if.end_crit_edge, %lor.rhs.i.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snd_dg00x_stream_rates to i32))
  %9 = load i32, ptr @snd_dg00x_stream_rates, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %snd_interval_test.exit.for.inc_crit_edge, %lor.lhs.false3.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %entry.for.inc_crit_edge
  %10 = phi i32 [ 0, %entry.for.inc_crit_edge ], [ 0, %land.lhs.true.i.for.inc_crit_edge ], [ 0, %lor.lhs.false3.i.for.inc_crit_edge ], [ 0, %snd_interval_test.exit.for.inc_crit_edge ], [ %9, %if.end ]
  %11 = phi i32 [ -1, %entry.for.inc_crit_edge ], [ -1, %land.lhs.true.i.for.inc_crit_edge ], [ -1, %lor.lhs.false3.i.for.inc_crit_edge ], [ -1, %snd_interval_test.exit.for.inc_crit_edge ], [ %9, %if.end ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x i32], ptr @snd_dg00x_stream_pcm_channels, i32 0, i32 1) to i32))
  %12 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @snd_dg00x_stream_pcm_channels, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %12)
  %cmp.i.1 = icmp ugt i32 %2, %12
  br i1 %cmp.i.1, label %for.inc.for.inc.1_crit_edge, label %lor.lhs.false.i.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

lor.lhs.false.i.1:                                ; preds = %for.inc
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %12)
  %cmp2.i.1 = icmp eq i32 %2, %12
  br i1 %cmp2.i.1, label %land.lhs.true.i.1, label %lor.lhs.false.i.1.lor.lhs.false3.i.1_crit_edge

lor.lhs.false.i.1.lor.lhs.false3.i.1_crit_edge:   ; preds = %lor.lhs.false.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false3.i.1

land.lhs.true.i.1:                                ; preds = %lor.lhs.false.i.1
  %13 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i.1 = load i8, ptr %openmin.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.1)
  %tobool.not.i.1 = icmp sgt i8 %bf.load.i.1, -1
  br i1 %tobool.not.i.1, label %land.lhs.true.i.1.lor.lhs.false3.i.1_crit_edge, label %land.lhs.true.i.1.for.inc.1_crit_edge

land.lhs.true.i.1.for.inc.1_crit_edge:            ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

land.lhs.true.i.1.lor.lhs.false3.i.1_crit_edge:   ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false3.i.1

lor.lhs.false3.i.1:                               ; preds = %land.lhs.true.i.1.lor.lhs.false3.i.1_crit_edge, %lor.lhs.false.i.1.lor.lhs.false3.i.1_crit_edge
  %14 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %12)
  %cmp4.i.1 = icmp ult i32 %15, %12
  br i1 %cmp4.i.1, label %lor.lhs.false3.i.1.for.inc.1_crit_edge, label %lor.rhs.i.1

lor.lhs.false3.i.1.for.inc.1_crit_edge:           ; preds = %lor.lhs.false3.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

lor.rhs.i.1:                                      ; preds = %lor.lhs.false3.i.1
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %12)
  %cmp6.i.1 = icmp eq i32 %15, %12
  br i1 %cmp6.i.1, label %snd_interval_test.exit.1, label %lor.rhs.i.1.if.end.1_crit_edge

lor.rhs.i.1.if.end.1_crit_edge:                   ; preds = %lor.rhs.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.1

snd_interval_test.exit.1:                         ; preds = %lor.rhs.i.1
  %16 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load7.i.1 = load i8, ptr %openmin.i, align 4
  %17 = and i8 %bf.load7.i.1, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.not.1 = icmp eq i8 %17, 0
  br i1 %tobool.not.not.1, label %snd_interval_test.exit.1.if.end.1_crit_edge, label %snd_interval_test.exit.1.for.inc.1_crit_edge

snd_interval_test.exit.1.for.inc.1_crit_edge:     ; preds = %snd_interval_test.exit.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

snd_interval_test.exit.1.if.end.1_crit_edge:      ; preds = %snd_interval_test.exit.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.1

if.end.1:                                         ; preds = %snd_interval_test.exit.1.if.end.1_crit_edge, %lor.rhs.i.1.if.end.1_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x i32], ptr @snd_dg00x_stream_rates, i32 0, i32 1) to i32))
  %18 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @snd_dg00x_stream_rates, i32 0, i32 1), align 4
  %19 = tail call i32 @llvm.umin.i32(i32 %11, i32 %18)
  %20 = tail call i32 @llvm.umax.i32(i32 %10, i32 %18)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %snd_interval_test.exit.1.for.inc.1_crit_edge, %lor.lhs.false3.i.1.for.inc.1_crit_edge, %land.lhs.true.i.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %21 = phi i32 [ %10, %for.inc.for.inc.1_crit_edge ], [ %10, %land.lhs.true.i.1.for.inc.1_crit_edge ], [ %10, %lor.lhs.false3.i.1.for.inc.1_crit_edge ], [ %10, %snd_interval_test.exit.1.for.inc.1_crit_edge ], [ %20, %if.end.1 ]
  %22 = phi i32 [ %11, %for.inc.for.inc.1_crit_edge ], [ %11, %land.lhs.true.i.1.for.inc.1_crit_edge ], [ %11, %lor.lhs.false3.i.1.for.inc.1_crit_edge ], [ %11, %snd_interval_test.exit.1.for.inc.1_crit_edge ], [ %19, %if.end.1 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x i32], ptr @snd_dg00x_stream_pcm_channels, i32 0, i32 2) to i32))
  %23 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @snd_dg00x_stream_pcm_channels, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %23)
  %cmp.i.2 = icmp ugt i32 %2, %23
  br i1 %cmp.i.2, label %for.inc.1.for.inc.2_crit_edge, label %lor.lhs.false.i.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

lor.lhs.false.i.2:                                ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %23)
  %cmp2.i.2 = icmp eq i32 %2, %23
  br i1 %cmp2.i.2, label %land.lhs.true.i.2, label %lor.lhs.false.i.2.lor.lhs.false3.i.2_crit_edge

lor.lhs.false.i.2.lor.lhs.false3.i.2_crit_edge:   ; preds = %lor.lhs.false.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false3.i.2

land.lhs.true.i.2:                                ; preds = %lor.lhs.false.i.2
  %24 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i.2 = load i8, ptr %openmin.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.2)
  %tobool.not.i.2 = icmp sgt i8 %bf.load.i.2, -1
  br i1 %tobool.not.i.2, label %land.lhs.true.i.2.lor.lhs.false3.i.2_crit_edge, label %land.lhs.true.i.2.for.inc.2_crit_edge

land.lhs.true.i.2.for.inc.2_crit_edge:            ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

land.lhs.true.i.2.lor.lhs.false3.i.2_crit_edge:   ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false3.i.2

lor.lhs.false3.i.2:                               ; preds = %land.lhs.true.i.2.lor.lhs.false3.i.2_crit_edge, %lor.lhs.false.i.2.lor.lhs.false3.i.2_crit_edge
  %25 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %23)
  %cmp4.i.2 = icmp ult i32 %26, %23
  br i1 %cmp4.i.2, label %lor.lhs.false3.i.2.for.inc.2_crit_edge, label %lor.rhs.i.2

lor.lhs.false3.i.2.for.inc.2_crit_edge:           ; preds = %lor.lhs.false3.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

lor.rhs.i.2:                                      ; preds = %lor.lhs.false3.i.2
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %23)
  %cmp6.i.2 = icmp eq i32 %26, %23
  br i1 %cmp6.i.2, label %snd_interval_test.exit.2, label %lor.rhs.i.2.if.end.2_crit_edge

lor.rhs.i.2.if.end.2_crit_edge:                   ; preds = %lor.rhs.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.2

snd_interval_test.exit.2:                         ; preds = %lor.rhs.i.2
  %27 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load7.i.2 = load i8, ptr %openmin.i, align 4
  %28 = and i8 %bf.load7.i.2, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.not.2 = icmp eq i8 %28, 0
  br i1 %tobool.not.not.2, label %snd_interval_test.exit.2.if.end.2_crit_edge, label %snd_interval_test.exit.2.for.inc.2_crit_edge

snd_interval_test.exit.2.for.inc.2_crit_edge:     ; preds = %snd_interval_test.exit.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

snd_interval_test.exit.2.if.end.2_crit_edge:      ; preds = %snd_interval_test.exit.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.2

if.end.2:                                         ; preds = %snd_interval_test.exit.2.if.end.2_crit_edge, %lor.rhs.i.2.if.end.2_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x i32], ptr @snd_dg00x_stream_rates, i32 0, i32 2) to i32))
  %29 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @snd_dg00x_stream_rates, i32 0, i32 2), align 4
  %30 = tail call i32 @llvm.umin.i32(i32 %22, i32 %29)
  %31 = tail call i32 @llvm.umax.i32(i32 %21, i32 %29)
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %snd_interval_test.exit.2.for.inc.2_crit_edge, %lor.lhs.false3.i.2.for.inc.2_crit_edge, %land.lhs.true.i.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %32 = phi i32 [ %21, %for.inc.1.for.inc.2_crit_edge ], [ %21, %land.lhs.true.i.2.for.inc.2_crit_edge ], [ %21, %lor.lhs.false3.i.2.for.inc.2_crit_edge ], [ %21, %snd_interval_test.exit.2.for.inc.2_crit_edge ], [ %31, %if.end.2 ]
  %33 = phi i32 [ %22, %for.inc.1.for.inc.2_crit_edge ], [ %22, %land.lhs.true.i.2.for.inc.2_crit_edge ], [ %22, %lor.lhs.false3.i.2.for.inc.2_crit_edge ], [ %22, %snd_interval_test.exit.2.for.inc.2_crit_edge ], [ %30, %if.end.2 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x i32], ptr @snd_dg00x_stream_pcm_channels, i32 0, i32 3) to i32))
  %34 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @snd_dg00x_stream_pcm_channels, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %34)
  %cmp.i.3 = icmp ugt i32 %2, %34
  br i1 %cmp.i.3, label %for.inc.2.for.inc.3_crit_edge, label %lor.lhs.false.i.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

lor.lhs.false.i.3:                                ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %34)
  %cmp2.i.3 = icmp eq i32 %2, %34
  br i1 %cmp2.i.3, label %land.lhs.true.i.3, label %lor.lhs.false.i.3.lor.lhs.false3.i.3_crit_edge

lor.lhs.false.i.3.lor.lhs.false3.i.3_crit_edge:   ; preds = %lor.lhs.false.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false3.i.3

land.lhs.true.i.3:                                ; preds = %lor.lhs.false.i.3
  %35 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load.i.3 = load i8, ptr %openmin.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.3)
  %tobool.not.i.3 = icmp sgt i8 %bf.load.i.3, -1
  br i1 %tobool.not.i.3, label %land.lhs.true.i.3.lor.lhs.false3.i.3_crit_edge, label %land.lhs.true.i.3.for.inc.3_crit_edge

land.lhs.true.i.3.for.inc.3_crit_edge:            ; preds = %land.lhs.true.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

land.lhs.true.i.3.lor.lhs.false3.i.3_crit_edge:   ; preds = %land.lhs.true.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false3.i.3

lor.lhs.false3.i.3:                               ; preds = %land.lhs.true.i.3.lor.lhs.false3.i.3_crit_edge, %lor.lhs.false.i.3.lor.lhs.false3.i.3_crit_edge
  %36 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %34)
  %cmp4.i.3 = icmp ult i32 %37, %34
  br i1 %cmp4.i.3, label %lor.lhs.false3.i.3.for.inc.3_crit_edge, label %lor.rhs.i.3

lor.lhs.false3.i.3.for.inc.3_crit_edge:           ; preds = %lor.lhs.false3.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

lor.rhs.i.3:                                      ; preds = %lor.lhs.false3.i.3
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %34)
  %cmp6.i.3 = icmp eq i32 %37, %34
  br i1 %cmp6.i.3, label %snd_interval_test.exit.3, label %lor.rhs.i.3.if.end.3_crit_edge

lor.rhs.i.3.if.end.3_crit_edge:                   ; preds = %lor.rhs.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.3

snd_interval_test.exit.3:                         ; preds = %lor.rhs.i.3
  %38 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load7.i.3 = load i8, ptr %openmin.i, align 4
  %39 = and i8 %bf.load7.i.3, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.not.3 = icmp eq i8 %39, 0
  br i1 %tobool.not.not.3, label %snd_interval_test.exit.3.if.end.3_crit_edge, label %snd_interval_test.exit.3.for.inc.3_crit_edge

snd_interval_test.exit.3.for.inc.3_crit_edge:     ; preds = %snd_interval_test.exit.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

snd_interval_test.exit.3.if.end.3_crit_edge:      ; preds = %snd_interval_test.exit.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.3

if.end.3:                                         ; preds = %snd_interval_test.exit.3.if.end.3_crit_edge, %lor.rhs.i.3.if.end.3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x i32], ptr @snd_dg00x_stream_rates, i32 0, i32 3) to i32))
  %40 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @snd_dg00x_stream_rates, i32 0, i32 3), align 4
  %41 = tail call i32 @llvm.umin.i32(i32 %33, i32 %40)
  %42 = tail call i32 @llvm.umax.i32(i32 %32, i32 %40)
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3, %snd_interval_test.exit.3.for.inc.3_crit_edge, %lor.lhs.false3.i.3.for.inc.3_crit_edge, %land.lhs.true.i.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %43 = phi i32 [ %32, %for.inc.2.for.inc.3_crit_edge ], [ %32, %land.lhs.true.i.3.for.inc.3_crit_edge ], [ %32, %lor.lhs.false3.i.3.for.inc.3_crit_edge ], [ %32, %snd_interval_test.exit.3.for.inc.3_crit_edge ], [ %42, %if.end.3 ]
  %44 = phi i32 [ %33, %for.inc.2.for.inc.3_crit_edge ], [ %33, %land.lhs.true.i.3.for.inc.3_crit_edge ], [ %33, %lor.lhs.false3.i.3.for.inc.3_crit_edge ], [ %33, %snd_interval_test.exit.3.for.inc.3_crit_edge ], [ %41, %if.end.3 ]
  %max = getelementptr inbounds %struct.snd_interval, ptr %t, i32 0, i32 1
  %45 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %t, align 4
  %46 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %43, ptr %max, align 4
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %call14 = call i32 @snd_interval_refine(ptr noundef %arrayidx.i, ptr noundef nonnull %t) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %t) #6
  ret i32 %call14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_dot_add_pcm_hw_constraints(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_limit_rates(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_refine(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dg00x_stream_reserve_duplex(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dg00x_stream_stop_duplex(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dg00x_stream_start_duplex(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_stream_pcm_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_domain_stream_pcm_pointer(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_domain_stream_pcm_ack(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_dot_reset(ptr noundef) local_unnamed_addr #3

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

declare void @__asan_store1_noabort(i32)

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

!0 = !{ptr @snd_dg00x_create_pcm_devices.capture_ops, !1, !"capture_ops", i1 false, i1 false}
!1 = !{!"../sound/firewire/digi00x/digi00x-pcm.c", i32 325, i32 34}
!2 = !{ptr @snd_dg00x_create_pcm_devices.playback_ops, !3, !"playback_ops", i1 false, i1 false}
!3 = !{!"../sound/firewire/digi00x/digi00x-pcm.c", i32 335, i32 34}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/firewire/digi00x/digi00x-pcm.c", i32 354, i32 4}
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
!16 = !{i8 0, i8 2}
