; ModuleID = '/llk/IR_all_yes/sound/pci/cs5535audio/cs5535audio_pcm.c_pt.bc'
source_filename = "../sound/pci/cs5535audio/cs5535audio_pcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cs5535audio_dma_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cs5535audio = type { ptr, ptr, ptr, i32, ptr, i32, %struct.spinlock, ptr, ptr, [2 x %struct.cs5535audio_dma] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cs5535audio_dma = type { ptr, %struct.snd_dma_buffer, ptr, i32, i32, i32, i32, i32, i32 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
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
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.74, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.74 = type { ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.75, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%union.anon.75 = type { i32, [28 x i8] }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.cs5535audio_dma_desc = type { i32, i16, i16 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CS5535 Audio\00", [19 x i8] zeroinitializer }, align 32
@snd_cs5535audio_playback_dma_ops = internal constant { %struct.cs5535audio_dma_ops, [36 x i8] } { %struct.cs5535audio_dma_ops { i32 0, ptr @cs5535audio_playback_enable_dma, ptr @cs5535audio_playback_disable_dma, ptr @cs5535audio_playback_pause_dma, ptr @cs5535audio_playback_setup_prd, ptr @cs5535audio_playback_read_prd, ptr @cs5535audio_playback_read_dma_pntr }, [36 x i8] zeroinitializer }, align 32
@snd_cs5535audio_capture_dma_ops = internal constant { %struct.cs5535audio_dma_ops, [36 x i8] } { %struct.cs5535audio_dma_ops { i32 1, ptr @cs5535audio_capture_enable_dma, ptr @cs5535audio_capture_disable_dma, ptr @cs5535audio_capture_pause_dma, ptr @cs5535audio_capture_setup_prd, ptr @cs5535audio_capture_read_prd, ptr @cs5535audio_capture_read_dma_pntr }, [36 x i8] zeroinitializer }, align 32
@snd_cs5535audio_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_cs5535audio_playback_open, ptr @snd_cs5535audio_playback_close, ptr null, ptr @snd_cs5535audio_hw_params, ptr @snd_cs5535audio_hw_free, ptr @snd_cs5535audio_playback_prepare, ptr @snd_cs5535audio_trigger, ptr null, ptr @snd_cs5535audio_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_cs5535audio_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_cs5535audio_capture_open, ptr @snd_cs5535audio_capture_close, ptr null, ptr @snd_cs5535audio_hw_params, ptr @snd_cs5535audio_hw_free, ptr @snd_cs5535audio_capture_prepare, ptr @snd_cs5535audio_trigger, ptr null, ptr @snd_cs5535audio_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_cs5535audio_playback = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 852227, i64 4, i32 1073742078, i32 4000, i32 48000, i32 2, i32 2, i32 131072, i32 64, i32 65520, i32 1, i32 128, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_cs5535audio_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 304, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unhandled trigger\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snd_cs5535audio_trigger\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"sound/pci/cs5535audio/cs5535audio_pcm.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_cs5535audio_trigger._entry_ptr = internal global ptr @snd_cs5535audio_trigger._entry, section ".printk_index", align 4
@snd_cs5535audio_pcm_pointer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 323, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"curdma=%x < %x bufaddr.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"snd_cs5535audio_pcm_pointer\00", [36 x i8] zeroinitializer }, align 32
@snd_cs5535audio_pcm_pointer._entry_ptr = internal global ptr @snd_cs5535audio_pcm_pointer._entry, section ".printk_index", align 4
@snd_cs5535audio_pcm_pointer._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 329, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"diff=%x >= %x buf_bytes.\0A\00", [38 x i8] zeroinitializer }, align 32
@snd_cs5535audio_pcm_pointer._entry_ptr.10 = internal global ptr @snd_cs5535audio_pcm_pointer._entry.8, section ".printk_index", align 4
@snd_cs5535audio_capture = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65795, i64 4, i32 1073742078, i32 4000, i32 48000, i32 2, i32 2, i32 131072, i32 64, i32 65520, i32 1, i32 128, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 413, i32 36 }
@___asan_gen_.14 = private unnamed_addr constant [33 x i8] c"snd_cs5535audio_playback_dma_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 388, i32 41 }
@___asan_gen_.17 = private unnamed_addr constant [32 x i8] c"snd_cs5535audio_capture_dma_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 398, i32 41 }
@___asan_gen_.20 = private unnamed_addr constant [29 x i8] c"snd_cs5535audio_playback_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 368, i32 33 }
@___asan_gen_.23 = private unnamed_addr constant [28 x i8] c"snd_cs5535audio_capture_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 378, i32 33 }
@___asan_gen_.26 = private unnamed_addr constant [25 x i8] c"snd_cs5535audio_playback\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 23, i32 38 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 304, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 322, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 328, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [24 x i8] c"snd_cs5535audio_capture\00", align 1
@___asan_gen_.63 = private constant [43 x i8] c"../sound/pci/cs5535audio/cs5535audio_pcm.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 52, i32 38 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @snd_cs5535audio_pcm_pointer._entry, ptr @snd_cs5535audio_pcm_pointer._entry.8, ptr @snd_cs5535audio_pcm_pointer._entry_ptr, ptr @snd_cs5535audio_pcm_pointer._entry_ptr.10, ptr @snd_cs5535audio_trigger._entry, ptr @snd_cs5535audio_trigger._entry_ptr, ptr @.str, ptr @snd_cs5535audio_playback_dma_ops, ptr @snd_cs5535audio_capture_dma_ops, ptr @snd_cs5535audio_playback_ops, ptr @snd_cs5535audio_capture_ops, ptr @snd_cs5535audio_playback, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @snd_cs5535audio_capture], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs5535audio_playback_dma_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs5535audio_capture_dma_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs5535audio_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs5535audio_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs5535audio_playback to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs5535audio_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs5535audio_pcm_pointer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs5535audio_pcm_pointer._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs5535audio_capture to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_cs5535audio_pcm(ptr noundef %cs5535au) local_unnamed_addr #0 align 64 {
entry:
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #6
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !40
  %1 = ptrtoint ptr %cs5535au to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cs5535au, align 4
  %call = call i32 @snd_pcm_new(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %pcm) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dmas = getelementptr inbounds %struct.cs5535audio, ptr %cs5535au, i32 0, i32 9
  %3 = ptrtoint ptr %dmas to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @snd_cs5535audio_playback_dma_ops, ptr %dmas, align 4
  %arrayidx2 = getelementptr %struct.cs5535audio, ptr %cs5535au, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @snd_cs5535audio_capture_dma_ops, ptr %arrayidx2, align 4
  %5 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %6, i32 noundef 0, ptr noundef nonnull @snd_cs5535audio_playback_ops) #6
  %7 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %8, i32 noundef 1, ptr noundef nonnull @snd_cs5535audio_capture_ops) #6
  %9 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcm, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %cs5535au, ptr %private_data, align 8
  %info_flags = getelementptr inbounds %struct.snd_pcm, ptr %10, i32 0, i32 3
  %12 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %info_flags, align 8
  %name = getelementptr inbounds %struct.snd_pcm, ptr %10, i32 0, i32 7
  %13 = call ptr @memcpy(ptr %name, ptr @.str, i32 13)
  %pci = getelementptr inbounds %struct.cs5535audio, ptr %cs5535au, i32 0, i32 4
  %14 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %call5 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %10, i32 noundef 2, ptr noundef %dev, i32 noundef 65536, i32 noundef 131072) #6
  %16 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcm, align 4
  %pcm6 = getelementptr inbounds %struct.cs5535audio, ptr %cs5535au, i32 0, i32 2
  %18 = ptrtoint ptr %pcm6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %pcm6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #6
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs5535audio_playback_enable_dma(ptr nocapture noundef readonly %cs5535au) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %port = getelementptr inbounds %struct.cs5535audio, ptr %cs5535au, i32 0, i32 5
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 32
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 1) #6, !srcloc !42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs5535audio_playback_disable_dma(ptr nocapture noundef readonly %cs5535au) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  %port = getelementptr inbounds %struct.cs5535audio, ptr %cs5535au, i32 0, i32 5
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 32
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #6, !srcloc !42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs5535audio_playback_pause_dma(ptr nocapture noundef readonly %cs5535au) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %port = getelementptr inbounds %struct.cs5535audio, ptr %cs5535au, i32 0, i32 5
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 32
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 3) #6, !srcloc !42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs5535audio_playback_setup_prd(ptr nocapture noundef readonly %cs5535au, i32 noundef %prd_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %prd_addr)
  %port = getelementptr inbounds %struct.cs5535audio, ptr %cs5535au, i32 0, i32 5
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %port, align 4
  %add = add i32 %2, 36
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %3 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %3, i32 %0) #6, !srcloc !46
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs5535audio_playback_read_prd(ptr nocapture noundef readonly %cs5535au) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.cs5535audio, ptr %cs5535au, i32 0, i32 5
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 36
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #6, !srcloc !47
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs5535audio_playback_read_dma_pntr(ptr nocapture noundef readonly %cs5535au) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.cs5535audio, ptr %cs5535au, i32 0, i32 5
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 96
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #6, !srcloc !47
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs5535audio_capture_enable_dma(ptr nocapture noundef readonly %cs5535au) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  tail call void @arm_heavy_mb() #6
  %port = getelementptr inbounds %struct.cs5535audio, ptr %cs5535au, i32 0, i32 5
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 40
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 1) #6, !srcloc !42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs5535audio_capture_disable_dma(ptr nocapture noundef readonly %cs5535au) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %port = getelementptr inbounds %struct.cs5535audio, ptr %cs5535au, i32 0, i32 5
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 40
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #6, !srcloc !42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs5535audio_capture_pause_dma(ptr nocapture noundef readonly %cs5535au) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %port = getelementptr inbounds %struct.cs5535audio, ptr %cs5535au, i32 0, i32 5
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 40
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 3) #6, !srcloc !42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs5535audio_capture_setup_prd(ptr nocapture noundef readonly %cs5535au, i32 noundef %prd_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %prd_addr)
  %port = getelementptr inbounds %struct.cs5535audio, ptr %cs5535au, i32 0, i32 5
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %port, align 4
  %add = add i32 %2, 44
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %3 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %3, i32 %0) #6, !srcloc !46
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs5535audio_capture_read_prd(ptr nocapture noundef readonly %cs5535au) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.cs5535audio, ptr %cs5535au, i32 0, i32 5
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 44
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #6, !srcloc !47
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs5535audio_capture_read_dma_pntr(ptr nocapture noundef readonly %cs5535au) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.cs5535audio, ptr %cs5535au, i32 0, i32 5
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 100
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #6, !srcloc !47
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs5535audio_playback_open(ptr noundef %substream) #0 align 64 {
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
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %4 = call ptr @memcpy(ptr %hw, ptr @snd_cs5535audio_playback, i32 64)
  %ac97 = getelementptr inbounds %struct.cs5535audio, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ac97, align 4
  %rates = getelementptr inbounds %struct.snd_ac97, ptr %6, i32 0, i32 20
  %7 = ptrtoint ptr %rates to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rates, align 4
  %rates3 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 2
  %9 = ptrtoint ptr %rates3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %rates3, align 8
  %call.i = tail call i32 @snd_pcm_hw_limit_rates(ptr noundef %hw) #6
  %playback_substream = getelementptr inbounds %struct.cs5535audio, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %playback_substream to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %substream, ptr %playback_substream, align 4
  %dmas = getelementptr inbounds %struct.cs5535audio, ptr %1, i32 0, i32 9
  %private_data5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %11 = ptrtoint ptr %private_data5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dmas, ptr %private_data5, align 8
  %call6 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %3, i32 noundef 15) #6
  %12 = tail call i32 @llvm.smin.i32(i32 %call6, i32 0)
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_cs5535audio_playback_close(ptr nocapture noundef readnone %substream) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs5535audio_hw_params(ptr noundef %substream, ptr nocapture noundef readonly %hw_params) #0 align 64 {
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
  %private_data1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data1, align 8
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %6 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_addr, align 8
  %buf_addr = getelementptr inbounds %struct.cs5535audio_dma, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %buf_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %buf_addr, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 10
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i, align 4
  %buf_bytes = getelementptr inbounds %struct.cs5535audio_dma, ptr %5, i32 0, i32 4
  %11 = ptrtoint ptr %buf_bytes to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %buf_bytes, align 4
  %arrayidx.i.i15 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 7
  %12 = ptrtoint ptr %arrayidx.i.i15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i15, align 4
  %arrayidx.i.i16 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 6
  %14 = ptrtoint ptr %arrayidx.i.i16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %13)
  %cmp.i = icmp ugt i32 %13, 128
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %area.i = getelementptr inbounds %struct.cs5535audio_dma, ptr %5, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %area.i, align 4
  %cmp1.i = icmp eq ptr %17, null
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.then2.i:                                       ; preds = %if.end.i
  %desc_buf.i = getelementptr inbounds %struct.cs5535audio_dma, ptr %5, i32 0, i32 1
  %pci.i = getelementptr inbounds %struct.cs5535audio, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %call.i.i = tail call i32 @snd_dma_alloc_dir_pages(i32 noundef 2, ptr noundef %dev.i, i32 noundef 0, i32 noundef 4097, ptr noundef %desc_buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp4.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp4.i, label %if.then2.i.if.end_crit_edge, label %if.end6.i

if.then2.i.if.end_crit_edge:                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end6.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  %periods7.i = getelementptr inbounds %struct.cs5535audio_dma, ptr %5, i32 0, i32 6
  %20 = ptrtoint ptr %periods7.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %periods7.i, align 4
  %period_bytes8.i = getelementptr inbounds %struct.cs5535audio_dma, ptr %5, i32 0, i32 5
  %21 = ptrtoint ptr %period_bytes8.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %period_bytes8.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end6.i, %if.end.i.if.end9.i_crit_edge
  %periods10.i = getelementptr inbounds %struct.cs5535audio_dma, ptr %5, i32 0, i32 6
  %22 = ptrtoint ptr %periods10.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %periods10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %13)
  %cmp11.i = icmp eq i32 %23, %13
  br i1 %cmp11.i, label %land.lhs.true.i, label %if.end9.i.if.end15.i_crit_edge

if.end9.i.if.end15.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %if.end9.i
  %period_bytes12.i = getelementptr inbounds %struct.cs5535audio_dma, ptr %5, i32 0, i32 5
  %24 = ptrtoint ptr %period_bytes12.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %period_bytes12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %15)
  %cmp13.i = icmp eq i32 %25, %15
  br i1 %cmp13.i, label %land.lhs.true.i.if.then_crit_edge, label %land.lhs.true.i.if.end15.i_crit_edge

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end15.i:                                       ; preds = %land.lhs.true.i.if.end15.i_crit_edge, %if.end9.i.if.end15.i_crit_edge
  %addr17.i = getelementptr inbounds %struct.cs5535audio_dma, ptr %5, i32 0, i32 1, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp1878.not.i = icmp eq i32 %13, 0
  br i1 %cmp1878.not.i, label %if.end15.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end15.i.for.end.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end15.i
  %26 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %runtime, align 4
  %dma_addr.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %27, i32 0, i32 51
  %28 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_addr.i, align 8
  %conv.i = trunc i32 %15 to i16
  %30 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %addr.080.i = phi i32 [ %29, %for.body.lr.ph.i ], [ %add22.i, %for.body.i.for.body.i_crit_edge ]
  %i.079.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %31 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %area.i, align 4
  %arrayidx.i = getelementptr %struct.cs5535audio_dma_desc, ptr %32, i32 %i.079.i
  %33 = tail call i32 @llvm.bswap.i32(i32 %addr.080.i) #6
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx.i, align 4
  %size.i = getelementptr %struct.cs5535audio_dma_desc, ptr %32, i32 %i.079.i, i32 1
  %35 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %30, ptr %size.i, align 4
  %ctlreserved.i = getelementptr %struct.cs5535audio_dma_desc, ptr %32, i32 %i.079.i, i32 2
  %36 = ptrtoint ptr %ctlreserved.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 64, ptr %ctlreserved.i, align 2
  %add22.i = add i32 %addr.080.i, %15
  %inc.i = add nuw i32 %i.079.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %13
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end15.i.for.end.i_crit_edge
  %37 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %area.i, align 4
  %arrayidx25.i = getelementptr %struct.cs5535audio_dma_desc, ptr %38, i32 %13
  %39 = ptrtoint ptr %addr17.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %addr17.i, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #6
  %42 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx25.i, align 4
  %size29.i = getelementptr %struct.cs5535audio_dma_desc, ptr %38, i32 %13, i32 1
  %43 = ptrtoint ptr %size29.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %size29.i, align 4
  %ctlreserved30.i = getelementptr %struct.cs5535audio_dma_desc, ptr %38, i32 %13, i32 2
  %44 = ptrtoint ptr %ctlreserved30.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 32, ptr %ctlreserved30.i, align 2
  %45 = ptrtoint ptr %addr17.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %addr17.i, align 4
  %mul.i = shl i32 %13, 3
  %add33.i = add i32 %46, %mul.i
  %substream34.i = getelementptr inbounds %struct.cs5535audio_dma, ptr %5, i32 0, i32 2
  %47 = ptrtoint ptr %substream34.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %substream, ptr %substream34.i, align 4
  %period_bytes35.i = getelementptr inbounds %struct.cs5535audio_dma, ptr %5, i32 0, i32 5
  %48 = ptrtoint ptr %period_bytes35.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %15, ptr %period_bytes35.i, align 4
  %49 = ptrtoint ptr %periods10.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %13, ptr %periods10.i, align 4
  %reg_lock.i = getelementptr inbounds %struct.cs5535audio, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock.i) #6
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %5, align 4
  %disable_dma.i = getelementptr inbounds %struct.cs5535audio_dma_ops, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %disable_dma.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %disable_dma.i, align 4
  tail call void %53(ptr noundef %1) #6
  %54 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %5, align 4
  %setup_prd.i = getelementptr inbounds %struct.cs5535audio_dma_ops, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %setup_prd.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %setup_prd.i, align 4
  tail call void %57(ptr noundef %1, i32 noundef %add33.i) #6
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock.i) #6
  br label %if.then

if.then:                                          ; preds = %for.end.i, %land.lhs.true.i.if.then_crit_edge
  %pcm_open_flag = getelementptr inbounds %struct.cs5535audio_dma, ptr %5, i32 0, i32 8
  %58 = ptrtoint ptr %pcm_open_flag to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %pcm_open_flag, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then2.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i19 = phi i32 [ 0, %if.then ], [ -12, %entry.if.end_crit_edge ], [ -12, %if.then2.i.if.end_crit_edge ]
  ret i32 %retval.0.i19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs5535audio_hw_free(ptr noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data1, align 8
  %pcm_open_flag = getelementptr inbounds %struct.cs5535audio_dma, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %pcm_open_flag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pcm_open_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %playback_substream = getelementptr inbounds %struct.cs5535audio, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %playback_substream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %playback_substream, align 4
  %cmp = icmp eq ptr %9, %substream
  %ac97 = getelementptr inbounds %struct.cs5535audio, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ac97, align 4
  %. = select i1 %cmp, i32 44, i32 50
  %call4 = tail call i32 @snd_ac97_update_power(ptr noundef %11, i32 noundef %., i32 noundef 0) #6
  %12 = ptrtoint ptr %pcm_open_flag to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %pcm_open_flag, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then, %entry.if.end6_crit_edge
  %desc_buf.i = getelementptr inbounds %struct.cs5535audio_dma, ptr %3, i32 0, i32 1
  tail call void @snd_dma_free_pages(ptr noundef %desc_buf.i) #6
  %area.i = getelementptr inbounds %struct.cs5535audio_dma, ptr %3, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %area.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %area.i, align 4
  %substream2.i = getelementptr inbounds %struct.cs5535audio_dma, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %substream2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %substream2.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs5535audio_playback_prepare(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ac97 = getelementptr inbounds %struct.cs5535audio, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ac97, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %4 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rate, align 4
  %call = tail call i32 @snd_ac97_set_rate(ptr noundef %3, i32 noundef 44, i32 noundef %7) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs5535audio_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #0 align 64 {
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
  %private_data1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data1, align 8
  %reg_lock = getelementptr inbounds %struct.cs5535audio, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #6
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %do.end [
    i32 3, label %sw.bb
    i32 4, label %sw.bb2
    i32 1, label %sw.bb4
    i32 6, label %sw.bb7
    i32 0, label %sw.bb10
    i32 5, label %sw.bb12
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %pause_dma = getelementptr inbounds %struct.cs5535audio_dma_ops, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %pause_dma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pause_dma, align 4
  tail call void %10(ptr noundef %1) #6
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %enable_dma = getelementptr inbounds %struct.cs5535audio_dma_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %enable_dma to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %enable_dma, align 4
  tail call void %14(ptr noundef %1) #6
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 4
  %enable_dma6 = getelementptr inbounds %struct.cs5535audio_dma_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %enable_dma6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %enable_dma6, align 4
  tail call void %18(ptr noundef %1) #6
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 4
  %enable_dma9 = getelementptr inbounds %struct.cs5535audio_dma_ops, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %enable_dma9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %enable_dma9, align 4
  tail call void %22(ptr noundef %1) #6
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %5, align 4
  %disable_dma = getelementptr inbounds %struct.cs5535audio_dma_ops, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %disable_dma to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %disable_dma, align 4
  tail call void %26(ptr noundef %1) #6
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %5, align 4
  %disable_dma14 = getelementptr inbounds %struct.cs5535audio_dma_ops, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %disable_dma14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %disable_dma14, align 4
  tail call void %30(ptr noundef %1) #6
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %32, i32 0, i32 27
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.1) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb12, %sw.bb10, %sw.bb7, %sw.bb4, %sw.bb2, %sw.bb
  %err.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb12 ], [ 0, %sw.bb10 ], [ 0, %sw.bb7 ], [ 0, %sw.bb4 ], [ 0, %sw.bb2 ], [ 0, %sw.bb ]
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #6
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs5535audio_pcm_pointer(ptr nocapture noundef readonly %substream) #0 align 64 {
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
  %private_data1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data1, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %read_dma_pntr = getelementptr inbounds %struct.cs5535audio_dma_ops, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %read_dma_pntr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_dma_pntr, align 4
  %call = tail call i32 %9(ptr noundef %1) #6
  %buf_addr = getelementptr inbounds %struct.cs5535audio_dma, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %11)
  %cmp = icmp ult i32 %call, %11
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.6, i32 noundef %call, i32 noundef %11) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = sub i32 %call, %11
  %buf_bytes = getelementptr inbounds %struct.cs5535audio_dma, ptr %5, i32 0, i32 4
  %16 = ptrtoint ptr %buf_bytes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buf_bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %17)
  %cmp4.not = icmp ult i32 %sub, %17
  br i1 %cmp4.not, label %if.end12, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %dev10 = getelementptr inbounds %struct.snd_card, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev10, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.9, i32 noundef %sub, i32 noundef %17) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %runtime, align 4
  %mul.i = shl i32 %sub, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %23, i32 0, i32 21
  %24 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %25
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end8, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end8 ], [ %div.i, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_limit_rates(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dma_alloc_dir_pages(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_update_power(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dma_free_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_set_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs5535audio_capture_open(ptr noundef %substream) #0 align 64 {
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
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %4 = call ptr @memcpy(ptr %hw, ptr @snd_cs5535audio_capture, i32 64)
  %ac97 = getelementptr inbounds %struct.cs5535audio, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ac97, align 4
  %arrayidx = getelementptr %struct.snd_ac97, ptr %6, i32 0, i32 20, i32 3
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %rates3 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 2
  %9 = ptrtoint ptr %rates3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %rates3, align 8
  %call.i = tail call i32 @snd_pcm_hw_limit_rates(ptr noundef %hw) #6
  %capture_substream = getelementptr inbounds %struct.cs5535audio, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %capture_substream to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %substream, ptr %capture_substream, align 4
  %arrayidx4 = getelementptr %struct.cs5535audio, ptr %1, i32 0, i32 9, i32 1
  %private_data5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %11 = ptrtoint ptr %private_data5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx4, ptr %private_data5, align 8
  %call6 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %3, i32 noundef 15) #6
  %12 = tail call i32 @llvm.smin.i32(i32 %call6, i32 0)
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_cs5535audio_capture_close(ptr nocapture noundef readnone %substream) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs5535audio_capture_prepare(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ac97 = getelementptr inbounds %struct.cs5535audio, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ac97, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %4 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rate, align 4
  %call = tail call i32 @snd_ac97_set_rate(ptr noundef %3, i32 noundef 50, i32 noundef %7) #6
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/cs5535audio/cs5535audio_pcm.c", i32 413, i32 36}
!2 = !{ptr @snd_cs5535audio_playback_dma_ops, !3, !"snd_cs5535audio_playback_dma_ops", i1 false, i1 false}
!3 = !{!"../sound/pci/cs5535audio/cs5535audio_pcm.c", i32 388, i32 41}
!4 = !{ptr @snd_cs5535audio_capture_dma_ops, !5, !"snd_cs5535audio_capture_dma_ops", i1 false, i1 false}
!5 = !{!"../sound/pci/cs5535audio/cs5535audio_pcm.c", i32 398, i32 41}
!6 = !{ptr @snd_cs5535audio_playback_ops, !7, !"snd_cs5535audio_playback_ops", i1 false, i1 false}
!7 = !{!"../sound/pci/cs5535audio/cs5535audio_pcm.c", i32 368, i32 33}
!8 = !{ptr @snd_cs5535audio_playback, !9, !"snd_cs5535audio_playback", i1 false, i1 false}
!9 = !{!"../sound/pci/cs5535audio/cs5535audio_pcm.c", i32 23, i32 38}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/cs5535audio/cs5535audio_pcm.c", i32 304, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @snd_cs5535audio_trigger._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @snd_cs5535audio_trigger._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/pci/cs5535audio/cs5535audio_pcm.c", i32 322, i32 3}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @snd_cs5535audio_pcm_pointer._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @snd_cs5535audio_pcm_pointer._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/pci/cs5535audio/cs5535audio_pcm.c", i32 328, i32 3}
!25 = !{ptr @snd_cs5535audio_pcm_pointer._entry.8, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @snd_cs5535audio_pcm_pointer._entry_ptr.10, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @snd_cs5535audio_capture_ops, !28, !"snd_cs5535audio_capture_ops", i1 false, i1 false}
!28 = !{!"../sound/pci/cs5535audio/cs5535audio_pcm.c", i32 378, i32 33}
!29 = !{ptr @snd_cs5535audio_capture, !30, !"snd_cs5535audio_capture", i1 false, i1 false}
!30 = !{!"../sound/pci/cs5535audio/cs5535audio_pcm.c", i32 52, i32 38}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"auto-init"}
!41 = !{i64 2154740727}
!42 = !{i64 4990271}
!43 = !{i64 2154741140}
!44 = !{i64 2154741564}
!45 = !{i64 2154742027}
!46 = !{i64 4990468}
!47 = !{i64 4990886}
!48 = !{i64 2154743023}
!49 = !{i64 2154743780}
!50 = !{i64 2154744070}
!51 = !{i64 2154744483}
!52 = !{i64 2154744907}
!53 = !{i64 2154745370}
!54 = !{i64 2154746366}
!55 = !{i64 2154747123}
