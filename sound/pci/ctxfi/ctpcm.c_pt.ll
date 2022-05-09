; ModuleID = '/llk/IR_all_yes/sound/pci/ctxfi/ctpcm.c_pt.bc'
source_filename = "../sound/pci/ctxfi/ctpcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_chmap_elem = type { i8, [15 x i8] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ct_atc = type { ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, ptr, ptr, ptr, [5 x ptr] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.68, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.68 = type { ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.ct_atc_pcm = type { ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ctxfi\00", [26 x i8] zeroinitializer }, align 32
@ct_alsa_pcm_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 429, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"snd_pcm_new failed!! Err=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ct_alsa_pcm_create\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/pci/ctxfi/ctpcm.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ct_alsa_pcm_create._entry_ptr = internal global ptr @ct_alsa_pcm_create._entry, section ".printk_index", align 4
@ct_pcm_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @ct_pcm_playback_open, ptr @ct_pcm_playback_close, ptr null, ptr @ct_pcm_hw_params, ptr @ct_pcm_hw_free, ptr @ct_pcm_playback_prepare, ptr @ct_pcm_playback_trigger, ptr null, ptr @ct_pcm_playback_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ct_pcm_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @ct_pcm_capture_open, ptr @ct_pcm_capture_close, ptr null, ptr @ct_pcm_hw_params, ptr @ct_pcm_hw_free, ptr @ct_pcm_capture_prepare, ptr @ct_pcm_capture_trigger, ptr null, ptr @ct_pcm_capture_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_pcm_std_chmaps = external dso_local constant [0 x %struct.snd_pcm_chmap_elem], align 1
@ct_spdif_passthru_playback_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 590083, i64 4, i32 224, i32 32000, i32 48000, i32 2, i32 2, i32 131072, i32 64, i32 131072, i32 2, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@ct_pcm_playback_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 590083, i64 4294984710, i32 1073750014, i32 8000, i32 192000, i32 1, i32 2, i32 131072, i32 64, i32 131072, i32 2, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ct_pcm_playback_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 212, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Preparing pcm playback failed!!!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ct_pcm_playback_prepare\00", [40 x i8] zeroinitializer }, align 32
@ct_pcm_playback_prepare._entry_ptr = internal global ptr @ct_pcm_playback_prepare._entry, section ".printk_index", align 4
@ct_pcm_capture_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 590083, i64 4294984710, i32 1073743870, i32 8000, i32 96000, i32 1, i32 2, i32 131072, i32 384, i32 65536, i32 2, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@ct_pcm_capture_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 321, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Preparing pcm capture failed!!!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ct_pcm_capture_prepare\00", [41 x i8] zeroinitializer }, align 32
@ct_pcm_capture_prepare._entry_ptr = internal global ptr @ct_pcm_capture_prepare._entry, section ".printk_index", align 4
@surround_map = internal constant { <{ { i8, <{ i8, [14 x i8] }> }, { i8, <{ i8, i8, [13 x i8] }> }, %struct.snd_pcm_chmap_elem }>, [48 x i8] } { <{ { i8, <{ i8, [14 x i8] }> }, { i8, <{ i8, i8, [13 x i8] }> }, %struct.snd_pcm_chmap_elem }> <{ { i8, <{ i8, [14 x i8] }> } { i8 1, <{ i8, [14 x i8] }> <{ i8 2, [14 x i8] zeroinitializer }> }, { i8, <{ i8, i8, [13 x i8] }> } { i8 2, <{ i8, i8, [13 x i8] }> <{ i8 5, i8 6, [13 x i8] zeroinitializer }> }, %struct.snd_pcm_chmap_elem zeroinitializer }>, [48 x i8] zeroinitializer }, align 32
@clfe_map = internal constant { <{ { i8, <{ i8, [14 x i8] }> }, { i8, <{ i8, i8, [13 x i8] }> }, %struct.snd_pcm_chmap_elem }>, [48 x i8] } { <{ { i8, <{ i8, [14 x i8] }> }, { i8, <{ i8, i8, [13 x i8] }> }, %struct.snd_pcm_chmap_elem }> <{ { i8, <{ i8, [14 x i8] }> } { i8 1, <{ i8, [14 x i8] }> <{ i8 2, [14 x i8] zeroinitializer }> }, { i8, <{ i8, i8, [13 x i8] }> } { i8 2, <{ i8, i8, [13 x i8] }> <{ i8 7, i8 8, [13 x i8] zeroinitializer }> }, %struct.snd_pcm_chmap_elem zeroinitializer }>, [48 x i8] zeroinitializer }, align 32
@side_map = internal constant { <{ { i8, <{ i8, [14 x i8] }> }, { i8, <{ i8, i8, [13 x i8] }> }, %struct.snd_pcm_chmap_elem }>, [48 x i8] } { <{ { i8, <{ i8, [14 x i8] }> }, { i8, <{ i8, i8, [13 x i8] }> }, %struct.snd_pcm_chmap_elem }> <{ { i8, <{ i8, [14 x i8] }> } { i8 1, <{ i8, [14 x i8] }> <{ i8 2, [14 x i8] zeroinitializer }> }, { i8, <{ i8, i8, [13 x i8] }> } { i8 2, <{ i8, i8, [13 x i8] }> <{ i8 9, i8 10, [13 x i8] zeroinitializer }> }, %struct.snd_pcm_chmap_elem zeroinitializer }>, [48 x i8] zeroinitializer }, align 32
@switch.table.ct_alsa_pcm_create = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @surround_map, ptr @clfe_map, ptr @side_map], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 425, i32 31 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 428, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [20 x i8] c"ct_pcm_playback_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 367, i32 33 }
@___asan_gen_.38 = private unnamed_addr constant [19 x i8] c"ct_pcm_capture_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 378, i32 33 }
@___asan_gen_.41 = private unnamed_addr constant [30 x i8] c"ct_spdif_passthru_playback_hw\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 45, i32 38 }
@___asan_gen_.44 = private unnamed_addr constant [19 x i8] c"ct_pcm_playback_hw\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 20, i32 38 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 211, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [18 x i8] c"ct_pcm_capture_hw\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 68, i32 38 }
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 320, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [13 x i8] c"surround_map\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 388, i32 40 }
@___asan_gen_.71 = private unnamed_addr constant [9 x i8] c"clfe_map\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 396, i32 40 }
@___asan_gen_.74 = private unnamed_addr constant [9 x i8] c"side_map\00", align 1
@___asan_gen_.75 = private constant [27 x i8] c"../sound/pci/ctxfi/ctpcm.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 404, i32 40 }
@___asan_gen_.77 = private unnamed_addr constant [32 x i8] c"switch.table.ct_alsa_pcm_create\00", align 1
@llvm.compiler.used = appending global [25 x ptr] [ptr @ct_alsa_pcm_create._entry, ptr @ct_alsa_pcm_create._entry_ptr, ptr @ct_pcm_capture_prepare._entry, ptr @ct_pcm_capture_prepare._entry_ptr, ptr @ct_pcm_playback_prepare._entry, ptr @ct_pcm_playback_prepare._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ct_pcm_playback_ops, ptr @ct_pcm_capture_ops, ptr @ct_spdif_passthru_playback_hw, ptr @ct_pcm_playback_hw, ptr @.str.6, ptr @.str.7, ptr @ct_pcm_capture_hw, ptr @.str.8, ptr @.str.9, ptr @surround_map, ptr @clfe_map, ptr @side_map, ptr @switch.table.ct_alsa_pcm_create], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_alsa_pcm_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_pcm_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_pcm_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_spdif_passthru_playback_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_pcm_playback_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_pcm_playback_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_pcm_capture_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_pcm_capture_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @surround_map to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clfe_map to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @side_map to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ct_alsa_pcm_create to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ct_alsa_pcm_create(ptr noundef %atc, i32 noundef %device, ptr noundef %device_name) local_unnamed_addr #0 align 64 {
entry:
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #6
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %device)
  %cmp = icmp eq i32 %device, 4
  %cond = select i1 %cmp, i32 1, i32 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %device)
  %cmp1 = icmp eq i32 %device, 0
  %cond2 = zext i1 %cmp1 to i32
  %card = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 1
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 4
  %call = call i32 @snd_pcm_new(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef %device, i32 noundef %cond, i32 noundef %cond2, ptr noundef nonnull %pcm) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 27
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.1, i32 noundef %call) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcm, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %atc, ptr %private_data, align 8
  %info_flags = getelementptr inbounds %struct.snd_pcm, ptr %8, i32 0, i32 3
  %10 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %info_flags, align 8
  %dev_subclass = getelementptr inbounds %struct.snd_pcm, ptr %8, i32 0, i32 5
  %11 = ptrtoint ptr %dev_subclass to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %dev_subclass, align 2
  %name = getelementptr inbounds %struct.snd_pcm, ptr %8, i32 0, i32 7
  %call5 = call i32 @strscpy(ptr noundef %name, ptr noundef %device_name, i32 noundef 80) #6
  %12 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %13, i32 noundef 0, ptr noundef nonnull @ct_pcm_playback_ops) #6
  %14 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcm, align 4
  br i1 %cmp1, label %if.end8.thread, label %if.end8

if.end8.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @snd_pcm_set_ops(ptr noundef %15, i32 noundef 1, ptr noundef nonnull @ct_pcm_capture_ops) #6
  %16 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcm, align 4
  %18 = ptrtoint ptr %atc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %atc, align 4
  %dev936 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %call1037 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %17, i32 noundef 2, ptr noundef %dev936, i32 noundef 131072, i32 noundef 131072) #6
  br label %sw.epilog

if.end8:                                          ; preds = %if.end
  %20 = ptrtoint ptr %atc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %atc, align 4
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %call10 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %15, i32 noundef 2, ptr noundef %dev9, i32 noundef 131072, i32 noundef 131072) #6
  %switch.tableidx = add i32 %device, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %22 = icmp ult i32 %switch.tableidx, 3
  br i1 %22, label %switch.lookup, label %if.end8.sw.epilog_crit_edge

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.ct_alsa_pcm_create, i32 0, i32 %switch.tableidx
  %23 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end8.sw.epilog_crit_edge, %if.end8.thread
  %chs.0 = phi i32 [ 8, %if.end8.thread ], [ 2, %switch.lookup ], [ 2, %if.end8.sw.epilog_crit_edge ]
  %map.0 = phi ptr [ @snd_pcm_std_chmaps, %if.end8.thread ], [ %switch.load, %switch.lookup ], [ @snd_pcm_std_chmaps, %if.end8.sw.epilog_crit_edge ]
  %24 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcm, align 4
  %call14 = call i32 @snd_pcm_add_chmap_ctls(ptr noundef %25, i32 noundef 0, ptr noundef nonnull %map.0, i32 noundef %chs.0, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %sw.epilog.cleanup_crit_edge, label %if.end17

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pcm, align 4
  %arrayidx = getelementptr %struct.ct_atc, ptr %atc, i32 0, i32 57, i32 %device
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end17 ], [ %call14, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_add_chmap_ctls(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ct_pcm_playback_open(ptr noundef %substream) #0 align 64 {
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 44) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %substream, ptr %call7.i.i, align 8
  %interrupt = getelementptr inbounds %struct.ct_atc_pcm, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %interrupt to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ct_atc_pcm_interrupt, ptr %interrupt, align 4
  %7 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %substream, align 4
  %device = getelementptr inbounds %struct.snd_pcm, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp = icmp eq i32 %10, 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = call ptr @memcpy(ptr %hw, ptr @ct_spdif_passthru_playback_hw, i32 64)
  %spdif_out_passthru = getelementptr inbounds %struct.ct_atc, ptr %1, i32 0, i32 37
  %12 = ptrtoint ptr %spdif_out_passthru to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spdif_out_passthru, align 4
  %call4 = tail call i32 %13(ptr noundef %1, i8 noundef zeroext 1) #6
  br label %if.end12

if.else:                                          ; preds = %if.end
  %14 = call ptr @memcpy(ptr %hw, ptr @ct_pcm_playback_hw, i32 64)
  %15 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %substream, align 4
  %device7 = getelementptr inbounds %struct.snd_pcm, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %device7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %device7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp8 = icmp eq i32 %18, 0
  br i1 %cmp8, label %if.then9, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %channels_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 6
  %19 = ptrtoint ptr %channels_max to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8, ptr %channels_max, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.else.if.end12_crit_edge, %if.then3
  %call13 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %3, i32 noundef 15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end12.free_pcm_crit_edge, label %if.end16

if.end12.free_pcm_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_pcm

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 18, i32 noundef 1024, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end16.free_pcm_crit_edge, label %if.end20

if.end16.free_pcm_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_pcm

if.end20:                                         ; preds = %if.end16
  %timer = getelementptr inbounds %struct.ct_atc, ptr %1, i32 0, i32 54
  %20 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %timer, align 4
  %call21 = tail call ptr @ct_timer_instance_new(ptr noundef %21, ptr noundef nonnull %call7.i.i) #6
  %timer22 = getelementptr inbounds %struct.ct_atc_pcm, ptr %call7.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %timer22 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call21, ptr %timer22, align 8
  %tobool24.not = icmp eq ptr %call21, null
  br i1 %tobool24.not, label %if.end20.free_pcm_crit_edge, label %if.end26

if.end20.free_pcm_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_pcm

if.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %private_data27 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %23 = ptrtoint ptr %private_data27 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %private_data27, align 8
  %private_free = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 45
  %24 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @ct_atc_pcm_free_substream, ptr %private_free, align 4
  br label %cleanup

free_pcm:                                         ; preds = %if.end20.free_pcm_crit_edge, %if.end16.free_pcm_crit_edge, %if.end12.free_pcm_crit_edge
  %err.0 = phi i32 [ %call13, %if.end12.free_pcm_crit_edge ], [ %call17, %if.end16.free_pcm_crit_edge ], [ -12, %if.end20.free_pcm_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %free_pcm, %if.end26, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %free_pcm ], [ 0, %if.end26 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ct_pcm_playback_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream, align 4
  %device = getelementptr inbounds %struct.snd_pcm, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %spdif_out_passthru = getelementptr inbounds %struct.ct_atc, ptr %5, i32 0, i32 37
  %6 = ptrtoint ptr %spdif_out_passthru to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spdif_out_passthru, align 4
  %call = tail call i32 %7(ptr noundef %5, i8 noundef zeroext 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ct_pcm_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %hw_params) #0 align 64 {
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
  %pcm_release_resources = getelementptr inbounds %struct.ct_atc, ptr %1, i32 0, i32 23
  %6 = ptrtoint ptr %pcm_release_resources to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcm_release_resources, align 4
  %call = tail call i32 %7(ptr noundef %1, ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ct_pcm_hw_free(ptr nocapture noundef readonly %substream) #0 align 64 {
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
  %pcm_release_resources = getelementptr inbounds %struct.ct_atc, ptr %1, i32 0, i32 23
  %6 = ptrtoint ptr %pcm_release_resources to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcm_release_resources, align 4
  %call = tail call i32 %7(ptr noundef %1, ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ct_pcm_playback_prepare(ptr nocapture noundef readonly %substream) #0 align 64 {
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
  %6 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %substream, align 4
  %device = getelementptr inbounds %struct.snd_pcm, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp = icmp eq i32 %9, 4
  %pcm_playback_prepare = getelementptr inbounds %struct.ct_atc, ptr %1, i32 0, i32 14
  %spdif_passthru_playback_prepare = getelementptr inbounds %struct.ct_atc, ptr %1, i32 0, i32 18
  %pcm_playback_prepare.sink = select i1 %cmp, ptr %spdif_passthru_playback_prepare, ptr %pcm_playback_prepare
  %10 = ptrtoint ptr %pcm_playback_prepare.sink to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcm_playback_prepare.sink, align 4
  %call3 = tail call i32 %11(ptr noundef %1, ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %card = getelementptr inbounds %struct.ct_atc, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.6) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ct_pcm_playback_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #0 align 64 {
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
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge10
    i32 4, label %entry.sw.bb_crit_edge11
    i32 0, label %entry.sw.bb3_crit_edge
    i32 5, label %entry.sw.bb3_crit_edge12
    i32 3, label %entry.sw.bb3_crit_edge13
  ]

entry.sw.bb3_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.sw.bb3_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.sw.bb_crit_edge11:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge10:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge10, %entry.sw.bb_crit_edge11
  %pcm_playback_start = getelementptr inbounds %struct.ct_atc, ptr %1, i32 0, i32 15
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge12, %entry.sw.bb3_crit_edge13
  %pcm_playback_stop = getelementptr inbounds %struct.ct_atc, ptr %1, i32 0, i32 16
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb3, %sw.bb
  %pcm_playback_stop.sink = phi ptr [ %pcm_playback_stop, %sw.bb3 ], [ %pcm_playback_start, %sw.bb ]
  %7 = ptrtoint ptr %pcm_playback_stop.sink to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcm_playback_stop.sink, align 4
  %call4 = tail call i32 %8(ptr noundef %1, ptr noundef %5) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ct_pcm_playback_pointer(ptr nocapture noundef readonly %substream) #0 align 64 {
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
  %pcm_playback_position = getelementptr inbounds %struct.ct_atc, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %pcm_playback_position to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcm_playback_position, align 4
  %call = tail call i32 %7(ptr noundef %1, ptr noundef %5) #6
  %mul.i = shl i32 %call, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %8 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %9
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %10 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %11)
  %cmp.not = icmp ult i32 %div.i, %11
  %spec.store.select = select i1 %cmp.not, i32 %div.i, i32 0
  ret i32 %spec.store.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ct_atc_pcm_interrupt(ptr nocapture noundef readonly %atc_pcm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %atc_pcm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %atc_pcm, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ct_timer_instance_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ct_atc_pcm_free_substream(ptr nocapture noundef %runtime) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 44
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %private_data1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data1, align 4
  %pcm_release_resources = getelementptr inbounds %struct.ct_atc, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %pcm_release_resources to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcm_release_resources, align 4
  %call = tail call i32 %7(ptr noundef %5, ptr noundef %1) #6
  %timer = getelementptr inbounds %struct.ct_atc_pcm, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %timer, align 4
  tail call void @ct_timer_instance_free(ptr noundef %9) #6
  tail call void @kfree(ptr noundef %1) #6
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %private_data, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ct_timer_instance_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ct_pcm_capture_open(ptr noundef %substream) #0 align 64 {
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 44) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %started = getelementptr inbounds %struct.ct_atc_pcm, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %started to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %started, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %started, align 4
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %substream, ptr %call7.i.i, align 8
  %interrupt = getelementptr inbounds %struct.ct_atc_pcm, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %interrupt to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ct_atc_pcm_interrupt, ptr %interrupt, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %8 = call ptr @memcpy(ptr %hw, ptr @ct_pcm_capture_hw, i32 64)
  %rsr = getelementptr inbounds %struct.ct_atc, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %rsr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rsr, align 4
  %msr = getelementptr inbounds %struct.ct_atc, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %msr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msr, align 4
  %mul = mul i32 %12, %10
  %rate_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 4
  %13 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul, ptr %rate_max, align 8
  %call4 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %3, i32 noundef 15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.free_pcm_crit_edge, label %if.end6

if.end.free_pcm_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_pcm

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 18, i32 noundef 1024, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.free_pcm_crit_edge, label %if.end10

if.end6.free_pcm_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_pcm

if.end10:                                         ; preds = %if.end6
  %timer = getelementptr inbounds %struct.ct_atc, ptr %1, i32 0, i32 54
  %14 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %timer, align 4
  %call11 = tail call ptr @ct_timer_instance_new(ptr noundef %15, ptr noundef nonnull %call7.i.i) #6
  %timer12 = getelementptr inbounds %struct.ct_atc_pcm, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %timer12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call11, ptr %timer12, align 8
  %tobool14.not = icmp eq ptr %call11, null
  br i1 %tobool14.not, label %if.end10.free_pcm_crit_edge, label %if.end16

if.end10.free_pcm_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_pcm

if.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %private_data17 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %17 = ptrtoint ptr %private_data17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %private_data17, align 8
  %private_free = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 45
  %18 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ct_atc_pcm_free_substream, ptr %private_free, align 4
  br label %cleanup

free_pcm:                                         ; preds = %if.end10.free_pcm_crit_edge, %if.end6.free_pcm_crit_edge, %if.end.free_pcm_crit_edge
  %err.0 = phi i32 [ %call4, %if.end.free_pcm_crit_edge ], [ %call7, %if.end6.free_pcm_crit_edge ], [ -12, %if.end10.free_pcm_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %free_pcm, %if.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %free_pcm ], [ 0, %if.end16 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ct_pcm_capture_close(ptr nocapture noundef readnone %substream) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ct_pcm_capture_prepare(ptr nocapture noundef readonly %substream) #0 align 64 {
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
  %pcm_capture_prepare = getelementptr inbounds %struct.ct_atc, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %pcm_capture_prepare to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcm_capture_prepare, align 4
  %call = tail call i32 %7(ptr noundef %1, ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %card = getelementptr inbounds %struct.ct_atc, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.8) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ct_pcm_capture_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #0 align 64 {
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
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %cmd, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pcm_capture_start = getelementptr inbounds %struct.ct_atc, ptr %1, i32 0, i32 20
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pcm_capture_stop = getelementptr inbounds %struct.ct_atc, ptr %1, i32 0, i32 21
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pcm_capture_stop5 = getelementptr inbounds %struct.ct_atc, ptr %1, i32 0, i32 21
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb
  %pcm_capture_stop5.sink = phi ptr [ %pcm_capture_stop5, %sw.default ], [ %pcm_capture_stop, %sw.bb3 ], [ %pcm_capture_start, %sw.bb ]
  %7 = ptrtoint ptr %pcm_capture_stop5.sink to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcm_capture_stop5.sink, align 4
  %call6 = tail call i32 %8(ptr noundef %1, ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ct_pcm_capture_pointer(ptr nocapture noundef readonly %substream) #0 align 64 {
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
  %pcm_capture_position = getelementptr inbounds %struct.ct_atc, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %pcm_capture_position to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcm_capture_position, align 4
  %call = tail call i32 %7(ptr noundef %1, ptr noundef %5) #6
  %mul.i = shl i32 %call, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %8 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %9
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %10 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %11)
  %cmp.not = icmp ult i32 %div.i, %11
  %spec.store.select = select i1 %cmp.not, i32 %div.i, i32 0
  ret i32 %spec.store.select
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !16, !18, !19, !20, !21, !23, !25, !27, !28, !29, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/ctxfi/ctpcm.c", i32 425, i32 31}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/ctxfi/ctpcm.c", i32 428, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ct_alsa_pcm_create._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @ct_alsa_pcm_create._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @ct_pcm_playback_ops, !11, !"ct_pcm_playback_ops", i1 false, i1 false}
!11 = !{!"../sound/pci/ctxfi/ctpcm.c", i32 367, i32 33}
!12 = !{ptr @ct_spdif_passthru_playback_hw, !13, !"ct_spdif_passthru_playback_hw", i1 false, i1 false}
!13 = !{!"../sound/pci/ctxfi/ctpcm.c", i32 45, i32 38}
!14 = !{ptr @ct_pcm_playback_hw, !15, !"ct_pcm_playback_hw", i1 false, i1 false}
!15 = !{!"../sound/pci/ctxfi/ctpcm.c", i32 20, i32 38}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/pci/ctxfi/ctpcm.c", i32 211, i32 3}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ct_pcm_playback_prepare._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @ct_pcm_playback_prepare._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @ct_pcm_capture_ops, !22, !"ct_pcm_capture_ops", i1 false, i1 false}
!22 = !{!"../sound/pci/ctxfi/ctpcm.c", i32 378, i32 33}
!23 = !{ptr @ct_pcm_capture_hw, !24, !"ct_pcm_capture_hw", i1 false, i1 false}
!24 = !{!"../sound/pci/ctxfi/ctpcm.c", i32 68, i32 38}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/pci/ctxfi/ctpcm.c", i32 320, i32 3}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ct_pcm_capture_prepare._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @ct_pcm_capture_prepare._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @surround_map, !31, !"surround_map", i1 false, i1 false}
!31 = !{!"../sound/pci/ctxfi/ctpcm.c", i32 388, i32 40}
!32 = !{ptr @clfe_map, !33, !"clfe_map", i1 false, i1 false}
!33 = !{!"../sound/pci/ctxfi/ctpcm.c", i32 396, i32 40}
!34 = !{ptr @side_map, !35, !"side_map", i1 false, i1 false}
!35 = !{!"../sound/pci/ctxfi/ctpcm.c", i32 404, i32 40}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"auto-init"}
