; ModuleID = '/llk/IR_all_yes/sound/pcmcia/pdaudiocf/pdaudiocf_pcm.c_pt.bc'
source_filename = "../sound/pcmcia/pdaudiocf/pdaudiocf_pcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.list_head = type { ptr, ptr }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_pdacf = type { ptr, i32, i32, i32, %struct.mutex, [8 x i16], i16, %struct.spinlock, ptr, i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
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
%struct.ak4117 = type { ptr, ptr, ptr, ptr, i8, %struct.spinlock, [5 x i8], [13 x ptr], ptr, [4 x i32], i8, i8, i8, %struct.timer_list, ptr, ptr }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PDAudioCF\00", [22 x i8] zeroinitializer }, align 32
@pdacf_pcm_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @pdacf_pcm_capture_open, ptr @pdacf_pcm_capture_close, ptr null, ptr null, ptr null, ptr @pdacf_pcm_prepare, ptr @pdacf_pcm_trigger, ptr null, ptr @pdacf_pcm_capture_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@pdacf_pcm_capture_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 786707, i64 12884904972, i32 7904, i32 32000, i32 192000, i32 1, i32 2, i32 524288, i32 8192, i32 65536, i32 2, i32 128, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 32, i64 33]
@__sancov_gen_cov_switch_values.1 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 255, i32 32 }
@___asan_gen_.5 = private unnamed_addr constant [22 x i8] c"pdacf_pcm_capture_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 238, i32 33 }
@___asan_gen_.8 = private unnamed_addr constant [21 x i8] c"pdacf_pcm_capture_hw\00", align 1
@___asan_gen_.9 = private constant [42 x i8] c"../sound/pcmcia/pdaudiocf/pdaudiocf_pcm.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 165, i32 38 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @pdacf_pcm_capture_ops, ptr @pdacf_pcm_capture_hw], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdacf_pcm_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdacf_pcm_capture_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pdacf_pcm_new(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #7
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !15
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %call = call i32 @snd_pcm_new(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %pcm) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %4, i32 noundef 1, ptr noundef nonnull @pdacf_pcm_capture_ops) #7
  %5 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcm, align 4
  %call1 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %6, i32 noundef 7, ptr noundef nonnull inttoptr (i32 3268 to ptr), i32 noundef 0, i32 noundef 0) #7
  %7 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcm, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %chip, ptr %private_data, align 8
  %info_flags = getelementptr inbounds %struct.snd_pcm, ptr %8, i32 0, i32 3
  %10 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %info_flags, align 8
  %nonatomic = getelementptr inbounds %struct.snd_pcm, ptr %8, i32 0, i32 14
  %11 = ptrtoint ptr %nonatomic to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %nonatomic, align 1
  %name = getelementptr inbounds %struct.snd_pcm, ptr %8, i32 0, i32 7
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip, align 4
  %shortname = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 3
  %call4 = call ptr @strcpy(ptr noundef %name, ptr noundef %shortname) #10
  %pcm5 = getelementptr inbounds %struct.snd_pdacf, ptr %chip, i32 0, i32 10
  %14 = ptrtoint ptr %pcm5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %8, ptr %pcm5, align 4
  %ak4117 = getelementptr inbounds %struct.snd_pdacf, ptr %chip, i32 0, i32 8
  %15 = ptrtoint ptr %ak4117 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ak4117, align 4
  %substream = getelementptr %struct.snd_pcm, ptr %8, i32 0, i32 8, i32 1, i32 4
  %17 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %substream, align 8
  %call6 = call i32 @snd_ak4117_build(ptr noundef %16, ptr noundef %18) #7
  %19 = call i32 @llvm.smin.i32(i32 %call6, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %19, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ak4117_build(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pdacf_pcm_capture_open(ptr noundef %subs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %chip_status = getelementptr inbounds %struct.snd_pdacf, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %chip_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip_status, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 11
  %4 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime1, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46
  %6 = call ptr @memcpy(ptr %hw, ptr @pdacf_pcm_capture_hw, i32 64)
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 44
  %7 = ptrtoint ptr %private_data2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %private_data2, align 8
  %pcm_substream = getelementptr inbounds %struct.snd_pdacf, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %pcm_substream to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %subs, ptr %pcm_substream, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdacf_pcm_capture_close(ptr nocapture noundef readonly %subs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pdacf_reinit(ptr noundef nonnull %1, i32 noundef 0) #7
  %pcm_substream = getelementptr inbounds %struct.snd_pdacf, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pcm_substream to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pcm_substream, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdacf_pcm_prepare(ptr nocapture noundef readonly %subs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %chip_status = getelementptr inbounds %struct.snd_pdacf, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %chip_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chip_status, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %6 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channels, align 8
  %pcm_channels = getelementptr inbounds %struct.snd_pdacf, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %pcm_channels to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pcm_channels, align 4
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %9 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %format, align 4
  %call = tail call i32 @snd_pcm_format_little_endian(i32 noundef %10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  %conv = zext i1 %cmp to i32
  %pcm_little = getelementptr inbounds %struct.snd_pdacf, ptr %1, i32 0, i32 15
  %11 = ptrtoint ptr %pcm_little to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %pcm_little, align 4
  %pcm_swab = getelementptr inbounds %struct.snd_pdacf, ptr %1, i32 0, i32 14
  %12 = ptrtoint ptr %pcm_swab to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %pcm_swab, align 4
  %13 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %format, align 4
  %call4 = tail call i32 @snd_pcm_format_unsigned(i32 noundef %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pcm_xor = getelementptr inbounds %struct.snd_pdacf, ptr %1, i32 0, i32 18
  %15 = ptrtoint ptr %pcm_xor to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -2147450880, ptr %pcm_xor, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %port.i = getelementptr inbounds %struct.snd_pdacf, ptr %1, i32 0, i32 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i, %if.end7
  %max_loop.0.i = phi i32 [ 65536, %if.end7 ], [ %dec.i, %if.end.i ]
  %16 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port.i, align 4
  %add.i = add i32 %17, 4
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %18 = inttoptr i32 %add1.i to ptr
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %18) #7, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !17
  %20 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port.i, align 4
  %add5.i = add i32 %21, 2
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %22 = inttoptr i32 %add7.i to ptr
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %22) #7, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !18
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %23)
  %cmp.not.i = icmp eq i16 %19, %23
  br i1 %cmp.not.i, label %if.end12, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %cmp13.i = icmp slt i32 %max_loop.0.i, 0
  br i1 %cmp13.i, label %while.body.i.cleanup_crit_edge, label %if.end.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %dec.i = add nsw i32 %max_loop.0.i, -1
  %24 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port.i, align 4
  %and18.i = and i32 %25, 1048575
  %add19.i = or i32 %and18.i, -18874368
  %26 = inttoptr i32 %add19.i to ptr
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %26) #7, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  br label %while.cond.i

if.end12:                                         ; preds = %while.cond.i
  %28 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port.i, align 4
  %add.i83 = add i32 %29, 8
  %and.i84 = and i32 %add.i83, 1048575
  %add1.i85 = or i32 %and.i84, -18874368
  %30 = inttoptr i32 %add1.i85 to ptr
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %30) #7, !srcloc !16
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !20
  %and15 = and i16 %32, -3073
  %33 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %format, align 4
  %35 = and i32 %34, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %switch = icmp eq i32 %35, 2
  %masksel = select i1 %switch, i16 0, i16 3072
  %spec.select = or i16 %masksel, %and15
  %pcm_sample = getelementptr inbounds %struct.snd_pdacf, ptr %1, i32 0, i32 17
  %36 = ptrtoint ptr %pcm_sample to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 4, ptr %pcm_sample, align 4
  %37 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %format, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values)
  switch i32 %38, label %if.end12.sw.default25_crit_edge [
    i32 2, label %if.end12.sw.bb21_crit_edge
    i32 3, label %if.end12.sw.bb21_crit_edge100
    i32 32, label %if.end12.sw.bb23_crit_edge
    i32 33, label %if.end12.sw.bb23_crit_edge101
  ]

if.end12.sw.bb23_crit_edge101:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb23

if.end12.sw.bb23_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb23

if.end12.sw.bb21_crit_edge100:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

if.end12.sw.bb21_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

if.end12.sw.default25_crit_edge:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default25

sw.bb21:                                          ; preds = %if.end12.sw.bb21_crit_edge, %if.end12.sw.bb21_crit_edge100
  %pcm_frame = getelementptr inbounds %struct.snd_pdacf, ptr %1, i32 0, i32 16
  %40 = ptrtoint ptr %pcm_frame to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %pcm_frame, align 4
  %41 = ptrtoint ptr %pcm_sample to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %pcm_sample, align 4
  br label %sw.epilog29

sw.bb23:                                          ; preds = %if.end12.sw.bb23_crit_edge, %if.end12.sw.bb23_crit_edge101
  %42 = ptrtoint ptr %pcm_sample to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 3, ptr %pcm_sample, align 4
  br label %sw.default25

sw.default25:                                     ; preds = %sw.bb23, %if.end12.sw.default25_crit_edge
  %pcm_frame26 = getelementptr inbounds %struct.snd_pdacf, ptr %1, i32 0, i32 16
  %43 = ptrtoint ptr %pcm_frame26 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 3, ptr %pcm_frame26, align 4
  %pcm_xor27 = getelementptr inbounds %struct.snd_pdacf, ptr %1, i32 0, i32 18
  %44 = ptrtoint ptr %pcm_xor27 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pcm_xor27, align 4
  %and28 = and i32 %45, -65536
  store i32 %and28, ptr %pcm_xor27, align 4
  br label %sw.epilog29

sw.epilog29:                                      ; preds = %sw.default25, %sw.bb21
  %aval.0.off0 = phi i8 [ 3, %sw.default25 ], [ 0, %sw.bb21 ]
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %spec.select)
  %cmp32.not = icmp eq i16 %32, %spec.select
  br i1 %cmp32.not, label %sw.epilog29.if.end36_crit_edge, label %if.then34

sw.epilog29.if.end36_crit_edge:                   ; preds = %sw.epilog29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then34:                                        ; preds = %sw.epilog29
  call void @__sanitizer_cov_trace_pc() #9
  %ak4117 = getelementptr inbounds %struct.snd_pdacf, ptr %1, i32 0, i32 8
  %46 = ptrtoint ptr %ak4117 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ak4117, align 4
  tail call void @snd_ak4117_reg_write(ptr noundef %47, i8 noundef zeroext 2, i8 noundef zeroext 7, i8 noundef zeroext %aval.0.off0) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %arrayidx.i = getelementptr %struct.snd_pdacf, ptr %1, i32 0, i32 5, i32 4
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %spec.select, ptr %arrayidx.i, align 2
  %49 = tail call i16 @llvm.bswap.i16(i16 %spec.select) #7
  %50 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port.i, align 4
  %add.i87 = add i32 %51, 8
  %and.i88 = and i32 %add.i87, 1048575
  %add2.i = or i32 %and.i88, -18874368
  %52 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %52, i16 %49) #7, !srcloc !22
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %sw.epilog29.if.end36_crit_edge
  %53 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %port.i, align 4
  %add.i90 = add i32 %54, 12
  %and.i91 = and i32 %add.i90, 1048575
  %add1.i92 = or i32 %and.i91, -18874368
  %55 = inttoptr i32 %add1.i92 to ptr
  %56 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %55) #7, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !20
  %57 = and i16 %56, -769
  %58 = or i16 %57, 256
  %59 = tail call i16 @llvm.bswap.i16(i16 %58)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %arrayidx.i93 = getelementptr %struct.snd_pdacf, ptr %1, i32 0, i32 5, i32 6
  %60 = ptrtoint ptr %arrayidx.i93 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %arrayidx.i93, align 2
  %61 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %port.i, align 4
  %add.i95 = add i32 %62, 12
  %and.i96 = and i32 %add.i95, 1048575
  %add2.i97 = or i32 %and.i96, -18874368
  %63 = inttoptr i32 %add2.i97 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %63, i16 %58) #7, !srcloc !22
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %64 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %buffer_size, align 4
  %pcm_size = getelementptr inbounds %struct.snd_pdacf, ptr %1, i32 0, i32 19
  %66 = ptrtoint ptr %pcm_size to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %pcm_size, align 4
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %67 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %period_size, align 4
  %pcm_period = getelementptr inbounds %struct.snd_pdacf, ptr %1, i32 0, i32 20
  %69 = ptrtoint ptr %pcm_period to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %pcm_period, align 4
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 50
  %70 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dma_area, align 4
  %pcm_area = getelementptr inbounds %struct.snd_pdacf, ptr %1, i32 0, i32 23
  %72 = ptrtoint ptr %pcm_area to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %71, ptr %pcm_area, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %while.body.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end36 ], [ -16, %entry.cleanup_crit_edge ], [ -5, %while.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdacf_pcm_trigger(ptr nocapture noundef readonly %subs, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %chip_status = getelementptr inbounds %struct.snd_pdacf, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %chip_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chip_status, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %if.end.sw.bb2_crit_edge
    i32 6, label %if.end.sw.bb2_crit_edge66
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 3, label %if.end.sw.epilog_crit_edge67
    i32 5, label %if.end.sw.epilog_crit_edge68
  ]

if.end.sw.epilog_crit_edge68:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.sw.epilog_crit_edge67:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.sw.bb2_crit_edge66:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

if.end.sw.bb2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pcm_hwptr = getelementptr inbounds %struct.snd_pdacf, ptr %1, i32 0, i32 22
  %7 = ptrtoint ptr %pcm_hwptr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %pcm_hwptr, align 4
  %pcm_tdone = getelementptr inbounds %struct.snd_pdacf, ptr %1, i32 0, i32 21
  %8 = ptrtoint ptr %pcm_tdone to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %pcm_tdone, align 4
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb, %if.end.sw.bb2_crit_edge, %if.end.sw.bb2_crit_edge66
  %ak4117 = getelementptr inbounds %struct.snd_pdacf, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %ak4117 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ak4117, align 4
  %call = tail call i32 @snd_ak4117_check_rate_and_errors(ptr noundef %10, i32 noundef 3) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge67, %if.end.sw.epilog_crit_edge68
  %rate.0 = phi i32 [ %call, %sw.bb2 ], [ 0, %if.end.sw.epilog_crit_edge ], [ 0, %if.end.sw.epilog_crit_edge67 ], [ 0, %if.end.sw.epilog_crit_edge68 ]
  %mask.0 = phi i16 [ -1, %sw.bb2 ], [ -65, %if.end.sw.epilog_crit_edge ], [ -65, %if.end.sw.epilog_crit_edge67 ], [ -65, %if.end.sw.epilog_crit_edge68 ]
  %val.0 = phi i16 [ 64, %sw.bb2 ], [ 0, %if.end.sw.epilog_crit_edge ], [ 0, %if.end.sw.epilog_crit_edge67 ], [ 0, %if.end.sw.epilog_crit_edge68 ]
  %reg_lock = getelementptr inbounds %struct.snd_pdacf, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %reg_lock, i32 noundef 0) #7
  %pcm_running = getelementptr inbounds %struct.snd_pdacf, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %pcm_running to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %pcm_running, align 4
  %bf.set = xor i8 %bf.load, -128
  store i8 %bf.set, ptr %pcm_running, align 4
  %port.i = getelementptr inbounds %struct.snd_pdacf, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port.i, align 4
  %add.i = add i32 %13, 8
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %14 = inttoptr i32 %add1.i to ptr
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %14) #7, !srcloc !16
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !20
  %17 = ptrtoint ptr %pcm_running to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load7 = load i8, ptr %pcm_running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load7)
  %tobool10.not = icmp sgt i8 %bf.load7, -1
  br i1 %tobool10.not, label %sw.epilog.if.end29_crit_edge, label %if.then11

sw.epilog.if.end29_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then11:                                        ; preds = %sw.epilog
  %ak411712 = getelementptr inbounds %struct.snd_pdacf, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %ak411712 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ak411712, align 4
  %rcs0 = getelementptr inbounds %struct.ak4117, ptr %19, i32 0, i32 10
  %20 = ptrtoint ptr %rcs0 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rcs0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %21)
  %tobool14.not = icmp sgt i8 %21, -1
  br i1 %tobool14.not, label %lor.lhs.false, label %if.then11.if.then17_crit_edge

if.then11.if.then17_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.then11
  %rate15 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %22 = ptrtoint ptr %rate15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rate15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %rate.0)
  %cmp.not = icmp eq i32 %23, %rate.0
  br i1 %cmp.not, label %lor.lhs.false.if.end29_crit_edge, label %lor.lhs.false.if.then17_crit_edge

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

lor.lhs.false.if.end29_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %if.then11.if.then17_crit_edge
  %bf.set26 = xor i8 %bf.load7, -128
  %24 = ptrtoint ptr %pcm_running to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %bf.set26, ptr %pcm_running, align 4
  br label %__end

if.end29:                                         ; preds = %lor.lhs.false.if.end29_crit_edge, %sw.epilog.if.end29_crit_edge
  %and32 = and i16 %16, %mask.0
  %or = or i16 %and32, %val.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %arrayidx.i = getelementptr %struct.snd_pdacf, ptr %1, i32 0, i32 5, i32 4
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %or, ptr %arrayidx.i, align 2
  %26 = tail call i16 @llvm.bswap.i16(i16 %or) #7
  %27 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port.i, align 4
  %add.i64 = add i32 %28, 8
  %and.i65 = and i32 %add.i64, 1048575
  %add2.i = or i32 %and.i65, -18874368
  %29 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %29, i16 %26) #7, !srcloc !22
  br label %__end

__end:                                            ; preds = %if.end29, %if.then17
  %ret.0 = phi i32 [ -5, %if.then17 ], [ 0, %if.end29 ]
  tail call void @mutex_unlock(ptr noundef %reg_lock) #7
  %ak411738 = getelementptr inbounds %struct.snd_pdacf, ptr %1, i32 0, i32 8
  %30 = ptrtoint ptr %ak411738 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ak411738, align 4
  %call39 = tail call i32 @snd_ak4117_check_rate_and_errors(ptr noundef %31, i32 noundef 2) #7
  br label %cleanup

cleanup:                                          ; preds = %__end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %__end ], [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pdacf_pcm_capture_pointer(ptr nocapture noundef readonly %subs) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pcm_hwptr = getelementptr inbounds %struct.snd_pdacf, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %pcm_hwptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pcm_hwptr, align 4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pdacf_reinit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_little_endian(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_unsigned(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ak4117_reg_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ak4117_check_rate_and_errors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pcmcia/pdaudiocf/pdaudiocf_pcm.c", i32 255, i32 32}
!2 = !{ptr @pdacf_pcm_capture_ops, !3, !"pdacf_pcm_capture_ops", i1 false, i1 false}
!3 = !{!"../sound/pcmcia/pdaudiocf/pdaudiocf_pcm.c", i32 238, i32 33}
!4 = !{ptr @pdacf_pcm_capture_hw, !5, !"pdacf_pcm_capture_hw", i1 false, i1 false}
!5 = !{!"../sound/pcmcia/pdaudiocf/pdaudiocf_pcm.c", i32 165, i32 38}
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
!16 = !{i64 6404009}
!17 = !{i64 2154685243}
!18 = !{i64 2154685926}
!19 = !{i64 2154686611}
!20 = !{i64 2154684560}
!21 = !{i64 2154683451}
!22 = !{i64 6403809}
