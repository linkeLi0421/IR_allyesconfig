; ModuleID = '/llk/IR_all_yes/drivers/media/pci/tw686x/tw686x-audio.c_pt.bc'
source_filename = "../drivers/media/pci/tw686x/tw686x-audio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tw686x_dev = type { %struct.spinlock, %struct.v4l2_device, ptr, [32 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.timer_list, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.tw686x_audio_channel = type { ptr, ptr, i32, [2 x ptr], [2 x %struct.tw686x_dma_desc], i32, [16 x %struct.tw686x_audio_buf], %struct.list_head, %struct.spinlock }
%struct.tw686x_dma_desc = type { i32, ptr, i32 }
%struct.tw686x_audio_buf = type { i32, ptr, %struct.list_head }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.115, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.115 = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tw686x\00", [25 x i8] zeroinitializer }, align 32
@tw686x_audio_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ac->lock\00", [22 x i8] zeroinitializer }, align 32
@tw686x_audio_dma_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 333, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"dma%d: unable to allocate audio DMA %s-buffer\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tw686x_audio_dma_alloc\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/pci/tw686x/tw686x-audio.c\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tw686x_audio_dma_alloc._entry_ptr = internal global ptr @tw686x_audio_dma_alloc._entry, section ".printk_index", align 4
@.str.7 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"P\00", [30 x i8] zeroinitializer }, align 32
@tw686x_pcm_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @tw686x_pcm_open, ptr @tw686x_pcm_close, ptr null, ptr null, ptr null, ptr @tw686x_pcm_prepare, ptr @tw686x_pcm_trigger, ptr null, ptr @tw686x_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tw686x PCM\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vch%u audio\00", [20 x i8] zeroinitializer }, align 32
@tw686x_capture_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65795, i64 4, i32 254, i32 8000, i32 48000, i32 1, i32 1, i32 65536, i32 512, i32 4096, i32 2, i32 16, i32 0 }, [32 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 378, i32 24 }
@___asan_gen_.14 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 387, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 331, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant [15 x i8] c"tw686x_pcm_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 258, i32 33 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 281, i32 21 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 285, i32 40 }
@___asan_gen_.53 = private unnamed_addr constant [18 x i8] c"tw686x_capture_hw\00", align 1
@___asan_gen_.54 = private constant [43 x i8] c"../drivers/media/pci/tw686x/tw686x-audio.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 86, i32 38 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @tw686x_audio_dma_alloc._entry, ptr @tw686x_audio_dma_alloc._entry_ptr, ptr @.str, ptr @tw686x_audio_init.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @tw686x_pcm_ops, ptr @.str.9, ptr @.str.10, ptr @tw686x_capture_hw], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw686x_audio_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw686x_audio_dma_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw686x_pcm_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw686x_capture_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tw686x_audio_irq(ptr nocapture noundef readonly %dev, i32 noundef %requests, i32 noundef %pb_status) local_unnamed_addr #0 align 64 {
entry:
  %requests.addr = alloca i32, align 4
  %.compoundliteral = alloca [8 x i16], align 2
  %.compoundliteral53 = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %requests.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %requests, ptr %requests.addr, align 4
  %type.i = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 4
  %1 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type.i, align 4
  %and.i = and i32 %2, 15
  %call1 = call i32 @_find_next_bit_be(ptr noundef nonnull %requests.addr, i32 noundef %and.i, i32 noundef 0) #8
  %3 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type.i, align 4
  %and.i110113 = and i32 %4, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %and.i110113)
  %cmp114 = icmp ult i32 %call1, %and.i110113
  br i1 %cmp114, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %audio_channels = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 10
  %period_size = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 12
  %arrayinit.element55 = getelementptr inbounds i16, ptr %.compoundliteral53, i32 1
  %arrayinit.element56 = getelementptr inbounds i16, ptr %.compoundliteral53, i32 2
  %arrayinit.element57 = getelementptr inbounds i16, ptr %.compoundliteral53, i32 3
  %arrayinit.element58 = getelementptr inbounds i16, ptr %.compoundliteral53, i32 4
  %arrayinit.element59 = getelementptr inbounds i16, ptr %.compoundliteral53, i32 5
  %arrayinit.element60 = getelementptr inbounds i16, ptr %.compoundliteral53, i32 6
  %arrayinit.element61 = getelementptr inbounds i16, ptr %.compoundliteral53, i32 7
  %arrayinit.element = getelementptr inbounds i16, ptr %.compoundliteral, i32 1
  %arrayinit.element45 = getelementptr inbounds i16, ptr %.compoundliteral, i32 2
  %arrayinit.element46 = getelementptr inbounds i16, ptr %.compoundliteral, i32 3
  %arrayinit.element47 = getelementptr inbounds i16, ptr %.compoundliteral, i32 4
  %arrayinit.element48 = getelementptr inbounds i16, ptr %.compoundliteral, i32 5
  %arrayinit.element49 = getelementptr inbounds i16, ptr %.compoundliteral, i32 6
  %arrayinit.element50 = getelementptr inbounds i16, ptr %.compoundliteral, i32 7
  %mmio.i = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %ch.0115 = phi i32 [ %call1, %for.body.lr.ph ], [ %call74, %cleanup.for.body_crit_edge ]
  %5 = ptrtoint ptr %audio_channels to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %audio_channels, align 4
  %add = add i32 %ch.0115, 8
  %shl = shl nuw i32 1, %add
  %and = and i32 %shl, %pb_status
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %tobool to i32
  %lock = getelementptr %struct.tw686x_audio_channel, ptr %6, i32 %ch.0115, i32 8
  %call7 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %ss = getelementptr %struct.tw686x_audio_channel, ptr %6, i32 %ch.0115, i32 1
  %7 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ss, align 4
  %tobool10.not = icmp eq ptr %8, null
  br i1 %tobool10.not, label %for.body.if.then_crit_edge, label %lor.lhs.false

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %curr_bufs = getelementptr %struct.tw686x_audio_channel, ptr %6, i32 %ch.0115, i32 3
  %9 = ptrtoint ptr %curr_bufs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %curr_bufs, align 4
  %tobool12.not = icmp eq ptr %10, null
  br i1 %tobool12.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false13

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %arrayidx15 = getelementptr %struct.tw686x_audio_channel, ptr %6, i32 %ch.0115, i32 3, i32 1
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx15, align 4
  %tobool16.not = icmp eq ptr %12, null
  br i1 %tobool16.not, label %lor.lhs.false13.if.then_crit_edge, label %if.end

lor.lhs.false13.if.then_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false13.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %for.body.if.then_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false13
  %buf_list = getelementptr %struct.tw686x_audio_channel, ptr %6, i32 %ch.0115, i32 7
  %13 = ptrtoint ptr %buf_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %buf_list, align 4
  %cmp.i.not = icmp eq ptr %14, %buf_list
  br i1 %cmp.i.not, label %if.end.if.end32_crit_edge, label %if.then20

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then20:                                        ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %14, i32 -8
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %14) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then20.__list_del_entry.exit.i_crit_edge

if.then20.__list_del_entry.exit.i_crit_edge:      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then20.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr %struct.tw686x_audio_channel, ptr %6, i32 %ch.0115, i32 7, i32 1
  %21 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %14, ptr noundef %22, ptr noundef %buf_list) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %14, ptr %prev.i2.i, align 4
  %24 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %buf_list, ptr %14, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %14, ptr %22, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %lnot.ext28 = zext i1 %lnot to i32
  %arrayidx29 = getelementptr %struct.tw686x_audio_channel, ptr %6, i32 %ch.0115, i32 3, i32 %lnot.ext28
  %27 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx29, align 4
  %arrayidx31 = getelementptr %struct.tw686x_audio_channel, ptr %6, i32 %ch.0115, i32 3, i32 %lnot.ext
  %29 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr, ptr %arrayidx31, align 4
  br label %if.end32

if.end32:                                         ; preds = %list_move_tail.exit, %if.end.if.end32_crit_edge
  %done.0 = phi ptr [ null, %if.end.if.end32_crit_edge ], [ %28, %list_move_tail.exit ]
  %next.0 = phi ptr [ null, %if.end.if.end32_crit_edge ], [ %add.ptr, %list_move_tail.exit ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #8
  %tobool34.not = icmp eq ptr %done.0, null
  %tobool36.not = icmp eq ptr %next.0, null
  %or.cond = or i1 %tobool34.not, %tobool36.not
  br i1 %or.cond, label %if.end32.cleanup_crit_edge, label %if.end38

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38:                                         ; preds = %if.end32
  %virt = getelementptr %struct.tw686x_audio_channel, ptr %6, i32 %ch.0115, i32 4, i32 %lnot.ext, i32 1
  %30 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %virt, align 4
  %tobool40.not = icmp eq ptr %31, null
  br i1 %tobool40.not, label %if.else, label %if.then41

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %virt42 = getelementptr inbounds %struct.tw686x_audio_buf, ptr %done.0, i32 0, i32 1
  %32 = ptrtoint ptr %virt42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %virt42, align 4
  %34 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %period_size, align 4
  %36 = call ptr @memcpy(ptr %33, ptr %31, i32 %35)
  br label %if.end64

if.else:                                          ; preds = %if.end38
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 25, ptr %.compoundliteral, align 2
  %38 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 27, ptr %arrayinit.element, align 2
  %39 = ptrtoint ptr %arrayinit.element45 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 29, ptr %arrayinit.element45, align 2
  %40 = ptrtoint ptr %arrayinit.element46 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 31, ptr %arrayinit.element46, align 2
  %41 = ptrtoint ptr %arrayinit.element47 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 33, ptr %arrayinit.element47, align 2
  %42 = ptrtoint ptr %arrayinit.element48 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 35, ptr %arrayinit.element48, align 2
  %43 = ptrtoint ptr %arrayinit.element49 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 37, ptr %arrayinit.element49, align 2
  %44 = ptrtoint ptr %arrayinit.element50 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 39, ptr %arrayinit.element50, align 2
  br label %cond.end

cond.false:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %.compoundliteral53 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 24, ptr %.compoundliteral53, align 2
  %46 = ptrtoint ptr %arrayinit.element55 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 26, ptr %arrayinit.element55, align 2
  %47 = ptrtoint ptr %arrayinit.element56 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 28, ptr %arrayinit.element56, align 2
  %48 = ptrtoint ptr %arrayinit.element57 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 30, ptr %arrayinit.element57, align 2
  %49 = ptrtoint ptr %arrayinit.element58 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 32, ptr %arrayinit.element58, align 2
  %50 = ptrtoint ptr %arrayinit.element59 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 34, ptr %arrayinit.element59, align 2
  %51 = ptrtoint ptr %arrayinit.element60 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 36, ptr %arrayinit.element60, align 2
  %52 = ptrtoint ptr %arrayinit.element61 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 38, ptr %arrayinit.element61, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %.compoundliteral.pn = phi ptr [ %.compoundliteral, %cond.true ], [ %.compoundliteral53, %cond.false ]
  %cond.in.in = getelementptr [8 x i16], ptr %.compoundliteral.pn, i32 0, i32 %ch.0115
  %53 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load2_noabort(i32 %53)
  %cond.in = load i16, ptr %cond.in.in, align 2
  %cond = zext i16 %cond.in to i32
  %54 = ptrtoint ptr %next.0 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %next.0, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !32
  call void @arm_heavy_mb() #8
  %56 = call i32 @llvm.bswap.i32(i32 %55) #8
  %57 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %58, i32 %cond
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %56) #8, !srcloc !33
  br label %if.end64

if.end64:                                         ; preds = %cond.end, %if.then41
  %59 = ptrtoint ptr %done.0 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %done.0, align 4
  %buf = getelementptr %struct.tw686x_audio_channel, ptr %6, i32 %ch.0115, i32 6
  %61 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %buf, align 4
  %sub = sub i32 %60, %62
  %ptr = getelementptr %struct.tw686x_audio_channel, ptr %6, i32 %ch.0115, i32 5
  %63 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %sub, ptr %ptr, align 4
  %64 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ss, align 4
  call void @snd_pcm_period_elapsed(ptr noundef %65) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.end32.cleanup_crit_edge, %if.then
  %66 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %type.i, align 4
  %and.i112 = and i32 %67, 15
  %add73 = add nuw i32 %ch.0115, 1
  %call74 = call i32 @_find_next_bit_be(ptr noundef nonnull %requests.addr, i32 noundef %and.i112, i32 noundef %add73) #8
  %68 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %type.i, align 4
  %and.i110 = and i32 %69, 15
  %cmp = icmp ult i32 %call74, %and.i110
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tw686x_audio_free(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev) #8
  %mmio.i = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %1, i32 2
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !35
  %3 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i23 = getelementptr i32, ptr %4, i32 10
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #8, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !35
  %6 = and i32 %2, -16711681
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !32
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i25 = getelementptr i32, ptr %8, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %6) #8, !srcloc !33
  %9 = and i32 %5, -16711681
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !32
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i27 = getelementptr i32, ptr %11, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %9) #8, !srcloc !33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev, i32 noundef %call2) #8
  %snd_card = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 2
  %12 = ptrtoint ptr %snd_card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %snd_card, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 @snd_card_free(ptr noundef nonnull %13) #8
  %14 = ptrtoint ptr %snd_card to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %snd_card, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tw686x_audio_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %pcm.i = alloca ptr, align 4
  %.compoundliteral.i = alloca [8 x i16], align 2
  %.compoundliteral8.i = alloca [8 x i16], align 2
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev1 = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %pci_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #8
  %2 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !32
  tail call void @arm_heavy_mb() #8
  %mmio.i = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 7
  %3 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %4, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #8, !srcloc !33
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call = call i32 @snd_card_new(ptr noundef %dev2, i32 noundef -1, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %card) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup44_crit_edge, label %if.end

entry.cleanup44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup44

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 4
  %snd_card = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 2
  %7 = ptrtoint ptr %snd_card to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %snd_card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 2
  %call3 = call i32 @strscpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 16) #8
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %shortname = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 3
  %call5 = call i32 @strscpy(ptr noundef %shortname, ptr noundef nonnull @.str, i32 noundef 32) #8
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %12 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.pci_name.exit_crit_edge

if.end.pci_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev2, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %15, %if.end.i.i ], [ %13, %if.end.pci_name.exit_crit_edge ]
  %call8 = call i32 @strscpy(ptr noundef %longname, ptr noundef %retval.0.i.i, i32 noundef 80) #8
  %16 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card, align 4
  %dev10 = getelementptr inbounds %struct.snd_card, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev2, ptr %dev10, align 8
  %type.i = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 4
  %19 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type.i, align 4
  %and.i94 = and i32 %20, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i94)
  %cmp1295.not = icmp eq i32 %and.i94, 0
  br i1 %cmp1295.not, label %pci_name.exit.for.end_crit_edge, label %for.body.lr.ph

pci_name.exit.for.end_crit_edge:                  ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %pci_name.exit
  %audio_channels = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 10
  %dma_mode.i = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 5
  %arrayinit.element16.i = getelementptr inbounds i16, ptr %.compoundliteral8.i, i32 7
  %arrayinit.element15.i = getelementptr inbounds i16, ptr %.compoundliteral8.i, i32 6
  %arrayinit.element14.i = getelementptr inbounds i16, ptr %.compoundliteral8.i, i32 5
  %arrayinit.element13.i = getelementptr inbounds i16, ptr %.compoundliteral8.i, i32 4
  %arrayinit.element12.i = getelementptr inbounds i16, ptr %.compoundliteral8.i, i32 3
  %arrayinit.element11.i = getelementptr inbounds i16, ptr %.compoundliteral8.i, i32 2
  %arrayinit.element10.i = getelementptr inbounds i16, ptr %.compoundliteral8.i, i32 1
  %arrayinit.element7.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 7
  %arrayinit.element6.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 6
  %arrayinit.element5.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 5
  %arrayinit.element4.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 4
  %arrayinit.element3.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 3
  %arrayinit.element2.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 2
  %arrayinit.element.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ch.096 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %21 = ptrtoint ptr %audio_channels to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %audio_channels, align 4
  %arrayidx = getelementptr %struct.tw686x_audio_channel, ptr %22, i32 %ch.096
  %lock = getelementptr %struct.tw686x_audio_channel, ptr %22, i32 %ch.096, i32 8
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @tw686x_audio_init.__key, i16 noundef signext 3) #8
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev, ptr %arrayidx, align 4
  %ch15 = getelementptr %struct.tw686x_audio_channel, ptr %22, i32 %ch.096, i32 2
  %24 = ptrtoint ptr %ch15 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %ch.096, ptr %ch15, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %.compoundliteral.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %.compoundliteral8.i)
  %25 = ptrtoint ptr %dma_mode.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.not.i = icmp eq i32 %26, 0
  br i1 %cmp.not.i, label %cond.end.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

cond.end.i:                                       ; preds = %for.body
  %27 = ptrtoint ptr %.compoundliteral8.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 24, ptr %.compoundliteral8.i, align 2
  %28 = ptrtoint ptr %arrayinit.element10.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 26, ptr %arrayinit.element10.i, align 2
  %29 = ptrtoint ptr %arrayinit.element11.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 28, ptr %arrayinit.element11.i, align 2
  %30 = ptrtoint ptr %arrayinit.element12.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 30, ptr %arrayinit.element12.i, align 2
  %31 = ptrtoint ptr %arrayinit.element13.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 32, ptr %arrayinit.element13.i, align 2
  %32 = ptrtoint ptr %arrayinit.element14.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 34, ptr %arrayinit.element14.i, align 2
  %33 = ptrtoint ptr %arrayinit.element15.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 36, ptr %arrayinit.element15.i, align 2
  %34 = ptrtoint ptr %arrayinit.element16.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 38, ptr %arrayinit.element16.i, align 2
  %35 = ptrtoint ptr %ch15 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ch15, align 4
  %arrayidx18.i = getelementptr [8 x i16], ptr %.compoundliteral8.i, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %cond.in.i = load i16, ptr %arrayidx18.i, align 2
  %38 = ptrtoint ptr %pci_dev1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pci_dev1, align 4
  %dev20.i = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %arrayidx21.i = getelementptr %struct.tw686x_audio_channel, ptr %22, i32 %ch.096, i32 4, i32 0
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev20.i, i32 noundef 4096, ptr noundef %arrayidx21.i, i32 noundef 3264, i32 noundef 0) #8
  %tobool22.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool22.not.i, label %cond.end.i.tw686x_audio_dma_alloc.exit_crit_edge, label %cond.end.1.i

cond.end.i.tw686x_audio_dma_alloc.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tw686x_audio_dma_alloc.exit

cond.end.1.i:                                     ; preds = %cond.end.i
  %cond.i = zext i16 %cond.in.i to i32
  %virt32.i = getelementptr %struct.tw686x_audio_channel, ptr %22, i32 %ch.096, i32 4, i32 0, i32 1
  %40 = ptrtoint ptr %virt32.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i.i, ptr %virt32.i, align 4
  %size.i = getelementptr %struct.tw686x_audio_channel, ptr %22, i32 %ch.096, i32 4, i32 0, i32 2
  %41 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4096, ptr %size.i, align 4
  %42 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx21.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !32
  call void @arm_heavy_mb() #8
  %44 = call i32 @llvm.bswap.i32(i32 %43) #8
  %45 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %46, i32 %cond.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %44) #8, !srcloc !33
  %47 = ptrtoint ptr %.compoundliteral.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 25, ptr %.compoundliteral.i, align 2
  %48 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 27, ptr %arrayinit.element.i, align 2
  %49 = ptrtoint ptr %arrayinit.element2.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 29, ptr %arrayinit.element2.i, align 2
  %50 = ptrtoint ptr %arrayinit.element3.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 31, ptr %arrayinit.element3.i, align 2
  %51 = ptrtoint ptr %arrayinit.element4.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 33, ptr %arrayinit.element4.i, align 2
  %52 = ptrtoint ptr %arrayinit.element5.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 35, ptr %arrayinit.element5.i, align 2
  %53 = ptrtoint ptr %arrayinit.element6.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 37, ptr %arrayinit.element6.i, align 2
  %54 = ptrtoint ptr %arrayinit.element7.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 39, ptr %arrayinit.element7.i, align 2
  %55 = ptrtoint ptr %ch15 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ch15, align 4
  %arrayidx.1.i = getelementptr [8 x i16], ptr %.compoundliteral.i, i32 0, i32 %56
  %57 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %cond.in.1.i = load i16, ptr %arrayidx.1.i, align 2
  %58 = ptrtoint ptr %pci_dev1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pci_dev1, align 4
  %dev20.1.i = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  %arrayidx21.1.i = getelementptr %struct.tw686x_audio_channel, ptr %22, i32 %ch.096, i32 4, i32 1
  %call.i.1.i = call ptr @dma_alloc_attrs(ptr noundef %dev20.1.i, i32 noundef 4096, ptr noundef %arrayidx21.1.i, i32 noundef 3264, i32 noundef 0) #8
  %tobool22.not.1.i = icmp eq ptr %call.i.1.i, null
  br i1 %tobool22.not.1.i, label %cond.end.1.i.tw686x_audio_dma_alloc.exit_crit_edge, label %if.end29.1.i

cond.end.1.i.tw686x_audio_dma_alloc.exit_crit_edge: ; preds = %cond.end.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tw686x_audio_dma_alloc.exit

if.end29.1.i:                                     ; preds = %cond.end.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %cond.1.i = zext i16 %cond.in.1.i to i32
  %virt32.1.i = getelementptr %struct.tw686x_audio_channel, ptr %22, i32 %ch.096, i32 4, i32 1, i32 1
  %60 = ptrtoint ptr %virt32.1.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i.1.i, ptr %virt32.1.i, align 4
  %size.1.i = getelementptr %struct.tw686x_audio_channel, ptr %22, i32 %ch.096, i32 4, i32 1, i32 2
  %61 = ptrtoint ptr %size.1.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 4096, ptr %size.1.i, align 4
  %62 = ptrtoint ptr %arrayidx21.1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx21.1.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !32
  call void @arm_heavy_mb() #8
  %64 = call i32 @llvm.bswap.i32(i32 %63) #8
  %65 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i.1.i = getelementptr i32, ptr %66, i32 %cond.1.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i, i32 %64) #8, !srcloc !33
  br label %for.inc

tw686x_audio_dma_alloc.exit:                      ; preds = %cond.end.1.i.tw686x_audio_dma_alloc.exit_crit_edge, %cond.end.i.tw686x_audio_dma_alloc.exit_crit_edge
  %cond28.i = phi ptr [ @.str.7, %cond.end.1.i.tw686x_audio_dma_alloc.exit_crit_edge ], [ @.str.8, %cond.end.i.tw686x_audio_dma_alloc.exit_crit_edge ]
  %67 = ptrtoint ptr %pci_dev1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pci_dev1, align 4
  %dev25.i = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 44
  %69 = ptrtoint ptr %ch15 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ch15, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25.i, ptr noundef nonnull @.str.2, i32 noundef %70, ptr noundef nonnull %cond28.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %.compoundliteral.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %.compoundliteral8.i)
  br label %err_cleanup

for.inc:                                          ; preds = %if.end29.1.i, %for.body.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %.compoundliteral.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %.compoundliteral8.i)
  %inc = add nuw nsw i32 %ch.096, 1
  %71 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %type.i, align 4
  %and.i = and i32 %72, 15
  %cmp12 = icmp ult i32 %inc, %and.i
  br i1 %cmp12, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %pci_name.exit.for.end_crit_edge
  %and.i.lcssa = phi i32 [ 0, %pci_name.exit.for.end_crit_edge ], [ %and.i, %for.inc.for.end_crit_edge ]
  %73 = ptrtoint ptr %snd_card to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %snd_card, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i) #8
  %75 = ptrtoint ptr %pcm.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i, align 4, !annotation !36
  %driver.i = getelementptr inbounds %struct.snd_card, ptr %74, i32 0, i32 2
  %call1.i = call i32 @snd_pcm_new(ptr noundef %74, ptr noundef %driver.i, i32 noundef 0, i32 noundef 0, i32 noundef %and.i.lcssa, ptr noundef nonnull %pcm.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %tw686x_snd_pcm_init.exit.thread, label %if.end.i

tw686x_snd_pcm_init.exit.thread:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #8
  br label %err_cleanup

if.end.i:                                         ; preds = %for.end
  %76 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %77, i32 noundef 1, ptr noundef nonnull @tw686x_pcm_ops) #8
  %78 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pcm.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm, ptr %79, i32 0, i32 11
  %80 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %dev, ptr %private_data.i, align 8
  %info_flags.i = getelementptr inbounds %struct.snd_pcm, ptr %79, i32 0, i32 3
  %81 = ptrtoint ptr %info_flags.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %info_flags.i, align 8
  %name.i = getelementptr inbounds %struct.snd_pcm, ptr %79, i32 0, i32 7
  %call3.i = call i32 @strscpy(ptr noundef %name.i, ptr noundef nonnull @.str.9, i32 noundef 80) #8
  %82 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pcm.i, align 4
  %substream.i = getelementptr %struct.snd_pcm, ptr %83, i32 0, i32 8, i32 1, i32 4
  %84 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %ss.021.i = load ptr, ptr %substream.i, align 4
  %tobool.not22.i = icmp eq ptr %ss.021.i, null
  br i1 %tobool.not22.i, label %if.end.i.if.end23_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.end23_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %ss.024.i = phi ptr [ %ss.0.i, %for.body.i.for.body.i_crit_edge ], [ %ss.021.i, %if.end.i.for.body.i_crit_edge ]
  %i.023.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %name4.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss.024.i, i32 0, i32 4
  %call6.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name4.i, i32 noundef 32, ptr noundef nonnull @.str.10, i32 noundef %i.023.i) #8
  %next.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss.024.i, i32 0, i32 15
  %inc.i = add i32 %i.023.i, 1
  %85 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %ss.0.i = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %ss.0.i, null
  br i1 %tobool.not.i, label %for.body.i.if.end23_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.if.end23_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.end23:                                         ; preds = %for.body.i.if.end23_crit_edge, %if.end.i.if.end23_crit_edge
  %86 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pcm.i, align 4
  %88 = ptrtoint ptr %pci_dev1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pci_dev1, align 4
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %89, i32 0, i32 44
  %call8.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %87, i32 noundef 2, ptr noundef %dev7.i, i32 noundef 65536, i32 noundef 65536) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #8
  %90 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %card, align 4
  %call24 = call i32 @snd_card_register(ptr noundef %91) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool.not = icmp eq i32 %call24, 0
  br i1 %tobool.not, label %if.end23.cleanup44_crit_edge, label %if.end23.err_cleanup_crit_edge

if.end23.err_cleanup_crit_edge:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_cleanup

if.end23.cleanup44_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup44

err_cleanup:                                      ; preds = %if.end23.err_cleanup_crit_edge, %tw686x_snd_pcm_init.exit.thread, %tw686x_audio_dma_alloc.exit
  %err.0 = phi i32 [ -12, %tw686x_audio_dma_alloc.exit ], [ %call24, %if.end23.err_cleanup_crit_edge ], [ %call1.i, %tw686x_snd_pcm_init.exit.thread ]
  %92 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %type.i, align 4
  %and.i7998 = and i32 %93, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7998)
  %cmp2999.not = icmp eq i32 %and.i7998, 0
  br i1 %cmp2999.not, label %err_cleanup.for.end41_crit_edge, label %for.body30.lr.ph

err_cleanup.for.end41_crit_edge:                  ; preds = %err_cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end41

for.body30.lr.ph:                                 ; preds = %err_cleanup
  %audio_channels31 = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 10
  br label %for.body30

for.body30:                                       ; preds = %for.inc39.for.body30_crit_edge, %for.body30.lr.ph
  %ch.1100 = phi i32 [ 0, %for.body30.lr.ph ], [ %inc40, %for.inc39.for.body30_crit_edge ]
  %94 = ptrtoint ptr %audio_channels31 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %audio_channels31, align 4
  %arrayidx32 = getelementptr %struct.tw686x_audio_channel, ptr %95, i32 %ch.1100
  %96 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx32, align 4
  %tobool34.not = icmp eq ptr %97, null
  br i1 %tobool34.not, label %for.body30.for.inc39_crit_edge, label %if.end36

for.body30.for.inc39_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc39

if.end36:                                         ; preds = %for.body30
  %virt.i = getelementptr %struct.tw686x_audio_channel, ptr %95, i32 %ch.1100, i32 4, i32 0, i32 1
  %98 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %virt.i, align 4
  %tobool.not.i81 = icmp eq ptr %99, null
  br i1 %tobool.not.i81, label %if.end36.for.inc.i_crit_edge, label %if.end.i83

if.end36.for.inc.i_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i83:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.tw686x_audio_channel, ptr %95, i32 %ch.1100, i32 4, i32 0
  %100 = ptrtoint ptr %pci_dev1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pci_dev1, align 4
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %101, i32 0, i32 44
  %size.i82 = getelementptr %struct.tw686x_audio_channel, ptr %95, i32 %ch.1100, i32 4, i32 0, i32 2
  %102 = ptrtoint ptr %size.i82 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %size.i82, align 4
  %104 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx.i, align 4
  call void @dma_free_attrs(ptr noundef %dev1.i, i32 noundef %103, ptr noundef nonnull %99, i32 noundef %105, i32 noundef 0) #8
  %106 = ptrtoint ptr %virt.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %virt.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i83, %if.end36.for.inc.i_crit_edge
  %virt.1.i = getelementptr %struct.tw686x_audio_channel, ptr %95, i32 %ch.1100, i32 4, i32 1, i32 1
  %107 = ptrtoint ptr %virt.1.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %virt.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %108, null
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc39_crit_edge, label %if.end.1.i

for.inc.i.for.inc39_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc39

if.end.1.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.1.i84 = getelementptr %struct.tw686x_audio_channel, ptr %95, i32 %ch.1100, i32 4, i32 1
  %109 = ptrtoint ptr %pci_dev1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pci_dev1, align 4
  %dev1.1.i = getelementptr inbounds %struct.pci_dev, ptr %110, i32 0, i32 44
  %size.1.i85 = getelementptr %struct.tw686x_audio_channel, ptr %95, i32 %ch.1100, i32 4, i32 1, i32 2
  %111 = ptrtoint ptr %size.1.i85 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %size.1.i85, align 4
  %113 = ptrtoint ptr %arrayidx.1.i84 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx.1.i84, align 4
  call void @dma_free_attrs(ptr noundef %dev1.1.i, i32 noundef %112, ptr noundef nonnull %108, i32 noundef %114, i32 noundef 0) #8
  %115 = ptrtoint ptr %virt.1.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %virt.1.i, align 4
  br label %for.inc39

for.inc39:                                        ; preds = %if.end.1.i, %for.inc.i.for.inc39_crit_edge, %for.body30.for.inc39_crit_edge
  %inc40 = add nuw nsw i32 %ch.1100, 1
  %116 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %type.i, align 4
  %and.i79 = and i32 %117, 15
  %cmp29 = icmp ult i32 %inc40, %and.i79
  br i1 %cmp29, label %for.inc39.for.body30_crit_edge, label %for.inc39.for.end41_crit_edge

for.inc39.for.end41_crit_edge:                    ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end41

for.inc39.for.body30_crit_edge:                   ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body30

for.end41:                                        ; preds = %for.inc39.for.end41_crit_edge, %err_cleanup.for.end41_crit_edge
  %118 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %card, align 4
  %call42 = call i32 @snd_card_free(ptr noundef %119) #8
  %120 = ptrtoint ptr %snd_card to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %snd_card, align 4
  br label %cleanup44

cleanup44:                                        ; preds = %for.end41, %if.end23.cleanup44_crit_edge, %entry.cleanup44_crit_edge
  %retval.0 = phi i32 [ %err.0, %for.end41 ], [ %call, %entry.cleanup44_crit_edge ], [ 0, %if.end23.cleanup44_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw686x_pcm_open(ptr noundef %ss) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %audio_channels = getelementptr inbounds %struct.tw686x_dev, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %audio_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %audio_channels, align 4
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 3
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 11
  %6 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime, align 4
  %ss1 = getelementptr %struct.tw686x_audio_channel, ptr %3, i32 %5, i32 1
  %8 = ptrtoint ptr %ss1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ss, ptr %ss1, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 46
  %9 = call ptr @memcpy(ptr %hw, ptr @tw686x_capture_hw, i32 64)
  %call = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %7, i32 noundef 15) #8
  %10 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tw686x_pcm_close(ptr nocapture noundef readonly %ss) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %audio_channels = getelementptr inbounds %struct.tw686x_dev, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %audio_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %audio_channels, align 4
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 3
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %ss1 = getelementptr %struct.tw686x_audio_channel, ptr %3, i32 %5, i32 1
  %6 = ptrtoint ptr %ss1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ss1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw686x_pcm_prepare(ptr nocapture noundef readonly %ss) #0 align 64 {
entry:
  %.compoundliteral = alloca [8 x i16], align 2
  %.compoundliteral99 = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %audio_channels = getelementptr inbounds %struct.tw686x_dev, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %audio_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %audio_channels, align 4
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 3
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 11
  %6 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 21
  %10 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %11, %9
  %div1.i.i = lshr i32 %mul.i.i, 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %audio_rate = getelementptr inbounds %struct.tw686x_dev, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %audio_rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %audio_rate, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 14
  %14 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp6.not = icmp eq i32 %13, %15
  br i1 %cmp6.not, label %lor.lhs.false, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %entry
  %period_size8 = getelementptr inbounds %struct.tw686x_dev, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %period_size8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %period_size8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %div1.i.i)
  %cmp9.not = icmp eq i32 %17, %div1.i.i
  br i1 %cmp9.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.land.lhs.true_crit_edge

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %audio_enabled = getelementptr inbounds %struct.tw686x_dev, ptr %1, i32 0, i32 13
  %18 = ptrtoint ptr %audio_enabled to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %audio_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %err_audio_busy

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %ch = getelementptr %struct.tw686x_audio_channel, ptr %3, i32 %5, i32 2
  %20 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ch, align 4
  %add = add i32 %21, 8
  tail call void @tw686x_disable_channel(ptr noundef %1, i32 noundef %add) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call3) #8
  %22 = ptrtoint ptr %audio_rate to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %audio_rate, align 4
  %24 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp14.not = icmp eq i32 %23, %25
  br i1 %cmp14.not, label %if.end.if.end25_crit_edge, label %if.then16

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %audio_rate to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %audio_rate, align 4
  %27 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rate, align 4
  %.frozen = freeze i32 %28
  %div = udiv i32 125000000, %.frozen
  %shl = shl i32 %div, 16
  %29 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 125000000, %29
  %shl21 = shl i32 %rem.decomposed, 16
  %div23 = udiv i32 %shl21, %28
  %add24 = add i32 %div23, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !32
  tail call void @arm_heavy_mb() #8
  %30 = tail call i32 @llvm.bswap.i32(i32 %add24) #8
  %mmio.i = getelementptr inbounds %struct.tw686x_dev, ptr %1, i32 0, i32 7
  %31 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %32, i32 45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %30) #8, !srcloc !33
  br label %if.end25

if.end25:                                         ; preds = %if.then16, %if.end.if.end25_crit_edge
  %period_size26 = getelementptr inbounds %struct.tw686x_dev, ptr %1, i32 0, i32 12
  %33 = ptrtoint ptr %period_size26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %period_size26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %div1.i.i)
  %cmp27.not = icmp eq i32 %34, %div1.i.i
  br i1 %cmp27.not, label %if.end25.if.end34_crit_edge, label %if.then29

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %period_size26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %div1.i.i, ptr %period_size26, align 4
  %mmio.i190 = getelementptr inbounds %struct.tw686x_dev, ptr %1, i32 0, i32 7
  %36 = ptrtoint ptr %mmio.i190 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio.i190, align 4
  %add.ptr.i191 = getelementptr i32, ptr %37, i32 44
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i191) #8, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !35
  %39 = and i32 %38, -63744
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %shl33 = shl i32 %div1.i.i, 19
  %or = or i32 %40, %shl33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !32
  tail call void @arm_heavy_mb() #8
  %41 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %42 = ptrtoint ptr %mmio.i190 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmio.i190, align 4
  %add.ptr.i193 = getelementptr i32, ptr %43, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i193, i32 %41) #8, !srcloc !33
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %if.end25.if.end34_crit_edge
  %periods = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 17
  %44 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %periods, align 8
  %46 = add i32 %45, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -15, i32 %46)
  %47 = icmp ult i32 %46, -15
  br i1 %47, label %if.end34.cleanup_crit_edge, label %do.body44

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body44:                                        ; preds = %if.end34
  %lock50 = getelementptr %struct.tw686x_audio_channel, ptr %3, i32 %5, i32 8
  %call52 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock50) #8
  %buf_list = getelementptr %struct.tw686x_audio_channel, ptr %3, i32 %5, i32 7
  %48 = ptrtoint ptr %buf_list to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %buf_list, ptr %buf_list, align 4
  %prev.i = getelementptr %struct.tw686x_audio_channel, ptr %3, i32 %5, i32 7, i32 1
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %buf_list, ptr %prev.i, align 4
  %50 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %periods, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp58212.not = icmp eq i32 %51, 0
  br i1 %cmp58212.not, label %do.body44.for.end_crit_edge, label %for.body.lr.ph

do.body44.for.end_crit_edge:                      ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body44
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 51
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 50
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0213 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %52 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dma_addr, align 8
  %mul = mul i32 %i.0213, %div1.i.i
  %add60 = add i32 %53, %mul
  %arrayidx61 = getelementptr %struct.tw686x_audio_channel, ptr %3, i32 %5, i32 6, i32 %i.0213
  %54 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add60, ptr %arrayidx61, align 4
  %55 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dma_area, align 4
  %add.ptr = getelementptr i8, ptr %56, i32 %mul
  %virt = getelementptr %struct.tw686x_audio_channel, ptr %3, i32 %5, i32 6, i32 %i.0213, i32 1
  %57 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %add.ptr, ptr %virt, align 4
  %list = getelementptr %struct.tw686x_audio_channel, ptr %3, i32 %5, i32 6, i32 %i.0213, i32 2
  %58 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %list, ptr %list, align 4
  %prev.i194 = getelementptr %struct.tw686x_audio_channel, ptr %3, i32 %5, i32 6, i32 %i.0213, i32 2, i32 1
  %59 = ptrtoint ptr %prev.i194 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %list, ptr %prev.i194, align 4
  %60 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %61, ptr noundef %buf_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %list, ptr %prev.i, align 4
  %63 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %buf_list, ptr %list, align 4
  %64 = ptrtoint ptr %prev.i194 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev.i194, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %list, ptr %61, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body.list_add_tail.exit_crit_edge
  %inc = add nuw i32 %i.0213, 1
  %66 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %periods, align 8
  %cmp58 = icmp ult i32 %inc, %67
  br i1 %cmp58, label %list_add_tail.exit.for.body_crit_edge, label %list_add_tail.exit.for.end_crit_edge

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %list_add_tail.exit.for.end_crit_edge, %do.body44.for.end_crit_edge
  %68 = ptrtoint ptr %buf_list to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %buf_list, align 4
  %add.ptr73 = getelementptr i8, ptr %69, i32 -8
  %call.i.i196 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %69) #8
  br i1 %call.i.i196, label %if.end.i.i197, label %for.end.__list_del_entry.exit.i_crit_edge

for.end.__list_del_entry.exit.i_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i197:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev.i.i, align 4
  %72 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %69, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev1.i.i.i, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %73, ptr %71, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i197, %for.end.__list_del_entry.exit.i_crit_edge
  %76 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prev.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %69, ptr noundef %77, ptr noundef %buf_list) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %69, ptr %prev.i, align 4
  %79 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %buf_list, ptr %69, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %80 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %77, ptr %prev3.i.i.i, align 4
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %69, ptr %77, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %82 = ptrtoint ptr %buf_list to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %buf_list, align 4
  %add.ptr80 = getelementptr i8, ptr %83, i32 -8
  %call.i.i198 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %83) #8
  br i1 %call.i.i198, label %if.end.i.i201, label %list_move_tail.exit.__list_del_entry.exit.i204_crit_edge

list_move_tail.exit.__list_del_entry.exit.i204_crit_edge: ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i204

if.end.i.i201:                                    ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i199 = getelementptr inbounds %struct.list_head, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %prev.i.i199 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %prev.i.i199, align 4
  %86 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %83, align 4
  %prev1.i.i.i200 = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %prev1.i.i.i200 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %85, ptr %prev1.i.i.i200, align 4
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %87, ptr %85, align 4
  br label %__list_del_entry.exit.i204

__list_del_entry.exit.i204:                       ; preds = %if.end.i.i201, %list_move_tail.exit.__list_del_entry.exit.i204_crit_edge
  %90 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %prev.i, align 4
  %call.i.i.i203 = tail call zeroext i1 @__list_add_valid(ptr noundef %83, ptr noundef %91, ptr noundef %buf_list) #8
  br i1 %call.i.i.i203, label %if.end.i.i.i206, label %__list_del_entry.exit.i204.list_move_tail.exit207_crit_edge

__list_del_entry.exit.i204.list_move_tail.exit207_crit_edge: ; preds = %__list_del_entry.exit.i204
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move_tail.exit207

if.end.i.i.i206:                                  ; preds = %__list_del_entry.exit.i204
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %83, ptr %prev.i, align 4
  %93 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %buf_list, ptr %83, align 4
  %prev3.i.i.i205 = getelementptr inbounds %struct.list_head, ptr %83, i32 0, i32 1
  %94 = ptrtoint ptr %prev3.i.i.i205 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %91, ptr %prev3.i.i.i205, align 4
  %95 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %83, ptr %91, align 4
  br label %list_move_tail.exit207

list_move_tail.exit207:                           ; preds = %if.end.i.i.i206, %__list_del_entry.exit.i204.list_move_tail.exit207_crit_edge
  %curr_bufs = getelementptr %struct.tw686x_audio_channel, ptr %3, i32 %5, i32 3
  %96 = ptrtoint ptr %curr_bufs to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %add.ptr73, ptr %curr_bufs, align 4
  %arrayidx85 = getelementptr %struct.tw686x_audio_channel, ptr %3, i32 %5, i32 3, i32 1
  %97 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %add.ptr80, ptr %arrayidx85, align 4
  %ptr = getelementptr %struct.tw686x_audio_channel, ptr %3, i32 %5, i32 5
  %98 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %ptr, align 4
  %dma_mode = getelementptr inbounds %struct.tw686x_dev, ptr %1, i32 0, i32 5
  %99 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %dma_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp86.not = icmp eq i32 %100, 0
  br i1 %cmp86.not, label %list_move_tail.exit207.if.end112_crit_edge, label %if.then88

list_move_tail.exit207.if.end112_crit_edge:       ; preds = %list_move_tail.exit207
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

if.then88:                                        ; preds = %list_move_tail.exit207
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 24, ptr %.compoundliteral, align 2
  %arrayinit.element = getelementptr inbounds i16, ptr %.compoundliteral, i32 1
  %102 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 26, ptr %arrayinit.element, align 2
  %arrayinit.element89 = getelementptr inbounds i16, ptr %.compoundliteral, i32 2
  %103 = ptrtoint ptr %arrayinit.element89 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 28, ptr %arrayinit.element89, align 2
  %arrayinit.element90 = getelementptr inbounds i16, ptr %.compoundliteral, i32 3
  %104 = ptrtoint ptr %arrayinit.element90 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 30, ptr %arrayinit.element90, align 2
  %arrayinit.element91 = getelementptr inbounds i16, ptr %.compoundliteral, i32 4
  %105 = ptrtoint ptr %arrayinit.element91 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 32, ptr %arrayinit.element91, align 2
  %arrayinit.element92 = getelementptr inbounds i16, ptr %.compoundliteral, i32 5
  %106 = ptrtoint ptr %arrayinit.element92 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 34, ptr %arrayinit.element92, align 2
  %arrayinit.element93 = getelementptr inbounds i16, ptr %.compoundliteral, i32 6
  %107 = ptrtoint ptr %arrayinit.element93 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 36, ptr %arrayinit.element93, align 2
  %arrayinit.element94 = getelementptr inbounds i16, ptr %.compoundliteral, i32 7
  %108 = ptrtoint ptr %arrayinit.element94 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 38, ptr %arrayinit.element94, align 2
  %109 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %ch, align 4
  %arrayidx96 = getelementptr [8 x i16], ptr %.compoundliteral, i32 0, i32 %110
  %111 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %arrayidx96, align 2
  %conv97 = zext i16 %112 to i32
  %113 = ptrtoint ptr %add.ptr73 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %add.ptr73, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !32
  tail call void @arm_heavy_mb() #8
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #8
  %mmio.i208 = getelementptr inbounds %struct.tw686x_dev, ptr %1, i32 0, i32 7
  %116 = ptrtoint ptr %mmio.i208 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mmio.i208, align 4
  %add.ptr.i209 = getelementptr i32, ptr %117, i32 %conv97
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i209, i32 %115) #8, !srcloc !33
  %118 = ptrtoint ptr %.compoundliteral99 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 25, ptr %.compoundliteral99, align 2
  %arrayinit.element101 = getelementptr inbounds i16, ptr %.compoundliteral99, i32 1
  %119 = ptrtoint ptr %arrayinit.element101 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 27, ptr %arrayinit.element101, align 2
  %arrayinit.element102 = getelementptr inbounds i16, ptr %.compoundliteral99, i32 2
  %120 = ptrtoint ptr %arrayinit.element102 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 29, ptr %arrayinit.element102, align 2
  %arrayinit.element103 = getelementptr inbounds i16, ptr %.compoundliteral99, i32 3
  %121 = ptrtoint ptr %arrayinit.element103 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 31, ptr %arrayinit.element103, align 2
  %arrayinit.element104 = getelementptr inbounds i16, ptr %.compoundliteral99, i32 4
  %122 = ptrtoint ptr %arrayinit.element104 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 33, ptr %arrayinit.element104, align 2
  %arrayinit.element105 = getelementptr inbounds i16, ptr %.compoundliteral99, i32 5
  %123 = ptrtoint ptr %arrayinit.element105 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 35, ptr %arrayinit.element105, align 2
  %arrayinit.element106 = getelementptr inbounds i16, ptr %.compoundliteral99, i32 6
  %124 = ptrtoint ptr %arrayinit.element106 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 37, ptr %arrayinit.element106, align 2
  %arrayinit.element107 = getelementptr inbounds i16, ptr %.compoundliteral99, i32 7
  %125 = ptrtoint ptr %arrayinit.element107 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 39, ptr %arrayinit.element107, align 2
  %126 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %ch, align 4
  %arrayidx109 = getelementptr [8 x i16], ptr %.compoundliteral99, i32 0, i32 %127
  %128 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %arrayidx109, align 2
  %conv110 = zext i16 %129 to i32
  %130 = ptrtoint ptr %add.ptr80 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %add.ptr80, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !32
  tail call void @arm_heavy_mb() #8
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #8
  %133 = ptrtoint ptr %mmio.i208 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %mmio.i208, align 4
  %add.ptr.i211 = getelementptr i32, ptr %134, i32 %conv110
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i211, i32 %132) #8, !srcloc !33
  br label %if.end112

if.end112:                                        ; preds = %if.then88, %list_move_tail.exit207.if.end112_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock50, i32 noundef %call52) #8
  br label %cleanup

err_audio_busy:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call3) #8
  br label %cleanup

cleanup:                                          ; preds = %err_audio_busy, %if.end112, %if.end34.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %err_audio_busy ], [ 0, %if.end112 ], [ -22, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw686x_pcm_trigger(ptr nocapture noundef readonly %ss, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %audio_channels = getelementptr inbounds %struct.tw686x_dev, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %audio_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %audio_channels, align 4
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 3
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %do.body15
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %curr_bufs = getelementptr %struct.tw686x_audio_channel, ptr %3, i32 %5, i32 3
  %7 = ptrtoint ptr %curr_bufs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %curr_bufs, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %land.lhs.true

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %arrayidx3 = getelementptr %struct.tw686x_audio_channel, ptr %3, i32 %5, i32 3, i32 1
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx3, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %land.lhs.true.sw.epilog_crit_edge, label %do.body5

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %audio_enabled = getelementptr inbounds %struct.tw686x_dev, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %audio_enabled to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %audio_enabled, align 4
  %ch = getelementptr %struct.tw686x_audio_channel, ptr %3, i32 %5, i32 2
  %12 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ch, align 4
  %add = add i32 %13, 8
  tail call void @tw686x_enable_channel(ptr noundef %1, i32 noundef %add) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call6) #8
  %dma_delay_timer = getelementptr inbounds %struct.tw686x_dev, ptr %1, i32 0, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add11 = add i32 %14, 10
  %call12 = tail call i32 @mod_timer(ptr noundef %dma_delay_timer, i32 noundef %add11) #8
  br label %sw.epilog

do.body15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %audio_enabled28 = getelementptr inbounds %struct.tw686x_dev, ptr %1, i32 0, i32 13
  %15 = ptrtoint ptr %audio_enabled28 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %audio_enabled28, align 4
  %ch29 = getelementptr %struct.tw686x_audio_channel, ptr %3, i32 %5, i32 2
  %16 = ptrtoint ptr %ch29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ch29, align 4
  %add30 = add i32 %17, 8
  tail call void @tw686x_disable_channel(ptr noundef %1, i32 noundef %add30) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call23) #8
  %lock39 = getelementptr %struct.tw686x_audio_channel, ptr %3, i32 %5, i32 8
  %call41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock39) #8
  %curr_bufs46 = getelementptr %struct.tw686x_audio_channel, ptr %3, i32 %5, i32 3
  %18 = ptrtoint ptr %curr_bufs46 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %curr_bufs46, align 4
  %arrayidx49 = getelementptr %struct.tw686x_audio_channel, ptr %3, i32 %5, i32 3, i32 1
  %19 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx49, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock39, i32 noundef %call41) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body15, %do.body5, %land.lhs.true.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ 0, %do.body15 ], [ 0, %do.body5 ], [ -5, %land.lhs.true.sw.epilog_crit_edge ], [ -5, %sw.bb.sw.epilog_crit_edge ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tw686x_pcm_pointer(ptr nocapture noundef readonly %ss) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %audio_channels = getelementptr inbounds %struct.tw686x_dev, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %audio_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %audio_channels, align 4
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 3
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 11
  %6 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime, align 4
  %ptr = getelementptr %struct.tw686x_audio_channel, ptr %3, i32 %5, i32 5
  %8 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ptr, align 4
  %mul.i = shl i32 %9, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 21
  %10 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %11
  ret i32 %div.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tw686x_disable_channel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tw686x_enable_channel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !12, !13, !14, !15, !17, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/tw686x/tw686x-audio.c", i32 378, i32 24}
!2 = !{ptr @tw686x_audio_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/tw686x/tw686x-audio.c", i32 387, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/tw686x/tw686x-audio.c", i32 331, i32 4}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !6, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @tw686x_audio_dma_alloc._entry, !6, !"_entry", i1 false, i1 false}
!12 = !{ptr @tw686x_audio_dma_alloc._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !6, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !6, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/tw686x/tw686x-audio.c", i32 281, i32 21}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/tw686x/tw686x-audio.c", i32 285, i32 40}
!19 = !{ptr @tw686x_pcm_ops, !20, !"tw686x_pcm_ops", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/tw686x/tw686x-audio.c", i32 258, i32 33}
!21 = !{ptr @tw686x_capture_hw, !22, !"tw686x_capture_hw", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/tw686x/tw686x-audio.c", i32 86, i32 38}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i64 2156901459}
!33 = !{i64 4988752}
!34 = !{i64 4989170}
!35 = !{i64 2156901076}
!36 = !{!"auto-init"}
