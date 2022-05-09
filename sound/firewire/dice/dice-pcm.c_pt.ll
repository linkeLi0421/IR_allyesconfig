; ModuleID = '/llk/IR_all_yes/sound/firewire/dice/dice-pcm.c_pt.bc'
source_filename = "../sound/firewire/dice/dice-pcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_dice = type { ptr, ptr, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, [2 x [3 x i32]], [2 x [3 x i32]], [2 x i32], [2 x i32], %struct.fw_address_handler, i32, i32, i32, i8, %struct.wait_queue_head, [2 x %struct.fw_iso_resources], [2 x %struct.fw_iso_resources], [2 x %struct.amdtp_stream], [2 x %struct.amdtp_stream], i8, %struct.completion, i32, %struct.amdtp_domain }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fw_address_handler = type { i64, i64, ptr, ptr, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.92, %struct.anon.93 }
%struct.anon.92 = type { i32, i32, i32 }
%struct.anon.93 = type { i8 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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

@snd_dice_create_pcm.capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @pcm_open, ptr @pcm_close, ptr null, ptr @pcm_hw_params, ptr @pcm_hw_free, ptr @capture_prepare, ptr @capture_trigger, ptr null, ptr @capture_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @capture_ack }, [32 x i8] zeroinitializer }, align 32
@snd_dice_create_pcm.playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @pcm_open, ptr @pcm_close, ptr null, ptr @pcm_hw_params, ptr @pcm_hw_free, ptr @playback_prepare, ptr @playback_trigger, ptr null, ptr @playback_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @playback_ack }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DICE\00", [27 x i8] zeroinitializer }, align 32
@snd_dice_rates = external dso_local local_unnamed_addr constant [7 x i32], align 4
@__const.dice_channels_constraint.channels = private unnamed_addr constant { i32, i32, i8, [3 x i8] } { i32 -1, i32 0, i8 32, [3 x i8] zeroinitializer }, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.2 = private unnamed_addr constant [12 x i8] c"capture_ops\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 405, i32 34 }
@___asan_gen_.5 = private unnamed_addr constant [13 x i8] c"playback_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 415, i32 34 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [34 x i8] c"../sound/firewire/dice/dice-pcm.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 439, i32 33 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @snd_dice_create_pcm.capture_ops, ptr @snd_dice_create_pcm.playback_ops, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_dice_create_pcm.capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_dice_create_pcm.playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_dice_create_pcm(ptr noundef %dice) local_unnamed_addr #0 align 64 {
entry:
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #6
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !15
  %arrayidx4 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 10, i32 0, i32 0
  %1 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp5.not = icmp ne i32 %2, 0
  %arrayidx7 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 11, i32 0, i32 0
  %3 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp8.not = icmp ne i32 %4, 0
  %arrayidx4.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 10, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx4.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp5.not.1 = icmp ne i32 %6, 0
  %arrayidx7.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 11, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx7.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp8.not.1 = icmp ne i32 %8, 0
  %arrayidx4.2 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 10, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx4.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp5.not.2 = icmp ne i32 %10, 0
  %11 = select i1 %cmp5.not.2, i1 true, i1 %cmp5.not.1
  %narrow57 = select i1 %11, i1 true, i1 %cmp5.not
  %spec.select.2 = zext i1 %narrow57 to i32
  %arrayidx7.2 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 11, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx7.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp8.not.2 = icmp ne i32 %13, 0
  %14 = select i1 %cmp8.not.2, i1 true, i1 %cmp8.not.1
  %narrow = select i1 %14, i1 true, i1 %cmp8.not
  %playback.1.2 = zext i1 %narrow to i32
  %15 = ptrtoint ptr %dice to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dice, align 8
  %call = call i32 @snd_pcm_new(ptr noundef %16, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %playback.1.2, i32 noundef %spec.select.2, ptr noundef nonnull %pcm) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp11 = icmp slt i32 %call, 0
  br i1 %cmp11, label %entry.cleanup_crit_edge, label %if.end13

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %entry
  %17 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcm, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dice, ptr %private_data, align 8
  %name = getelementptr inbounds %struct.snd_pcm, ptr %18, i32 0, i32 7
  %20 = ptrtoint ptr %dice to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dice, align 8
  %shortname = getelementptr inbounds %struct.snd_card, ptr %21, i32 0, i32 3
  %call16 = call ptr @strcpy(ptr noundef %name, ptr noundef %shortname) #9
  br i1 %narrow57, label %if.then18, label %if.end13.if.end19_crit_edge

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  call void @snd_pcm_set_ops(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @snd_dice_create_pcm.capture_ops) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end13.if.end19_crit_edge
  br i1 %narrow, label %if.then21, label %if.end19.if.end22_crit_edge

if.end19.if.end22_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %23, i32 noundef 0, ptr noundef nonnull @snd_dice_create_pcm.playback_ops) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end19.if.end22_crit_edge
  %24 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcm, align 4
  %call23 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %25, i32 noundef 7, ptr noundef null, i32 noundef 0, i32 noundef 0) #6
  %arrayidx4.150 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 10, i32 1, i32 0
  %26 = ptrtoint ptr %arrayidx4.150 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx4.150, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp5.not.151 = icmp ne i32 %27, 0
  %arrayidx7.153 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 11, i32 1, i32 0
  %28 = ptrtoint ptr %arrayidx7.153 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx7.153, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp8.not.154 = icmp ne i32 %29, 0
  %arrayidx4.1.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 10, i32 1, i32 1
  %30 = ptrtoint ptr %arrayidx4.1.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx4.1.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp5.not.1.1 = icmp ne i32 %31, 0
  %arrayidx7.1.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 11, i32 1, i32 1
  %32 = ptrtoint ptr %arrayidx7.1.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx7.1.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp8.not.1.1 = icmp ne i32 %33, 0
  %arrayidx4.2.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 10, i32 1, i32 2
  %34 = ptrtoint ptr %arrayidx4.2.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx4.2.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp5.not.2.1 = icmp ne i32 %35, 0
  %36 = select i1 %cmp5.not.2.1, i1 true, i1 %cmp5.not.1.1
  %narrow60 = select i1 %36, i1 true, i1 %cmp5.not.151
  %spec.select.2.1 = zext i1 %narrow60 to i32
  %arrayidx7.2.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 11, i32 1, i32 2
  %37 = ptrtoint ptr %arrayidx7.2.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx7.2.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp8.not.2.1 = icmp ne i32 %38, 0
  %39 = select i1 %cmp8.not.2.1, i1 true, i1 %cmp8.not.1.1
  %narrow61 = select i1 %39, i1 true, i1 %cmp8.not.154
  %playback.1.2.1 = zext i1 %narrow61 to i32
  %40 = ptrtoint ptr %dice to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dice, align 8
  %call.1 = call i32 @snd_pcm_new(ptr noundef %41, ptr noundef nonnull @.str, i32 noundef 1, i32 noundef %playback.1.2.1, i32 noundef %spec.select.2.1, ptr noundef nonnull %pcm) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp11.1 = icmp slt i32 %call.1, 0
  br i1 %cmp11.1, label %if.end22.cleanup_crit_edge, label %if.end13.1

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13.1:                                       ; preds = %if.end22
  %42 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pcm, align 4
  %private_data.1 = getelementptr inbounds %struct.snd_pcm, ptr %43, i32 0, i32 11
  %44 = ptrtoint ptr %private_data.1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %dice, ptr %private_data.1, align 8
  %name.1 = getelementptr inbounds %struct.snd_pcm, ptr %43, i32 0, i32 7
  %45 = ptrtoint ptr %dice to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dice, align 8
  %shortname.1 = getelementptr inbounds %struct.snd_card, ptr %46, i32 0, i32 3
  %call16.1 = call ptr @strcpy(ptr noundef %name.1, ptr noundef %shortname.1) #9
  br i1 %narrow60, label %if.then18.1, label %if.end13.1.if.end19.1_crit_edge

if.end13.1.if.end19.1_crit_edge:                  ; preds = %if.end13.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.1

if.then18.1:                                      ; preds = %if.end13.1
  call void @__sanitizer_cov_trace_pc() #8
  call void @snd_pcm_set_ops(ptr noundef %43, i32 noundef 1, ptr noundef nonnull @snd_dice_create_pcm.capture_ops) #6
  br label %if.end19.1

if.end19.1:                                       ; preds = %if.then18.1, %if.end13.1.if.end19.1_crit_edge
  br i1 %narrow61, label %if.then21.1, label %if.end19.1.if.end22.1_crit_edge

if.end19.1.if.end22.1_crit_edge:                  ; preds = %if.end19.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.1

if.then21.1:                                      ; preds = %if.end19.1
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %48, i32 noundef 0, ptr noundef nonnull @snd_dice_create_pcm.playback_ops) #6
  br label %if.end22.1

if.end22.1:                                       ; preds = %if.then21.1, %if.end19.1.if.end22.1_crit_edge
  %49 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pcm, align 4
  %call23.1 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %50, i32 noundef 7, ptr noundef null, i32 noundef 0, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end22.1, %if.end22.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call.1, %if.end22.cleanup_crit_edge ], [ 0, %if.end22.1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_open(ptr noundef %substream) #0 align 64 {
entry:
  %mode.i.i = alloca i32, align 4
  %source = alloca i32, align 4
  %rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %source) #6
  %2 = ptrtoint ptr %source to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %source, align 4, !annotation !15
  %call = tail call i32 @snd_dice_stream_lock_try(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup44_crit_edge, label %if.end

entry.cleanup44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup44

if.end:                                           ; preds = %entry
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %3 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %runtime1.i, align 4
  %5 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %substream, align 4
  %device.i = getelementptr inbounds %struct.snd_pcm, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %device.i, align 4
  %stream3.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %9 = ptrtoint ptr %stream3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stream3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i = icmp eq i32 %10, 1
  %arrayidx.i45.i = getelementptr %struct.snd_dice, ptr %1, i32 0, i32 10, i32 %8
  %arrayidx2.i.i = getelementptr %struct.snd_dice, ptr %1, i32 0, i32 11, i32 %8
  %11 = select i1 %cmp.i, ptr %arrayidx.i45.i, ptr %arrayidx2.i.i
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 46, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 2048, ptr %12, align 8
  %14 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %runtime1.i, align 4
  %channels_min.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 46, i32 5
  %16 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %channels_min.i.i, align 4
  %channels_max.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 46, i32 6
  %17 = ptrtoint ptr %channels_max.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %channels_max.i.i, align 8
  %rates.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 46, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %if.end
  %i.01.i.i = phi i32 [ 0, %if.end ], [ %inc.i.i, %cleanup.i.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.i.i) #6
  %18 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %mode.i.i, align 4, !annotation !15
  %arrayidx5.i.i = getelementptr [7 x i32], ptr @snd_dice_rates, i32 0, i32 %i.01.i.i
  %19 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx5.i.i, align 4
  %call.i.i = call i32 @snd_dice_stream_get_rate_mode(ptr noundef %1, i32 noundef %20, ptr noundef nonnull %mode.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp6.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp6.i.i, label %for.body.i.i.cleanup.i.i_crit_edge, label %if.end8.i.i

for.body.i.i.cleanup.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i.i

if.end8.i.i:                                      ; preds = %for.body.i.i
  %call9.i.i = call i32 @snd_pcm_rate_to_rate_bit(i32 noundef %20) #6
  %21 = ptrtoint ptr %rates.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rates.i.i, align 8
  %or.i.i = or i32 %22, %call9.i.i
  store i32 %or.i.i, ptr %rates.i.i, align 8
  %23 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mode.i.i, align 4
  %arrayidx10.i.i = getelementptr i32, ptr %11, i32 %24
  %25 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx10.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp11.i.i = icmp eq i32 %26, 0
  br i1 %cmp11.i.i, label %if.end8.i.i.cleanup.i.i_crit_edge, label %if.end13.i.i

if.end8.i.i.cleanup.i.i_crit_edge:                ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i.i

if.end13.i.i:                                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %channels_min.i.i, align 4
  %29 = call i32 @llvm.umin.i32(i32 %28, i32 %26) #6
  %30 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %channels_min.i.i, align 4
  %31 = ptrtoint ptr %channels_max.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %channels_max.i.i, align 8
  %33 = call i32 @llvm.umax.i32(i32 %32, i32 %26) #6
  %34 = ptrtoint ptr %channels_max.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %channels_max.i.i, align 8
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end13.i.i, %if.end8.i.i.cleanup.i.i_crit_edge, %for.body.i.i.cleanup.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.i.i) #6
  %inc.i.i = add nuw nsw i32 %i.01.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 7
  br i1 %exitcond.not.i.i, label %limit_channels_and_rates.exit.i, label %cleanup.i.i.for.body.i.i_crit_edge

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

limit_channels_and_rates.exit.i:                  ; preds = %cleanup.i.i
  %arrayidx.i = getelementptr %struct.snd_dice, ptr %1, i32 0, i32 22, i32 %8
  %arrayidx5.i = getelementptr %struct.snd_dice, ptr %1, i32 0, i32 23, i32 %8
  %stream.047.i = select i1 %cmp.i, ptr %arrayidx.i, ptr %arrayidx5.i
  %hw.i.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 46
  %call.i.i.i = call i32 @snd_pcm_hw_limit_rates(ptr noundef %hw.i.i.i) #6
  %call10.i = call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %4, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @dice_rate_constraint, ptr noundef %substream, i32 noundef 10, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %limit_channels_and_rates.exit.i.err_locked_crit_edge, label %if.end13.i

limit_channels_and_rates.exit.i.err_locked_crit_edge: ; preds = %limit_channels_and_rates.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_locked

if.end13.i:                                       ; preds = %limit_channels_and_rates.exit.i
  %call14.i = call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %4, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @dice_channels_constraint, ptr noundef %substream, i32 noundef 11, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %if.end13.i.err_locked_crit_edge, label %init_hw_info.exit

if.end13.i.err_locked_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_locked

init_hw_info.exit:                                ; preds = %if.end13.i
  %call18.i = call i32 @amdtp_am824_add_pcm_hw_constraints(ptr noundef %stream.047.i, ptr noundef %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp2 = icmp slt i32 %call18.i, 0
  br i1 %cmp2, label %init_hw_info.exit.err_locked_crit_edge, label %if.end4

init_hw_info.exit.err_locked_crit_edge:           ; preds = %init_hw_info.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_locked

if.end4:                                          ; preds = %init_hw_info.exit
  %call5 = call i32 @snd_dice_transaction_get_clock_source(ptr noundef %1, ptr noundef nonnull %source) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.err_locked_crit_edge, label %if.end8

if.end4.err_locked_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_locked

if.end8:                                          ; preds = %if.end4
  %35 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %source, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %36)
  %switch = icmp ugt i32 %36, 7
  %mutex = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  br i1 %switch, label %lor.lhs.false, label %if.end8.if.then11_crit_edge

if.end8.if.then11_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.end8
  %substreams_counter = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 26
  %37 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %substreams_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp9.not = icmp eq i32 %38, 0
  br i1 %cmp9.not, label %lor.lhs.false.if.end42_crit_edge, label %land.lhs.true

lor.lhs.false.if.end42_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

land.lhs.true:                                    ; preds = %lor.lhs.false
  %events_per_period = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 27, i32 1
  %39 = ptrtoint ptr %events_per_period to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %events_per_period, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp10.not = icmp eq i32 %40, 0
  br i1 %cmp10.not, label %land.lhs.true.if.end42_crit_edge, label %land.lhs.true.if.then11_crit_edge

land.lhs.true.if.then11_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then11:                                        ; preds = %land.lhs.true.if.then11_crit_edge, %if.end8.if.then11_crit_edge
  %events_per_period12 = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 27, i32 1
  %41 = ptrtoint ptr %events_per_period12 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %events_per_period12, align 4
  %events_per_buffer = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 27, i32 2
  %43 = ptrtoint ptr %events_per_buffer to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %events_per_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate) #6
  %45 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %rate, align 4, !annotation !15
  %call13 = call i32 @snd_dice_transaction_get_rate(ptr noundef %1, ptr noundef nonnull %rate) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then11.cleanup.thread_crit_edge, label %if.end17

if.then11.cleanup.thread_crit_edge:               ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end17:                                         ; preds = %if.then11
  %46 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rate, align 4
  %48 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %runtime1.i, align 4
  %rate_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %49, i32 0, i32 46, i32 3
  %50 = ptrtoint ptr %rate_min to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %47, ptr %rate_min, align 4
  %51 = load ptr, ptr %runtime1.i, align 4
  %rate_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %51, i32 0, i32 46, i32 4
  %52 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %47, ptr %rate_max, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp20.not = icmp eq i32 %42, 0
  br i1 %cmp20.not, label %if.end17.cleanup_crit_edge, label %if.then21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 96000, i32 %47)
  %cmp22 = icmp ugt i32 %47, 96000
  br i1 %cmp22, label %land.lhs.true23, label %if.then21.if.end26_crit_edge

if.then21.if.end26_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

land.lhs.true23:                                  ; preds = %if.then21
  %disable_double_pcm_frames = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 24
  %53 = ptrtoint ptr %disable_double_pcm_frames to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load = load i8, ptr %disable_double_pcm_frames, align 8
  %54 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %bf.cast.not = icmp eq i8 %54, 0
  br i1 %bf.cast.not, label %if.then24, label %land.lhs.true23.if.end26_crit_edge

land.lhs.true23.if.end26_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then24:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #8
  %mul = shl i32 %42, 1
  %mul25 = shl i32 %44, 1
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %land.lhs.true23.if.end26_crit_edge, %if.then21.if.end26_crit_edge
  %frames_per_period.0 = phi i32 [ %42, %land.lhs.true23.if.end26_crit_edge ], [ %mul, %if.then24 ], [ %42, %if.then21.if.end26_crit_edge ]
  %frames_per_buffer.0 = phi i32 [ %44, %land.lhs.true23.if.end26_crit_edge ], [ %mul25, %if.then24 ], [ %44, %if.then21.if.end26_crit_edge ]
  %55 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %runtime1.i, align 4
  %call28 = call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %56, i32 noundef 13, i32 noundef %frames_per_period.0, i32 noundef %frames_per_period.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end26.cleanup.thread_crit_edge, label %if.end32

if.end26.cleanup.thread_crit_edge:                ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end32:                                         ; preds = %if.end26
  %57 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %runtime1.i, align 4
  %call34 = call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %58, i32 noundef 17, i32 noundef %frames_per_buffer.0, i32 noundef %frames_per_buffer.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.end32.cleanup.thread_crit_edge, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32.cleanup.thread_crit_edge:                ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end32.cleanup.thread_crit_edge, %if.end26.cleanup.thread_crit_edge, %if.then11.cleanup.thread_crit_edge
  %err.1.ph = phi i32 [ %call13, %if.then11.cleanup.thread_crit_edge ], [ %call28, %if.end26.cleanup.thread_crit_edge ], [ %call34, %if.end32.cleanup.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate) #6
  br label %err_locked

cleanup:                                          ; preds = %if.end32.cleanup_crit_edge, %if.end17.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate) #6
  br label %if.end42

if.end42:                                         ; preds = %cleanup, %land.lhs.true.if.end42_crit_edge, %lor.lhs.false.if.end42_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #6
  call void @snd_pcm_set_sync(ptr noundef %substream) #6
  br label %cleanup44

err_locked:                                       ; preds = %cleanup.thread, %if.end4.err_locked_crit_edge, %init_hw_info.exit.err_locked_crit_edge, %if.end13.i.err_locked_crit_edge, %limit_channels_and_rates.exit.i.err_locked_crit_edge
  %err.2 = phi i32 [ %call18.i, %init_hw_info.exit.err_locked_crit_edge ], [ %call5, %if.end4.err_locked_crit_edge ], [ %err.1.ph, %cleanup.thread ], [ %call14.i, %if.end13.i.err_locked_crit_edge ], [ %call10.i, %limit_channels_and_rates.exit.i.err_locked_crit_edge ]
  call void @snd_dice_stream_lock_release(ptr noundef %1) #6
  br label %cleanup44

cleanup44:                                        ; preds = %err_locked, %if.end42, %entry.cleanup44_crit_edge
  %retval.0 = phi i32 [ %err.2, %err_locked ], [ 0, %if.end42 ], [ %call, %entry.cleanup44_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %source) #6
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
  tail call void @snd_dice_stream_lock_release(ptr noundef %1) #6
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
  br i1 %cmp, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then:                                          ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i25 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 5
  %10 = ptrtoint ptr %arrayidx.i.i25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i25, align 4
  %arrayidx.i.i26 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 9
  %12 = ptrtoint ptr %arrayidx.i.i26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i26, align 4
  %mutex = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 96000, i32 %9)
  %cmp3 = icmp ugt i32 %9, 96000
  br i1 %cmp3, label %land.lhs.true, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %disable_double_pcm_frames = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 24
  %14 = ptrtoint ptr %disable_double_pcm_frames to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %disable_double_pcm_frames, align 8
  %15 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %bf.cast.not = icmp eq i8 %15, 0
  br i1 %bf.cast.not, label %if.then4, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %div23 = lshr i32 %11, 1
  %div524 = lshr i32 %13, 1
  br label %if.end

if.end:                                           ; preds = %if.then4, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %events_per_period.0 = phi i32 [ %11, %land.lhs.true.if.end_crit_edge ], [ %div23, %if.then4 ], [ %11, %if.then.if.end_crit_edge ]
  %events_per_buffer.0 = phi i32 [ %13, %land.lhs.true.if.end_crit_edge ], [ %div524, %if.then4 ], [ %13, %if.then.if.end_crit_edge ]
  %call6 = tail call i32 @snd_dice_stream_reserve_duplex(ptr noundef %1, i32 noundef %9, i32 noundef %events_per_period.0, i32 noundef %events_per_buffer.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6)
  %cmp7 = icmp sgt i32 %call6, -1
  br i1 %cmp7, label %if.then8, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %substreams_counter = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 26
  %16 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %substreams_counter, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %substreams_counter, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  br label %if.end11

if.end11:                                         ; preds = %if.end9, %entry.if.end11_crit_edge
  %err.0 = phi i32 [ %call6, %if.end9 ], [ 0, %entry.if.end11_crit_edge ]
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
  %mutex = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 3
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
  %substreams_counter = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 26
  %8 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %substreams_counter, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %substreams_counter, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @snd_dice_stream_stop_duplex(ptr noundef %1) #6
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
  %2 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substream, align 4
  %device = getelementptr inbounds %struct.snd_pcm, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device, align 4
  %mutex = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call = tail call i32 @snd_dice_stream_start_duplex(ptr noundef %1) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.snd_dice, ptr %1, i32 0, i32 22, i32 %5
  tail call void @amdtp_stream_pcm_prepare(ptr noundef %arrayidx) #6
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
  %2 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substream, align 4
  %device = getelementptr inbounds %struct.snd_pcm, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device, align 4
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
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
  %pcm3.i = getelementptr %struct.snd_dice, ptr %1, i32 0, i32 22, i32 %5, i32 19
  %7 = ptrtoint ptr %pcm3.i to i32
  call void @__asan_store4_noabort(i32 %7)
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
  %2 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substream, align 4
  %device = getelementptr inbounds %struct.snd_pcm, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device, align 4
  %arrayidx = getelementptr %struct.snd_dice, ptr %1, i32 0, i32 22, i32 %5
  %domain = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 27
  %call = tail call i32 @amdtp_domain_stream_pcm_pointer(ptr noundef %domain, ptr noundef %arrayidx) #6
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
  %2 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substream, align 4
  %device = getelementptr inbounds %struct.snd_pcm, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device, align 4
  %arrayidx = getelementptr %struct.snd_dice, ptr %1, i32 0, i32 22, i32 %5
  %domain = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 27
  %call = tail call i32 @amdtp_domain_stream_pcm_ack(ptr noundef %domain, ptr noundef %arrayidx) #6
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
  %2 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substream, align 4
  %device = getelementptr inbounds %struct.snd_pcm, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device, align 4
  %mutex = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call = tail call i32 @snd_dice_stream_start_duplex(ptr noundef %1) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.snd_dice, ptr %1, i32 0, i32 23, i32 %5
  tail call void @amdtp_stream_pcm_prepare(ptr noundef %arrayidx) #6
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
  %2 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substream, align 4
  %device = getelementptr inbounds %struct.snd_pcm, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device, align 4
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.1)
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
  %pcm3.i = getelementptr %struct.snd_dice, ptr %1, i32 0, i32 23, i32 %5, i32 19
  %7 = ptrtoint ptr %pcm3.i to i32
  call void @__asan_store4_noabort(i32 %7)
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
  %2 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substream, align 4
  %device = getelementptr inbounds %struct.snd_pcm, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device, align 4
  %arrayidx = getelementptr %struct.snd_dice, ptr %1, i32 0, i32 23, i32 %5
  %domain = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 27
  %call = tail call i32 @amdtp_domain_stream_pcm_pointer(ptr noundef %domain, ptr noundef %arrayidx) #6
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
  %2 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substream, align 4
  %device = getelementptr inbounds %struct.snd_pcm, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device, align 4
  %arrayidx = getelementptr %struct.snd_dice, ptr %1, i32 0, i32 23, i32 %5
  %domain = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 27
  %call = tail call i32 @amdtp_domain_stream_pcm_ack(ptr noundef %domain, ptr noundef %arrayidx) #6
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
declare dso_local i32 @snd_dice_stream_lock_try(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dice_transaction_get_clock_source(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dice_transaction_get_rate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dice_stream_lock_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_rule_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dice_rate_constraint(ptr noundef %params, ptr nocapture noundef readonly %rule) #0 align 64 {
entry:
  %rates = alloca %struct.snd_interval, align 4
  %mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %device = getelementptr inbounds %struct.snd_pcm, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %device, align 4
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rates) #6
  %8 = call ptr @memcpy(ptr %rates, ptr @__const.dice_channels_constraint.channels, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #6
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %mode, align 4, !annotation !15
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  %arrayidx = getelementptr %struct.snd_dice, ptr %3, i32 0, i32 10, i32 %7
  %arrayidx2 = getelementptr %struct.snd_dice, ptr %3, i32 0, i32 11, i32 %7
  %pcm_channels.0 = select i1 %cmp, ptr %arrayidx, ptr %arrayidx2
  %openmin.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2, i32 2
  %max.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2, i32 1
  %max = getelementptr inbounds %struct.snd_interval, ptr %rates, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.044 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx5 = getelementptr [7 x i32], ptr @snd_dice_rates, i32 0, i32 %i.044
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx5, align 4
  %call6 = call i32 @snd_dice_stream_get_rate_mode(ptr noundef %3, i32 noundef %13, ptr noundef nonnull %mode) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %for.body.for.inc_crit_edge, label %if.end9

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end9:                                          ; preds = %for.body
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode, align 4
  %arrayidx10 = getelementptr i32, ptr %pcm_channels.0, i32 %15
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx10, align 4
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %17)
  %cmp.i = icmp ugt i32 %19, %17
  br i1 %cmp.i, label %if.end9.for.inc_crit_edge, label %lor.lhs.false.i

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false.i:                                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %17)
  %cmp2.i = icmp eq i32 %19, %17
  br i1 %cmp2.i, label %land.lhs.true.i, label %lor.lhs.false.i.lor.lhs.false3.i_crit_edge

lor.lhs.false.i.lor.lhs.false3.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false3.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %20 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %20)
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
  %21 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %17)
  %cmp4.i = icmp ult i32 %22, %17
  br i1 %cmp4.i, label %lor.lhs.false3.i.for.inc_crit_edge, label %lor.rhs.i

lor.lhs.false3.i.for.inc_crit_edge:               ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.rhs.i:                                        ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %17)
  %cmp6.i = icmp eq i32 %22, %17
  br i1 %cmp6.i, label %snd_interval_test.exit, label %lor.rhs.i.if.end13_crit_edge

lor.rhs.i.if.end13_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

snd_interval_test.exit:                           ; preds = %lor.rhs.i
  %23 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load7.i = load i8, ptr %openmin.i, align 4
  %24 = and i8 %bf.load7.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.not = icmp eq i8 %24, 0
  br i1 %tobool.not.not, label %snd_interval_test.exit.if.end13_crit_edge, label %snd_interval_test.exit.for.inc_crit_edge

snd_interval_test.exit.for.inc_crit_edge:         ; preds = %snd_interval_test.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

snd_interval_test.exit.if.end13_crit_edge:        ; preds = %snd_interval_test.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end13:                                         ; preds = %snd_interval_test.exit.if.end13_crit_edge, %lor.rhs.i.if.end13_crit_edge
  %25 = ptrtoint ptr %rates to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rates, align 4
  %27 = call i32 @llvm.umin.i32(i32 %26, i32 %13)
  %28 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %rates, align 4
  %29 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max, align 4
  %31 = call i32 @llvm.umax.i32(i32 %30, i32 %13)
  %32 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %max, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end13, %snd_interval_test.exit.for.inc_crit_edge, %lor.lhs.false3.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %if.end9.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i40 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %call23 = call i32 @snd_interval_refine(ptr noundef %arrayidx.i40, ptr noundef nonnull %rates) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rates) #6
  ret i32 %call23
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dice_channels_constraint(ptr noundef %params, ptr nocapture noundef readonly %rule) #0 align 64 {
entry:
  %channels = alloca %struct.snd_interval, align 4
  %mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %device = getelementptr inbounds %struct.snd_pcm, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %device, align 4
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %channels) #6
  %8 = call ptr @memcpy(ptr %channels, ptr @__const.dice_channels_constraint.channels, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #6
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %mode, align 4, !annotation !15
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  %arrayidx = getelementptr %struct.snd_dice, ptr %3, i32 0, i32 10, i32 %7
  %arrayidx2 = getelementptr %struct.snd_dice, ptr %3, i32 0, i32 11, i32 %7
  %pcm_channels.0 = select i1 %cmp, ptr %arrayidx, ptr %arrayidx2
  %openmin.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 2
  %max.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 1
  %max = getelementptr inbounds %struct.snd_interval, ptr %channels, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.046 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx5 = getelementptr [7 x i32], ptr @snd_dice_rates, i32 0, i32 %i.046
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx5, align 4
  %call6 = call i32 @snd_dice_stream_get_rate_mode(ptr noundef %3, i32 noundef %13, ptr noundef nonnull %mode) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %for.body.for.inc_crit_edge, label %if.end9

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end9:                                          ; preds = %for.body
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp.i = icmp ugt i32 %15, %13
  br i1 %cmp.i, label %if.end9.for.inc_crit_edge, label %lor.lhs.false.i

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false.i:                                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp2.i = icmp eq i32 %15, %13
  br i1 %cmp2.i, label %land.lhs.true.i, label %lor.lhs.false.i.lor.lhs.false3.i_crit_edge

lor.lhs.false.i.lor.lhs.false3.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false3.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %16 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %16)
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
  %17 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %13)
  %cmp4.i = icmp ult i32 %18, %13
  br i1 %cmp4.i, label %lor.lhs.false3.i.for.inc_crit_edge, label %lor.rhs.i

lor.lhs.false3.i.for.inc_crit_edge:               ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.rhs.i:                                        ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %13)
  %cmp6.i = icmp eq i32 %18, %13
  br i1 %cmp6.i, label %snd_interval_test.exit, label %lor.rhs.i.if.end12_crit_edge

lor.rhs.i.if.end12_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

snd_interval_test.exit:                           ; preds = %lor.rhs.i
  %19 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load7.i = load i8, ptr %openmin.i, align 4
  %20 = and i8 %bf.load7.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.not = icmp eq i8 %20, 0
  br i1 %tobool.not.not, label %snd_interval_test.exit.if.end12_crit_edge, label %snd_interval_test.exit.for.inc_crit_edge

snd_interval_test.exit.for.inc_crit_edge:         ; preds = %snd_interval_test.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

snd_interval_test.exit.if.end12_crit_edge:        ; preds = %snd_interval_test.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.end12:                                         ; preds = %snd_interval_test.exit.if.end12_crit_edge, %lor.rhs.i.if.end12_crit_edge
  %21 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %channels, align 4
  %23 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mode, align 4
  %arrayidx13 = getelementptr i32, ptr %pcm_channels.0, i32 %24
  %25 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx13, align 4
  %27 = call i32 @llvm.umin.i32(i32 %22, i32 %26)
  %28 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %channels, align 4
  %29 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max, align 4
  %31 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx13, align 4
  %33 = call i32 @llvm.umax.i32(i32 %30, i32 %32)
  %34 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %max, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end12, %snd_interval_test.exit.for.inc_crit_edge, %lor.lhs.false3.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %if.end9.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.046, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i42 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %call24 = call i32 @snd_interval_refine(ptr noundef %arrayidx.i42, ptr noundef nonnull %channels) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %channels) #6
  ret i32 %call24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_am824_add_pcm_hw_constraints(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dice_stream_get_rate_mode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_rate_to_rate_bit(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_limit_rates(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_refine(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dice_stream_reserve_duplex(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dice_stream_stop_duplex(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dice_stream_start_duplex(ptr noundef) local_unnamed_addr #3

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
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @snd_dice_create_pcm.capture_ops, !1, !"capture_ops", i1 false, i1 false}
!1 = !{!"../sound/firewire/dice/dice-pcm.c", i32 405, i32 34}
!2 = !{ptr @snd_dice_create_pcm.playback_ops, !3, !"playback_ops", i1 false, i1 false}
!3 = !{!"../sound/firewire/dice/dice-pcm.c", i32 415, i32 34}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/firewire/dice/dice-pcm.c", i32 439, i32 33}
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
