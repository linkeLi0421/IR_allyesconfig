; ModuleID = '/llk/IR_all_yes/sound/virtio/virtio_pcm_ops.c_pt.bc'
source_filename = "../sound/virtio/virtio_pcm_ops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.virtsnd_a2v_format = type { i32, i32 }
%struct.virtsnd_a2v_rate = type { i32, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.virtio_pcm = type { %struct.list_head, i32, ptr, [2 x %struct.virtio_pcm_stream] }
%struct.virtio_pcm_stream = type { ptr, i32, ptr, i32 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.virtio_pcm_substream = type { ptr, i32, i32, i32, i32, ptr, %struct.snd_pcm_hardware, %struct.work_struct, %struct.spinlock, i32, i32, i8, i8, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.virtio_device_id = type { i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.virtio_snd = type { ptr, [4 x %struct.virtio_snd_queue], ptr, %struct.list_head, ptr, %struct.list_head, ptr, i32, ptr, i32, ptr, i32 }
%struct.virtio_snd_queue = type { %struct.spinlock, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.virtio_snd_pcm_set_params = type { %struct.virtio_snd_pcm_hdr, i32, i32, i32, i8, i8, i8, i8 }
%struct.virtio_snd_pcm_hdr = type { %struct.virtio_snd_hdr, i32 }
%struct.virtio_snd_hdr = type { i32 }

@virtsnd_pcm_ops = dso_local constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @virtsnd_pcm_open, ptr @virtsnd_pcm_close, ptr @snd_pcm_lib_ioctl, ptr @virtsnd_pcm_hw_params, ptr @virtsnd_pcm_hw_free, ptr @virtsnd_pcm_prepare, ptr @virtsnd_pcm_trigger, ptr @virtsnd_pcm_sync_stop, ptr @virtsnd_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@virtsnd_pcm_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 223, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"SID %u: invalid I/O queue state\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"virtsnd_pcm_hw_params\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/virtio/virtio_pcm_ops.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@virtsnd_pcm_hw_params._entry_ptr = internal global ptr @virtsnd_pcm_hw_params._entry, section ".printk_index", align 4
@g_a2v_format_map = internal constant { [25 x %struct.virtsnd_a2v_format], [56 x i8] } { [25 x %struct.virtsnd_a2v_format] [%struct.virtsnd_a2v_format { i32 22, i32 0 }, %struct.virtsnd_a2v_format { i32 20, i32 1 }, %struct.virtsnd_a2v_format { i32 21, i32 2 }, %struct.virtsnd_a2v_format { i32 0, i32 3 }, %struct.virtsnd_a2v_format { i32 1, i32 4 }, %struct.virtsnd_a2v_format { i32 2, i32 5 }, %struct.virtsnd_a2v_format { i32 4, i32 6 }, %struct.virtsnd_a2v_format { i32 40, i32 7 }, %struct.virtsnd_a2v_format { i32 42, i32 8 }, %struct.virtsnd_a2v_format { i32 36, i32 9 }, %struct.virtsnd_a2v_format { i32 38, i32 10 }, %struct.virtsnd_a2v_format { i32 32, i32 11 }, %struct.virtsnd_a2v_format { i32 34, i32 12 }, %struct.virtsnd_a2v_format { i32 25, i32 13 }, %struct.virtsnd_a2v_format { i32 27, i32 14 }, %struct.virtsnd_a2v_format { i32 6, i32 15 }, %struct.virtsnd_a2v_format { i32 8, i32 16 }, %struct.virtsnd_a2v_format { i32 10, i32 17 }, %struct.virtsnd_a2v_format { i32 12, i32 18 }, %struct.virtsnd_a2v_format { i32 14, i32 19 }, %struct.virtsnd_a2v_format { i32 16, i32 20 }, %struct.virtsnd_a2v_format { i32 48, i32 21 }, %struct.virtsnd_a2v_format { i32 49, i32 22 }, %struct.virtsnd_a2v_format { i32 50, i32 23 }, %struct.virtsnd_a2v_format { i32 18, i32 24 }], [56 x i8] zeroinitializer }, align 32
@g_a2v_rate_map = internal constant { [13 x %struct.virtsnd_a2v_rate], [56 x i8] } { [13 x %struct.virtsnd_a2v_rate] [%struct.virtsnd_a2v_rate { i32 5512, i32 0 }, %struct.virtsnd_a2v_rate { i32 8000, i32 1 }, %struct.virtsnd_a2v_rate { i32 11025, i32 2 }, %struct.virtsnd_a2v_rate { i32 16000, i32 3 }, %struct.virtsnd_a2v_rate { i32 22050, i32 4 }, %struct.virtsnd_a2v_rate { i32 32000, i32 5 }, %struct.virtsnd_a2v_rate { i32 44100, i32 6 }, %struct.virtsnd_a2v_rate { i32 48000, i32 7 }, %struct.virtsnd_a2v_rate { i32 64000, i32 8 }, %struct.virtsnd_a2v_rate { i32 88200, i32 9 }, %struct.virtsnd_a2v_rate { i32 96000, i32 10 }, %struct.virtsnd_a2v_rate { i32 176400, i32 11 }, %struct.virtsnd_a2v_rate { i32 192000, i32 12 }], [56 x i8] zeroinitializer }, align 32
@virtsnd_pcm_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 279, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"virtsnd_pcm_prepare\00", [44 x i8] zeroinitializer }, align 32
@virtsnd_pcm_prepare._entry_ptr = internal global ptr @virtsnd_pcm_prepare._entry, section ".printk_index", align 4
@virtsnd_msg_timeout_ms = external dso_local local_unnamed_addr global i32, align 4
@virtsnd_pcm_sync_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 420, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SID %u: failed to flush I/O queue\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"virtsnd_pcm_sync_stop\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@virtsnd_pcm_sync_stop._entry_ptr = internal global ptr @virtsnd_pcm_sync_stop._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.9 = internal global [27 x i64] [i64 25, i64 32, i64 0, i64 1, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14, i64 16, i64 18, i64 20, i64 21, i64 22, i64 25, i64 27, i64 32, i64 34, i64 36, i64 38, i64 40, i64 42, i64 48, i64 49, i64 50]
@__sancov_gen_cov_switch_values.10 = internal global [15 x i64] [i64 13, i64 32, i64 5512, i64 8000, i64 11025, i64 16000, i64 22050, i64 32000, i64 44100, i64 48000, i64 64000, i64 88200, i64 96000, i64 176400, i64 192000]
@___asan_gen_.11 = private unnamed_addr constant [16 x i8] c"virtsnd_pcm_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 454, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 222, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"g_a2v_format_map\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 45, i32 40 }
@___asan_gen_.35 = private unnamed_addr constant [15 x i8] c"g_a2v_rate_map\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 80, i32 38 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 278, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [33 x i8] c"../sound/virtio/virtio_pcm_ops.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 419, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @virtsnd_pcm_hw_params._entry, ptr @virtsnd_pcm_hw_params._entry_ptr, ptr @virtsnd_pcm_prepare._entry, ptr @virtsnd_pcm_prepare._entry_ptr, ptr @virtsnd_pcm_sync_stop._entry, ptr @virtsnd_pcm_sync_stop._entry_ptr, ptr @virtsnd_pcm_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @g_a2v_format_map, ptr @g_a2v_rate_map, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtsnd_pcm_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtsnd_pcm_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_a2v_format_map to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_a2v_rate_map to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtsnd_pcm_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtsnd_pcm_sync_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtsnd_pcm_open(ptr nocapture noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %2 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stream, align 4
  %arrayidx = getelementptr %struct.virtio_pcm, ptr %1, i32 0, i32 3, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %6 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number, align 4
  %arrayidx1 = getelementptr ptr, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx1, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %10 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 46
  %hw2 = getelementptr inbounds %struct.virtio_pcm_substream, ptr %9, i32 0, i32 6
  %12 = call ptr @memcpy(ptr %hw, ptr %hw2, i32 64)
  store ptr %9, ptr %private_data, align 4
  %13 = load ptr, ptr %runtime, align 4
  %call = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %13, i32 noundef 15) #6
  %call5 = tail call i32 @virtsnd_pcm_msg_pending_num(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool = icmp ne i32 %call5, 0
  %stopped = getelementptr inbounds %struct.virtio_pcm_substream, ptr %9, i32 0, i32 13
  %frombool = zext i1 %tobool to i8
  %14 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool, ptr %stopped, align 2
  %suspended = getelementptr inbounds %struct.virtio_pcm_substream, ptr %9, i32 0, i32 14
  %15 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %suspended, align 1
  %call7 = tail call i32 @virtsnd_pcm_sync_stop(ptr noundef %substream)
  ret i32 %call7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @virtsnd_pcm_close(ptr nocapture noundef readnone %substream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_lib_ioctl(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtsnd_pcm_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %hw_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call i32 @virtsnd_pcm_msg_pending_num(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.virtio_device, ptr %5, i32 0, i32 6
  %sid = getelementptr inbounds %struct.virtio_pcm_substream, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %7) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 10
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i28 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 6
  %10 = ptrtoint ptr %arrayidx.i.i28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i28, align 4
  %arrayidx.i.i29 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %arrayidx.i.i29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i29, align 4
  %arrayidx.i.i30 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx.i.i30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %if.end.if.then.i.i_crit_edge

if.end.if.then.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %if.end.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %if.end.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %15, %if.end.if.then.i.i_crit_edge ], [ %18, %for.inc.i.i.if.then.i.i_crit_edge ]
  %16 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #6, !range !33
  %add.i.i = or i32 %16, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %if.end
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 1, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.1.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %arrayidx.i.i31 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %arrayidx.i.i31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i31, align 4
  %call7 = tail call fastcc i32 @virtsnd_pcm_dev_set_params(ptr noundef %1, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %retval.0.i.i, i32 noundef %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %params_format.exit.cleanup_crit_edge

params_format.exit.cleanup_crit_edge:             ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @virtsnd_pcm_msg_free(ptr noundef %1) #6
  %arrayidx.i.i32 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 7
  %21 = ptrtoint ptr %arrayidx.i.i32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i32, align 4
  %23 = ptrtoint ptr %arrayidx.i.i28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i28, align 4
  %call13 = tail call i32 @virtsnd_pcm_msg_alloc(ptr noundef %1, i32 noundef %22, i32 noundef %24) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %params_format.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -77, %do.end ], [ %call13, %if.end10 ], [ %call7, %params_format.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtsnd_pcm_hw_free(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @virtsnd_pcm_msg_pending_num(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @virtsnd_pcm_msg_free(ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtsnd_pcm_prepare(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %suspended = getelementptr inbounds %struct.virtio_pcm_substream, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %suspended, align 1, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i32 @virtsnd_pcm_msg_pending_num(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.virtio_device, ptr %5, i32 0, i32 6
  %sid = getelementptr inbounds %struct.virtio_pcm_substream, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %9) #9
  br label %cleanup24

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %10 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime1.i, align 4
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buffer_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 21
  %14 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %15, %13
  %div1.i.i = lshr i32 %mul.i.i, 3
  %buffer_bytes = getelementptr inbounds %struct.virtio_pcm_substream, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %buffer_bytes to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div1.i.i, ptr %buffer_bytes, align 8
  %hw_ptr = getelementptr inbounds %struct.virtio_pcm_substream, ptr %1, i32 0, i32 10
  %17 = ptrtoint ptr %hw_ptr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %hw_ptr, align 4
  %msg_last_enqueued = getelementptr inbounds %struct.virtio_pcm_substream, ptr %1, i32 0, i32 17
  %18 = ptrtoint ptr %msg_last_enqueued to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %msg_last_enqueued, align 4
  br label %if.end16

if.else:                                          ; preds = %entry
  %runtime5 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %19 = ptrtoint ptr %runtime5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %runtime5, align 4
  %buffer_size.i48 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %20, i32 0, i32 18
  %21 = ptrtoint ptr %buffer_size.i48 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buffer_size.i48, align 4
  %frame_bits.i.i49 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %20, i32 0, i32 21
  %23 = ptrtoint ptr %frame_bits.i.i49 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %frame_bits.i.i49, align 8
  %mul.i.i50 = mul i32 %24, %22
  %div1.i.i51 = lshr i32 %mul.i.i50, 3
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %20, i32 0, i32 16
  %25 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %period_size.i, align 4
  %mul.i.i54 = mul i32 %26, %24
  %div1.i.i55 = lshr i32 %mul.i.i54, 3
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %20, i32 0, i32 15
  %27 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %channels, align 8
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %20, i32 0, i32 12
  %29 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %format, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %20, i32 0, i32 14
  %31 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rate, align 4
  %call9 = tail call fastcc i32 @virtsnd_pcm_dev_set_params(ptr noundef %1, i32 noundef %div1.i.i51, i32 noundef %div1.i.i55, i32 noundef %28, i32 noundef %30, i32 noundef %32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.else.if.end16_crit_edge, label %if.else.cleanup24_crit_edge

if.else.cleanup24_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup24

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end16:                                         ; preds = %if.else.if.end16_crit_edge, %if.end
  %xfer_xrun = getelementptr inbounds %struct.virtio_pcm_substream, ptr %1, i32 0, i32 12
  %33 = ptrtoint ptr %xfer_xrun to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %xfer_xrun, align 1
  %34 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %suspended, align 1
  %msg_count = getelementptr inbounds %struct.virtio_pcm_substream, ptr %1, i32 0, i32 18
  %35 = ptrtoint ptr %msg_count to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %msg_count, align 8
  %call18 = tail call ptr @virtsnd_pcm_ctl_msg_alloc(ptr noundef %1, i32 noundef 258, i32 noundef 3264) #6
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end16.cleanup24_crit_edge, label %if.end21

if.end16.cleanup24_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup24

if.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @virtsnd_ctl_msg_send(ptr noundef %37, ptr noundef nonnull %call18, ptr noundef null, ptr noundef null, i1 noundef zeroext false) #6
  br label %cleanup24

cleanup24:                                        ; preds = %if.end21, %if.end16.cleanup24_crit_edge, %if.else.cleanup24_crit_edge, %do.end
  %retval.1 = phi i32 [ %call.i, %if.end21 ], [ %call9, %if.else.cleanup24_crit_edge ], [ -77, %do.end ], [ -12, %if.end16.cleanup24_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtsnd_pcm_trigger(ptr nocapture noundef readonly %substream, i32 noundef %command) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = zext i32 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %command, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge89
    i32 5, label %sw.bb35
    i32 0, label %entry.sw.bb36_crit_edge
    i32 3, label %entry.do.body39_crit_edge
  ]

entry.do.body39_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body39

entry.sw.bb36_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb36

entry.sw.bb_crit_edge89:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge89
  %direction.i = getelementptr inbounds %struct.virtio_pcm_substream, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp eq i32 %6, 0
  %arrayidx.i.i = getelementptr %struct.virtio_snd, ptr %3, i32 0, i32 1, i32 2
  %arrayidx.i5.i = getelementptr %struct.virtio_snd, ptr %3, i32 0, i32 1, i32 3
  %retval.0.i = select i1 %cmp.i, ptr %arrayidx.i.i, ptr %arrayidx.i5.i
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %retval.0.i) #6
  %lock7 = getelementptr inbounds %struct.virtio_pcm_substream, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock7) #6
  %call8 = tail call i32 @virtsnd_pcm_msg_send(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then, label %if.then12.critedge

if.then:                                          ; preds = %sw.bb
  %xfer_enabled = getelementptr inbounds %struct.virtio_pcm_substream, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %xfer_enabled to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %xfer_enabled, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock7) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %retval.0.i, i32 noundef %call4) #6
  %call14 = tail call ptr @virtsnd_pcm_ctl_msg_alloc(ptr noundef %1, i32 noundef 260, i32 noundef 3264) #6
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.body18, label %if.end33

if.then12.critedge:                               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef %lock7) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %retval.0.i, i32 noundef %call4) #6
  br label %cleanup

do.body18:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock7) #6
  %8 = ptrtoint ptr %xfer_enabled to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %xfer_enabled, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock7, i32 noundef %call26) #6
  br label %cleanup

if.end33:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @virtsnd_ctl_msg_send(ptr noundef %3, ptr noundef nonnull %call14, ptr noundef null, ptr noundef null, i1 noundef zeroext false) #6
  br label %cleanup

sw.bb35:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %suspended = getelementptr inbounds %struct.virtio_pcm_substream, ptr %1, i32 0, i32 14
  %9 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %suspended, align 1
  br label %sw.bb36

sw.bb36:                                          ; preds = %sw.bb35, %entry.sw.bb36_crit_edge
  %stopped = getelementptr inbounds %struct.virtio_pcm_substream, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %stopped, align 2
  br label %do.body39

do.body39:                                        ; preds = %sw.bb36, %entry.do.body39_crit_edge
  %lock45 = getelementptr inbounds %struct.virtio_pcm_substream, ptr %1, i32 0, i32 8
  %call47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock45) #6
  %xfer_enabled52 = getelementptr inbounds %struct.virtio_pcm_substream, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %xfer_enabled52 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %xfer_enabled52, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock45, i32 noundef %call47) #6
  %call54 = tail call ptr @virtsnd_pcm_ctl_msg_alloc(ptr noundef %1, i32 noundef 261, i32 noundef 3264) #6
  %tobool55.not = icmp eq ptr %call54, null
  br i1 %tobool55.not, label %do.body39.cleanup_crit_edge, label %if.end57

do.body39.cleanup_crit_edge:                      ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end57:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  %call.i88 = tail call i32 @virtsnd_ctl_msg_send(ptr noundef %3, ptr noundef nonnull %call54, ptr noundef null, ptr noundef null, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %do.body39.cleanup_crit_edge, %if.end33, %do.body18, %if.then12.critedge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i88, %if.end57 ], [ %call8, %if.then12.critedge ], [ %call.i, %if.end33 ], [ -12, %do.body18 ], [ -12, %do.body39.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtsnd_pcm_sync_stop(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @virtsnd_msg_timeout_ms to i32))
  %4 = load i32, ptr @virtsnd_msg_timeout_ms, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %4) #6
  %elapsed_period = getelementptr inbounds %struct.virtio_pcm_substream, ptr %1, i32 0, i32 7
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %elapsed_period) #6
  %stopped = getelementptr inbounds %struct.virtio_pcm_substream, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %stopped, align 2, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.cleanup62_crit_edge, label %if.end

entry.cleanup62_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup62

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @virtsnd_pcm_ctl_msg_alloc(ptr noundef %1, i32 noundef 259, i32 noundef 3264) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup62_crit_edge, label %if.end6

if.end.cleanup62_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup62

if.end6:                                          ; preds = %if.end
  %call.i = tail call i32 @virtsnd_ctl_msg_send(ptr noundef %3, ptr noundef nonnull %call3, ptr noundef null, ptr noundef null, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup62_crit_edge

if.end6.cleanup62_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup62

if.end10:                                         ; preds = %if.end6
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 417) #6
  %call14 = tail call i32 @virtsnd_pcm_msg_pending_num(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool17.not = icmp eq i32 %call2.i, 0
  %7 = select i1 %tobool15.not, i1 %tobool17.not, i1 false
  %__ret.0 = select i1 %7, i32 1, i32 %call2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool21.not = icmp eq i32 %__ret.0, 0
  %8 = select i1 %tobool15.not, i1 true, i1 %tobool21.not
  br i1 %8, label %if.end10.if.end53_crit_edge, label %if.then24

if.end10.if.end53_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then24:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %9 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %msg_empty = getelementptr inbounds %struct.virtio_pcm_substream, ptr %1, i32 0, i32 19
  %call26102 = call i32 @prepare_to_wait_event(ptr noundef %msg_empty, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  %call28103 = call i32 @virtsnd_pcm_msg_pending_num(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28103)
  %tobool29.not104 = icmp eq i32 %call28103, 0
  %10 = select i1 %tobool29.not104, i1 %tobool17.not, i1 false
  %__ret25.1106 = select i1 %10, i32 1, i32 %call2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret25.1106)
  %tobool40.not107 = icmp eq i32 %__ret25.1106, 0
  %11 = select i1 %tobool29.not104, i1 true, i1 %tobool40.not107
  br i1 %11, label %if.then24.for.end_crit_edge, label %if.then24.if.end46_crit_edge

if.then24.if.end46_crit_edge:                     ; preds = %if.then24
  br label %if.end46

if.then24.for.end_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end46:                                         ; preds = %cleanup.if.end46_crit_edge, %if.then24.if.end46_crit_edge
  %__ret25.1109 = phi i32 [ %__ret25.1, %cleanup.if.end46_crit_edge ], [ %__ret25.1106, %if.then24.if.end46_crit_edge ]
  %call26108 = phi i32 [ %call26, %cleanup.if.end46_crit_edge ], [ %call26102, %if.then24.if.end46_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26108)
  %tobool47.not = icmp eq i32 %call26108, 0
  br i1 %tobool47.not, label %cleanup, label %if.end46.__out_crit_edge

if.end46.__out_crit_edge:                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %__out

cleanup:                                          ; preds = %if.end46
  %call50 = call i32 @schedule_timeout(i32 noundef %__ret25.1109) #6
  %call26 = call i32 @prepare_to_wait_event(ptr noundef %msg_empty, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  %call28 = call i32 @virtsnd_pcm_msg_pending_num(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool34.not = icmp eq i32 %call50, 0
  %12 = select i1 %tobool29.not, i1 %tobool34.not, i1 false
  %__ret25.1 = select i1 %12, i32 1, i32 %call50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret25.1)
  %tobool40.not = icmp eq i32 %__ret25.1, 0
  %13 = select i1 %tobool29.not, i1 true, i1 %tobool40.not
  br i1 %13, label %cleanup.for.end_crit_edge, label %cleanup.if.end46_crit_edge

cleanup.if.end46_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then24.for.end_crit_edge
  %__ret25.1.lcssa = phi i32 [ %__ret25.1106, %if.then24.for.end_crit_edge ], [ %__ret25.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %msg_empty, ptr noundef nonnull %__wq_entry) #6
  br label %__out

__out:                                            ; preds = %for.end, %if.end46.__out_crit_edge
  %__ret25.294 = phi i32 [ %__ret25.1.lcssa, %for.end ], [ %call26108, %if.end46.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %if.end53

if.end53:                                         ; preds = %__out, %if.end10.if.end53_crit_edge
  %__ret.1 = phi i32 [ %__ret.0, %if.end10.if.end53_crit_edge ], [ %__ret25.294, %__out ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret.1)
  %cmp = icmp slt i32 %__ret.1, 1
  br i1 %cmp, label %do.end58, label %if.end60

do.end58:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.virtio_device, ptr %15, i32 0, i32 6
  %sid = getelementptr inbounds %struct.virtio_pcm_substream, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sid, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %tobool59.not = icmp eq i32 %__ret.1, 0
  %spec.select = select i1 %tobool59.not, i32 -110, i32 %__ret.1
  br label %cleanup62

if.end60:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %stopped, align 2
  br label %cleanup62

cleanup62:                                        ; preds = %if.end60, %do.end58, %if.end6.cleanup62_crit_edge, %if.end.cleanup62_crit_edge, %entry.cleanup62_crit_edge
  %retval.0 = phi i32 [ %spec.select, %do.end58 ], [ 0, %if.end60 ], [ 0, %entry.cleanup62_crit_edge ], [ -12, %if.end.cleanup62_crit_edge ], [ %call.i, %if.end6.cleanup62_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtsnd_pcm_pointer(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.virtio_pcm_substream, ptr %1, i32 0, i32 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %xfer_xrun = getelementptr inbounds %struct.virtio_pcm_substream, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %xfer_xrun to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %xfer_xrun, align 1, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %4 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime, align 4
  %hw_ptr5 = getelementptr inbounds %struct.virtio_pcm_substream, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %hw_ptr5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_ptr5, align 4
  %mul.i = shl i32 %7, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 21
  %8 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hw_ptr.0 = phi i32 [ -1, %entry.if.end_crit_edge ], [ %div.i, %if.then ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  ret i32 %hw_ptr.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtsnd_pcm_msg_pending_num(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @virtsnd_pcm_dev_set_params(ptr noundef %vss, i32 noundef %buffer_bytes, i32 noundef %period_bytes, i32 noundef %channels, i32 noundef %format, i32 noundef %rate) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %format to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %format, label %entry.for.end_crit_edge [
    i32 22, label %entry.if.then_crit_edge
    i32 20, label %if.then.fold.split
    i32 21, label %if.then.fold.split76
    i32 0, label %if.then.fold.split77
    i32 1, label %if.then.fold.split78
    i32 2, label %if.then.fold.split79
    i32 4, label %if.then.fold.split80
    i32 40, label %if.then.fold.split81
    i32 42, label %if.then.fold.split82
    i32 36, label %if.then.fold.split83
    i32 38, label %if.then.fold.split84
    i32 32, label %if.then.fold.split85
    i32 34, label %if.then.fold.split86
    i32 25, label %if.then.fold.split87
    i32 27, label %if.then.fold.split88
    i32 6, label %if.then.fold.split89
    i32 8, label %if.then.fold.split90
    i32 10, label %if.then.fold.split91
    i32 12, label %if.then.fold.split92
    i32 14, label %if.then.fold.split93
    i32 16, label %if.then.fold.split94
    i32 48, label %if.then.fold.split95
    i32 49, label %if.then.fold.split96
    i32 50, label %if.then.fold.split97
    i32 18, label %if.then.fold.split98
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then.fold.split76:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then.fold.split77:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then.fold.split78:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then.fold.split79:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then.fold.split80:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then.fold.split81:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then.fold.split82:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then.fold.split83:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then.fold.split84:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then.fold.split85:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then.fold.split86:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then.fold.split87:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then.fold.split88:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then.fold.split89:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then.fold.split90:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then.fold.split91:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then.fold.split92:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then.fold.split93:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then.fold.split94:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then.fold.split95:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then.fold.split96:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then.fold.split97:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then.fold.split98:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %if.then.fold.split98, %if.then.fold.split97, %if.then.fold.split96, %if.then.fold.split95, %if.then.fold.split94, %if.then.fold.split93, %if.then.fold.split92, %if.then.fold.split91, %if.then.fold.split90, %if.then.fold.split89, %if.then.fold.split88, %if.then.fold.split87, %if.then.fold.split86, %if.then.fold.split85, %if.then.fold.split84, %if.then.fold.split83, %if.then.fold.split82, %if.then.fold.split81, %if.then.fold.split80, %if.then.fold.split79, %if.then.fold.split78, %if.then.fold.split77, %if.then.fold.split76, %if.then.fold.split, %entry.if.then_crit_edge
  %i.072.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %if.then.fold.split ], [ 2, %if.then.fold.split76 ], [ 3, %if.then.fold.split77 ], [ 4, %if.then.fold.split78 ], [ 5, %if.then.fold.split79 ], [ 6, %if.then.fold.split80 ], [ 7, %if.then.fold.split81 ], [ 8, %if.then.fold.split82 ], [ 9, %if.then.fold.split83 ], [ 10, %if.then.fold.split84 ], [ 11, %if.then.fold.split85 ], [ 12, %if.then.fold.split86 ], [ 13, %if.then.fold.split87 ], [ 14, %if.then.fold.split88 ], [ 15, %if.then.fold.split89 ], [ 16, %if.then.fold.split90 ], [ 17, %if.then.fold.split91 ], [ 18, %if.then.fold.split92 ], [ 19, %if.then.fold.split93 ], [ 20, %if.then.fold.split94 ], [ 21, %if.then.fold.split95 ], [ 22, %if.then.fold.split96 ], [ 23, %if.then.fold.split97 ], [ 24, %if.then.fold.split98 ]
  %vio_bit = getelementptr [25 x %struct.virtsnd_a2v_format], ptr @g_a2v_format_map, i32 0, i32 %i.072.lcssa, i32 1
  %1 = ptrtoint ptr %vio_bit to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vio_bit, align 4
  br label %for.end

for.end:                                          ; preds = %if.then, %entry.for.end_crit_edge
  %vformat.0 = phi i32 [ %2, %if.then ], [ -1, %entry.for.end_crit_edge ]
  %3 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %rate, label %for.end.cleanup_crit_edge [
    i32 5512, label %for.end.for.end15_crit_edge
    i32 8000, label %for.end15.fold.split
    i32 11025, label %for.end15.fold.split99
    i32 16000, label %for.end15.fold.split100
    i32 22050, label %for.end15.fold.split101
    i32 32000, label %for.end15.fold.split102
    i32 44100, label %for.end15.fold.split103
    i32 48000, label %for.end15.fold.split104
    i32 64000, label %for.end15.fold.split105
    i32 88200, label %for.end15.fold.split106
    i32 96000, label %for.end15.fold.split107
    i32 176400, label %for.end15.fold.split108
    i32 192000, label %for.end15.fold.split109
  ]

for.end.for.end15_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end15

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end15.fold.split:                             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end15

for.end15.fold.split99:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end15

for.end15.fold.split100:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end15

for.end15.fold.split101:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end15

for.end15.fold.split102:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end15

for.end15.fold.split103:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end15

for.end15.fold.split104:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end15

for.end15.fold.split105:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end15

for.end15.fold.split106:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end15

for.end15.fold.split107:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end15

for.end15.fold.split108:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end15

for.end15.fold.split109:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end15

for.end15:                                        ; preds = %for.end15.fold.split109, %for.end15.fold.split108, %for.end15.fold.split107, %for.end15.fold.split106, %for.end15.fold.split105, %for.end15.fold.split104, %for.end15.fold.split103, %for.end15.fold.split102, %for.end15.fold.split101, %for.end15.fold.split100, %for.end15.fold.split99, %for.end15.fold.split, %for.end.for.end15_crit_edge
  %i.173.lcssa = phi i32 [ 0, %for.end.for.end15_crit_edge ], [ 1, %for.end15.fold.split ], [ 2, %for.end15.fold.split99 ], [ 3, %for.end15.fold.split100 ], [ 4, %for.end15.fold.split101 ], [ 5, %for.end15.fold.split102 ], [ 6, %for.end15.fold.split103 ], [ 7, %for.end15.fold.split104 ], [ 8, %for.end15.fold.split105 ], [ 9, %for.end15.fold.split106 ], [ 10, %for.end15.fold.split107 ], [ 11, %for.end15.fold.split108 ], [ 12, %for.end15.fold.split109 ]
  %vio_bit11 = getelementptr [13 x %struct.virtsnd_a2v_rate], ptr @g_a2v_rate_map, i32 0, i32 %i.173.lcssa, i32 1
  %4 = ptrtoint ptr %vio_bit11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vio_bit11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %vformat.0)
  %cmp16 = icmp eq i32 %vformat.0, -1
  br i1 %cmp16, label %for.end15.cleanup_crit_edge, label %if.end19

for.end15.cleanup_crit_edge:                      ; preds = %for.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %for.end15
  %call = tail call ptr @virtsnd_pcm_ctl_msg_alloc(ptr noundef %vss, i32 noundef 257, i32 noundef 3264) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end19.cleanup_crit_edge, label %if.end21

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %if.end19
  %call22 = tail call ptr @virtsnd_ctl_msg_request(ptr noundef nonnull %call) #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %buffer_bytes)
  %buffer_bytes23 = getelementptr inbounds %struct.virtio_snd_pcm_set_params, ptr %call22, i32 0, i32 1
  %7 = ptrtoint ptr %buffer_bytes23 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %buffer_bytes23, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %period_bytes)
  %period_bytes24 = getelementptr inbounds %struct.virtio_snd_pcm_set_params, ptr %call22, i32 0, i32 2
  %9 = ptrtoint ptr %period_bytes24 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %period_bytes24, align 4
  %conv = trunc i32 %channels to i8
  %channels25 = getelementptr inbounds %struct.virtio_snd_pcm_set_params, ptr %call22, i32 0, i32 4
  %10 = ptrtoint ptr %channels25 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %channels25, align 4
  %conv26 = trunc i32 %vformat.0 to i8
  %format27 = getelementptr inbounds %struct.virtio_snd_pcm_set_params, ptr %call22, i32 0, i32 5
  %11 = ptrtoint ptr %format27 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv26, ptr %format27, align 1
  %conv28 = trunc i32 %5 to i8
  %rate29 = getelementptr inbounds %struct.virtio_snd_pcm_set_params, ptr %call22, i32 0, i32 6
  %12 = ptrtoint ptr %rate29 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv28, ptr %rate29, align 2
  %features = getelementptr inbounds %struct.virtio_pcm_substream, ptr %vss, i32 0, i32 4
  %13 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %features, align 8
  %and = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %if.end21.if.end33_crit_edge, label %if.then31

if.end21.if.end33_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then31:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %features32 = getelementptr inbounds %struct.virtio_snd_pcm_set_params, ptr %call22, i32 0, i32 3
  %15 = ptrtoint ptr %features32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %features32, align 4
  %or = or i32 %16, 67108864
  store i32 %or, ptr %features32, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end21.if.end33_crit_edge
  %17 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %features, align 8
  %and35 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end33.if.end40_crit_edge, label %if.then37

if.end33.if.end40_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %features38 = getelementptr inbounds %struct.virtio_snd_pcm_set_params, ptr %call22, i32 0, i32 3
  %19 = ptrtoint ptr %features38 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %features38, align 4
  %or39 = or i32 %20, 268435456
  store i32 %or39, ptr %features38, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end33.if.end40_crit_edge
  %21 = ptrtoint ptr %vss to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vss, align 8
  %call.i = tail call i32 @virtsnd_ctl_msg_send(ptr noundef %22, ptr noundef nonnull %call, ptr noundef null, ptr noundef null, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.end19.cleanup_crit_edge, %for.end15.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end40 ], [ -22, %for.end15.cleanup_crit_edge ], [ -12, %if.end19.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtsnd_pcm_msg_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtsnd_pcm_msg_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtsnd_pcm_ctl_msg_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtsnd_ctl_msg_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtsnd_ctl_msg_send(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtsnd_pcm_msg_send(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !16, !17, !18, !20, !21, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @virtsnd_pcm_ops, !1, !"virtsnd_pcm_ops", i1 false, i1 false}
!1 = !{!"../sound/virtio/virtio_pcm_ops.c", i32 454, i32 26}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/virtio/virtio_pcm_ops.c", i32 222, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @virtsnd_pcm_hw_params._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @virtsnd_pcm_hw_params._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @g_a2v_format_map, !11, !"g_a2v_format_map", i1 false, i1 false}
!11 = !{!"../sound/virtio/virtio_pcm_ops.c", i32 45, i32 40}
!12 = !{ptr @g_a2v_rate_map, !13, !"g_a2v_rate_map", i1 false, i1 false}
!13 = !{!"../sound/virtio/virtio_pcm_ops.c", i32 80, i32 38}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/virtio/virtio_pcm_ops.c", i32 278, i32 4}
!16 = !{ptr @virtsnd_pcm_prepare._entry, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @virtsnd_pcm_prepare._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/virtio/virtio_pcm_ops.c", i32 419, i32 3}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @virtsnd_pcm_sync_stop._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @virtsnd_pcm_sync_stop._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i32 0, i32 33}
!34 = !{i8 0, i8 2}
