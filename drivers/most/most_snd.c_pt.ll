; ModuleID = '/llk/IR_all_yes/drivers/most/most_snd.c_pt.bc'
source_filename = "../drivers/most/most_snd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.most_component = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sample_resolution_info = type { ptr, i32, i64 }
%struct.most_channel_config = type { i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.sound_adapter = type { %struct.list_head, ptr, ptr, %struct.list_head, i8, i32 }
%struct.most_interface = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.channel = type { ptr, %struct.snd_pcm_hardware, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i8, ptr, %struct.wait_queue_head, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.mbo = type { ptr, ptr, %struct.list_head, ptr, ptr, i16, ptr, i32, i16, i16, i32, ptr }
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
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@comp = internal global { %struct.most_component, [60 x i8] } { %struct.most_component { %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @audio_probe_channel, ptr @audio_disconnect_channel, ptr @audio_rx_completion, ptr @audio_tx_completion, ptr @audio_create_sound_card }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_most_snd__232_740_audio_init6 = internal global ptr @audio_init, section ".initcall6.init", align 4
@__exitcall_audio_exit = internal global ptr @audio_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file233 = internal constant [36 x i8] c"most_snd.file=drivers/most/most_snd\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [21 x i8] c"most_snd.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author235 = internal constant [64 x i8] c"most_snd.author=Christian Gromm <christian.gromm@microchip.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [57 x i8] c"most_snd.description=Sound Component Module for Mostcore\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sound\00", [26 x i8] zeroinitializer }, align 32
@audio_probe_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013most_snd: Incompatible channel type\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"audio_probe_channel\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/most/most_snd.c\00", [40 x i8] zeroinitializer }, align 32
@audio_probe_channel._entry_ptr = internal global ptr @audio_probe_channel._entry, section ".printk_index", align 4
@adpt_list = internal global { %struct.list_head, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INIC\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Microchip INIC\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s at %s\00", [23 x i8] zeroinitializer }, align 32
@audio_probe_channel._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013most_snd: channel (%s:%d) is already linked\0A\00", [49 x i8] zeroinitializer }, align 32
@audio_probe_channel._entry_ptr.10 = internal global ptr @audio_probe_channel._entry.8, section ".printk_index", align 4
@audio_probe_channel.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&channel->playback_waitq\00", [39 x i8] zeroinitializer }, align 32
@pcm_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @pcm_open, ptr @pcm_close, ptr null, ptr null, ptr null, ptr @pcm_prepare, ptr @pcm_trigger, ptr null, ptr @pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"x\00", [30 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c".\0A\00", [29 x i8] zeroinitializer }, align 32
@split_arg_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013most_snd: Bad PCM format\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"split_arg_list\00", [17 x i8] zeroinitializer }, align 32
@split_arg_list._entry_ptr = internal global ptr @split_arg_list._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sinfo = internal constant { [4 x %struct.sample_resolution_info], [32 x i8] } { [4 x %struct.sample_resolution_info] [%struct.sample_resolution_info { ptr @.str.24, i32 1, i64 1 }, %struct.sample_resolution_info { ptr @.str.25, i32 2, i64 12 }, %struct.sample_resolution_info { ptr @.str.26, i32 3, i64 12884901888 }, %struct.sample_resolution_info { ptr @.str.27, i32 4, i64 3072 }], [32 x i8] zeroinitializer }, align 32
@audio_set_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013most_snd: Unsupported PCM format\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"audio_set_hw_params\00", [44 x i8] zeroinitializer }, align 32
@audio_set_hw_params._entry_ptr = internal global ptr @audio_set_hw_params._entry, section ".printk_index", align 4
@audio_set_hw_params._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.3, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013most_snd: Bad number of channels\0A\00", [60 x i8] zeroinitializer }, align 32
@audio_set_hw_params._entry_ptr.20 = internal global ptr @audio_set_hw_params._entry.18, section ".printk_index", align 4
@audio_set_hw_params._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.3, i32 466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013most_snd: Audio resolution doesn't fit subbuffer size\0A\00", [39 x i8] zeroinitializer }, align 32
@audio_set_hw_params._entry_ptr.23 = internal global ptr @audio_set_hw_params._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"8\00", [30 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"16\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"24\00", [29 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"32\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"most_audio_playback\00", [44 x i8] zeroinitializer }, align 32
@pcm_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013most_snd: Couldn't start thread\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcm_open\00", [23 x i8] zeroinitializer }, align 32
@pcm_open._entry_ptr = internal global ptr @pcm_open._entry, section ".printk_index", align 4
@pcm_open._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.3, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013most_snd: most_start_channel() failed!\0A\00", [54 x i8] zeroinitializer }, align 32
@pcm_open._entry_ptr.33 = internal global ptr @pcm_open._entry.31, section ".printk_index", align 4
@audio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013most_snd: Failed to register %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audio_init\00", [21 x i8] zeroinitializer }, align 32
@audio_init._entry_ptr = internal global ptr @audio_init._entry, section ".printk_index", align 4
@audio_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013most_snd: Failed to register %s configfs subsys\0A\00", [45 x i8] zeroinitializer }, align 32
@audio_init._entry_ptr.38 = internal global ptr @audio_init._entry.36, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.41 = private unnamed_addr constant [5 x i8] c"comp\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 705, i32 30 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 707, i32 10 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 527, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [10 x i8] c"adpt_list\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 67, i32 25 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 551, i32 44 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 558, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 560, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 563, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 584, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [8 x i8] c"pcm_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 406, i32 33 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 419, i32 21 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 425, i32 29 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 431, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [6 x i8] c"sinfo\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 439, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 456, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 461, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 466, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 440, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 441, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 442, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 443, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 273, i32 28 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 276, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 283, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 723, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.168 = private constant [27 x i8] c"../drivers/most/most_snd.c\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 728, i32 3 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_audio_exit, ptr @__initcall__kmod_most_snd__232_740_audio_init6, ptr @audio_exit, ptr @audio_init._entry, ptr @audio_init._entry.36, ptr @audio_init._entry_ptr, ptr @audio_init._entry_ptr.38, ptr @audio_probe_channel._entry, ptr @audio_probe_channel._entry.8, ptr @audio_probe_channel._entry_ptr, ptr @audio_probe_channel._entry_ptr.10, ptr @audio_set_hw_params._entry, ptr @audio_set_hw_params._entry.18, ptr @audio_set_hw_params._entry.21, ptr @audio_set_hw_params._entry_ptr, ptr @audio_set_hw_params._entry_ptr.20, ptr @audio_set_hw_params._entry_ptr.23, ptr @pcm_open._entry, ptr @pcm_open._entry.31, ptr @pcm_open._entry_ptr, ptr @pcm_open._entry_ptr.33, ptr @split_arg_list._entry, ptr @split_arg_list._entry_ptr, ptr @comp, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @adpt_list, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @audio_probe_channel.__key, ptr @.str.11, ptr @pcm_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @sinfo, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comp to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_probe_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adpt_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_probe_channel._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_probe_channel.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @split_arg_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sinfo to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_set_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_set_hw_params._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_set_hw_params._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_open._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @audio_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @most_deregister_configfs_subsys(ptr noundef nonnull @comp) #13
  %call = tail call i32 @most_deregister_component(ptr noundef nonnull @comp) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @most_deregister_configfs_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @most_deregister_component(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @audio_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  store volatile ptr @adpt_list, ptr @adpt_list, align 4
  store ptr @adpt_list, ptr getelementptr inbounds (%struct.list_head, ptr @adpt_list, i32 0, i32 1), align 4
  %call = tail call i32 @most_register_component(ptr noundef nonnull @comp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = load ptr, ptr getelementptr inbounds (%struct.most_component, ptr @comp, i32 0, i32 1), align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %0) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @most_register_configfs_subsys(ptr noundef nonnull @comp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %1 = load ptr, ptr getelementptr inbounds (%struct.most_component, ptr @comp, i32 0, i32 1), align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %1) #16
  %call10 = tail call i32 @most_deregister_component(ptr noundef nonnull @comp) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call2, %do.end7 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @audio_probe_channel(ptr noundef %iface, i32 noundef %channel_id, ptr noundef %cfg, ptr noundef %device_name, ptr noundef %arg_list) #2 align 64 {
entry:
  %buf.addr.i = alloca ptr, align 4
  %pcm = alloca ptr, align 4
  %ch_num = alloca i16, align 2
  %arg_list_cpy = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #13
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !101
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ch_num) #13
  %1 = ptrtoint ptr %ch_num to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %ch_num, align 2, !annotation !101
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %arg_list_cpy) #13
  %2 = call ptr @memset(ptr %arg_list_cpy, i32 255, i32 80)
  %data_type = getelementptr inbounds %struct.most_channel_config, ptr %cfg, i32 0, i32 1
  %3 = ptrtoint ptr %data_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %4)
  %cmp.not = icmp eq i32 %4, 32
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @strscpy(ptr noundef nonnull %arg_list_cpy, ptr noundef %arg_list, i32 noundef 80) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.addr.i)
  %5 = ptrtoint ptr %buf.addr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arg_list_cpy, ptr %buf.addr.i, align 4
  %call.i = call ptr @strsep(ptr noundef nonnull %buf.addr.i, ptr noundef nonnull @.str.12) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.split_arg_list.exit.thread_crit_edge, label %if.end.i

if.end.split_arg_list.exit.thread_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %split_arg_list.exit.thread

if.end.i:                                         ; preds = %if.end
  %call1.i = call i32 @kstrtou16(ptr noundef nonnull %call.i, i32 noundef 0, ptr noundef nonnull %ch_num) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.split_arg_list.exit.thread_crit_edge

if.end.i.split_arg_list.exit.thread_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %split_arg_list.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call ptr @strsep(ptr noundef nonnull %buf.addr.i, ptr noundef nonnull @.str.13) #13
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.end4.i.split_arg_list.exit.thread_crit_edge, label %split_arg_list.exit

if.end4.i.split_arg_list.exit.thread_crit_edge:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %split_arg_list.exit.thread

split_arg_list.exit.thread:                       ; preds = %if.end4.i.split_arg_list.exit.thread_crit_edge, %if.end.i.split_arg_list.exit.thread_crit_edge, %if.end.split_arg_list.exit.thread_crit_edge
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.addr.i)
  br label %cleanup

split_arg_list.exit:                              ; preds = %if.end4.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.addr.i)
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %split_arg_list.exit
  %.pn.in = phi ptr [ @adpt_list, %split_arg_list.exit ], [ %.pn, %for.body.for.cond_crit_edge ]
  %6 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp8.not = icmp eq ptr %.pn, @adpt_list
  br i1 %cmp8.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %iface9 = getelementptr i8, ptr %.pn, i32 -8
  %7 = ptrtoint ptr %iface9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iface9, align 4
  %cmp10.not = icmp eq ptr %8, %iface
  br i1 %cmp10.not, label %if.end12, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.end12:                                         ; preds = %for.body
  %registered = getelementptr i8, ptr %.pn, i32 8
  %9 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %registered, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.end14, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %adpt.0.le = getelementptr i8, ptr %.pn, i32 -16
  %pcm_dev_idx = getelementptr i8, ptr %.pn, i32 12
  %11 = ptrtoint ptr %pcm_dev_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pcm_dev_idx, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %pcm_dev_idx, align 4
  br label %skip_adpt_alloc

for.end:                                          ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 32) #17
  %tobool20.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool20.not, label %for.end.cleanup_crit_edge, label %if.end22

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end22:                                         ; preds = %for.end
  %iface23 = getelementptr inbounds %struct.sound_adapter, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %iface23 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %iface, ptr %iface23, align 8
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %priv = getelementptr inbounds %struct.most_interface, ptr %iface, i32 0, i32 13
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %priv, align 4
  %list24 = getelementptr inbounds %struct.sound_adapter, ptr %call7.i.i, i32 0, i32 3
  %18 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @adpt_list, i32 0, i32 1), align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list24, ptr noundef %18, ptr noundef nonnull @adpt_list) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end22.list_add_tail.exit_crit_edge

if.end22.list_add_tail.exit_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  store ptr %list24, ptr getelementptr inbounds (%struct.list_head, ptr @adpt_list, i32 0, i32 1), align 4
  %19 = ptrtoint ptr %list24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @adpt_list, ptr %list24, align 8
  %prev3.i.i = getelementptr inbounds %struct.sound_adapter, ptr %call7.i.i, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %prev3.i.i, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %list24, ptr %18, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end22.list_add_tail.exit_crit_edge
  %driver_dev = getelementptr inbounds %struct.most_interface, ptr %iface, i32 0, i32 1
  %22 = ptrtoint ptr %driver_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_dev, align 4
  %card = getelementptr inbounds %struct.sound_adapter, ptr %call7.i.i, i32 0, i32 2
  %call25 = call i32 @snd_card_new(ptr noundef %23, i32 noundef -1, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 168, ptr noundef %card) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %list_add_tail.exit.err_free_adpt_crit_edge, label %if.end28

list_add_tail.exit.err_free_adpt_crit_edge:       ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_adpt

if.end28:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %25, i32 0, i32 2
  %26 = call ptr @memcpy(ptr %driver, ptr @.str, i32 6)
  %27 = load ptr, ptr %card, align 4
  %shortname = getelementptr inbounds %struct.snd_card, ptr %27, i32 0, i32 3
  %28 = call ptr @memcpy(ptr %shortname, ptr @.str.6, i32 15)
  %29 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %29, i32 0, i32 4
  %shortname38 = getelementptr inbounds %struct.snd_card, ptr %29, i32 0, i32 3
  %description = getelementptr inbounds %struct.most_interface, ptr %iface, i32 0, i32 4
  %30 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %description, align 4
  %call40 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %longname, i32 noundef 80, ptr noundef nonnull @.str.7, ptr noundef %shortname38, ptr noundef %31)
  br label %skip_adpt_alloc

skip_adpt_alloc:                                  ; preds = %if.end28, %if.end14
  %adpt.1 = phi ptr [ %adpt.0.le, %if.end14 ], [ %call7.i.i, %if.end28 ]
  %priv.i = getelementptr inbounds %struct.most_interface, ptr %iface, i32 0, i32 13
  %32 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn19.i = load ptr, ptr %33, align 4
  %cmp.not20.i = icmp eq ptr %.pn19.i, %33
  br i1 %cmp.not20.i, label %skip_adpt_alloc.if.end50_crit_edge, label %skip_adpt_alloc.for.body.i_crit_edge

skip_adpt_alloc.for.body.i_crit_edge:             ; preds = %skip_adpt_alloc
  br label %for.body.i

skip_adpt_alloc.if.end50_crit_edge:               ; preds = %skip_adpt_alloc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %skip_adpt_alloc.for.body.i_crit_edge
  %.pn21.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn19.i, %skip_adpt_alloc.for.body.i_crit_edge ]
  %iface2.i = getelementptr i8, ptr %.pn21.i, i32 -12
  %35 = ptrtoint ptr %iface2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iface2.i, align 8
  %cmp3.i = icmp eq ptr %36, %iface
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %id.i = getelementptr i8, ptr %.pn21.i, i32 8
  %37 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %channel_id)
  %cmp4.i = icmp eq i32 %38, %channel_id
  br i1 %cmp4.i, label %get_channel.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %39 = ptrtoint ptr %.pn21.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn.i = load ptr, ptr %.pn21.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %33
  br i1 %cmp.not.i, label %for.inc.i.if.end50_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.if.end50_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

get_channel.exit:                                 ; preds = %land.lhs.true.i
  %channel.0.le.i = getelementptr i8, ptr %.pn21.i, i32 -84
  %tobool42.not = icmp eq ptr %channel.0.le.i, null
  br i1 %tobool42.not, label %get_channel.exit.if.end50_crit_edge, label %do.end46

get_channel.exit.if.end50_crit_edge:              ; preds = %get_channel.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

do.end46:                                         ; preds = %get_channel.exit
  call void @__sanitizer_cov_trace_pc() #15
  %description48 = getelementptr inbounds %struct.most_interface, ptr %iface, i32 0, i32 4
  %40 = ptrtoint ptr %description48 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %description48, align 4
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %41, i32 noundef %channel_id) #16
  br label %cleanup

if.end50:                                         ; preds = %get_channel.exit.if.end50_crit_edge, %for.inc.i.if.end50_crit_edge, %skip_adpt_alloc.if.end50_crit_edge
  %42 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp52 = icmp eq i32 %43, 2
  %not.cmp52 = xor i1 %cmp52, true
  %. = zext i1 %not.cmp52 to i32
  %.135 = zext i1 %cmp52 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %44 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i137 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 3520, i32 noundef 168) #17
  %tobool56.not = icmp eq ptr %call7.i.i137, null
  br i1 %tobool56.not, label %if.end50.err_free_adpt_crit_edge, label %if.end58

if.end50.err_free_adpt_crit_edge:                 ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_adpt

if.end58:                                         ; preds = %if.end50
  %card59 = getelementptr inbounds %struct.sound_adapter, ptr %adpt.1, i32 0, i32 2
  %45 = ptrtoint ptr %card59 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %card59, align 4
  %card60 = getelementptr inbounds %struct.channel, ptr %call7.i.i137, i32 0, i32 4
  %47 = ptrtoint ptr %card60 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %card60, align 8
  %cfg61 = getelementptr inbounds %struct.channel, ptr %call7.i.i137, i32 0, i32 3
  %48 = ptrtoint ptr %cfg61 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %cfg, ptr %cfg61, align 4
  %iface62 = getelementptr inbounds %struct.channel, ptr %call7.i.i137, i32 0, i32 2
  %49 = ptrtoint ptr %iface62 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %iface, ptr %iface62, align 8
  %id = getelementptr inbounds %struct.channel, ptr %call7.i.i137, i32 0, i32 6
  %50 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %channel_id, ptr %id, align 4
  %playback_waitq = getelementptr inbounds %struct.channel, ptr %call7.i.i137, i32 0, i32 11
  call void @__init_waitqueue_head(ptr noundef %playback_waitq, ptr noundef nonnull @.str.11, ptr noundef nonnull @audio_probe_channel.__key) #13
  %list66 = getelementptr inbounds %struct.channel, ptr %call7.i.i137, i32 0, i32 5
  %prev.i139 = getelementptr inbounds %struct.list_head, ptr %adpt.1, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i139 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i139, align 4
  %call.i.i140 = call zeroext i1 @__list_add_valid(ptr noundef %list66, ptr noundef %52, ptr noundef %adpt.1) #13
  br i1 %call.i.i140, label %if.end.i.i142, label %if.end58.list_add_tail.exit143_crit_edge

if.end58.list_add_tail.exit143_crit_edge:         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit143

if.end.i.i142:                                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %prev.i139 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %list66, ptr %prev.i139, align 4
  %54 = ptrtoint ptr %list66 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %adpt.1, ptr %list66, align 4
  %prev3.i.i141 = getelementptr inbounds %struct.channel, ptr %call7.i.i137, i32 0, i32 5, i32 1
  %55 = ptrtoint ptr %prev3.i.i141 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev3.i.i141, align 8
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %list66, ptr %52, align 4
  br label %list_add_tail.exit143

list_add_tail.exit143:                            ; preds = %if.end.i.i142, %if.end58.list_add_tail.exit143_crit_edge
  %pcm_hardware = getelementptr inbounds %struct.channel, ptr %call7.i.i137, i32 0, i32 1
  %57 = ptrtoint ptr %ch_num to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %ch_num, align 2
  %call.i144 = call i32 @strcmp(ptr noundef nonnull %call5.i, ptr noundef nonnull dereferenceable(2) @.str.24) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool.not.i145 = icmp eq i32 %call.i144, 0
  br i1 %tobool.not.i145, label %list_add_tail.exit143.found.i_crit_edge, label %for.inc.i146

list_add_tail.exit143.found.i_crit_edge:          ; preds = %list_add_tail.exit143
  call void @__sanitizer_cov_trace_pc() #15
  br label %found.i

for.inc.i146:                                     ; preds = %list_add_tail.exit143
  %call.1.i = call i32 @strcmp(ptr noundef nonnull %call5.i, ptr noundef nonnull dereferenceable(3) @.str.25) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i146.found.i_crit_edge, label %for.inc.1.i

for.inc.i146.found.i_crit_edge:                   ; preds = %for.inc.i146
  call void @__sanitizer_cov_trace_pc() #15
  br label %found.i

for.inc.1.i:                                      ; preds = %for.inc.i146
  %call.2.i = call i32 @strcmp(ptr noundef nonnull %call5.i, ptr noundef nonnull dereferenceable(3) @.str.26) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.found.i_crit_edge, label %for.inc.2.i

for.inc.1.i.found.i_crit_edge:                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %found.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %call.3.i = call i32 @strcmp(ptr noundef nonnull %call5.i, ptr noundef nonnull dereferenceable(3) @.str.27) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.found.i_crit_edge, label %for.inc.2.i.err_free_adpt.sink.split_crit_edge

for.inc.2.i.err_free_adpt.sink.split_crit_edge:   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_adpt.sink.split

for.inc.2.i.found.i_crit_edge:                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %found.i

found.i:                                          ; preds = %for.inc.2.i.found.i_crit_edge, %for.inc.1.i.found.i_crit_edge, %for.inc.i146.found.i_crit_edge, %list_add_tail.exit143.found.i_crit_edge
  %i.059.lcssa.i = phi i32 [ 0, %list_add_tail.exit143.found.i_crit_edge ], [ 1, %for.inc.i146.found.i_crit_edge ], [ 2, %for.inc.1.i.found.i_crit_edge ], [ 3, %for.inc.2.i.found.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool3.not.i = icmp eq i16 %58, 0
  br i1 %tobool3.not.i, label %found.i.err_free_adpt.sink.split_crit_edge, label %if.end10.i

found.i.err_free_adpt.sink.split_crit_edge:       ; preds = %found.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_adpt.sink.split

if.end10.i:                                       ; preds = %found.i
  %subbuffer_size.i = getelementptr inbounds %struct.most_channel_config, ptr %cfg, i32 0, i32 5
  %59 = ptrtoint ptr %subbuffer_size.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %subbuffer_size.i, align 2
  %conv.i = zext i16 %60 to i32
  %conv11.i = zext i16 %58 to i32
  %bytes.i = getelementptr [4 x %struct.sample_resolution_info], ptr @sinfo, i32 0, i32 %i.059.lcssa.i, i32 1
  %61 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bytes.i, align 4
  %mul.i = mul i32 %62, %conv11.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %conv.i)
  %cmp13.not.i = icmp eq i32 %mul.i, %conv.i
  br i1 %cmp13.not.i, label %if.end71, label %if.end10.i.err_free_adpt.sink.split_crit_edge

if.end10.i.err_free_adpt.sink.split_crit_edge:    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_adpt.sink.split

if.end71:                                         ; preds = %if.end10.i
  %63 = ptrtoint ptr %pcm_hardware to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 65811, ptr %pcm_hardware, align 8
  %rates.i = getelementptr inbounds %struct.channel, ptr %call7.i.i137, i32 0, i32 1, i32 2
  %64 = ptrtoint ptr %rates.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 128, ptr %rates.i, align 8
  %rate_min.i = getelementptr inbounds %struct.channel, ptr %call7.i.i137, i32 0, i32 1, i32 3
  %65 = ptrtoint ptr %rate_min.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 48000, ptr %rate_min.i, align 4
  %rate_max.i = getelementptr inbounds %struct.channel, ptr %call7.i.i137, i32 0, i32 1, i32 4
  %66 = ptrtoint ptr %rate_max.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 48000, ptr %rate_max.i, align 8
  %num_buffers.i = getelementptr inbounds %struct.most_channel_config, ptr %cfg, i32 0, i32 2
  %67 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %num_buffers.i, align 4
  %conv22.i = zext i16 %68 to i32
  %buffer_size.i = getelementptr inbounds %struct.most_channel_config, ptr %cfg, i32 0, i32 3
  %69 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %buffer_size.i, align 2
  %conv23.i = zext i16 %70 to i32
  %mul24.i = mul nuw i32 %conv23.i, %conv22.i
  %buffer_bytes_max.i = getelementptr inbounds %struct.channel, ptr %call7.i.i137, i32 0, i32 1, i32 7
  %71 = ptrtoint ptr %buffer_bytes_max.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %mul24.i, ptr %buffer_bytes_max.i, align 4
  %period_bytes_min.i = getelementptr inbounds %struct.channel, ptr %call7.i.i137, i32 0, i32 1, i32 8
  %72 = ptrtoint ptr %period_bytes_min.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %conv23.i, ptr %period_bytes_min.i, align 8
  %period_bytes_max.i = getelementptr inbounds %struct.channel, ptr %call7.i.i137, i32 0, i32 1, i32 9
  %73 = ptrtoint ptr %period_bytes_max.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %conv23.i, ptr %period_bytes_max.i, align 4
  %periods_min.i = getelementptr inbounds %struct.channel, ptr %call7.i.i137, i32 0, i32 1, i32 10
  %74 = ptrtoint ptr %periods_min.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %periods_min.i, align 8
  %periods_max.i = getelementptr inbounds %struct.channel, ptr %call7.i.i137, i32 0, i32 1, i32 11
  %75 = ptrtoint ptr %periods_max.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv22.i, ptr %periods_max.i, align 4
  %channels_min.i = getelementptr inbounds %struct.channel, ptr %call7.i.i137, i32 0, i32 1, i32 5
  %76 = ptrtoint ptr %channels_min.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %conv11.i, ptr %channels_min.i, align 4
  %channels_max.i = getelementptr inbounds %struct.channel, ptr %call7.i.i137, i32 0, i32 1, i32 6
  %77 = ptrtoint ptr %channels_max.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv11.i, ptr %channels_max.i, align 8
  %formats.i = getelementptr [4 x %struct.sample_resolution_info], ptr @sinfo, i32 0, i32 %i.059.lcssa.i, i32 2
  %78 = ptrtoint ptr %formats.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %formats.i, align 8
  %formats34.i = getelementptr inbounds %struct.channel, ptr %call7.i.i137, i32 0, i32 1, i32 1
  %80 = ptrtoint ptr %formats34.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %formats34.i, align 8
  %81 = ptrtoint ptr %card59 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %card59, align 4
  %pcm_dev_idx73 = getelementptr inbounds %struct.sound_adapter, ptr %adpt.1, i32 0, i32 5
  %83 = ptrtoint ptr %pcm_dev_idx73 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pcm_dev_idx73, align 4
  %call74 = call i32 @snd_pcm_new(ptr noundef %82, ptr noundef %device_name, i32 noundef %84, i32 noundef %.135, i32 noundef %., ptr noundef nonnull %pcm) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %if.end71.err_free_adpt_crit_edge, label %if.end77

if.end71.err_free_adpt_crit_edge:                 ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_adpt

if.end77:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  %85 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pcm, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %86, i32 0, i32 11
  %87 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call7.i.i137, ptr %private_data, align 8
  %name = getelementptr inbounds %struct.snd_pcm, ptr %86, i32 0, i32 7
  %call79 = call i32 @strscpy(ptr noundef %name, ptr noundef %device_name, i32 noundef 80) #13
  %88 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %89, i32 noundef %., ptr noundef nonnull @pcm_ops) #13
  %90 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pcm, align 4
  %call80 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %91, i32 noundef 7, ptr noundef null, i32 noundef 0, i32 noundef 0) #13
  br label %cleanup

err_free_adpt.sink.split:                         ; preds = %if.end10.i.err_free_adpt.sink.split_crit_edge, %found.i.err_free_adpt.sink.split_crit_edge, %for.inc.2.i.err_free_adpt.sink.split_crit_edge
  %.str.16.sink = phi ptr [ @.str.16, %for.inc.2.i.err_free_adpt.sink.split_crit_edge ], [ @.str.19, %found.i.err_free_adpt.sink.split_crit_edge ], [ @.str.22, %if.end10.i.err_free_adpt.sink.split_crit_edge ]
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.16.sink) #16
  br label %err_free_adpt

err_free_adpt:                                    ; preds = %err_free_adpt.sink.split, %if.end71.err_free_adpt_crit_edge, %if.end50.err_free_adpt_crit_edge, %list_add_tail.exit.err_free_adpt_crit_edge
  %ret.0 = phi i32 [ %call74, %if.end71.err_free_adpt_crit_edge ], [ %call25, %list_add_tail.exit.err_free_adpt_crit_edge ], [ -12, %if.end50.err_free_adpt_crit_edge ], [ -22, %err_free_adpt.sink.split ]
  %adpt.2 = phi ptr [ %adpt.1, %if.end71.err_free_adpt_crit_edge ], [ %call7.i.i, %list_add_tail.exit.err_free_adpt_crit_edge ], [ %adpt.1, %if.end50.err_free_adpt_crit_edge ], [ %adpt.1, %err_free_adpt.sink.split ]
  call fastcc void @release_adapter(ptr noundef %adpt.2)
  br label %cleanup

cleanup:                                          ; preds = %err_free_adpt, %if.end77, %do.end46, %for.end.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %split_arg_list.exit.thread, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -17, %do.end46 ], [ %ret.0, %err_free_adpt ], [ 0, %if.end77 ], [ -28, %if.end12.cleanup_crit_edge ], [ -12, %for.end.cleanup_crit_edge ], [ -22, %split_arg_list.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %arg_list_cpy) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ch_num) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @audio_disconnect_channel(ptr noundef readonly %iface, i32 noundef %channel_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.most_interface, ptr %iface, i32 0, i32 13
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn19.i = load ptr, ptr %1, align 4
  %cmp.not20.i = icmp eq ptr %.pn19.i, %1
  br i1 %cmp.not20.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn21.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn19.i, %entry.for.body.i_crit_edge ]
  %iface2.i = getelementptr i8, ptr %.pn21.i, i32 -12
  %3 = ptrtoint ptr %iface2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iface2.i, align 8
  %cmp3.i = icmp eq ptr %4, %iface
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %id.i = getelementptr i8, ptr %.pn21.i, i32 8
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %channel_id)
  %cmp4.i = icmp eq i32 %6, %channel_id
  br i1 %cmp4.i, label %get_channel.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %7 = ptrtoint ptr %.pn21.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn21.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %1
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

get_channel.exit:                                 ; preds = %land.lhs.true.i
  %channel.0.le.i = getelementptr i8, ptr %.pn21.i, i32 -84
  %tobool.not = icmp eq ptr %channel.0.le.i, null
  br i1 %tobool.not, label %get_channel.exit.cleanup_crit_edge, label %if.end

get_channel.exit.cleanup_crit_edge:               ; preds = %get_channel.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %get_channel.exit
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn21.i) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn21.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %.pn21.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %.pn21.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %14 = ptrtoint ptr %.pn21.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn21.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn21.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %channel.0.le.i) #13
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %1, align 4
  %cmp.i.not = icmp eq ptr %17, %1
  br i1 %cmp.i.not, label %if.then3, label %list_del.exit.cleanup_crit_edge

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @release_adapter(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %list_del.exit.cleanup_crit_edge, %get_channel.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %get_channel.exit.cleanup_crit_edge ], [ 0, %if.then3 ], [ 0, %list_del.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @audio_rx_completion(ptr noundef %mbo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ifp = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 3
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  %hdm_channel_id = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 5
  %2 = ptrtoint ptr %hdm_channel_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hdm_channel_id, align 4
  %conv = zext i16 %3 to i32
  %priv.i = getelementptr inbounds %struct.most_interface, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn19.i = load ptr, ptr %5, align 4
  %cmp.not20.i = icmp eq ptr %.pn19.i, %5
  br i1 %cmp.not20.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn21.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn19.i, %entry.for.body.i_crit_edge ]
  %iface2.i = getelementptr i8, ptr %.pn21.i, i32 -12
  %7 = ptrtoint ptr %iface2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iface2.i, align 8
  %cmp3.i = icmp eq ptr %8, %1
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %id.i = getelementptr i8, ptr %.pn21.i, i32 8
  %9 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv)
  %cmp4.i = icmp eq i32 %10, %conv
  br i1 %cmp4.i, label %get_channel.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %11 = ptrtoint ptr %.pn21.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load ptr, ptr %.pn21.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %5
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

get_channel.exit:                                 ; preds = %land.lhs.true.i
  %channel.0.le.i = getelementptr i8, ptr %.pn21.i, i32 -84
  %tobool.not = icmp eq ptr %channel.0.le.i, null
  br i1 %tobool.not, label %get_channel.exit.cleanup_crit_edge, label %if.end

get_channel.exit.cleanup_crit_edge:               ; preds = %get_channel.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %get_channel.exit
  %is_stream_running = getelementptr i8, ptr %.pn21.i, i32 20
  %12 = ptrtoint ptr %is_stream_running to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_stream_running, align 8, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.not = icmp eq i8 %13, 0
  br i1 %tobool1.not, label %if.end7.critedge, label %if.then2

if.then2:                                         ; preds = %if.end
  %14 = ptrtoint ptr %channel.0.le.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %channel.0.le.i, align 8
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %runtime1.i, align 4
  %cfg.i = getelementptr i8, ptr %.pn21.i, i32 -8
  %18 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfg.i, align 4
  %subbuffer_size.i = getelementptr inbounds %struct.most_channel_config, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %subbuffer_size.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %subbuffer_size.i, align 2
  %conv.i = zext i16 %21 to i32
  %buffer_size2.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %17, i32 0, i32 18
  %22 = ptrtoint ptr %buffer_size2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buffer_size2.i, align 4
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %19, align 4
  %and.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %processed_length.i = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 9
  %buffer_length.i = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 8
  %.pn.in.i = select i1 %tobool.not.i, ptr %buffer_length.i, ptr %processed_length.i
  %26 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %.pn.i15 = load i16, ptr %.pn.in.i, align 2
  %frames.0.in.i = udiv i16 %.pn.i15, %21
  %frames.0.i = zext i16 %frames.0.in.i to i32
  %buffer_pos.i = getelementptr i8, ptr %.pn21.i, i32 16
  %27 = ptrtoint ptr %buffer_pos.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %buffer_pos.i, align 4
  %sub.i = sub i32 %23, %28
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %frames.0.i)
  %cmp.i = icmp ult i32 %sub.i, %frames.0.i
  %29 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %frames.0.i) #13
  %copy_fn.i = getelementptr i8, ptr %.pn21.i, i32 80
  %30 = ptrtoint ptr %copy_fn.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %copy_fn.i, align 4
  %dma_area.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %17, i32 0, i32 50
  %32 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dma_area.i, align 4
  %mul.i = mul i32 %28, %conv.i
  %add.ptr.i = getelementptr i8, ptr %33, i32 %mul.i
  %virt_address.i = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 6
  %34 = ptrtoint ptr %virt_address.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %virt_address.i, align 4
  %mul9.i = mul nuw i32 %29, %conv.i
  tail call void %31(ptr noundef %add.ptr.i, ptr noundef %35, i32 noundef %mul9.i) #13
  br i1 %cmp.i, label %if.then12.i, label %if.then2.if.end20.i_crit_edge

if.then2.if.end20.i_crit_edge:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.i

if.then12.i:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %copy_fn.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %copy_fn.i, align 4
  %38 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dma_area.i, align 4
  %40 = ptrtoint ptr %virt_address.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %virt_address.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %41, i32 %mul9.i
  %sub18.i = sub nsw i32 %frames.0.i, %29
  %mul19.i = mul i32 %sub18.i, %conv.i
  tail call void %37(ptr noundef %39, ptr noundef %add.ptr17.i, i32 noundef %mul19.i) #13
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then12.i, %if.then2.if.end20.i_crit_edge
  %42 = ptrtoint ptr %buffer_pos.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %buffer_pos.i, align 4
  %add.i = add i32 %43, %frames.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %23)
  %cmp23.not.i = icmp ult i32 %add.i, %23
  %sub27.i = select i1 %cmp23.not.i, i32 0, i32 %23
  %spec.select.i = sub i32 %add.i, %sub27.i
  %44 = ptrtoint ptr %buffer_pos.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %spec.select.i, ptr %buffer_pos.i, align 4
  %period_pos.i = getelementptr i8, ptr %.pn21.i, i32 12
  %45 = ptrtoint ptr %period_pos.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %period_pos.i, align 8
  %add29.i = add i32 %46, %frames.0.i
  store i32 %add29.i, ptr %period_pos.i, align 8
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %17, i32 0, i32 16
  %47 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %period_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add29.i, i32 %48)
  %cmp31.not.i = icmp ult i32 %add29.i, %48
  br i1 %cmp31.not.i, label %copy_data.exit, label %if.then6

copy_data.exit:                                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @most_put_mbo(ptr noundef %mbo) #13
  br label %cleanup

if.then6:                                         ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub36.i = sub i32 %add29.i, %48
  %49 = ptrtoint ptr %period_pos.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub36.i, ptr %period_pos.i, align 8
  tail call void @most_put_mbo(ptr noundef %mbo) #13
  %50 = ptrtoint ptr %channel.0.le.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %channel.0.le.i, align 8
  tail call void @snd_pcm_period_elapsed(ptr noundef %51) #13
  br label %cleanup

if.end7.critedge:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @most_put_mbo(ptr noundef %mbo) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end7.critedge, %if.then6, %copy_data.exit, %get_channel.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %get_channel.exit.cleanup_crit_edge ], [ 0, %if.end7.critedge ], [ 0, %if.then6 ], [ 0, %copy_data.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @audio_tx_completion(ptr noundef readonly %iface, i32 noundef %channel_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.most_interface, ptr %iface, i32 0, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn19.i = load ptr, ptr %1, align 4
  %cmp.not20.i = icmp eq ptr %.pn19.i, %1
  br i1 %cmp.not20.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn21.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn19.i, %entry.for.body.i_crit_edge ]
  %iface2.i = getelementptr i8, ptr %.pn21.i, i32 -12
  %3 = ptrtoint ptr %iface2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iface2.i, align 8
  %cmp3.i = icmp eq ptr %4, %iface
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %id.i = getelementptr i8, ptr %.pn21.i, i32 8
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %channel_id)
  %cmp4.i = icmp eq i32 %6, %channel_id
  br i1 %cmp4.i, label %get_channel.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %7 = ptrtoint ptr %.pn21.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn21.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %1
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

get_channel.exit:                                 ; preds = %land.lhs.true.i
  %channel.0.le.i = getelementptr i8, ptr %.pn21.i, i32 -84
  %tobool.not = icmp eq ptr %channel.0.le.i, null
  br i1 %tobool.not, label %get_channel.exit.cleanup_crit_edge, label %if.end

get_channel.exit.cleanup_crit_edge:               ; preds = %get_channel.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %get_channel.exit
  call void @__sanitizer_cov_trace_pc() #15
  %playback_waitq = getelementptr i8, ptr %.pn21.i, i32 28
  tail call void @__wake_up(ptr noundef %playback_waitq, i32 noundef 1, i32 noundef 1, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %get_channel.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %get_channel.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @audio_create_sound_card() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @adpt_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @adpt_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %registered = getelementptr i8, ptr %.pn, i32 8
  %1 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %registered, align 4, !range !102
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %adpt_alloc, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

adpt_alloc:                                       ; preds = %for.body
  %card = getelementptr i8, ptr %.pn, i32 -4
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card, align 4
  %call = tail call i32 @snd_card_register(ptr noundef %4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %adpt_alloc
  call void @__sanitizer_cov_trace_pc() #15
  %adpt.0.le = getelementptr i8, ptr %.pn, i32 -16
  tail call fastcc void @release_adapter(ptr noundef %adpt.0.le)
  br label %cleanup

if.end7:                                          ; preds = %adpt_alloc
  call void @__sanitizer_cov_trace_pc() #15
  %registered.le = getelementptr i8, ptr %.pn, i32 8
  %5 = ptrtoint ptr %registered.le to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %registered.le, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then6 ], [ 0, %if.end7 ], [ -19, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @release_adapter(ptr noundef %adpt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adpt, align 4
  %cmp.not32 = icmp eq ptr %1, %adpt
  br i1 %cmp.not32, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in33 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %channel.0 = getelementptr i8, ptr %.pn.in33, i32 -84
  %2 = ptrtoint ptr %.pn.in33 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in33, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in33) #13
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in33, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in33 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in33, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in33 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in33, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in33, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %channel.0) #13
  %cmp.not = icmp eq ptr %.pn, %adpt
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %card = getelementptr inbounds %struct.sound_adapter, ptr %adpt, i32 0, i32 2
  %11 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @snd_card_free(ptr noundef nonnull %12) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %list15 = getelementptr inbounds %struct.sound_adapter, ptr %adpt, i32 0, i32 3
  %call.i.i26 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list15) #13
  br i1 %call.i.i26, label %if.end.i.i29, label %if.end.list_del.exit31_crit_edge

if.end.list_del.exit31_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit31

if.end.i.i29:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i27 = getelementptr inbounds %struct.sound_adapter, ptr %adpt, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %prev.i.i27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i27, align 4
  %15 = ptrtoint ptr %list15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %list15, align 4
  %prev1.i.i.i28 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i28 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i28, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit31

list_del.exit31:                                  ; preds = %if.end.i.i29, %if.end.list_del.exit31_crit_edge
  %19 = ptrtoint ptr %list15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %list15, align 4
  %prev.i30 = getelementptr inbounds %struct.sound_adapter, ptr %adpt, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %prev.i30 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i30, align 4
  tail call void @kfree(ptr noundef %adpt) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %cfg2 = getelementptr inbounds %struct.channel, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %cfg2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg2, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %substream, ptr %1, align 8
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp = icmp eq i32 %8, 2
  br i1 %cmp, label %if.then, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then:                                          ; preds = %entry
  %call = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @playback_thread, ptr noundef %1, i32 noundef -1, ptr noundef nonnull @.str.28) #13
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call6 = tail call i32 @wake_up_process(ptr noundef %call) #13
  %playback_task = getelementptr inbounds %struct.channel, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %playback_task to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %playback_task, align 4
  br label %if.end15

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %playback_task49 = getelementptr inbounds %struct.channel, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %playback_task49 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %playback_task49, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #16
  %11 = ptrtoint ptr %playback_task49 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %playback_task49, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end, %entry.if.end15_crit_edge
  %iface = getelementptr inbounds %struct.channel, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iface, align 8
  %id = getelementptr inbounds %struct.channel, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id, align 4
  %call16 = tail call i32 @most_start_channel(ptr noundef %15, i32 noundef %17, ptr noundef nonnull @comp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.end29, label %do.end20

do.end20:                                         ; preds = %if.end15
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #16
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp24 = icmp eq i32 %19, 2
  br i1 %cmp24, label %if.then25, label %do.end20.cleanup_crit_edge

do.end20.cleanup_crit_edge:                       ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then25:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #15
  %playback_task26 = getelementptr inbounds %struct.channel, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %playback_task26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %playback_task26, align 4
  %call27 = tail call i32 @kthread_stop(ptr noundef %21) #13
  br label %cleanup

if.end29:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %pcm_hardware = getelementptr inbounds %struct.channel, ptr %1, i32 0, i32 1
  %22 = call ptr @memcpy(ptr %hw, ptr %pcm_hardware, i32 64)
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then25, %do.end20.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %13, %do.end ], [ 0, %if.end29 ], [ %call16, %if.then25 ], [ %call16, %do.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cfg = getelementptr inbounds %struct.channel, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %playback_task = getelementptr inbounds %struct.channel, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %playback_task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %playback_task, align 4
  %call = tail call i32 @kthread_stop(ptr noundef %7) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %iface = getelementptr inbounds %struct.channel, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iface, align 8
  %id = getelementptr inbounds %struct.channel, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  %call1 = tail call i32 @most_stop_channel(ptr noundef %9, i32 noundef %11, ptr noundef nonnull @comp) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %cfg2 = getelementptr inbounds %struct.channel, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %cfg2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg2, align 4
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %format, align 4
  %call = tail call i32 @snd_pcm_format_physical_width(i32 noundef %7) #13
  %copy_fn = getelementptr inbounds %struct.channel, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %copy_fn to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %copy_fn, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp = icmp eq i32 %10, 2
  %11 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %format, align 4
  %call4 = tail call i32 @snd_pcm_format_big_endian(i32 noundef %12) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp ne i32 %call4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call)
  %cmp5 = icmp eq i32 %call, 8
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp5
  br i1 %cmp, label %if.then, label %if.else22

if.then:                                          ; preds = %entry
  br i1 %or.cond, label %if.then.if.end50.sink.split_crit_edge, label %if.else

if.then.if.end50.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50.sink.split

if.else:                                          ; preds = %if.then
  %13 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %if.else.if.end46_crit_edge [
    i32 16, label %if.else.if.end50.sink.split_crit_edge
    i32 24, label %if.then13
    i32 32, label %if.then17
  ]

if.else.if.end50.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50.sink.split

if.else.if.end46_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50.sink.split

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50.sink.split

if.else22:                                        ; preds = %entry
  br i1 %or.cond, label %if.else22.if.end50.sink.split_crit_edge, label %if.else30

if.else22.if.end50.sink.split_crit_edge:          ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50.sink.split

if.else30:                                        ; preds = %if.else22
  %14 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %call, label %if.else30.if.end46_crit_edge [
    i32 16, label %if.else30.if.end50.sink.split_crit_edge
    i32 24, label %if.then36
    i32 32, label %if.then40
  ]

if.else30.if.end50.sink.split_crit_edge:          ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50.sink.split

if.else30.if.end46_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then36:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50.sink.split

if.then40:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50.sink.split

if.end46:                                         ; preds = %if.else30.if.end46_crit_edge, %if.else.if.end46_crit_edge
  %15 = ptrtoint ptr %copy_fn to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load ptr, ptr %copy_fn, align 4
  %tobool48.not = icmp eq ptr %.pr, null
  br i1 %tobool48.not, label %if.end46.cleanup_crit_edge, label %if.end46.if.end50_crit_edge

if.end46.if.end50_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end50.sink.split:                              ; preds = %if.then40, %if.then36, %if.else30.if.end50.sink.split_crit_edge, %if.else22.if.end50.sink.split_crit_edge, %if.then17, %if.then13, %if.else.if.end50.sink.split_crit_edge, %if.then.if.end50.sink.split_crit_edge
  %alsa_to_most_copy16.sink = phi ptr [ @alsa_to_most_copy32, %if.then17 ], [ @alsa_to_most_copy24, %if.then13 ], [ @most_to_alsa_copy32, %if.then40 ], [ @most_to_alsa_copy24, %if.then36 ], [ @alsa_to_most_memcpy, %if.then.if.end50.sink.split_crit_edge ], [ @alsa_to_most_copy16, %if.else.if.end50.sink.split_crit_edge ], [ @most_to_alsa_memcpy, %if.else22.if.end50.sink.split_crit_edge ], [ @most_to_alsa_copy16, %if.else30.if.end50.sink.split_crit_edge ]
  %16 = ptrtoint ptr %copy_fn to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %alsa_to_most_copy16.sink, ptr %copy_fn, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end50.sink.split, %if.end46.if.end50_crit_edge
  %period_pos = getelementptr inbounds %struct.channel, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %period_pos to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %period_pos, align 8
  %buffer_pos = getelementptr inbounds %struct.channel, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %buffer_pos to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %buffer_pos, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.end46.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end50 ], [ -22, %if.end46.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %is_stream_running = getelementptr inbounds %struct.channel, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %is_stream_running to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %is_stream_running, align 8
  %playback_waitq = getelementptr inbounds %struct.channel, ptr %1, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %playback_waitq, i32 noundef 1, i32 noundef 1, ptr noundef null) #13
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %is_stream_running2 = getelementptr inbounds %struct.channel, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %is_stream_running2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %is_stream_running2, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb1, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb1 ], [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcm_pointer(ptr nocapture noundef readonly %substream) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %buffer_pos = getelementptr inbounds %struct.channel, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %buffer_pos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buffer_pos, align 4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @playback_thread(ptr noundef %data) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call78 = call zeroext i1 @kthread_should_stop() #13
  br i1 %call78, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %is_stream_running = getelementptr inbounds %struct.channel, ptr %data, i32 0, i32 9
  %iface = getelementptr inbounds %struct.channel, ptr %data, i32 0, i32 2
  %id = getelementptr inbounds %struct.channel, ptr %data, i32 0, i32 6
  %playback_waitq = getelementptr inbounds %struct.channel, ptr %data, i32 0, i32 11
  %cfg.i = getelementptr inbounds %struct.channel, ptr %data, i32 0, i32 3
  %buffer_pos.i = getelementptr inbounds %struct.channel, ptr %data, i32 0, i32 8
  %copy_fn.i = getelementptr inbounds %struct.channel, ptr %data, i32 0, i32 12
  %period_pos.i = getelementptr inbounds %struct.channel, ptr %data, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %cleanup36.while.body_crit_edge, %while.body.lr.ph
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 238) #13
  %call4 = call zeroext i1 @kthread_should_stop() #13
  br i1 %call4, label %while.body.cleanup36_crit_edge, label %lor.lhs.false

while.body.cleanup36_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup36

lor.lhs.false:                                    ; preds = %while.body
  %0 = ptrtoint ptr %is_stream_running to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_stream_running, align 8, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %land.lhs.true

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iface, align 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %call5 = call ptr @most_get_mbo(ptr noundef %3, i32 noundef %5, ptr noundef nonnull @comp) #13
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.if.end27_crit_edge

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %call872 = call i32 @prepare_to_wait_event(ptr noundef %playback_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #13
  %call973 = call zeroext i1 @kthread_should_stop() #13
  br i1 %call973, label %if.then.if.end23.thread81_crit_edge, label %if.then.lor.lhs.false10_crit_edge

if.then.lor.lhs.false10_crit_edge:                ; preds = %if.then
  br label %lor.lhs.false10

if.then.if.end23.thread81_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.thread81

lor.lhs.false10:                                  ; preds = %cleanup.lor.lhs.false10_crit_edge, %if.then.lor.lhs.false10_crit_edge
  %call874 = phi i32 [ %call8, %cleanup.lor.lhs.false10_crit_edge ], [ %call872, %if.then.lor.lhs.false10_crit_edge ]
  %7 = ptrtoint ptr %is_stream_running to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_stream_running, align 8, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool12.not = icmp eq i8 %8, 0
  br i1 %tobool12.not, label %lor.lhs.false10.if.end_crit_edge, label %land.lhs.true13

lor.lhs.false10.if.end_crit_edge:                 ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true13:                                  ; preds = %lor.lhs.false10
  %9 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iface, align 8
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  %call16 = call ptr @most_get_mbo(ptr noundef %10, i32 noundef %12, ptr noundef nonnull @comp) #13
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %land.lhs.true13.if.end_crit_edge, label %if.end23

land.lhs.true13.if.end_crit_edge:                 ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %land.lhs.true13.if.end_crit_edge, %lor.lhs.false10.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call874)
  %tobool19.not = icmp eq i32 %call874, 0
  br i1 %tobool19.not, label %cleanup, label %if.end23.thread

if.end23.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %cleanup36

cleanup:                                          ; preds = %if.end
  call void @schedule() #13
  %call8 = call i32 @prepare_to_wait_event(ptr noundef %playback_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #13
  %call9 = call zeroext i1 @kthread_should_stop() #13
  br i1 %call9, label %cleanup.if.end23.thread81_crit_edge, label %cleanup.lor.lhs.false10_crit_edge

cleanup.lor.lhs.false10_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false10

cleanup.if.end23.thread81_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.thread81

if.end23.thread81:                                ; preds = %cleanup.if.end23.thread81_crit_edge, %if.then.if.end23.thread81_crit_edge
  call void @finish_wait(ptr noundef %playback_waitq, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %cleanup36

if.end23:                                         ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #15
  call void @finish_wait(ptr noundef %playback_waitq, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %if.end27

if.end27:                                         ; preds = %if.end23, %land.lhs.true.if.end27_crit_edge
  %mbo.570 = phi ptr [ %call16, %if.end23 ], [ %call5, %land.lhs.true.if.end27_crit_edge ]
  %13 = ptrtoint ptr %is_stream_running to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_stream_running, align 8, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool29.not = icmp eq i8 %14, 0
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.end27
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 8
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %runtime1.i, align 4
  %19 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cfg.i, align 4
  %subbuffer_size.i = getelementptr inbounds %struct.most_channel_config, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %subbuffer_size.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %subbuffer_size.i, align 2
  %conv.i = zext i16 %22 to i32
  %buffer_size2.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %18, i32 0, i32 18
  %23 = ptrtoint ptr %buffer_size2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buffer_size2.i, align 4
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %20, align 4
  %and.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %processed_length.i = getelementptr inbounds %struct.mbo, ptr %mbo.570, i32 0, i32 9
  %buffer_length.i = getelementptr inbounds %struct.mbo, ptr %mbo.570, i32 0, i32 8
  %.pn.in.i = select i1 %tobool.not.i, ptr %buffer_length.i, ptr %processed_length.i
  %27 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %.pn.i = load i16, ptr %.pn.in.i, align 2
  %frames.0.in.i = udiv i16 %.pn.i, %22
  %frames.0.i = zext i16 %frames.0.in.i to i32
  %28 = ptrtoint ptr %buffer_pos.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %buffer_pos.i, align 4
  %sub.i = sub i32 %24, %29
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %frames.0.i)
  %cmp.i = icmp ult i32 %sub.i, %frames.0.i
  %30 = call i32 @llvm.umin.i32(i32 %sub.i, i32 %frames.0.i) #13
  %31 = ptrtoint ptr %copy_fn.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %copy_fn.i, align 4
  %dma_area.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %18, i32 0, i32 50
  %33 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dma_area.i, align 4
  %mul.i = mul i32 %29, %conv.i
  %add.ptr.i = getelementptr i8, ptr %34, i32 %mul.i
  %virt_address.i = getelementptr inbounds %struct.mbo, ptr %mbo.570, i32 0, i32 6
  %35 = ptrtoint ptr %virt_address.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %virt_address.i, align 4
  %mul9.i = mul nuw i32 %30, %conv.i
  call void %32(ptr noundef %add.ptr.i, ptr noundef %36, i32 noundef %mul9.i) #13
  br i1 %cmp.i, label %if.then12.i, label %if.then30.if.end20.i_crit_edge

if.then30.if.end20.i_crit_edge:                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.i

if.then12.i:                                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %copy_fn.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %copy_fn.i, align 4
  %39 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dma_area.i, align 4
  %41 = ptrtoint ptr %virt_address.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %virt_address.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %42, i32 %mul9.i
  %sub18.i = sub nsw i32 %frames.0.i, %30
  %mul19.i = mul i32 %sub18.i, %conv.i
  call void %38(ptr noundef %40, ptr noundef %add.ptr17.i, i32 noundef %mul19.i) #13
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then12.i, %if.then30.if.end20.i_crit_edge
  %43 = ptrtoint ptr %buffer_pos.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %buffer_pos.i, align 4
  %add.i = add i32 %44, %frames.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %24)
  %cmp23.not.i = icmp ult i32 %add.i, %24
  %sub27.i = select i1 %cmp23.not.i, i32 0, i32 %24
  %spec.select.i = sub i32 %add.i, %sub27.i
  %45 = ptrtoint ptr %buffer_pos.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %spec.select.i, ptr %buffer_pos.i, align 4
  %46 = ptrtoint ptr %period_pos.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %period_pos.i, align 8
  %add29.i = add i32 %47, %frames.0.i
  store i32 %add29.i, ptr %period_pos.i, align 8
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %18, i32 0, i32 16
  %48 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %period_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add29.i, i32 %49)
  %cmp31.not.i = icmp ult i32 %add29.i, %49
  br i1 %cmp31.not.i, label %copy_data.exit, label %if.then34

copy_data.exit:                                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @most_submit_mbo(ptr noundef nonnull %mbo.570) #13
  br label %cleanup36

if.else:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %virt_address = getelementptr inbounds %struct.mbo, ptr %mbo.570, i32 0, i32 6
  %50 = ptrtoint ptr %virt_address to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %virt_address, align 4
  %buffer_length = getelementptr inbounds %struct.mbo, ptr %mbo.570, i32 0, i32 8
  %52 = ptrtoint ptr %buffer_length to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %buffer_length, align 4
  %conv = zext i16 %53 to i32
  %54 = call ptr @memset(ptr %51, i32 0, i32 %conv)
  call void @most_submit_mbo(ptr noundef nonnull %mbo.570) #13
  br label %cleanup36

if.then34:                                        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub36.i = sub i32 %add29.i, %49
  %55 = ptrtoint ptr %period_pos.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %sub36.i, ptr %period_pos.i, align 8
  call void @most_submit_mbo(ptr noundef nonnull %mbo.570) #13
  %56 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data, align 8
  call void @snd_pcm_period_elapsed(ptr noundef %57) #13
  br label %cleanup36

cleanup36:                                        ; preds = %if.then34, %if.else, %copy_data.exit, %if.end23.thread81, %if.end23.thread, %while.body.cleanup36_crit_edge
  %call = call zeroext i1 @kthread_should_stop() #13
  br i1 %call, label %cleanup36.while.end_crit_edge, label %cleanup36.while.body_crit_edge

cleanup36.while.body_crit_edge:                   ; preds = %cleanup36
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cleanup36.while.end_crit_edge:                    ; preds = %cleanup36
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %cleanup36.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @most_start_channel(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @most_get_mbo(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @most_submit_mbo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @most_stop_channel(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_physical_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_big_endian(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @alsa_to_most_memcpy(ptr nocapture noundef readonly %alsa, ptr nocapture noundef writeonly %most, i32 noundef %bytes) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %most, ptr %alsa, i32 %bytes)
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alsa_to_most_copy16(ptr nocapture noundef readonly %alsa, ptr nocapture noundef writeonly %most, i32 noundef %bytes) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bytes)
  %cmp6.not.i = icmp ult i32 %bytes, 2
  br i1 %cmp6.not.i, label %entry.swap_copy16.exit_crit_edge, label %while.body.preheader.i

entry.swap_copy16.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %swap_copy16.exit

while.body.preheader.i:                           ; preds = %entry
  %div5.i = lshr i32 %bytes, 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %i.07.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %while.body.preheader.i ]
  %arrayidx.i = getelementptr i16, ptr %alsa, i32 %i.07.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx.i, align 2
  %2 = tail call i16 @llvm.bswap.i16(i16 %1) #13
  %arrayidx1.i = getelementptr i16, ptr %most, i32 %i.07.i
  %3 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %arrayidx1.i, align 2
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div5.i
  br i1 %exitcond.not.i, label %while.body.i.swap_copy16.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.body.i.swap_copy16.exit_crit_edge:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %swap_copy16.exit

swap_copy16.exit:                                 ; preds = %while.body.i.swap_copy16.exit_crit_edge, %entry.swap_copy16.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alsa_to_most_copy24(ptr nocapture noundef readonly %alsa, ptr nocapture noundef writeonly %most, i32 noundef %bytes) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bytes)
  %cmp.i = icmp ult i32 %bytes, 2
  br i1 %cmp.i, label %entry.swap_copy24.exit_crit_edge, label %while.cond.preheader.i

entry.swap_copy24.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %swap_copy24.exit

while.cond.preheader.i:                           ; preds = %entry
  %sub.i = add i32 %bytes, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp123.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp123.not.i, label %while.cond.preheader.i.swap_copy24.exit_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.swap_copy24.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %swap_copy24.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %i.024.i = phi i32 [ %add10.i, %while.body.i.while.body.i_crit_edge ], [ 0, %while.cond.preheader.i.while.body.i_crit_edge ]
  %add.i = add i32 %i.024.i, 2
  %arrayidx.i = getelementptr i8, ptr %alsa, i32 %add.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %most, i32 %i.024.i
  %2 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %arrayidx2.i, align 1
  %add3.i = add nuw i32 %i.024.i, 1
  %arrayidx4.i = getelementptr i8, ptr %alsa, i32 %add3.i
  %3 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx4.i, align 1
  %arrayidx6.i = getelementptr i8, ptr %most, i32 %add3.i
  %5 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %arrayidx6.i, align 1
  %arrayidx7.i = getelementptr i8, ptr %alsa, i32 %i.024.i
  %6 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx7.i, align 1
  %arrayidx9.i = getelementptr i8, ptr %most, i32 %add.i
  %8 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx9.i, align 1
  %add10.i = add i32 %i.024.i, 3
  %cmp1.i = icmp ult i32 %add10.i, %sub.i
  br i1 %cmp1.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.swap_copy24.exit_crit_edge

while.body.i.swap_copy24.exit_crit_edge:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %swap_copy24.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

swap_copy24.exit:                                 ; preds = %while.body.i.swap_copy24.exit_crit_edge, %while.cond.preheader.i.swap_copy24.exit_crit_edge, %entry.swap_copy24.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alsa_to_most_copy32(ptr nocapture noundef readonly %alsa, ptr nocapture noundef writeonly %most, i32 noundef %bytes) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %bytes)
  %cmp6.not.i = icmp ult i32 %bytes, 4
  br i1 %cmp6.not.i, label %entry.swap_copy32.exit_crit_edge, label %while.body.preheader.i

entry.swap_copy32.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %swap_copy32.exit

while.body.preheader.i:                           ; preds = %entry
  %div5.i = lshr i32 %bytes, 2
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %i.07.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %while.body.preheader.i ]
  %arrayidx.i = getelementptr i32, ptr %alsa, i32 %i.07.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #13
  %arrayidx1.i = getelementptr i32, ptr %most, i32 %i.07.i
  %3 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %arrayidx1.i, align 4
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div5.i
  br i1 %exitcond.not.i, label %while.body.i.swap_copy32.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.body.i.swap_copy32.exit_crit_edge:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %swap_copy32.exit

swap_copy32.exit:                                 ; preds = %while.body.i.swap_copy32.exit_crit_edge, %entry.swap_copy32.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @most_to_alsa_memcpy(ptr nocapture noundef writeonly %alsa, ptr nocapture noundef readonly %most, i32 noundef %bytes) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %alsa, ptr %most, i32 %bytes)
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @most_to_alsa_copy16(ptr nocapture noundef writeonly %alsa, ptr nocapture noundef readonly %most, i32 noundef %bytes) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bytes)
  %cmp6.not.i = icmp ult i32 %bytes, 2
  br i1 %cmp6.not.i, label %entry.swap_copy16.exit_crit_edge, label %while.body.preheader.i

entry.swap_copy16.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %swap_copy16.exit

while.body.preheader.i:                           ; preds = %entry
  %div5.i = lshr i32 %bytes, 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %i.07.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %while.body.preheader.i ]
  %arrayidx.i = getelementptr i16, ptr %most, i32 %i.07.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx.i, align 2
  %2 = tail call i16 @llvm.bswap.i16(i16 %1) #13
  %arrayidx1.i = getelementptr i16, ptr %alsa, i32 %i.07.i
  %3 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %arrayidx1.i, align 2
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div5.i
  br i1 %exitcond.not.i, label %while.body.i.swap_copy16.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.body.i.swap_copy16.exit_crit_edge:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %swap_copy16.exit

swap_copy16.exit:                                 ; preds = %while.body.i.swap_copy16.exit_crit_edge, %entry.swap_copy16.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @most_to_alsa_copy24(ptr nocapture noundef writeonly %alsa, ptr nocapture noundef readonly %most, i32 noundef %bytes) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bytes)
  %cmp.i = icmp ult i32 %bytes, 2
  br i1 %cmp.i, label %entry.swap_copy24.exit_crit_edge, label %while.cond.preheader.i

entry.swap_copy24.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %swap_copy24.exit

while.cond.preheader.i:                           ; preds = %entry
  %sub.i = add i32 %bytes, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp123.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp123.not.i, label %while.cond.preheader.i.swap_copy24.exit_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.swap_copy24.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %swap_copy24.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %i.024.i = phi i32 [ %add10.i, %while.body.i.while.body.i_crit_edge ], [ 0, %while.cond.preheader.i.while.body.i_crit_edge ]
  %add.i = add i32 %i.024.i, 2
  %arrayidx.i = getelementptr i8, ptr %most, i32 %add.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %alsa, i32 %i.024.i
  %2 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %arrayidx2.i, align 1
  %add3.i = add nuw i32 %i.024.i, 1
  %arrayidx4.i = getelementptr i8, ptr %most, i32 %add3.i
  %3 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx4.i, align 1
  %arrayidx6.i = getelementptr i8, ptr %alsa, i32 %add3.i
  %5 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %arrayidx6.i, align 1
  %arrayidx7.i = getelementptr i8, ptr %most, i32 %i.024.i
  %6 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx7.i, align 1
  %arrayidx9.i = getelementptr i8, ptr %alsa, i32 %add.i
  %8 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx9.i, align 1
  %add10.i = add i32 %i.024.i, 3
  %cmp1.i = icmp ult i32 %add10.i, %sub.i
  br i1 %cmp1.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.swap_copy24.exit_crit_edge

while.body.i.swap_copy24.exit_crit_edge:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %swap_copy24.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

swap_copy24.exit:                                 ; preds = %while.body.i.swap_copy24.exit_crit_edge, %while.cond.preheader.i.swap_copy24.exit_crit_edge, %entry.swap_copy24.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @most_to_alsa_copy32(ptr nocapture noundef writeonly %alsa, ptr nocapture noundef readonly %most, i32 noundef %bytes) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %bytes)
  %cmp6.not.i = icmp ult i32 %bytes, 4
  br i1 %cmp6.not.i, label %entry.swap_copy32.exit_crit_edge, label %while.body.preheader.i

entry.swap_copy32.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %swap_copy32.exit

while.body.preheader.i:                           ; preds = %entry
  %div5.i = lshr i32 %bytes, 2
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %i.07.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %while.body.preheader.i ]
  %arrayidx.i = getelementptr i32, ptr %most, i32 %i.07.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #13
  %arrayidx1.i = getelementptr i32, ptr %alsa, i32 %i.07.i
  %3 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %arrayidx1.i, align 4
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div5.i
  br i1 %exitcond.not.i, label %while.body.i.swap_copy32.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.body.i.swap_copy32.exit_crit_edge:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %swap_copy32.exit

swap_copy32.exit:                                 ; preds = %while.body.i.swap_copy32.exit_crit_edge, %entry.swap_copy32.exit_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @most_put_mbo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @most_register_component(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @most_register_configfs_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !23, !25, !27, !29, !31, !32, !33, !35, !36, !38, !40, !42, !43, !44, !45, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88, !90, !91}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @__initcall__kmod_most_snd__232_740_audio_init6, !1, !"__initcall__kmod_most_snd__232_740_audio_init6", i1 false, i1 false}
!1 = !{!"../drivers/most/most_snd.c", i32 740, i32 1}
!2 = !{ptr @__exitcall_audio_exit, !3, !"__exitcall_audio_exit", i1 false, i1 false}
!3 = !{!"../drivers/most/most_snd.c", i32 741, i32 1}
!4 = !{ptr @__UNIQUE_ID_file233, !5, !"__UNIQUE_ID_file233", i1 false, i1 false}
!5 = !{!"../drivers/most/most_snd.c", i32 743, i32 1}
!6 = !{ptr @__UNIQUE_ID_license234, !5, !"__UNIQUE_ID_license234", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author235, !8, !"__UNIQUE_ID_author235", i1 false, i1 false}
!8 = !{!"../drivers/most/most_snd.c", i32 744, i32 1}
!9 = !{ptr @__UNIQUE_ID_description236, !10, !"__UNIQUE_ID_description236", i1 false, i1 false}
!10 = !{!"../drivers/most/most_snd.c", i32 745, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/most/most_snd.c", i32 707, i32 10}
!13 = !{ptr @comp, !14, !"comp", i1 false, i1 false}
!14 = !{!"../drivers/most/most_snd.c", i32 705, i32 30}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/most/most_snd.c", i32 527, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @audio_probe_channel._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @audio_probe_channel._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/most/most_snd.c", i32 551, i32 44}
!23 = distinct !{null, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/most/most_snd.c", i32 556, i32 4}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/most/most_snd.c", i32 558, i32 4}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/most/most_snd.c", i32 560, i32 4}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/most/most_snd.c", i32 563, i32 3}
!31 = !{ptr @audio_probe_channel._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @audio_probe_channel._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @audio_probe_channel.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/most/most_snd.c", i32 584, i32 2}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/most/most_snd.c", i32 419, i32 21}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/most/most_snd.c", i32 425, i32 29}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/most/most_snd.c", i32 431, i32 2}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @split_arg_list._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @split_arg_list._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @adpt_list, !46, !"adpt_list", i1 false, i1 false}
!46 = !{!"../drivers/most/most_snd.c", i32 67, i32 25}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/most/most_snd.c", i32 456, i32 2}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @audio_set_hw_params._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @audio_set_hw_params._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/most/most_snd.c", i32 461, i32 3}
!54 = !{ptr @audio_set_hw_params._entry.18, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @audio_set_hw_params._entry_ptr.20, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/most/most_snd.c", i32 466, i32 3}
!58 = !{ptr @audio_set_hw_params._entry.21, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @audio_set_hw_params._entry_ptr.23, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/most/most_snd.c", i32 440, i32 4}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/most/most_snd.c", i32 441, i32 4}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/most/most_snd.c", i32 442, i32 4}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/most/most_snd.c", i32 443, i32 4}
!68 = !{ptr @sinfo, !69, !"sinfo", i1 false, i1 false}
!69 = !{!"../drivers/most/most_snd.c", i32 439, i32 3}
!70 = !{ptr @pcm_ops, !71, !"pcm_ops", i1 false, i1 false}
!71 = !{!"../drivers/most/most_snd.c", i32 406, i32 33}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/most/most_snd.c", i32 273, i32 28}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/most/most_snd.c", i32 276, i32 4}
!76 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @pcm_open._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @pcm_open._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/most/most_snd.c", i32 283, i32 3}
!81 = !{ptr @pcm_open._entry.31, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @pcm_open._entry_ptr.33, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/most/most_snd.c", i32 723, i32 3}
!85 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @audio_init._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @audio_init._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/most/most_snd.c", i32 728, i32 3}
!90 = !{ptr @audio_init._entry.36, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @audio_init._entry_ptr.38, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{!"auto-init"}
!102 = !{i8 0, i8 2}
