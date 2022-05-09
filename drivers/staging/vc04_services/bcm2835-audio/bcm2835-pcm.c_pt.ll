; ModuleID = '/llk/IR_all_yes/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c_pt.bc'
source_filename = "../drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bcm2835_alsa_stream = type { ptr, ptr, %struct.snd_pcm_indirect, i32, %struct.atomic_t, i32, i32, i32, i64, ptr, i32 }
%struct.snd_pcm_indirect = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.list_head = type { ptr, ptr }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.bcm2835_chip = type { ptr, ptr, ptr, ptr, [8 x ptr], i32, i32, i32, i32, i32, %struct.mutex, ptr }
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
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.snd_pcm_mmap_control = type { [4 x i8], i32, [4 x i8], [4 x i8], i32, [0 x i8] }

@snd_bcm2835_playback_spdif_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_bcm2835_playback_spdif_open, ptr @snd_bcm2835_playback_close, ptr null, ptr null, ptr null, ptr @snd_bcm2835_pcm_prepare, ptr @snd_bcm2835_pcm_trigger, ptr null, ptr @snd_bcm2835_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_bcm2835_pcm_ack }, [32 x i8] zeroinitializer }, align 32
@snd_bcm2835_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_bcm2835_playback_open, ptr @snd_bcm2835_playback_close, ptr null, ptr null, ptr null, ptr @snd_bcm2835_pcm_prepare, ptr @snd_bcm2835_pcm_trigger, ptr null, ptr @snd_bcm2835_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_bcm2835_pcm_ack }, [32 x i8] zeroinitializer }, align 32
@snd_bcm2835_playback_open_generic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 107, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"substream(%d) device doesn't exist max(%d) substreams allowed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"snd_bcm2835_playback_open_generic\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_bcm2835_playback_open_generic._entry_ptr = internal global ptr @snd_bcm2835_playback_open_generic._entry, section ".printk_index", align 4
@snd_bcm2835_playback_spdif_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65843, i64 4, i32 1073742016, i32 44100, i32 48000, i32 2, i32 2, i32 131072, i32 1024, i32 131072, i32 1, i32 128, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_bcm2835_playback_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65843, i64 6, i32 1073750014, i32 8000, i32 192000, i32 1, i32 8, i32 524288, i32 1024, i32 524288, i32 1, i32 128, i32 0 }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 7]
@___asan_gen_.5 = private unnamed_addr constant [31 x i8] c"snd_bcm2835_playback_spdif_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 314, i32 33 }
@___asan_gen_.8 = private unnamed_addr constant [25 x i8] c"snd_bcm2835_playback_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 305, i32 33 }
@___asan_gen_.11 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 105, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [30 x i8] c"snd_bcm2835_playback_spdif_hw\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 29, i32 38 }
@___asan_gen_.32 = private unnamed_addr constant [24 x i8] c"snd_bcm2835_playback_hw\00", align 1
@___asan_gen_.33 = private constant [61 x i8] c"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 12, i32 38 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @snd_bcm2835_playback_open_generic._entry, ptr @snd_bcm2835_playback_open_generic._entry_ptr, ptr @snd_bcm2835_playback_spdif_ops, ptr @snd_bcm2835_playback_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @snd_bcm2835_playback_spdif_hw, ptr @snd_bcm2835_playback_hw], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bcm2835_playback_spdif_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bcm2835_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bcm2835_playback_open_generic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bcm2835_playback_spdif_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bcm2835_playback_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcm2835_playback_fifo(ptr noundef %alsa_stream, i32 noundef %bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %substream1 = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %alsa_stream, i32 0, i32 1
  %0 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream1, align 4
  %period_size = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %alsa_stream, i32 0, i32 7
  %2 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %period_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %buffer_size = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %alsa_stream, i32 0, i32 6
  %4 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %bytes)
  %cmp.not = icmp ugt i32 %5, %bytes
  br i1 %cmp.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_pcm_stream_lock(ptr noundef %1) #6
  %draining = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %alsa_stream, i32 0, i32 3
  %6 = ptrtoint ptr %draining to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %draining, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  %cond = select i1 %tobool3.not, i32 4, i32 1
  %call = tail call i32 @snd_pcm_stop(ptr noundef %1, i32 noundef %cond) #6
  tail call void @snd_pcm_stream_unlock(ptr noundef %1) #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %pos5 = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %alsa_stream, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pos5, i32 noundef 4) #6
  %8 = ptrtoint ptr %pos5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %pos5, align 4
  %add = add i32 %9, %bytes
  %10 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buffer_size, align 4
  %rem = urem i32 %add, %11
  %call.i.i40 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pos5, i32 noundef 4) #6
  %12 = ptrtoint ptr %pos5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 %rem, ptr %pos5, align 4
  %period_offset = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %alsa_stream, i32 0, i32 5
  %13 = ptrtoint ptr %period_offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %period_offset, align 8
  %add9 = add i32 %14, %bytes
  store i32 %add9, ptr %period_offset, align 8
  %call10 = tail call i64 @ktime_get() #6
  %interpolate_start = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %alsa_stream, i32 0, i32 8
  %15 = ptrtoint ptr %interpolate_start to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %call10, ptr %interpolate_start, align 8
  %16 = ptrtoint ptr %period_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %period_offset, align 8
  %18 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %period_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp13.not = icmp ult i32 %17, %19
  br i1 %cmp13.not, label %if.end4.cleanup_crit_edge, label %if.then14

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then14:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %rem17 = urem i32 %17, %19
  %20 = ptrtoint ptr %period_offset to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %rem17, ptr %period_offset, align 8
  tail call void @snd_pcm_period_elapsed(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end4.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_stream_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_stream_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_bcm2835_new_pcm(ptr noundef %chip, ptr noundef %name, i32 noundef %idx, i32 noundef %route, i32 noundef %numchannels, i1 noundef zeroext %spdif) local_unnamed_addr #0 align 64 {
entry:
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #6
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !25
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %call = call i32 @snd_pcm_new(ptr noundef %2, ptr noundef %name, i32 noundef %idx, i32 noundef %numchannels, i32 noundef 0, ptr noundef nonnull %pcm) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcm, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %chip, ptr %private_data, align 8
  %nonatomic = getelementptr inbounds %struct.snd_pcm, ptr %4, i32 0, i32 14
  %6 = ptrtoint ptr %nonatomic to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %nonatomic, align 1
  %name1 = getelementptr inbounds %struct.snd_pcm, ptr %4, i32 0, i32 7
  %call2 = call i32 @strscpy(ptr noundef %name1, ptr noundef %name, i32 noundef 80) #6
  br i1 %spdif, label %if.then10.critedge, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dest = getelementptr inbounds %struct.bcm2835_chip, ptr %chip, i32 0, i32 6
  %7 = ptrtoint ptr %dest to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %route, ptr %dest, align 4
  %volume = getelementptr inbounds %struct.bcm2835_chip, ptr %chip, i32 0, i32 5
  %8 = ptrtoint ptr %volume to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %volume, align 4
  %mute = getelementptr inbounds %struct.bcm2835_chip, ptr %chip, i32 0, i32 7
  %9 = ptrtoint ptr %mute to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %mute, align 4
  %10 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %11, i32 noundef 0, ptr noundef nonnull @snd_bcm2835_playback_ops) #6
  %12 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcm, align 4
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip, align 4
  %dev.c = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %dev.c to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.c, align 8
  %call8.c = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %13, i32 noundef 2, ptr noundef %17, i32 noundef 131072, i32 noundef 131072) #6
  %18 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pcm, align 4
  %pcm11 = getelementptr inbounds %struct.bcm2835_chip, ptr %chip, i32 0, i32 1
  %20 = ptrtoint ptr %pcm11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %pcm11, align 4
  br label %cleanup

if.then10.critedge:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %22, i32 noundef 0, ptr noundef nonnull @snd_bcm2835_playback_spdif_ops) #6
  %23 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcm, align 4
  %25 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip, align 4
  %dev.c25 = getelementptr inbounds %struct.snd_card, ptr %26, i32 0, i32 27
  %27 = ptrtoint ptr %dev.c25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.c25, align 8
  %call8.c26 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %24, i32 noundef 2, ptr noundef %28, i32 noundef 131072, i32 noundef 131072) #6
  %29 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pcm, align 4
  %pcm_spdif = getelementptr inbounds %struct.bcm2835_chip, ptr %chip, i32 0, i32 2
  %31 = ptrtoint ptr %pcm_spdif to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %pcm_spdif, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then10.critedge, %if.then4, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_bcm2835_playback_spdif_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @snd_bcm2835_playback_open_generic(ptr noundef %substream, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_bcm2835_playback_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %audio_mutex = getelementptr inbounds %struct.bcm2835_chip, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %audio_mutex, i32 noundef 0) #6
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2, align 8
  %period_size = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %period_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %period_size, align 8
  %buffer_size = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %5, i32 0, i32 6
  %7 = ptrtoint ptr %buffer_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %buffer_size, align 4
  %call = tail call i32 @bcm2835_audio_close(ptr noundef %5) #6
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 8
  %idx = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %5, i32 0, i32 10
  %10 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %idx, align 4
  %arrayidx = getelementptr %struct.bcm2835_chip, ptr %9, i32 0, i32 4, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx, align 4
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %13 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %number, align 4
  %shl = shl nuw i32 1, %14
  %neg = xor i32 %shl, -1
  %opened = getelementptr inbounds %struct.bcm2835_chip, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %opened, align 4
  %and = and i32 %16, %neg
  store i32 %and, ptr %opened, align 4
  tail call void @mutex_unlock(ptr noundef %audio_mutex) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_bcm2835_pcm_prepare(ptr nocapture noundef readonly %substream) #0 align 64 {
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
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2, align 8
  %spdif_status = getelementptr inbounds %struct.bcm2835_chip, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %spdif_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %spdif_status, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %channels3 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %8 = ptrtoint ptr %channels3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channels3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %channels.0 = phi i32 [ %9, %if.else ], [ 0, %entry.if.end_crit_edge ]
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %10 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rate, align 4
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %12 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %format, align 4
  %call = tail call i32 @snd_pcm_format_width(i32 noundef %13) #6
  %call4 = tail call i32 @bcm2835_audio_set_params(ptr noundef %5, i32 noundef %channels.0, i32 noundef %11, i32 noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pcm_indirect = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %5, i32 0, i32 2
  %14 = call ptr @memset(ptr %pcm_indirect, i32 0, i32 40)
  %15 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %runtime1, align 4
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 18
  %17 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buffer_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 21
  %19 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %20, %18
  %div1.i.i = lshr i32 %mul.i.i, 3
  %sw_buffer_size = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %5, i32 0, i32 2, i32 5
  %21 = ptrtoint ptr %sw_buffer_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div1.i.i, ptr %sw_buffer_size, align 4
  %22 = ptrtoint ptr %pcm_indirect to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div1.i.i, ptr %pcm_indirect, align 8
  %23 = load ptr, ptr %runtime1, align 4
  %buffer_size.i35 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %23, i32 0, i32 18
  %24 = ptrtoint ptr %buffer_size.i35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buffer_size.i35, align 4
  %frame_bits.i.i36 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %23, i32 0, i32 21
  %26 = ptrtoint ptr %frame_bits.i.i36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %frame_bits.i.i36, align 8
  %mul.i.i37 = mul i32 %27, %25
  %div1.i.i38 = lshr i32 %mul.i.i37, 3
  %buffer_size = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %5, i32 0, i32 6
  %28 = ptrtoint ptr %buffer_size to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div1.i.i38, ptr %buffer_size, align 4
  %29 = load ptr, ptr %runtime1, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %29, i32 0, i32 16
  %30 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i40 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %29, i32 0, i32 21
  %32 = ptrtoint ptr %frame_bits.i.i40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %frame_bits.i.i40, align 8
  %mul.i.i41 = mul i32 %33, %31
  %div1.i.i42 = lshr i32 %mul.i.i41, 3
  %period_size = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %5, i32 0, i32 7
  %34 = ptrtoint ptr %period_size to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %div1.i.i42, ptr %period_size, align 8
  %pos = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %5, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pos, i32 noundef 4) #6
  %35 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 0, ptr %pos, align 4
  %period_offset = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %5, i32 0, i32 5
  %36 = ptrtoint ptr %period_offset to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %period_offset, align 8
  %draining = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %5, i32 0, i32 3
  %37 = ptrtoint ptr %draining to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %draining, align 8
  %call12 = tail call i64 @ktime_get() #6
  %interpolate_start = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %5, i32 0, i32 8
  %38 = ptrtoint ptr %interpolate_start to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %call12, ptr %interpolate_start, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call4, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_bcm2835_pcm_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 7, label %sw.bb2
    i32 0, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @bcm2835_audio_start(ptr noundef %3) #6
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %draining = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %draining to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %draining, align 8
  %call3 = tail call i32 @bcm2835_audio_drain(ptr noundef %3) #6
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 @bcm2835_audio_stop(ptr noundef %3) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb4, %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %sw.bb4 ], [ %call3, %sw.bb2 ], [ %call, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_bcm2835_pcm_pointer(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %call = tail call i64 @ktime_get() #6
  %interpolate_start = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %interpolate_start to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %interpolate_start, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not = icmp ne i64 %5, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %call, i64 %5)
  %cmp.i = icmp sgt i64 %call, %5
  %or.cond = select i1 %tobool.not, i1 %cmp.i, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i64 %call, %5
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rate, align 4
  %conv = zext i32 %7 to i64
  %mul = mul i64 %sub, %conv
  %8 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i32 0) #9, !srcloc !26
  %asmresult.i.i.i = extractvalue { i64, i32 } %8, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %8, 1
  %9 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #9, !srcloc !27
  %asmresult10.i.i.i = extractvalue { i64, i32 } %9, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 29
  %10 = trunc i64 %div1581.i.i to i32
  %conv9 = sub i32 0, %10
  %delay = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv9, ptr %delay, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pos = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %3, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pos, i32 noundef 4) #6
  %12 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %pos, align 4
  %hw_io.i = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %3, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %hw_io.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hw_io.i, align 4
  %sub.i = sub i32 %13, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i20 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i20, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pcm_indirect = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %pcm_indirect to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pcm_indirect, align 4
  %add.i = add i32 %17, %sub.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %bytes.0.i = phi i32 [ %add.i, %if.then.i ], [ %sub.i, %if.end.if.end.i_crit_edge ]
  %18 = ptrtoint ptr %hw_io.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %13, ptr %hw_io.i, align 4
  %hw_ready.i = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %3, i32 0, i32 2, i32 4
  %19 = ptrtoint ptr %hw_ready.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hw_ready.i, align 4
  %sub2.i = sub i32 %20, %bytes.0.i
  store i32 %sub2.i, ptr %hw_ready.i, align 4
  %sw_io.i = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %3, i32 0, i32 2, i32 7
  %21 = ptrtoint ptr %sw_io.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sw_io.i, align 4
  %add3.i = add i32 %22, %bytes.0.i
  store i32 %add3.i, ptr %sw_io.i, align 4
  %sw_buffer_size.i = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %3, i32 0, i32 2, i32 5
  %23 = ptrtoint ptr %sw_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sw_buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i, i32 %24)
  %cmp5.not.i = icmp ult i32 %add3.i, %24
  br i1 %cmp5.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then6.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub9.i = sub i32 %add3.i, %24
  %25 = ptrtoint ptr %sw_io.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub9.i, ptr %sw_io.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then6.i, %if.end.i.if.end10.i_crit_edge
  %ops.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 10
  %26 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i, align 4
  %ack.i = getelementptr inbounds %struct.snd_pcm_ops, ptr %27, i32 0, i32 15
  %28 = ptrtoint ptr %ack.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ack.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.end10.i.snd_pcm_indirect_playback_pointer.exit_crit_edge, label %if.then11.i

if.end10.i.snd_pcm_indirect_playback_pointer.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_pcm_indirect_playback_pointer.exit

if.then11.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %29(ptr noundef %substream) #6
  br label %snd_pcm_indirect_playback_pointer.exit

snd_pcm_indirect_playback_pointer.exit:           ; preds = %if.then11.i, %if.end10.i.snd_pcm_indirect_playback_pointer.exit_crit_edge
  %30 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %runtime1, align 4
  %32 = ptrtoint ptr %sw_io.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sw_io.i, align 4
  %mul.i.i = shl i32 %33, 3
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %31, i32 0, i32 21
  %34 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %frame_bits.i.i, align 8
  %div.i.i = udiv i32 %mul.i.i, %35
  ret i32 %div.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_bcm2835_pcm_ack(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %pcm_indirect2 = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %3, i32 0, i32 2
  %control.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 38
  %4 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %control.i, align 8
  %appl_ptr2.i = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %appl_ptr2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %appl_ptr2.i, align 4
  %appl_ptr3.i = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %3, i32 0, i32 2, i32 9
  %8 = ptrtoint ptr %appl_ptr3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %appl_ptr3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %tobool.not.i = icmp eq i32 %7, %9
  br i1 %tobool.not.i, label %entry.if.end12.i_crit_edge, label %if.then.i

entry.if.end12.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then.i:                                        ; preds = %entry
  %sub.i = sub i32 %7, %9
  %boundary.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 33
  %10 = ptrtoint ptr %boundary.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %boundary.i, align 8
  %div1.i = lshr i32 %11, 1
  %sub4.i = sub nsw i32 0, %div1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub4.i)
  %cmp.i = icmp slt i32 %sub.i, %sub4.i
  %add.i = select i1 %cmp.i, i32 %11, i32 0
  %spec.select.i = add i32 %add.i, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp7.i = icmp slt i32 %spec.select.i, 0
  br i1 %cmp7.i, label %if.then.i.snd_pcm_indirect_playback_transfer.exit_crit_edge, label %if.end9.i

if.then.i.snd_pcm_indirect_playback_transfer.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_pcm_indirect_playback_transfer.exit

if.end9.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %12 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %13, %spec.select.i
  %div1.i.i = lshr i32 %mul.i.i, 3
  %sw_ready.i = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %3, i32 0, i32 2, i32 8
  %14 = ptrtoint ptr %sw_ready.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sw_ready.i, align 4
  %add10.i = add i32 %div1.i.i, %15
  store i32 %add10.i, ptr %sw_ready.i, align 4
  %16 = ptrtoint ptr %appl_ptr3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %7, ptr %appl_ptr3.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end9.i, %entry.if.end12.i_crit_edge
  %hw_queue_size.i = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %3, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %hw_queue_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hw_queue_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool13.not.i = icmp eq i32 %18, 0
  br i1 %tobool13.not.i, label %cond.false.i, label %if.end12.i.cond.end.i_crit_edge

if.end12.i.cond.end.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %pcm_indirect2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pcm_indirect2, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end12.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %20, %cond.false.i ], [ %18, %if.end12.i.cond.end.i_crit_edge ]
  %sw_ready16.i = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %3, i32 0, i32 2, i32 8
  %hw_ready.i = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %3, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %hw_ready.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hw_ready.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %22)
  %cmp156.i = icmp sgt i32 %cond.i, %22
  br i1 %cmp156.i, label %land.rhs.lr.ph.i, label %cond.end.i.snd_pcm_indirect_playback_transfer.exit_crit_edge

cond.end.i.snd_pcm_indirect_playback_transfer.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_pcm_indirect_playback_transfer.exit

land.rhs.lr.ph.i:                                 ; preds = %cond.end.i
  %hw_data.i = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %3, i32 0, i32 2, i32 2
  %sw_buffer_size.i = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %3, i32 0, i32 2, i32 5
  %sw_data.i = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %3, i32 0, i32 2, i32 6
  %23 = ptrtoint ptr %sw_ready16.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr.i = load i32, ptr %sw_ready16.i, align 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %cleanup.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %24 = phi i32 [ %.pr.i, %land.rhs.lr.ph.i ], [ %sub56.i, %cleanup.i.land.rhs.i_crit_edge ]
  %25 = phi i32 [ %22, %land.rhs.lr.ph.i ], [ %add54.i, %cleanup.i.land.rhs.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp17.i = icmp sgt i32 %24, 0
  br i1 %cmp17.i, label %while.body.i, label %land.rhs.i.snd_pcm_indirect_playback_transfer.exit_crit_edge

land.rhs.i.snd_pcm_indirect_playback_transfer.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_pcm_indirect_playback_transfer.exit

while.body.i:                                     ; preds = %land.rhs.i
  %26 = ptrtoint ptr %pcm_indirect2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pcm_indirect2, align 4
  %28 = ptrtoint ptr %hw_data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hw_data.i, align 4
  %sub19.i = sub i32 %27, %29
  %30 = ptrtoint ptr %sw_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sw_buffer_size.i, align 4
  %32 = ptrtoint ptr %sw_data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sw_data.i, align 4
  %sub20.i = sub i32 %31, %33
  %sub22.i = sub i32 %cond.i, %25
  %34 = tail call i32 @llvm.smin.i32(i32 %24, i32 %sub22.i) #6
  %35 = tail call i32 @llvm.umin.i32(i32 %sub19.i, i32 %34) #6
  %36 = tail call i32 @llvm.umin.i32(i32 %sub20.i, i32 %35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool34.not.i = icmp eq i32 %36, 0
  br i1 %tobool34.not.i, label %while.body.i.snd_pcm_indirect_playback_transfer.exit_crit_edge, label %cleanup.i

while.body.i.snd_pcm_indirect_playback_transfer.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_pcm_indirect_playback_transfer.exit

cleanup.i:                                        ; preds = %while.body.i
  %37 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %runtime1, align 4
  %private_data.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %38, i32 0, i32 44
  %39 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %private_data.i.i, align 8
  %dma_area.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %38, i32 0, i32 50
  %41 = ptrtoint ptr %dma_area.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dma_area.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 %33
  %call.i.i = tail call i32 @bcm2835_audio_write(ptr noundef %40, i32 noundef %36, ptr noundef %add.ptr.i.i) #6
  %43 = ptrtoint ptr %hw_data.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hw_data.i, align 4
  %add38.i = add i32 %44, %36
  %45 = ptrtoint ptr %pcm_indirect2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pcm_indirect2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add38.i, i32 %46)
  %cmp41.i = icmp eq i32 %add38.i, %46
  %spec.store.select.i = select i1 %cmp41.i, i32 0, i32 %add38.i
  %47 = ptrtoint ptr %hw_data.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %spec.store.select.i, ptr %hw_data.i, align 4
  %48 = ptrtoint ptr %sw_data.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sw_data.i, align 4
  %add46.i = add i32 %49, %36
  %50 = ptrtoint ptr %sw_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sw_buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add46.i, i32 %51)
  %cmp49.i = icmp eq i32 %add46.i, %51
  %spec.store.select3.i = select i1 %cmp49.i, i32 0, i32 %add46.i
  %52 = ptrtoint ptr %sw_data.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %spec.store.select3.i, ptr %sw_data.i, align 4
  %53 = ptrtoint ptr %hw_ready.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %hw_ready.i, align 4
  %add54.i = add i32 %54, %36
  store i32 %add54.i, ptr %hw_ready.i, align 4
  %55 = ptrtoint ptr %sw_ready16.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sw_ready16.i, align 4
  %sub56.i = sub i32 %56, %36
  store i32 %sub56.i, ptr %sw_ready16.i, align 4
  %cmp15.i = icmp sgt i32 %cond.i, %add54.i
  br i1 %cmp15.i, label %cleanup.i.land.rhs.i_crit_edge, label %cleanup.i.snd_pcm_indirect_playback_transfer.exit_crit_edge

cleanup.i.snd_pcm_indirect_playback_transfer.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_pcm_indirect_playback_transfer.exit

cleanup.i.land.rhs.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

snd_pcm_indirect_playback_transfer.exit:          ; preds = %cleanup.i.snd_pcm_indirect_playback_transfer.exit_crit_edge, %while.body.i.snd_pcm_indirect_playback_transfer.exit_crit_edge, %land.rhs.i.snd_pcm_indirect_playback_transfer.exit_crit_edge, %cond.end.i.snd_pcm_indirect_playback_transfer.exit_crit_edge, %if.then.i.snd_pcm_indirect_playback_transfer.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.then.i.snd_pcm_indirect_playback_transfer.exit_crit_edge ], [ 0, %cond.end.i.snd_pcm_indirect_playback_transfer.exit_crit_edge ], [ 0, %cleanup.i.snd_pcm_indirect_playback_transfer.exit_crit_edge ], [ 0, %while.body.i.snd_pcm_indirect_playback_transfer.exit_crit_edge ], [ 0, %land.rhs.i.snd_pcm_indirect_playback_transfer.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_bcm2835_playback_open_generic(ptr noundef %substream, i32 noundef %spdif) unnamed_addr #0 align 64 {
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
  %audio_mutex = getelementptr inbounds %struct.bcm2835_chip, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %audio_mutex, i32 noundef 0) #6
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spdif)
  %tobool.not = icmp eq i32 %spdif, 0
  %opened5 = getelementptr inbounds %struct.bcm2835_chip, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %opened5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %opened5, align 4
  br i1 %tobool.not, label %land.lhs.true4.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end8_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

land.lhs.true4.critedge:                          ; preds = %entry
  %shl = shl nuw i32 1, %5
  %and = and i32 %7, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %land.lhs.true4.critedge.if.end8_crit_edge, label %land.lhs.true4.critedge.out_crit_edge

land.lhs.true4.critedge.out_crit_edge:            ; preds = %land.lhs.true4.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

land.lhs.true4.critedge.if.end8_crit_edge:        ; preds = %land.lhs.true4.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true4.critedge.if.end8_crit_edge, %land.lhs.true.if.end8_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %5)
  %cmp = icmp sgt i32 %5, 7
  br i1 %cmp, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.bcm2835_chip, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str, i32 noundef %5, i32 noundef 8) #10
  br label %out

if.end10:                                         ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 88) #11
  %tobool11.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not, label %if.end10.out_crit_edge, label %if.end13

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end13:                                         ; preds = %if.end10
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %call7.i.i, align 8
  %substream15 = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %substream15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %substream, ptr %substream15, align 4
  %idx16 = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %call7.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %idx16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %5, ptr %idx16, align 4
  %call17 = tail call i32 @bcm2835_audio_open(ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %out

if.end20:                                         ; preds = %if.end13
  %private_data21 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %14 = ptrtoint ptr %private_data21 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %private_data21, align 8
  %private_free = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 45
  %15 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @snd_bcm2835_playback_free, ptr %private_free, align 4
  br i1 %tobool.not, label %if.else24, label %if.then23

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %16 = call ptr @memcpy(ptr %hw, ptr @snd_bcm2835_playback_spdif_hw, i32 64)
  br label %if.end26

if.else24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %spdif_status = getelementptr inbounds %struct.bcm2835_chip, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %spdif_status to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %spdif_status, align 4
  %hw25 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %18 = call ptr @memcpy(ptr %hw25, ptr @snd_bcm2835_playback_hw, i32 64)
  br label %if.end26

if.end26:                                         ; preds = %if.else24, %if.then23
  %call27 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %3, i32 noundef 0, i32 noundef 14, i32 noundef 16) #6
  %call28 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 12, i32 noundef 10000, i32 noundef -1) #6
  %arrayidx = getelementptr %struct.bcm2835_chip, ptr %1, i32 0, i32 4, i32 %5
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  %shl30 = shl nuw nsw i32 1, %5
  %opened31 = getelementptr inbounds %struct.bcm2835_chip, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %opened31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %opened31, align 4
  %or = or i32 %21, %shl30
  store i32 %or, ptr %opened31, align 4
  br label %out

out:                                              ; preds = %if.end26, %if.then19, %if.end10.out_crit_edge, %do.end, %land.lhs.true4.critedge.out_crit_edge, %land.lhs.true.out_crit_edge
  %err.0 = phi i32 [ -19, %do.end ], [ %call17, %if.then19 ], [ 0, %if.end26 ], [ -16, %land.lhs.true.out_crit_edge ], [ -16, %land.lhs.true4.critedge.out_crit_edge ], [ -12, %if.end10.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %audio_mutex) #6
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm2835_audio_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_bcm2835_playback_free(ptr nocapture noundef readonly %runtime) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 44
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm2835_audio_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm2835_audio_set_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm2835_audio_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm2835_audio_drain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm2835_audio_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm2835_audio_write(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_bcm2835_playback_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @snd_bcm2835_playback_open_generic(ptr noundef %substream, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @snd_bcm2835_playback_spdif_ops, !1, !"snd_bcm2835_playback_spdif_ops", i1 false, i1 false}
!1 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c", i32 314, i32 33}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c", i32 105, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @snd_bcm2835_playback_open_generic._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @snd_bcm2835_playback_open_generic._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @snd_bcm2835_playback_spdif_hw, !11, !"snd_bcm2835_playback_spdif_hw", i1 false, i1 false}
!11 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c", i32 29, i32 38}
!12 = !{ptr @snd_bcm2835_playback_hw, !13, !"snd_bcm2835_playback_hw", i1 false, i1 false}
!13 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c", i32 12, i32 38}
!14 = !{ptr @snd_bcm2835_playback_ops, !15, !"snd_bcm2835_playback_ops", i1 false, i1 false}
!15 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c", i32 305, i32 33}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"auto-init"}
!26 = !{i64 1148443, i64 1148470, i64 1148492, i64 1148520}
!27 = !{i64 1148851, i64 1148878, i64 1148911, i64 1148932, i64 1148959, i64 1148985}
