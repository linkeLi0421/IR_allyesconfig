; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/function/u_uac1_legacy.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/u_uac1_legacy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gaudio = type { %struct.usb_function, ptr, %struct.gaudio_snd_dev, %struct.gaudio_snd_dev, %struct.gaudio_snd_dev }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.gaudio_snd_dev = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
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
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.f_uac1_legacy_opts = type { %struct.usb_function_instance, i32, i32, i32, ptr, ptr, ptr, i8, %struct.mutex, i32 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }

@u_audio_playback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 167, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Preparing sound card failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"u_audio_playback\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/usb/gadget/function/u_uac1_legacy.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@u_audio_playback._entry_ptr = internal global ptr @u_audio_playback._entry, section ".printk_index", align 4
@u_audio_playback._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 175, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Playback error: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@u_audio_playback._entry_ptr.7 = internal global ptr @u_audio_playback._entry.5, section ".printk_index", align 4
@gaudio_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 291, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"we need at least one control device\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gaudio_setup\00", [19 x i8] zeroinitializer }, align 32
@gaudio_setup._entry_ptr = internal global ptr @gaudio_setup._entry, section ".printk_index", align 4
@gaudio_open_snd_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 215, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"unable to open sound control device file: %s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gaudio_open_snd_dev\00", [44 x i8] zeroinitializer }, align 32
@gaudio_open_snd_dev._entry_ptr = internal global ptr @gaudio_open_snd_dev._entry, section ".printk_index", align 4
@gaudio_open_snd_dev._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 227, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"No such PCM playback device: %s\0A\00", [63 x i8] zeroinitializer }, align 32
@gaudio_open_snd_dev._entry_ptr.14 = internal global ptr @gaudio_open_snd_dev._entry.12, section ".printk_index", align 4
@gaudio_open_snd_dev._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.2, i32 240, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No such PCM capture device: %s\0A\00", [32 x i8] zeroinitializer }, align 32
@gaudio_open_snd_dev._entry_ptr.17 = internal global ptr @gaudio_open_snd_dev._entry.15, section ".printk_index", align 4
@playback_default_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.18, ptr @.str.2, i32 129, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"playback_default_hw_params\00", [37 x i8] zeroinitializer }, align 32
@playback_default_hw_params._entry_ptr = internal global ptr @playback_default_hw_params._entry, section ".printk_index", align 4
@playback_default_hw_params._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 144, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Hardware params: access %x, format %x, channels %d, rate %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@playback_default_hw_params._entry_ptr.22 = internal global ptr @playback_default_hw_params._entry.19, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 7]
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 166, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 175, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 291, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 214, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 227, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 240, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 128, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [47 x i8] c"../drivers/usb/gadget/function/u_uac1_legacy.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 142, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @gaudio_open_snd_dev._entry, ptr @gaudio_open_snd_dev._entry.12, ptr @gaudio_open_snd_dev._entry.15, ptr @gaudio_open_snd_dev._entry_ptr, ptr @gaudio_open_snd_dev._entry_ptr.14, ptr @gaudio_open_snd_dev._entry_ptr.17, ptr @gaudio_setup._entry, ptr @gaudio_setup._entry_ptr, ptr @playback_default_hw_params._entry, ptr @playback_default_hw_params._entry.19, ptr @playback_default_hw_params._entry_ptr, ptr @playback_default_hw_params._entry_ptr.22, ptr @u_audio_playback._entry, ptr @u_audio_playback._entry.5, ptr @u_audio_playback._entry_ptr, ptr @u_audio_playback._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u_audio_playback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u_audio_playback._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudio_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudio_open_snd_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudio_open_snd_dev._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudio_open_snd_dev._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback_default_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback_default_hw_params._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @u_audio_playback(ptr nocapture noundef readonly %card, ptr noundef %buf, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %substream1 = getelementptr inbounds %struct.gaudio, ptr %card, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream1, align 4
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime2, align 4
  %status = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 37
  %mul.i = shl i32 %count, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %gadget17 = getelementptr inbounds %struct.gaudio, ptr %card, i32 0, i32 1
  br label %try_again

try_again:                                        ; preds = %do.end16, %entry
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %status, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %try_again.if.end8_crit_edge [
    i32 4, label %try_again.if.then_crit_edge
    i32 7, label %try_again.if.then_crit_edge35
  ]

try_again.if.then_crit_edge35:                    ; preds = %try_again
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

try_again.if.then_crit_edge:                      ; preds = %try_again
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

try_again.if.end8_crit_edge:                      ; preds = %try_again
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %try_again.if.then_crit_edge, %try_again.if.then_crit_edge35
  %call = tail call i32 @snd_pcm_kernel_ioctl(ptr noundef %1, i32 noundef 16704, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6 = icmp slt i32 %call, 0
  br i1 %cmp6, label %do.end, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %gadget17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gadget17, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %10, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %call) #10
  br label %cleanup

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %try_again.if.end8_crit_edge
  %11 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %12
  %13 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %substream1, align 4
  %call.i = tail call i32 @__snd_pcm_lib_xfer(ptr noundef %14, ptr noundef %buf, i1 noundef zeroext true, i32 noundef %div.i, i1 noundef zeroext true) #7
  %cmp12.not = icmp eq i32 %call.i, %div.i
  br i1 %cmp12.not, label %if.end8.cleanup_crit_edge, label %do.end16

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %gadget17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gadget17, align 4
  %dev18 = getelementptr inbounds %struct.usb_gadget, ptr %16, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.6, i32 noundef %call.i) #10
  br label %try_again

cleanup:                                          ; preds = %if.end8.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_kernel_ioctl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @u_audio_get_playback_channels(ptr nocapture noundef readonly %card) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %channels = getelementptr inbounds %struct.gaudio, ptr %card, i32 0, i32 3, i32 5
  %0 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channels, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @u_audio_get_playback_rate(ptr nocapture noundef readonly %card) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rate = getelementptr inbounds %struct.gaudio, ptr %card, i32 0, i32 3, i32 6
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rate, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gaudio_setup(ptr noundef %card) local_unnamed_addr #0 align 64 {
entry:
  %t.i.i39.i.i = alloca %struct.snd_interval, align 4
  %t.i.i.i.i = alloca %struct.snd_interval, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fi.i = getelementptr inbounds %struct.usb_function, ptr %card, i32 0, i32 24
  %0 = ptrtoint ptr %fi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fi.i, align 4
  %fn_play1.i = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %fn_play1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fn_play1.i, align 4
  %fn_cap2.i = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %fn_cap2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fn_cap2.i, align 4
  %fn_cntl3.i = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %fn_cntl3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fn_cntl3.i, align 4
  %call.i = tail call ptr @filp_open(ptr noundef %7, i32 noundef 2, i16 noundef zeroext 0) #7
  %filp.i = getelementptr inbounds %struct.gaudio, ptr %card, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %filp.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %filp.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %gadget.i = getelementptr inbounds %struct.gaudio, ptr %card, i32 0, i32 1
  %9 = ptrtoint ptr %gadget.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gadget.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_gadget, ptr %10, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.10, ptr noundef %7) #10
  br label %do.end

if.end.i:                                         ; preds = %entry
  %control.i = getelementptr inbounds %struct.gaudio, ptr %card, i32 0, i32 2
  %11 = ptrtoint ptr %control.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %card, ptr %control.i, align 4
  %call10.i = tail call ptr @filp_open(ptr noundef %3, i32 noundef 1, i16 noundef zeroext 0) #7
  %filp11.i = getelementptr inbounds %struct.gaudio, ptr %card, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %filp11.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call10.i, ptr %filp11.i, align 4
  %cmp.i88.i = icmp ugt ptr %call10.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i88.i, label %if.then14.i, label %if.end24.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %gadget21.i = getelementptr inbounds %struct.gaudio, ptr %card, i32 0, i32 1
  %13 = ptrtoint ptr %gadget21.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gadget21.i, align 4
  %dev22.i = getelementptr inbounds %struct.usb_gadget, ptr %14, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22.i, ptr noundef nonnull @.str.13, ptr noundef %3) #10
  br label %do.end

if.end24.i:                                       ; preds = %if.end.i
  %playback.i = getelementptr inbounds %struct.gaudio, ptr %card, i32 0, i32 3
  %private_data.i = getelementptr inbounds %struct.file, ptr %call10.i, i32 0, i32 16
  %15 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %private_data.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %substream26.i = getelementptr inbounds %struct.gaudio, ptr %card, i32 0, i32 3, i32 2
  %19 = ptrtoint ptr %substream26.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %substream26.i, align 4
  %20 = ptrtoint ptr %playback.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %card, ptr %playback.i, align 4
  %access.i.i = getelementptr inbounds %struct.gaudio, ptr %card, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %access.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %access.i.i, align 4
  %format.i.i = getelementptr inbounds %struct.gaudio, ptr %card, i32 0, i32 3, i32 4
  %22 = ptrtoint ptr %format.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %format.i.i, align 4
  %channels.i.i = getelementptr inbounds %struct.gaudio, ptr %card, i32 0, i32 3, i32 5
  %23 = ptrtoint ptr %channels.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %channels.i.i, align 4
  %rate.i.i = getelementptr inbounds %struct.gaudio, ptr %card, i32 0, i32 3, i32 6
  %24 = ptrtoint ptr %rate.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 48000, ptr %rate.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 604) #11
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end24.i.playback_default_hw_params.exit.i_crit_edge, label %if.end.i.i

if.end24.i.playback_default_hw_params.exit.i_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %playback_default_hw_params.exit.i

if.end.i.i:                                       ; preds = %if.end24.i
  tail call void @_snd_pcm_hw_params_any(ptr noundef nonnull %call7.i.i.i.i) #7
  %26 = ptrtoint ptr %access.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %access.i.i, align 4
  %arrayidx.i1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %call7.i.i.i.i, i32 0, i32 1, i32 0
  %28 = ptrtoint ptr %arrayidx.i1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i.i.i.i = icmp eq i32 %29, 0
  %30 = tail call i32 @llvm.ctpop.i32(i32 %29) #7, !range !48
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %tobool5.not.i.i.i.i.i = icmp ult i32 %30, 2
  %or.cond.i.i.i.i.i = or i1 %tobool.not.i.i.i.i.i, %tobool5.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %for.inc.i.i.i.i.i, label %if.end.i.i.snd_mask_single.exit.i.i.i.i_crit_edge

if.end.i.i.snd_mask_single.exit.i.i.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_mask_single.exit.i.i.i.i

for.inc.i.i.i.i.i:                                ; preds = %if.end.i.i
  %arrayidx.1.i.i.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %call7.i.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx.1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.1.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.1.i.i.i.i.i = icmp eq i32 %32, 0
  br i1 %tobool.not.1.i.i.i.i.i, label %for.inc.i.i.i.i.i.for.inc.1.i.i.i.i.i_crit_edge, label %if.end.1.i.i.i.i.i

for.inc.i.i.i.i.i.for.inc.1.i.i.i.i.i_crit_edge:  ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i.i.i.i.i

if.end.1.i.i.i.i.i:                               ; preds = %for.inc.i.i.i.i.i
  %33 = tail call i32 @llvm.ctpop.i32(i32 %32) #7, !range !48
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %tobool5.not.1.i.i.i.i.i = icmp ult i32 %33, 2
  %or.cond.1.i.i.i.i.i = select i1 %tobool5.not.1.i.i.i.i.i, i1 %tobool.not.i.i.i.i.i, i1 false
  br i1 %or.cond.1.i.i.i.i.i, label %if.end.1.i.i.i.i.i.for.inc.1.i.i.i.i.i_crit_edge, label %if.end.1.i.i.i.i.i.snd_mask_single.exit.i.i.i.i_crit_edge

if.end.1.i.i.i.i.i.snd_mask_single.exit.i.i.i.i_crit_edge: ; preds = %if.end.1.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_mask_single.exit.i.i.i.i

if.end.1.i.i.i.i.i.for.inc.1.i.i.i.i.i_crit_edge: ; preds = %if.end.1.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i.i.i.i.i

for.inc.1.i.i.i.i.i:                              ; preds = %if.end.1.i.i.i.i.i.for.inc.1.i.i.i.i.i_crit_edge, %for.inc.i.i.i.i.i.for.inc.1.i.i.i.i.i_crit_edge
  br label %snd_mask_single.exit.i.i.i.i

snd_mask_single.exit.i.i.i.i:                     ; preds = %for.inc.1.i.i.i.i.i, %if.end.1.i.i.i.i.i.snd_mask_single.exit.i.i.i.i_crit_edge, %if.end.i.i.snd_mask_single.exit.i.i.i.i_crit_edge
  %tobool48.not.i.old.i.i = phi i1 [ true, %for.inc.1.i.i.i.i.i ], [ false, %if.end.1.i.i.i.i.i.snd_mask_single.exit.i.i.i.i_crit_edge ], [ false, %if.end.i.i.snd_mask_single.exit.i.i.i.i_crit_edge ]
  %shr.i.i.i.i.i = lshr i32 %27, 5
  %arrayidx.i.i.i.i.i = getelementptr [8 x i32], ptr %arrayidx.i1.i.i.i, i32 0, i32 %shr.i.i.i.i.i
  %34 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %27, 31
  %shl.i.i.i.i.i = shl nuw i32 1, %and.i.i.i.i.i
  %and1.i.i.i.i.i = and i32 %35, %shl.i.i.i.i.i
  %36 = call ptr @memset(ptr %arrayidx.i1.i.i.i, i32 0, i32 32)
  store i32 %and1.i.i.i.i.i, ptr %arrayidx.i.i.i.i.i, align 4
  %37 = ptrtoint ptr %arrayidx.i1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i5.i.i.i.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i5.i.i.i.i, label %snd_mask_empty.exit.i.i.i.i, label %if.end47.i.i.i

snd_mask_empty.exit.i.i.i.i:                      ; preds = %snd_mask_single.exit.i.i.i.i
  %arrayidx.1.i6.i.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %call7.i.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %39 = ptrtoint ptr %arrayidx.1.i6.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.1.i6.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.1.i7.not.i.i.i.i = icmp ne i32 %40, 0
  %or.cond.i.i = and i1 %tobool48.not.i.old.i.i, %tobool.not.1.i7.not.i.i.i.i
  br i1 %or.cond.i.i, label %snd_mask_empty.exit.i.i.i.i._snd_pcm_hw_param_set.exit.i.i_crit_edge, label %snd_mask_empty.exit.i.i.i.i.if.then49.i.i.i_crit_edge

snd_mask_empty.exit.i.i.i.i.if.then49.i.i.i_crit_edge: ; preds = %snd_mask_empty.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then49.i.i.i

snd_mask_empty.exit.i.i.i.i._snd_pcm_hw_param_set.exit.i.i_crit_edge: ; preds = %snd_mask_empty.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_snd_pcm_hw_param_set.exit.i.i

if.end47.i.i.i:                                   ; preds = %snd_mask_single.exit.i.i.i.i
  br i1 %tobool48.not.i.old.i.i, label %if.end47.i.i.i._snd_pcm_hw_param_set.exit.i.i_crit_edge, label %if.end47.i.i.i.if.then49.i.i.i_crit_edge

if.end47.i.i.i.if.then49.i.i.i_crit_edge:         ; preds = %if.end47.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then49.i.i.i

if.end47.i.i.i._snd_pcm_hw_param_set.exit.i.i_crit_edge: ; preds = %if.end47.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_snd_pcm_hw_param_set.exit.i.i

if.then49.i.i.i:                                  ; preds = %if.end47.i.i.i.if.then49.i.i.i_crit_edge, %snd_mask_empty.exit.i.i.i.i.if.then49.i.i.i_crit_edge
  %cmask.i.i.i = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %call7.i.i.i.i, i32 0, i32 6
  %41 = ptrtoint ptr %cmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cmask.i.i.i, align 4
  %or.i.i.i = or i32 %42, 1
  store i32 %or.i.i.i, ptr %cmask.i.i.i, align 4
  %rmask.i.i.i = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %call7.i.i.i.i, i32 0, i32 5
  %43 = ptrtoint ptr %rmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rmask.i.i.i, align 8
  %or51.i.i.i = or i32 %44, 1
  store i32 %or51.i.i.i, ptr %rmask.i.i.i, align 8
  br label %_snd_pcm_hw_param_set.exit.i.i

_snd_pcm_hw_param_set.exit.i.i:                   ; preds = %if.then49.i.i.i, %if.end47.i.i.i._snd_pcm_hw_param_set.exit.i.i_crit_edge, %snd_mask_empty.exit.i.i.i.i._snd_pcm_hw_param_set.exit.i.i_crit_edge
  %45 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %format.i.i, align 4
  %arrayidx.i1.i1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %arrayidx.i1.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i1.i1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i.i.i2.i.i = icmp eq i32 %48, 0
  %49 = tail call i32 @llvm.ctpop.i32(i32 %48) #7, !range !48
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %tobool5.not.i.i.i3.i.i = icmp ult i32 %49, 2
  %or.cond.i.i.i4.i.i = or i1 %tobool.not.i.i.i2.i.i, %tobool5.not.i.i.i3.i.i
  br i1 %or.cond.i.i.i4.i.i, label %for.inc.i.i.i7.i.i, label %_snd_pcm_hw_param_set.exit.i.i.snd_mask_single.exit.i.i19.i.i_crit_edge

_snd_pcm_hw_param_set.exit.i.i.snd_mask_single.exit.i.i19.i.i_crit_edge: ; preds = %_snd_pcm_hw_param_set.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_mask_single.exit.i.i19.i.i

for.inc.i.i.i7.i.i:                               ; preds = %_snd_pcm_hw_param_set.exit.i.i
  %arrayidx.1.i.i.i5.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1, i32 0, i32 1
  %50 = ptrtoint ptr %arrayidx.1.i.i.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.1.i.i.i5.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.1.i.i.i6.i.i = icmp eq i32 %51, 0
  br i1 %tobool.not.1.i.i.i6.i.i, label %for.inc.i.i.i7.i.i.for.inc.1.i.i.i11.i.i_crit_edge, label %if.end.1.i.i.i10.i.i

for.inc.i.i.i7.i.i.for.inc.1.i.i.i11.i.i_crit_edge: ; preds = %for.inc.i.i.i7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i.i.i11.i.i

if.end.1.i.i.i10.i.i:                             ; preds = %for.inc.i.i.i7.i.i
  %52 = tail call i32 @llvm.ctpop.i32(i32 %51) #7, !range !48
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %tobool5.not.1.i.i.i8.i.i = icmp ult i32 %52, 2
  %or.cond.1.i.i.i9.i.i = select i1 %tobool5.not.1.i.i.i8.i.i, i1 %tobool.not.i.i.i2.i.i, i1 false
  br i1 %or.cond.1.i.i.i9.i.i, label %if.end.1.i.i.i10.i.i.for.inc.1.i.i.i11.i.i_crit_edge, label %if.end.1.i.i.i10.i.i.snd_mask_single.exit.i.i19.i.i_crit_edge

if.end.1.i.i.i10.i.i.snd_mask_single.exit.i.i19.i.i_crit_edge: ; preds = %if.end.1.i.i.i10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_mask_single.exit.i.i19.i.i

if.end.1.i.i.i10.i.i.for.inc.1.i.i.i11.i.i_crit_edge: ; preds = %if.end.1.i.i.i10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i.i.i11.i.i

for.inc.1.i.i.i11.i.i:                            ; preds = %if.end.1.i.i.i10.i.i.for.inc.1.i.i.i11.i.i_crit_edge, %for.inc.i.i.i7.i.i.for.inc.1.i.i.i11.i.i_crit_edge
  br label %snd_mask_single.exit.i.i19.i.i

snd_mask_single.exit.i.i19.i.i:                   ; preds = %for.inc.1.i.i.i11.i.i, %if.end.1.i.i.i10.i.i.snd_mask_single.exit.i.i19.i.i_crit_edge, %_snd_pcm_hw_param_set.exit.i.i.snd_mask_single.exit.i.i19.i.i_crit_edge
  %tobool48.not.i23.old.i.i = phi i1 [ true, %for.inc.1.i.i.i11.i.i ], [ false, %if.end.1.i.i.i10.i.i.snd_mask_single.exit.i.i19.i.i_crit_edge ], [ false, %_snd_pcm_hw_param_set.exit.i.i.snd_mask_single.exit.i.i19.i.i_crit_edge ]
  %shr.i.i.i13.i.i = lshr i32 %46, 5
  %arrayidx.i.i.i14.i.i = getelementptr [8 x i32], ptr %arrayidx.i1.i1.i.i, i32 0, i32 %shr.i.i.i13.i.i
  %53 = ptrtoint ptr %arrayidx.i.i.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i.i.i14.i.i, align 4
  %and.i.i.i15.i.i = and i32 %46, 31
  %shl.i.i.i16.i.i = shl nuw i32 1, %and.i.i.i15.i.i
  %and1.i.i.i17.i.i = and i32 %54, %shl.i.i.i16.i.i
  %55 = call ptr @memset(ptr %arrayidx.i1.i1.i.i, i32 0, i32 32)
  store i32 %and1.i.i.i17.i.i, ptr %arrayidx.i.i.i14.i.i, align 4
  %56 = ptrtoint ptr %arrayidx.i1.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i1.i1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i5.i.i18.i.i = icmp eq i32 %57, 0
  br i1 %tobool.not.i5.i.i18.i.i, label %snd_mask_empty.exit.i.i22.i.i, label %if.end47.i24.i.i

snd_mask_empty.exit.i.i22.i.i:                    ; preds = %snd_mask_single.exit.i.i19.i.i
  %arrayidx.1.i6.i.i20.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1, i32 0, i32 1
  %58 = ptrtoint ptr %arrayidx.1.i6.i.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.1.i6.i.i20.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.1.i7.not.i.i21.i.i = icmp ne i32 %59, 0
  %or.cond63.i.i = and i1 %tobool48.not.i23.old.i.i, %tobool.not.1.i7.not.i.i21.i.i
  br i1 %or.cond63.i.i, label %snd_mask_empty.exit.i.i22.i.i._snd_pcm_hw_param_set.exit30.i.i_crit_edge, label %snd_mask_empty.exit.i.i22.i.i.if.then49.i29.i.i_crit_edge

snd_mask_empty.exit.i.i22.i.i.if.then49.i29.i.i_crit_edge: ; preds = %snd_mask_empty.exit.i.i22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then49.i29.i.i

snd_mask_empty.exit.i.i22.i.i._snd_pcm_hw_param_set.exit30.i.i_crit_edge: ; preds = %snd_mask_empty.exit.i.i22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_snd_pcm_hw_param_set.exit30.i.i

if.end47.i24.i.i:                                 ; preds = %snd_mask_single.exit.i.i19.i.i
  br i1 %tobool48.not.i23.old.i.i, label %if.end47.i24.i.i._snd_pcm_hw_param_set.exit30.i.i_crit_edge, label %if.end47.i24.i.i.if.then49.i29.i.i_crit_edge

if.end47.i24.i.i.if.then49.i29.i.i_crit_edge:     ; preds = %if.end47.i24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then49.i29.i.i

if.end47.i24.i.i._snd_pcm_hw_param_set.exit30.i.i_crit_edge: ; preds = %if.end47.i24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_snd_pcm_hw_param_set.exit30.i.i

if.then49.i29.i.i:                                ; preds = %if.end47.i24.i.i.if.then49.i29.i.i_crit_edge, %snd_mask_empty.exit.i.i22.i.i.if.then49.i29.i.i_crit_edge
  %cmask.i25.i.i = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %call7.i.i.i.i, i32 0, i32 6
  %60 = ptrtoint ptr %cmask.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cmask.i25.i.i, align 4
  %or.i26.i.i = or i32 %61, 2
  store i32 %or.i26.i.i, ptr %cmask.i25.i.i, align 4
  %rmask.i27.i.i = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %call7.i.i.i.i, i32 0, i32 5
  %62 = ptrtoint ptr %rmask.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rmask.i27.i.i, align 8
  %or51.i28.i.i = or i32 %63, 2
  store i32 %or51.i28.i.i, ptr %rmask.i27.i.i, align 8
  br label %_snd_pcm_hw_param_set.exit30.i.i

_snd_pcm_hw_param_set.exit30.i.i:                 ; preds = %if.then49.i29.i.i, %if.end47.i24.i.i._snd_pcm_hw_param_set.exit30.i.i_crit_edge, %snd_mask_empty.exit.i.i22.i.i._snd_pcm_hw_param_set.exit30.i.i_crit_edge
  %64 = ptrtoint ptr %channels.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %channels.i.i, align 4
  %arrayidx.i3.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %call7.i.i.i.i, i32 0, i32 3, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %t.i.i.i.i) #7
  %66 = getelementptr inbounds i8, ptr %t.i.i.i.i, i32 8
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 805306367, ptr %66, align 4
  %max.i.i.i.i = getelementptr inbounds %struct.snd_interval, ptr %t.i.i.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %max.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %65, ptr %max.i.i.i.i, align 4
  %69 = ptrtoint ptr %t.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %65, ptr %t.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @snd_interval_refine(ptr noundef %arrayidx.i3.i.i.i, ptr noundef nonnull %t.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %t.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool48.not.i31.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool48.not.i31.i.i, label %_snd_pcm_hw_param_set.exit30.i.i._snd_pcm_hw_param_set.exit38.i.i_crit_edge, label %if.then49.i37.i.i

_snd_pcm_hw_param_set.exit30.i.i._snd_pcm_hw_param_set.exit38.i.i_crit_edge: ; preds = %_snd_pcm_hw_param_set.exit30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_snd_pcm_hw_param_set.exit38.i.i

if.then49.i37.i.i:                                ; preds = %_snd_pcm_hw_param_set.exit30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %cmask.i33.i.i = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %call7.i.i.i.i, i32 0, i32 6
  %70 = ptrtoint ptr %cmask.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cmask.i33.i.i, align 4
  %or.i34.i.i = or i32 %71, 1024
  store i32 %or.i34.i.i, ptr %cmask.i33.i.i, align 4
  %rmask.i35.i.i = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %call7.i.i.i.i, i32 0, i32 5
  %72 = ptrtoint ptr %rmask.i35.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rmask.i35.i.i, align 8
  %or51.i36.i.i = or i32 %73, 1024
  store i32 %or51.i36.i.i, ptr %rmask.i35.i.i, align 8
  br label %_snd_pcm_hw_param_set.exit38.i.i

_snd_pcm_hw_param_set.exit38.i.i:                 ; preds = %if.then49.i37.i.i, %_snd_pcm_hw_param_set.exit30.i.i._snd_pcm_hw_param_set.exit38.i.i_crit_edge
  %74 = ptrtoint ptr %rate.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rate.i.i, align 4
  %arrayidx.i3.i40.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %call7.i.i.i.i, i32 0, i32 3, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %t.i.i39.i.i) #7
  %76 = getelementptr inbounds i8, ptr %t.i.i39.i.i, i32 8
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 805306367, ptr %76, align 4
  %max.i.i41.i.i = getelementptr inbounds %struct.snd_interval, ptr %t.i.i39.i.i, i32 0, i32 1
  %78 = ptrtoint ptr %max.i.i41.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %75, ptr %max.i.i41.i.i, align 4
  %79 = ptrtoint ptr %t.i.i39.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %75, ptr %t.i.i39.i.i, align 4
  %call.i.i42.i.i = call i32 @snd_interval_refine(ptr noundef %arrayidx.i3.i40.i.i, ptr noundef nonnull %t.i.i39.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %t.i.i39.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i42.i.i)
  %tobool48.not.i43.i.i = icmp eq i32 %call.i.i42.i.i, 0
  br i1 %tobool48.not.i43.i.i, label %_snd_pcm_hw_param_set.exit38.i.i._snd_pcm_hw_param_set.exit50.i.i_crit_edge, label %if.then49.i49.i.i

_snd_pcm_hw_param_set.exit38.i.i._snd_pcm_hw_param_set.exit50.i.i_crit_edge: ; preds = %_snd_pcm_hw_param_set.exit38.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_snd_pcm_hw_param_set.exit50.i.i

if.then49.i49.i.i:                                ; preds = %_snd_pcm_hw_param_set.exit38.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %cmask.i45.i.i = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %call7.i.i.i.i, i32 0, i32 6
  %80 = ptrtoint ptr %cmask.i45.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cmask.i45.i.i, align 4
  %or.i46.i.i = or i32 %81, 2048
  store i32 %or.i46.i.i, ptr %cmask.i45.i.i, align 4
  %rmask.i47.i.i = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %call7.i.i.i.i, i32 0, i32 5
  %82 = ptrtoint ptr %rmask.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rmask.i47.i.i, align 8
  %or51.i48.i.i = or i32 %83, 2048
  store i32 %or51.i48.i.i, ptr %rmask.i47.i.i, align 8
  br label %_snd_pcm_hw_param_set.exit50.i.i

_snd_pcm_hw_param_set.exit50.i.i:                 ; preds = %if.then49.i49.i.i, %_snd_pcm_hw_param_set.exit38.i.i._snd_pcm_hw_param_set.exit50.i.i_crit_edge
  %call10.i.i = call i32 @snd_pcm_kernel_ioctl(ptr noundef %18, i32 noundef 16707, ptr noundef null) #7
  %call11.i.i = call i32 @snd_pcm_kernel_ioctl(ptr noundef %18, i32 noundef -1034141423, ptr noundef nonnull %call7.i.i.i.i) #7
  %call12.i.i = call i32 @snd_pcm_kernel_ioctl(ptr noundef %18, i32 noundef 16704, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp.i89.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp.i89.i, label %do.end.i.i, label %if.end14.i.i

do.end.i.i:                                       ; preds = %_snd_pcm_hw_param_set.exit50.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %playback.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %playback.i, align 4
  %gadget.i.i = getelementptr inbounds %struct.gaudio, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %gadget.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %gadget.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.usb_gadget, ptr %87, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str, i32 noundef %call12.i.i) #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #7
  br label %playback_default_hw_params.exit.i

if.end14.i.i:                                     ; preds = %_snd_pcm_hw_param_set.exit50.i.i
  %88 = ptrtoint ptr %arrayidx.i1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.i1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not.i.i.i.i = icmp eq i32 %89, 0
  br i1 %tobool.not.i.i.i.i, label %for.inc.i.i.i.i, label %if.end14.i.i.if.then.i.i.i.i_crit_edge

if.end14.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge, %if.end14.i.i.if.then.i.i.i.i_crit_edge
  %i.09.lcssa.i.i.i.i = phi i32 [ 0, %if.end14.i.i.if.then.i.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge ]
  %.lcssa.i.i.i.i = phi i32 [ %89, %if.end14.i.i.if.then.i.i.i.i_crit_edge ], [ %92, %for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge ]
  %90 = call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i.i, i1 true) #7, !range !48
  %add.i.i.i.i = or i32 %90, %i.09.lcssa.i.i.i.i
  br label %params_access.exit.i.i

for.inc.i.i.i.i:                                  ; preds = %if.end14.i.i
  %arrayidx.1.i.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %call7.i.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %91 = ptrtoint ptr %arrayidx.1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.1.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.not.1.i.i.i.i = icmp eq i32 %92, 0
  br i1 %tobool.not.1.i.i.i.i, label %for.inc.i.i.i.i.params_access.exit.i.i_crit_edge, label %for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge

for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge:        ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i.i

for.inc.i.i.i.i.params_access.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_access.exit.i.i

params_access.exit.i.i:                           ; preds = %for.inc.i.i.i.i.params_access.exit.i.i_crit_edge, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %add.i.i.i.i, %if.then.i.i.i.i ], [ 0, %for.inc.i.i.i.i.params_access.exit.i.i_crit_edge ]
  %93 = ptrtoint ptr %access.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %retval.0.i.i.i.i, ptr %access.i.i, align 4
  %94 = ptrtoint ptr %arrayidx.i1.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx.i1.i1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.not.i.i52.i.i = icmp eq i32 %95, 0
  br i1 %tobool.not.i.i52.i.i, label %for.inc.i.i59.i.i, label %params_access.exit.i.i.if.then.i.i56.i.i_crit_edge

params_access.exit.i.i.if.then.i.i56.i.i_crit_edge: ; preds = %params_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i56.i.i

if.then.i.i56.i.i:                                ; preds = %for.inc.i.i59.i.i.if.then.i.i56.i.i_crit_edge, %params_access.exit.i.i.if.then.i.i56.i.i_crit_edge
  %i.09.lcssa.i.i53.i.i = phi i32 [ 0, %params_access.exit.i.i.if.then.i.i56.i.i_crit_edge ], [ 32, %for.inc.i.i59.i.i.if.then.i.i56.i.i_crit_edge ]
  %.lcssa.i.i54.i.i = phi i32 [ %95, %params_access.exit.i.i.if.then.i.i56.i.i_crit_edge ], [ %98, %for.inc.i.i59.i.i.if.then.i.i56.i.i_crit_edge ]
  %96 = call i32 @llvm.cttz.i32(i32 %.lcssa.i.i54.i.i, i1 true) #7, !range !48
  %add.i.i55.i.i = or i32 %96, %i.09.lcssa.i.i53.i.i
  br label %params_format.exit.i.i

for.inc.i.i59.i.i:                                ; preds = %params_access.exit.i.i
  %arrayidx.1.i.i57.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1, i32 0, i32 1
  %97 = ptrtoint ptr %arrayidx.1.i.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx.1.i.i57.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool.not.1.i.i58.i.i = icmp eq i32 %98, 0
  br i1 %tobool.not.1.i.i58.i.i, label %for.inc.i.i59.i.i.params_format.exit.i.i_crit_edge, label %for.inc.i.i59.i.i.if.then.i.i56.i.i_crit_edge

for.inc.i.i59.i.i.if.then.i.i56.i.i_crit_edge:    ; preds = %for.inc.i.i59.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i56.i.i

for.inc.i.i59.i.i.params_format.exit.i.i_crit_edge: ; preds = %for.inc.i.i59.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit.i.i

params_format.exit.i.i:                           ; preds = %for.inc.i.i59.i.i.params_format.exit.i.i_crit_edge, %if.then.i.i56.i.i
  %retval.0.i.i60.i.i = phi i32 [ %add.i.i55.i.i, %if.then.i.i56.i.i ], [ 0, %for.inc.i.i59.i.i.params_format.exit.i.i_crit_edge ]
  %99 = ptrtoint ptr %format.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %retval.0.i.i60.i.i, ptr %format.i.i, align 4
  %100 = ptrtoint ptr %arrayidx.i3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx.i3.i.i.i, align 4
  %102 = ptrtoint ptr %channels.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %channels.i.i, align 4
  %103 = ptrtoint ptr %arrayidx.i3.i40.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx.i3.i40.i.i, align 8
  %105 = ptrtoint ptr %rate.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %rate.i.i, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #7
  %106 = ptrtoint ptr %playback.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %playback.i, align 4
  %gadget27.i.i = getelementptr inbounds %struct.gaudio, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %gadget27.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %gadget27.i.i, align 4
  %dev28.i.i = getelementptr inbounds %struct.usb_gadget, ptr %109, i32 0, i32 11
  %110 = ptrtoint ptr %access.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %access.i.i, align 4
  %112 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %format.i.i, align 4
  %114 = ptrtoint ptr %channels.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %channels.i.i, align 4
  %116 = ptrtoint ptr %rate.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %rate.i.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev28.i.i, ptr noundef nonnull @.str.20, i32 noundef %111, i32 noundef %113, i32 noundef %115, i32 noundef %117) #10
  br label %playback_default_hw_params.exit.i

playback_default_hw_params.exit.i:                ; preds = %params_format.exit.i.i, %do.end.i.i, %if.end24.i.playback_default_hw_params.exit.i_crit_edge
  %capture.i = getelementptr inbounds %struct.gaudio, ptr %card, i32 0, i32 4
  %call29.i = call ptr @filp_open(ptr noundef %5, i32 noundef 0, i16 noundef zeroext 0) #7
  %filp30.i = getelementptr inbounds %struct.gaudio, ptr %card, i32 0, i32 4, i32 1
  %118 = ptrtoint ptr %filp30.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call29.i, ptr %filp30.i, align 4
  %cmp.i90.i = icmp ugt ptr %call29.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i90.i, label %do.end36.i, label %if.else.i

do.end36.i:                                       ; preds = %playback_default_hw_params.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %gadget37.i = getelementptr inbounds %struct.gaudio, ptr %card, i32 0, i32 1
  %119 = ptrtoint ptr %gadget37.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %gadget37.i, align 4
  %dev38.i = getelementptr inbounds %struct.usb_gadget, ptr %120, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38.i, ptr noundef nonnull @.str.16, ptr noundef %5) #10
  %substream39.i = getelementptr inbounds %struct.gaudio, ptr %card, i32 0, i32 4, i32 2
  %121 = ptrtoint ptr %substream39.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %substream39.i, align 4
  %122 = ptrtoint ptr %capture.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %capture.i, align 4
  %123 = ptrtoint ptr %filp30.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %filp30.i, align 4
  br label %if.end

if.else.i:                                        ; preds = %playback_default_hw_params.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %private_data43.i = getelementptr inbounds %struct.file, ptr %call29.i, i32 0, i32 16
  %124 = ptrtoint ptr %private_data43.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %private_data43.i, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %125, align 4
  %substream45.i = getelementptr inbounds %struct.gaudio, ptr %card, i32 0, i32 4, i32 2
  %128 = ptrtoint ptr %substream45.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %127, ptr %substream45.i, align 4
  %129 = ptrtoint ptr %capture.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %card, ptr %capture.i, align 4
  br label %if.end

do.end:                                           ; preds = %if.then14.i, %if.then.i
  %filp11.i.sink = phi ptr [ %filp11.i, %if.then14.i ], [ %filp.i, %if.then.i ]
  %retval.0.i.in = phi ptr [ %call10.i, %if.then14.i ], [ %call.i, %if.then.i ]
  %130 = ptrtoint ptr %filp11.i.sink to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %filp11.i.sink, align 4
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %gadget = getelementptr inbounds %struct.gaudio, ptr %card, i32 0, i32 1
  %131 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %gadget, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %132, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %if.else.i, %do.end36.i
  %retval.0.i5 = phi i32 [ %retval.0.i, %do.end ], [ 0, %if.else.i ], [ 0, %do.end36.i ]
  ret i32 %retval.0.i5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gaudio_cleanup(ptr noundef readonly %the_card) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %the_card, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %filp.i = getelementptr inbounds %struct.gaudio, ptr %the_card, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %filp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filp.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @filp_close(ptr noundef nonnull %1, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %filp2.i = getelementptr inbounds %struct.gaudio, ptr %the_card, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %filp2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %filp2.i, align 4
  %tobool3.not.i = icmp eq ptr %3, null
  br i1 %tobool3.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then4.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = tail call i32 @filp_close(ptr noundef nonnull %3, ptr noundef null) #7
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.end.i.if.end7.i_crit_edge
  %filp8.i = getelementptr inbounds %struct.gaudio, ptr %the_card, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %filp8.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %filp8.i, align 4
  %tobool9.not.i = icmp eq ptr %5, null
  br i1 %tobool9.not.i, label %if.end7.i.if.end_crit_edge, label %if.then10.i

if.end7.i.if.end_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i = tail call i32 @filp_close(ptr noundef nonnull %5, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %if.then10.i, %if.end7.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__snd_pcm_lib_xfer(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @filp_open(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_snd_pcm_hw_params_any(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_refine(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filp_close(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/function/u_uac1_legacy.c", i32 166, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @u_audio_playback._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @u_audio_playback._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/gadget/function/u_uac1_legacy.c", i32 175, i32 3}
!10 = !{ptr @u_audio_playback._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @u_audio_playback._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/gadget/function/u_uac1_legacy.c", i32 291, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @gaudio_setup._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @gaudio_setup._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/gadget/function/u_uac1_legacy.c", i32 214, i32 3}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @gaudio_open_snd_dev._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @gaudio_open_snd_dev._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/gadget/function/u_uac1_legacy.c", i32 227, i32 3}
!24 = !{ptr @gaudio_open_snd_dev._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @gaudio_open_snd_dev._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/gadget/function/u_uac1_legacy.c", i32 240, i32 3}
!28 = !{ptr @gaudio_open_snd_dev._entry.15, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @gaudio_open_snd_dev._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/gadget/function/u_uac1_legacy.c", i32 128, i32 3}
!32 = !{ptr @playback_default_hw_params._entry, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @playback_default_hw_params._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/gadget/function/u_uac1_legacy.c", i32 142, i32 2}
!36 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @playback_default_hw_params._entry.19, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @playback_default_hw_params._entry_ptr.22, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i32 0, i32 33}
