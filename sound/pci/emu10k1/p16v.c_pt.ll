; ModuleID = '/llk/IR_all_yes/sound/pci/emu10k1/p16v.c_pt.bc'
source_filename = "../sound/pci/emu10k1/p16v.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.87, i32 }
%union.anon.87 = type { ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_emu10k1 = type { i32, i32, i8, ptr, i32, i32, i32, i16, i32, i32, i32, i32, i8, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.snd_dma_device, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, [3 x i32], i32, [4 x [2 x i8]], %struct.snd_emu10k1_fx8010, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, [64 x %struct.snd_emu10k1_voice], [4 x %struct.snd_emu10k1_voice], %struct.snd_emu10k1_voice, i32, i32, i32, %struct.snd_emu1010, [32 x %struct.snd_emu10k1_pcm_mixer], [16 x %struct.snd_emu10k1_pcm_mixer], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi, [2 x i32], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_emu10k1_fx8010 = type { i16, i16, i16, i16, i32, %struct.snd_dma_buffer, i32, [128 x i8], i32, i32, %struct.list_head, %struct.mutex, [8 x %struct.snd_emu10k1_fx8010_pcm], %struct.spinlock, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_emu10k1_fx8010_pcm = type { i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, [32 x i8], %struct.snd_pcm_indirect, i32, i32, %struct.snd_emu10k1_fx8010_irq }
%struct.snd_pcm_indirect = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_emu10k1_fx8010_irq = type { ptr, ptr, i16, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.snd_emu10k1_voice = type { ptr, i32, i8, ptr, ptr }
%struct.snd_emu1010 = type { [64 x i32], [64 x i32], i32, i32, i32, i32, i32, %struct.delayed_work, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_emu10k1_pcm_mixer = type { [3 x [8 x i8]], [3 x [8 x i8]], [3 x i16], ptr }
%struct.snd_emu10k1_midi = type { ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, ptr }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.snd_emu10k1_pcm = type { ptr, i32, ptr, [16 x ptr], ptr, i16, i16, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.77, [64 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.77 = type { %struct.anon.80, [40 x i8] }
%struct.anon.80 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.86, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.86 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.81, [128 x i8] }
%union.anon.81 = type { %union.anon.83 }
%union.anon.83 = type { [64 x i64] }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p16v\00", [27 x i8] zeroinitializer }, align 32
@snd_p16v_playback_front_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_p16v_pcm_open_playback_front, ptr @snd_p16v_pcm_close_playback, ptr null, ptr null, ptr null, ptr @snd_p16v_pcm_prepare_playback, ptr @snd_p16v_pcm_trigger_playback, ptr null, ptr @snd_p16v_pcm_pointer_playback, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_p16v_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_p16v_pcm_open_capture, ptr @snd_p16v_pcm_close_capture, ptr null, ptr null, ptr null, ptr @snd_p16v_pcm_prepare_capture, ptr @snd_p16v_pcm_trigger_capture, ptr null, ptr @snd_p16v_pcm_pointer_capture, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@p16v_mixer_controls = internal constant { [10 x %struct.snd_kcontrol_new], [96 x i8] } { [10 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.6, i32 0, i32 19, i32 0, ptr @snd_p16v_volume_info, ptr @snd_p16v_volume_get, ptr @snd_p16v_volume_put, %union.anon.87 { ptr @snd_p16v_db_scale1 }, i32 105 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.7, i32 0, i32 19, i32 0, ptr @snd_p16v_volume_info, ptr @snd_p16v_volume_get, ptr @snd_p16v_volume_put, %union.anon.87 { ptr @snd_p16v_db_scale1 }, i32 362 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.8, i32 0, i32 19, i32 0, ptr @snd_p16v_volume_info, ptr @snd_p16v_volume_get, ptr @snd_p16v_volume_put, %union.anon.87 { ptr @snd_p16v_db_scale1 }, i32 361 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.9, i32 0, i32 19, i32 0, ptr @snd_p16v_volume_info, ptr @snd_p16v_volume_get, ptr @snd_p16v_volume_put, %union.anon.87 { ptr @snd_p16v_db_scale1 }, i32 106 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.10, i32 0, i32 19, i32 0, ptr @snd_p16v_volume_info, ptr @snd_p16v_volume_get, ptr @snd_p16v_volume_put, %union.anon.87 { ptr @snd_p16v_db_scale1 }, i32 103 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 19, i32 0, ptr @snd_p16v_volume_info, ptr @snd_p16v_volume_get, ptr @snd_p16v_volume_put, %union.anon.87 { ptr @snd_p16v_db_scale1 }, i32 360 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.12, i32 0, i32 19, i32 0, ptr @snd_p16v_volume_info, ptr @snd_p16v_volume_get, ptr @snd_p16v_volume_put, %union.anon.87 { ptr @snd_p16v_db_scale1 }, i32 359 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 19, i32 0, ptr @snd_p16v_volume_info, ptr @snd_p16v_volume_get, ptr @snd_p16v_volume_put, %union.anon.87 { ptr @snd_p16v_db_scale1 }, i32 104 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.14, i32 0, i32 0, i32 0, ptr @snd_p16v_capture_source_info, ptr @snd_p16v_capture_source_get, ptr @snd_p16v_capture_source_put, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 0, i32 0, ptr @snd_p16v_capture_channel_info, ptr @snd_p16v_capture_channel_get, ptr @snd_p16v_capture_channel_put, %union.anon.87 zeroinitializer, i32 0 }], [96 x i8] zeroinitializer }, align 32
@snd_p16v_playback_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 4522243, i64 1024, i32 5312, i32 44100, i32 192000, i32 8, i32 8, i32 523776, i32 64, i32 65472, i32 2, i32 8, i32 0 }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@snd_p16v_capture_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 327939, i64 1024, i32 5312, i32 44100, i32 192000, i32 2, i32 2, i32 65472, i32 64, i32 32704, i32 2, i32 2, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_p16v_pcm_pointer_capture._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 541, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"buffer capture limited!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"snd_p16v_pcm_pointer_capture\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/pci/emu10k1/p16v.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_p16v_pcm_pointer_capture._entry_ptr = internal global ptr @snd_p16v_pcm_pointer_capture._entry, section ".printk_index", align 4
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"HD Analog Front Playback Volume\00", [32 x i8] zeroinitializer }, align 32
@snd_p16v_db_scale1 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -5175, i32 65561], [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HD Analog Rear Playback Volume\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"HD Analog Center/LFE Playback Volume\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HD Analog Side Playback Volume\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HD SPDIF Front Playback Volume\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HD SPDIF Rear Playback Volume\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"HD SPDIF Center/LFE Playback Volume\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HD SPDIF Side Playback Volume\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HD source Capture\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HD channel Capture\00", [45 x i8] zeroinitializer }, align 32
@snd_p16v_capture_source_info.texts = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SPDIF\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I2S\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SRC48\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SRCMulti_SPDIF\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SRCMulti_I2S\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CDIF\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"FX\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AC97\00", [27 x i8] zeroinitializer }, align 32
@snd_p16v_capture_channel_info.texts = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"2\00", [30 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"3\00", [30 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 44100, i64 96000, i64 192000]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 44100, i64 96000, i64 192000]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 580, i32 31 }
@___asan_gen_.34 = private unnamed_addr constant [28 x i8] c"snd_p16v_playback_front_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 554, i32 33 }
@___asan_gen_.37 = private unnamed_addr constant [21 x i8] c"snd_p16v_capture_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 562, i32 33 }
@___asan_gen_.40 = private unnamed_addr constant [20 x i8] c"p16v_mixer_controls\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 768, i32 38 }
@___asan_gen_.43 = private unnamed_addr constant [21 x i8] c"snd_p16v_playback_hw\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 111, i32 38 }
@___asan_gen_.46 = private unnamed_addr constant [20 x i8] c"snd_p16v_capture_hw\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 132, i32 38 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 541, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 769, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [19 x i8] c"snd_p16v_db_scale1\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 755, i32 14 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 770, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 771, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 772, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 773, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 774, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 775, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 776, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 779, i32 12 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 786, i32 12 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 680, i32 28 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 681, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 681, i32 12 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 681, i32 19 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 681, i32 28 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 681, i32 46 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 682, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 682, i32 11 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 682, i32 17 }
@___asan_gen_.127 = private unnamed_addr constant [6 x i8] c"texts\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 722, i32 28 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 722, i32 41 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 722, i32 46 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 722, i32 51 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private constant [28 x i8] c"../sound/pci/emu10k1/p16v.c\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 722, i32 56 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @snd_p16v_pcm_pointer_capture._entry, ptr @snd_p16v_pcm_pointer_capture._entry_ptr, ptr @.str, ptr @snd_p16v_playback_front_ops, ptr @snd_p16v_capture_ops, ptr @p16v_mixer_controls, ptr @snd_p16v_playback_hw, ptr @snd_p16v_capture_hw, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @snd_p16v_db_scale1, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @snd_p16v_capture_source_info.texts, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @snd_p16v_capture_channel_info.texts, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_p16v_playback_front_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_p16v_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p16v_mixer_controls to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_p16v_playback_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_p16v_capture_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_p16v_pcm_pointer_capture._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_p16v_db_scale1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_p16v_capture_source_info.texts to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_p16v_capture_channel_info.texts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_p16v_pcm(ptr noundef %emu, i32 noundef %device) local_unnamed_addr #0 align 64 {
entry:
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #9
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !79
  %p16v_device_offset = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 49
  %1 = ptrtoint ptr %p16v_device_offset to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %device, ptr %p16v_device_offset, align 4
  %card = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 32
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %call = call i32 @snd_pcm_new(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %device, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %pcm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcm, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %emu, ptr %private_data, align 8
  call void @snd_pcm_set_ops(ptr noundef %5, i32 noundef 0, ptr noundef nonnull @snd_p16v_playback_front_ops) #9
  %7 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %8, i32 noundef 1, ptr noundef nonnull @snd_p16v_capture_ops) #9
  %9 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcm, align 4
  %info_flags = getelementptr inbounds %struct.snd_pcm, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %info_flags, align 8
  %dev_subclass = getelementptr inbounds %struct.snd_pcm, ptr %10, i32 0, i32 5
  %12 = ptrtoint ptr %dev_subclass to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %dev_subclass, align 2
  %name = getelementptr inbounds %struct.snd_pcm, ptr %10, i32 0, i32 7
  %13 = call ptr @memcpy(ptr %name, ptr @.str, i32 5)
  %pcm_p16v = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 37
  %14 = ptrtoint ptr %pcm_p16v to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %10, ptr %pcm_p16v, align 4
  %substream2 = getelementptr inbounds %struct.snd_pcm, ptr %10, i32 0, i32 8, i32 0, i32 4
  %15 = ptrtoint ptr %substream2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %substream.031 = load ptr, ptr %substream2, align 4
  %tobool.not32 = icmp eq ptr %substream.031, null
  br i1 %tobool.not32, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %pci = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 31
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %substream.033 = phi ptr [ %substream.031, %for.body.lr.ph ], [ %substream.0, %for.body.for.body_crit_edge ]
  %16 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %call3 = call i32 @snd_pcm_set_managed_buffer(ptr noundef nonnull %substream.033, i32 noundef 2, ptr noundef %dev, i32 noundef 523776, i32 noundef 523776) #9
  %next = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.033, i32 0, i32 15
  %18 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %18)
  %substream.0 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %substream.0, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %19 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcm, align 4
  %substream6 = getelementptr %struct.snd_pcm, ptr %20, i32 0, i32 8, i32 1, i32 4
  %21 = ptrtoint ptr %substream6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %substream.134 = load ptr, ptr %substream6, align 4
  %tobool8.not35 = icmp eq ptr %substream.134, null
  br i1 %tobool8.not35, label %for.end.cleanup_crit_edge, label %for.body9.lr.ph

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body9.lr.ph:                                  ; preds = %for.end
  %pci10 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 31
  br label %for.body9

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.body9.lr.ph
  %substream.136 = phi ptr [ %substream.134, %for.body9.lr.ph ], [ %substream.1, %for.body9.for.body9_crit_edge ]
  %22 = ptrtoint ptr %pci10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci10, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %call12 = call i32 @snd_pcm_set_managed_buffer(ptr noundef nonnull %substream.136, i32 noundef 2, ptr noundef %dev11, i32 noundef 65472, i32 noundef 65472) #9
  %next14 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.136, i32 0, i32 15
  %24 = ptrtoint ptr %next14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %substream.1 = load ptr, ptr %next14, align 4
  %tobool8.not = icmp eq ptr %substream.1, null
  br i1 %tobool8.not, label %for.body9.cleanup_crit_edge, label %for.body9.for.body9_crit_edge

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body9

for.body9.cleanup_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body9.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.body9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_p16v_mixer(ptr noundef %emu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 32
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %call = tail call ptr @snd_ctl_new1(ptr noundef nonnull @p16v_mixer_controls, ptr noundef %emu) #9
  %call2 = tail call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %entry.cleanup_crit_edge, label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond:                                         ; preds = %entry
  %call.1 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([10 x %struct.snd_kcontrol_new], ptr @p16v_mixer_controls, i32 0, i32 1), ptr noundef %emu) #9
  %call2.1 = tail call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1)
  %cmp3.1 = icmp slt i32 %call2.1, 0
  br i1 %cmp3.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %call.2 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([10 x %struct.snd_kcontrol_new], ptr @p16v_mixer_controls, i32 0, i32 2), ptr noundef %emu) #9
  %call2.2 = tail call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call.2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.2)
  %cmp3.2 = icmp slt i32 %call2.2, 0
  br i1 %cmp3.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %call.3 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([10 x %struct.snd_kcontrol_new], ptr @p16v_mixer_controls, i32 0, i32 3), ptr noundef %emu) #9
  %call2.3 = tail call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call.3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.3)
  %cmp3.3 = icmp slt i32 %call2.3, 0
  br i1 %cmp3.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %call.4 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([10 x %struct.snd_kcontrol_new], ptr @p16v_mixer_controls, i32 0, i32 4), ptr noundef %emu) #9
  %call2.4 = tail call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call.4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.4)
  %cmp3.4 = icmp slt i32 %call2.4, 0
  br i1 %cmp3.4, label %for.cond.3.cleanup_crit_edge, label %for.cond.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %call.5 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([10 x %struct.snd_kcontrol_new], ptr @p16v_mixer_controls, i32 0, i32 5), ptr noundef %emu) #9
  %call2.5 = tail call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call.5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.5)
  %cmp3.5 = icmp slt i32 %call2.5, 0
  br i1 %cmp3.5, label %for.cond.4.cleanup_crit_edge, label %for.cond.5

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  %call.6 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([10 x %struct.snd_kcontrol_new], ptr @p16v_mixer_controls, i32 0, i32 6), ptr noundef %emu) #9
  %call2.6 = tail call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call.6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.6)
  %cmp3.6 = icmp slt i32 %call2.6, 0
  br i1 %cmp3.6, label %for.cond.5.cleanup_crit_edge, label %for.cond.6

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  %call.7 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([10 x %struct.snd_kcontrol_new], ptr @p16v_mixer_controls, i32 0, i32 7), ptr noundef %emu) #9
  %call2.7 = tail call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call.7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.7)
  %cmp3.7 = icmp slt i32 %call2.7, 0
  br i1 %cmp3.7, label %for.cond.6.cleanup_crit_edge, label %for.cond.7

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.7:                                       ; preds = %for.cond.6
  %call.8 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([10 x %struct.snd_kcontrol_new], ptr @p16v_mixer_controls, i32 0, i32 8), ptr noundef %emu) #9
  %call2.8 = tail call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call.8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.8)
  %cmp3.8 = icmp slt i32 %call2.8, 0
  br i1 %cmp3.8, label %for.cond.7.cleanup_crit_edge, label %for.cond.8

for.cond.7.cleanup_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.8:                                       ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #11
  %call.9 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([10 x %struct.snd_kcontrol_new], ptr @p16v_mixer_controls, i32 0, i32 9), ptr noundef %emu) #9
  %call2.9 = tail call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call.9) #9
  %2 = call i32 @llvm.smin.i32(i32 %call2.9, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %for.cond.8, %for.cond.7.cleanup_crit_edge, %for.cond.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ %call2.1, %for.cond.cleanup_crit_edge ], [ %call2.2, %for.cond.1.cleanup_crit_edge ], [ %call2.3, %for.cond.2.cleanup_crit_edge ], [ %call2.4, %for.cond.3.cleanup_crit_edge ], [ %call2.5, %for.cond.4.cleanup_crit_edge ], [ %call2.6, %for.cond.5.cleanup_crit_edge ], [ %call2.7, %for.cond.6.cleanup_crit_edge ], [ %call2.8, %for.cond.7.cleanup_crit_edge ], [ %2, %for.cond.8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_p16v_alloc_pm_buffer(ptr nocapture noundef writeonly %emu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call noalias ptr @vmalloc(i32 noundef 512) #12
  %p16v_saved = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 83
  %0 = ptrtoint ptr %p16v_saved to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %p16v_saved, align 4
  %tobool.not = icmp eq ptr %call1, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_p16v_free_pm_buffer(ptr nocapture noundef readonly %emu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %p16v_saved = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 83
  %0 = ptrtoint ptr %p16v_saved to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p16v_saved, align 4
  tail call void @vfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_p16v_suspend(ptr noundef %emu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %p16v_saved = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 83
  %0 = ptrtoint ptr %p16v_saved to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p16v_saved, align 4
  br label %for.body3

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %entry
  %val.114 = phi ptr [ %1, %entry ], [ %incdec.ptr, %for.body3.for.body3_crit_edge ]
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.body3.for.body3_crit_edge ]
  %call = tail call i32 @snd_emu10k1_ptr20_read(ptr noundef %emu, i32 noundef %i.013, i32 noundef 0) #9
  %2 = ptrtoint ptr %val.114 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %val.114, align 4
  %inc = add nuw nsw i32 %i.013, 1
  %incdec.ptr = getelementptr i32, ptr %val.114, i32 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end6, label %for.body3.for.body3_crit_edge

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3

for.end6:                                         ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_ptr20_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_p16v_resume(ptr noundef %emu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %p16v_saved = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 83
  %0 = ptrtoint ptr %p16v_saved to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p16v_saved, align 4
  br label %for.body3

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %entry
  %val.114 = phi ptr [ %1, %entry ], [ %incdec.ptr, %for.body3.for.body3_crit_edge ]
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.body3.for.body3_crit_edge ]
  %2 = ptrtoint ptr %val.114 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val.114, align 4
  tail call void @snd_emu10k1_ptr20_write(ptr noundef %emu, i32 noundef %i.013, i32 noundef 0, i32 noundef %3) #9
  %inc = add nuw nsw i32 %i.013, 1
  %incdec.ptr = getelementptr i32, ptr %val.114, i32 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end6, label %for.body3.for.body3_crit_edge

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3

for.end6:                                         ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emu10k1_ptr20_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_p16v_pcm_open_playback_front(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 132) #13
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %entry.snd_p16v_pcm_open_playback_channel.exit_crit_edge, label %if.end.i

entry.snd_p16v_pcm_open_playback_channel.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_p16v_pcm_open_playback_channel.exit

if.end.i:                                         ; preds = %entry
  %p16v_voices.i = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 47
  %5 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %call7.i.i.i, align 8
  %substream3.i = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %call7.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %substream3.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %substream, ptr %substream3.i, align 8
  %private_data4.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %7 = ptrtoint ptr %private_data4.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i.i, ptr %private_data4.i, align 8
  %private_free.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 45
  %8 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @snd_p16v_pcm_free_substream, ptr %private_free.i, align 4
  %hw.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %9 = call ptr @memcpy(ptr %hw.i, ptr @snd_p16v_playback_hw, i32 64)
  %10 = ptrtoint ptr %p16v_voices.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %p16v_voices.i, align 4
  %number.i = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 47, i32 0, i32 1
  %11 = ptrtoint ptr %number.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %number.i, align 4
  %use.i = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 47, i32 0, i32 2
  %12 = ptrtoint ptr %use.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %use.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %use.i, align 4
  %epcm6.i = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 47, i32 0, i32 4
  %13 = ptrtoint ptr %epcm6.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i.i, ptr %epcm6.i, align 4
  %call7.i = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %3, i32 noundef 15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end.i.snd_p16v_pcm_open_playback_channel.exit_crit_edge, label %if.end10.i

if.end.i.snd_p16v_pcm_open_playback_channel.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_p16v_pcm_open_playback_channel.exit

if.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %substream, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %sync.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 36
  %20 = ptrtoint ptr %sync.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %sync.i, align 4
  %arrayidx14.i = getelementptr %struct.snd_pcm_runtime, ptr %3, i32 0, i32 36, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 80, ptr %arrayidx14.i, align 4
  %arrayidx16.i = getelementptr %struct.snd_pcm_runtime, ptr %3, i32 0, i32 36, i32 0, i32 2
  %22 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16, ptr %arrayidx16.i, align 4
  %arrayidx18.i = getelementptr %struct.snd_pcm_runtime, ptr %3, i32 0, i32 36, i32 0, i32 3
  %23 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 86, ptr %arrayidx18.i, align 4
  br label %snd_p16v_pcm_open_playback_channel.exit

snd_p16v_pcm_open_playback_channel.exit:          ; preds = %if.end10.i, %if.end.i.snd_p16v_pcm_open_playback_channel.exit_crit_edge, %entry.snd_p16v_pcm_open_playback_channel.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end10.i ], [ -12, %entry.snd_p16v_pcm_open_playback_channel.exit_crit_edge ], [ %call7.i, %if.end.i.snd_p16v_pcm_open_playback_channel.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_p16v_pcm_close_playback(ptr nocapture noundef readonly %substream) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %p16v_device_offset = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 49
  %6 = ptrtoint ptr %p16v_device_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %p16v_device_offset, align 4
  %sub = sub i32 %5, %7
  %use = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 47, i32 %sub, i32 2
  %8 = ptrtoint ptr %use to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %use, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %use, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_p16v_pcm_prepare_playback(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %4 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %substream, align 4
  %device = getelementptr inbounds %struct.snd_pcm, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %device, align 4
  %p16v_device_offset = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 49
  %8 = ptrtoint ptr %p16v_device_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %p16v_device_offset, align 4
  %sub = sub i32 %7, %9
  %p16v_buffer = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 18
  %10 = ptrtoint ptr %p16v_buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p16v_buffer, align 4
  %area = getelementptr inbounds %struct.snd_dma_buffer, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %area, align 4
  %mul = shl i32 %sub, 7
  %add.ptr = getelementptr i8, ptr %13, i32 %mul
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %14 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %period_size, align 4
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %16 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frame_bits.i, align 8
  %mul.i = mul i32 %17, %15
  %div1.i = lshr i32 %mul.i, 3
  %call2 = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %1, i32 noundef 118, i32 noundef %sub) #9
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %18 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rate, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %sw.default [
    i32 44100, label %sw.bb
    i32 96000, label %sw.bb3
    i32 192000, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %call2, -57569
  %or = or i32 %and, 32896
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and4 = and i32 %call2, -57569
  %or5 = or i32 %and4, 16448
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and7 = and i32 %call2, -57569
  %or8 = or i32 %and7, 8224
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and10 = and i32 %call2, -57569
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb3, %sw.bb
  %and10.sink = phi i32 [ %and10, %sw.default ], [ %or8, %sw.bb6 ], [ %or5, %sw.bb3 ], [ %or, %sw.bb ]
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 118, i32 noundef %sub, i32 noundef %and10.sink) #9
  %periods = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 17
  %21 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %periods, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp70.not = icmp eq i32 %22, 0
  br i1 %cmp70.not, label %sw.epilog.for.end_crit_edge, label %for.body.lr.ph

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %sw.epilog
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %shl = shl i32 %div1.i, 16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.071 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %23 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_addr, align 8
  %mul12 = mul i32 %i.071, %div1.i
  %add = add i32 %24, %mul12
  %mul13 = shl i32 %i.071, 1
  %arrayidx = getelementptr i32, ptr %add.ptr, i32 %mul13
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add, ptr %arrayidx, align 4
  %add15 = or i32 %mul13, 1
  %arrayidx16 = getelementptr i32, ptr %add.ptr, i32 %add15
  %26 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %shl, ptr %arrayidx16, align 4
  %inc = add nuw i32 %i.071, 1
  %27 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %periods, align 8
  %cmp = icmp ult i32 %inc, %28
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %sw.epilog.for.end_crit_edge
  %29 = ptrtoint ptr %p16v_buffer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %p16v_buffer, align 4
  %addr = getelementptr inbounds %struct.snd_dma_buffer, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %addr, align 4
  %add19 = add i32 %32, %mul
  tail call void @snd_emu10k1_ptr20_write(ptr noundef %1, i32 noundef 0, i32 noundef %sub, i32 noundef %add19) #9
  %33 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %periods, align 8
  %sub21 = shl i32 %34, 19
  %shl22 = add i32 %sub21, -524288
  tail call void @snd_emu10k1_ptr20_write(ptr noundef %1, i32 noundef 1, i32 noundef %sub, i32 noundef %shl22) #9
  tail call void @snd_emu10k1_ptr20_write(ptr noundef %1, i32 noundef 2, i32 noundef %sub, i32 noundef 0) #9
  %dma_addr23 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %35 = ptrtoint ptr %dma_addr23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dma_addr23, align 8
  tail call void @snd_emu10k1_ptr20_write(ptr noundef %1, i32 noundef 4, i32 noundef %sub, i32 noundef %36) #9
  tail call void @snd_emu10k1_ptr20_write(ptr noundef %1, i32 noundef 5, i32 noundef %sub, i32 noundef 0) #9
  tail call void @snd_emu10k1_ptr20_write(ptr noundef %1, i32 noundef 6, i32 noundef %sub, i32 noundef 0) #9
  tail call void @snd_emu10k1_ptr20_write(ptr noundef %1, i32 noundef 7, i32 noundef %sub, i32 noundef 0) #9
  tail call void @snd_emu10k1_ptr20_write(ptr noundef %1, i32 noundef 8, i32 noundef %sub, i32 noundef 0) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_p16v_pcm_trigger_playback(ptr noundef %substream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cmd)
  %cond = icmp eq i32 %cmd, 1
  %. = zext i1 %cond to i16
  %group = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 18
  %2 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %group, align 4
  %substreams = getelementptr inbounds %struct.snd_pcm_group, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %substreams to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn51 = load ptr, ptr %substreams, align 4
  %cmp.not53 = icmp eq ptr %.pn51, %substreams
  br i1 %cmp.not53, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %p16v_device_offset = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 49
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn56 = phi ptr [ %.pn51, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %inte.055 = phi i32 [ 0, %for.body.lr.ph ], [ %inte.1, %for.inc.for.body_crit_edge ]
  %basic.054 = phi i32 [ 0, %for.body.lr.ph ], [ %basic.1, %for.inc.for.body_crit_edge ]
  %private_data4 = getelementptr i8, ptr %.pn56, i32 -132
  %5 = ptrtoint ptr %private_data4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data4, align 4
  %cmp5.not = icmp eq ptr %6, %1
  br i1 %cmp5.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %stream = getelementptr i8, ptr %.pn56, i32 -92
  %7 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp6.not = icmp eq i32 %8, 0
  br i1 %cmp6.not, label %if.end, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %runtime7 = getelementptr i8, ptr %.pn56, i32 -20
  %9 = ptrtoint ptr %runtime7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %runtime7, align 4
  %private_data8 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 44
  %11 = ptrtoint ptr %private_data8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private_data8, align 8
  %13 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %substream, align 4
  %device = getelementptr inbounds %struct.snd_pcm, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %device, align 4
  %17 = ptrtoint ptr %p16v_device_offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %p16v_device_offset, align 4
  %sub = sub i32 %16, %18
  %running9 = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %12, i32 0, i32 5
  %19 = ptrtoint ptr %running9 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %., ptr %running9, align 4
  %shl = shl nuw i32 1, %sub
  %or = or i32 %shl, %basic.054
  %shl10 = shl i32 4096, %sub
  %or11 = or i32 %shl10, %inte.055
  %20 = load ptr, ptr %runtime7, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %substream, ptr %20, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %basic.1 = phi i32 [ %basic.054, %for.body.for.inc_crit_edge ], [ %basic.054, %lor.lhs.false.for.inc_crit_edge ], [ %or, %if.end ]
  %inte.1 = phi i32 [ %inte.055, %for.body.for.inc_crit_edge ], [ %inte.055, %lor.lhs.false.for.inc_crit_edge ], [ %or11, %if.end ]
  %22 = ptrtoint ptr %.pn56 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn = load ptr, ptr %.pn56, align 4
  %23 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %group, align 4
  %substreams3 = getelementptr inbounds %struct.snd_pcm_group, ptr %24, i32 0, i32 2
  %cmp.not = icmp eq ptr %.pn, %substreams3
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %basic.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %basic.1, %for.inc.for.end_crit_edge ]
  %inte.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inte.1, %for.inc.for.end_crit_edge ]
  %25 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %cmd, label %for.end.sw.epilog22_crit_edge [
    i32 1, label %sw.bb17
    i32 0, label %sw.bb19
  ]

for.end.sw.epilog22_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog22

sw.bb17:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %emu_lock.i = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 42
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #9
  %port.i = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port.i, align 4
  %add.i = add i32 %27, 44
  %and.i = and i32 %add.i, 1048575
  %add5.i = or i32 %and.i, -18874368
  %28 = inttoptr i32 %add5.i to ptr
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %28) #9, !srcloc !80
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !81
  %or.i = or i32 %30, %inte.0.lcssa
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  tail call void @arm_heavy_mb() #9
  %31 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %32 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port.i, align 4
  %add13.i = add i32 %33, 44
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %34 = inttoptr i32 %add15.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %34, i32 %31) #9, !srcloc !83
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i) #9
  %call = tail call i32 @snd_emu10k1_ptr20_read(ptr noundef %1, i32 noundef 64, i32 noundef 0) #9
  %or18 = or i32 %call, %basic.0.lcssa
  tail call void @snd_emu10k1_ptr20_write(ptr noundef %1, i32 noundef 64, i32 noundef 0, i32 noundef %or18) #9
  br label %sw.epilog22

sw.bb19:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = tail call i32 @snd_emu10k1_ptr20_read(ptr noundef %1, i32 noundef 64, i32 noundef 0) #9
  %neg = xor i32 %basic.0.lcssa, -1
  %and = and i32 %call20, %neg
  tail call void @snd_emu10k1_ptr20_write(ptr noundef %1, i32 noundef 64, i32 noundef 0, i32 noundef %and) #9
  %emu_lock.i45 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 42
  %call2.i46 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i45) #9
  %port.i47 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %port.i47 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port.i47, align 4
  %add.i48 = add i32 %36, 44
  %and.i49 = and i32 %add.i48, 1048575
  %add5.i50 = or i32 %and.i49, -18874368
  %37 = inttoptr i32 %add5.i50 to ptr
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %37) #9, !srcloc !80
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !84
  %neg.i = xor i32 %inte.0.lcssa, -1
  %and9.i = and i32 %39, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !85
  tail call void @arm_heavy_mb() #9
  %40 = tail call i32 @llvm.bswap.i32(i32 %and9.i) #9
  %41 = ptrtoint ptr %port.i47 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port.i47, align 4
  %add14.i = add i32 %42, 44
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %43 = inttoptr i32 %add16.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %43, i32 %40) #9, !srcloc !83
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i45, i32 noundef %call2.i46) #9
  br label %sw.epilog22

sw.epilog22:                                      ; preds = %sw.bb19, %sw.bb17, %for.end.sw.epilog22_crit_edge
  %result.0 = phi i32 [ 0, %sw.bb19 ], [ 0, %sw.bb17 ], [ -22, %for.end.sw.epilog22_crit_edge ]
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_p16v_pcm_pointer_playback(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %p16v_device_offset = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 49
  %10 = ptrtoint ptr %p16v_device_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %p16v_device_offset, align 4
  %sub = sub i32 %9, %11
  %running = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %running to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not = icmp eq i16 %13, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @snd_emu10k1_ptr20_read(ptr noundef %1, i32 noundef 2, i32 noundef %sub) #9
  %call3 = tail call i32 @snd_emu10k1_ptr20_read(ptr noundef %1, i32 noundef 6, i32 noundef %sub) #9
  %call4 = tail call i32 @snd_emu10k1_ptr20_read(ptr noundef %1, i32 noundef 2, i32 noundef %sub) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %call4)
  %cmp.not = icmp eq i32 %call, %call4
  br i1 %cmp.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 @snd_emu10k1_ptr20_read(ptr noundef %1, i32 noundef 6, i32 noundef %sub) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %ptr1.0 = phi i32 [ %call6, %if.then5 ], [ %call3, %if.end.if.end7_crit_edge ]
  %mul.i = shl i32 %ptr1.0, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %14 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %15
  %shr = lshr i32 %call4, 3
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %16 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %period_size, align 4
  %mul = mul i32 %17, %shr
  %add = add i32 %mul, %div.i
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %18 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %19)
  %cmp9.not = icmp ult i32 %add, %19
  %sub12 = select i1 %cmp9.not, i32 0, i32 %19
  %spec.select = sub i32 %add, %sub12
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end7 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_p16v_pcm_free_substream(ptr nocapture noundef readonly %runtime) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 44
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_ptr_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emu10k1_ptr_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_p16v_pcm_open_capture(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 132) #13
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %entry.snd_p16v_pcm_open_capture_channel.exit_crit_edge, label %if.end.i

entry.snd_p16v_pcm_open_capture_channel.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_p16v_pcm_open_capture_channel.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %p16v_capture_voice.i = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 48
  %5 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %call7.i.i.i, align 8
  %substream3.i = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %call7.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %substream3.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %substream, ptr %substream3.i, align 8
  %private_data4.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %7 = ptrtoint ptr %private_data4.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i.i, ptr %private_data4.i, align 8
  %private_free.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 45
  %8 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @snd_p16v_pcm_free_substream, ptr %private_free.i, align 4
  %hw.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %9 = call ptr @memcpy(ptr %hw.i, ptr @snd_p16v_capture_hw, i32 64)
  %10 = ptrtoint ptr %p16v_capture_voice.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %p16v_capture_voice.i, align 4
  %number.i = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 48, i32 1
  %11 = ptrtoint ptr %number.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %number.i, align 4
  %use.i = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 48, i32 2
  %12 = ptrtoint ptr %use.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %use.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %use.i, align 4
  %epcm6.i = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 48, i32 4
  %13 = ptrtoint ptr %epcm6.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i.i, ptr %epcm6.i, align 4
  %call7.i = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %3, i32 noundef 15) #9
  %14 = tail call i32 @llvm.smin.i32(i32 %call7.i, i32 0) #9
  br label %snd_p16v_pcm_open_capture_channel.exit

snd_p16v_pcm_open_capture_channel.exit:           ; preds = %if.end.i, %entry.snd_p16v_pcm_open_capture_channel.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %entry.snd_p16v_pcm_open_capture_channel.exit_crit_edge ], [ %14, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_p16v_pcm_close_capture(ptr nocapture noundef readonly %substream) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %use = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 48, i32 2
  %2 = ptrtoint ptr %use to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %use, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %use, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_p16v_pcm_prepare_capture(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %4 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %substream, align 4
  %device = getelementptr inbounds %struct.snd_pcm, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %device, align 4
  %p16v_device_offset = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 49
  %8 = ptrtoint ptr %p16v_device_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %p16v_device_offset, align 4
  %sub = sub i32 %7, %9
  %call = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %1, i32 noundef 118, i32 noundef %sub) #9
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %10 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rate, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %11, label %sw.default [
    i32 44100, label %sw.bb
    i32 96000, label %sw.bb2
    i32 192000, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %call, -3585
  %or = or i32 %and, 2048
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and3 = and i32 %call, -3585
  %or4 = or i32 %and3, 1024
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and6 = and i32 %call, -3585
  %or7 = or i32 %and6, 512
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and9 = and i32 %call, -3585
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb2, %sw.bb
  %and9.sink = phi i32 [ %and9, %sw.default ], [ %or7, %sw.bb5 ], [ %or4, %sw.bb2 ], [ %or, %sw.bb ]
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 118, i32 noundef %sub, i32 noundef %and9.sink) #9
  tail call void @snd_emu10k1_ptr20_write(ptr noundef %1, i32 noundef 19, i32 noundef %sub, i32 noundef 0) #9
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %13 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_addr, align 8
  tail call void @snd_emu10k1_ptr20_write(ptr noundef %1, i32 noundef 16, i32 noundef %sub, i32 noundef %14) #9
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %15 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buffer_size, align 4
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %17 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %frame_bits.i, align 8
  %mul.i = shl i32 %16, 13
  %19 = mul i32 %mul.i, %18
  %shl = and i32 %19, -65536
  tail call void @snd_emu10k1_ptr20_write(ptr noundef %1, i32 noundef 17, i32 noundef %sub, i32 noundef %shl) #9
  tail call void @snd_emu10k1_ptr20_write(ptr noundef %1, i32 noundef 18, i32 noundef %sub, i32 noundef 0) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_p16v_pcm_trigger_capture(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %emu_lock.i = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 42
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #9
  %port.i = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port.i, align 4
  %add.i = add i32 %8, 44
  %and.i = and i32 %add.i, 1048575
  %add5.i = or i32 %and.i, -18874368
  %9 = inttoptr i32 %add5.i to ptr
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %9) #9, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !81
  %11 = or i32 %10, 4352
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port.i, align 4
  %add13.i = add i32 %13, 44
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %14 = inttoptr i32 %add15.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 %11) #9, !srcloc !83
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i) #9
  %call = tail call i32 @snd_emu10k1_ptr20_read(ptr noundef %1, i32 noundef 64, i32 noundef 0) #9
  %or = or i32 %call, 256
  tail call void @snd_emu10k1_ptr20_write(ptr noundef %1, i32 noundef 64, i32 noundef 0, i32 noundef %or) #9
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 @snd_emu10k1_ptr20_read(ptr noundef %1, i32 noundef 64, i32 noundef 0) #9
  %and = and i32 %call4, -257
  tail call void @snd_emu10k1_ptr20_write(ptr noundef %1, i32 noundef 64, i32 noundef 0, i32 noundef %and) #9
  %emu_lock.i16 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 42
  %call2.i17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i16) #9
  %port.i18 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %port.i18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port.i18, align 4
  %add.i19 = add i32 %16, 44
  %and.i20 = and i32 %add.i19, 1048575
  %add5.i21 = or i32 %and.i20, -18874368
  %17 = inttoptr i32 %add5.i21 to ptr
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %17) #9, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !84
  %19 = and i32 %18, -4353
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !85
  tail call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %port.i18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port.i18, align 4
  %add14.i = add i32 %21, 44
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %22 = inttoptr i32 %add16.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %22, i32 %19) #9, !srcloc !83
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i16, i32 noundef %call2.i17) #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb3, %sw.bb
  %.sink = phi i16 [ 0, %sw.bb3 ], [ 1, %sw.bb ]
  %running6 = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 5
  %23 = ptrtoint ptr %running6 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %.sink, ptr %running6, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %result.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split ]
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_p16v_pcm_pointer_capture(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %running = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %running to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @snd_emu10k1_ptr20_read(ptr noundef %1, i32 noundef 18, i32 noundef 0) #9
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
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 %div.i, %11
  %card = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 32
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %sub, %if.then4 ], [ %div.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_p16v_volume_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 255, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_p16v_volume_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %3, 8
  %and = and i32 %shr, 255
  %and2 = and i32 %3, 255
  %call = tail call i32 @snd_emu10k1_ptr20_read(ptr noundef %1, i32 noundef %and2, i32 noundef %and) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = xor i32 %call, -1
  %sub = lshr i32 %4, 24
  %value5 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %5 = ptrtoint ptr %value5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub, ptr %value5, align 8
  %shr6 = lshr i32 %call, 16
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shr11 = lshr i32 %call, 8
  %and12 = and i32 %shr11, 255
  %sub13 = xor i32 %and12, 255
  %value14 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value14 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub13, ptr %value14, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call.sink = phi i32 [ %call, %if.else ], [ %shr6, %if.then ]
  %7 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %and17 = and i32 %call.sink, 255
  %sub18 = xor i32 %and17, 255
  %arrayidx20 = getelementptr [128 x i32], ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub18, ptr %arrayidx20, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_p16v_volume_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %and2 = and i32 %3, 255
  %call = tail call i32 @snd_emu10k1_ptr20_read(ptr noundef %1, i32 noundef %and2, i32 noundef 0) #9
  %4 = and i32 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %4)
  %cmp = icmp eq i32 %4, 256
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and3 = and i32 %call, 65535
  %value4 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %5 = ptrtoint ptr %value4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value4, align 8
  %.neg39 = mul i32 %6, -16777216
  %shl = add i32 %.neg39, -16777216
  %arrayidx6 = getelementptr [128 x i32], ptr %value4, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx6, align 4
  %.neg40 = mul i32 %8, -65536
  %shl8 = add i32 %.neg40, 16711680
  %or = or i32 %shl, %and3
  %or9 = or i32 %or, %shl8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and10 = and i32 %call, -65536
  %value11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value11, align 8
  %.neg = mul i32 %10, -256
  %shl14 = add i32 %.neg, 65280
  %arrayidx16 = getelementptr [128 x i32], ptr %value11, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx16, align 4
  %sub17 = sub i32 255, %12
  %or18 = or i32 %sub17, %and10
  %or19 = or i32 %or18, %shl14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %value.0 = phi i32 [ %or9, %if.then ], [ %or19, %if.else ]
  call void @__sanitizer_cov_trace_cmp4(i32 %value.0, i32 %call)
  %cmp20.not = icmp eq i32 %value.0, %call
  br i1 %cmp20.not, label %if.end.cleanup_crit_edge, label %if.then21

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @snd_emu10k1_ptr20_write(ptr noundef %1, i32 noundef %and2, i32 noundef 0, i32 noundef %value.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then21 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_p16v_capture_source_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 8, ptr noundef nonnull @snd_p16v_capture_source_info.texts) #9
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_p16v_capture_source_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %p16v_capture_source = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %p16v_capture_source to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p16v_capture_source, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_p16v_capture_source_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp = icmp ugt i32 %3, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %p16v_capture_source = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 50
  %4 = ptrtoint ptr %p16v_capture_source to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %p16v_capture_source, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp1.not = icmp eq i32 %5, %3
  br i1 %cmp1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %p16v_capture_source to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %p16v_capture_source, align 4
  %shl = shl nuw nsw i32 %3, 28
  %shl4 = shl nuw nsw i32 %3, 24
  %or = or i32 %shl, %shl4
  %shl5 = shl nuw nsw i32 %3, 20
  %or6 = or i32 %or, %shl5
  %shl7 = shl nuw nsw i32 %3, 16
  %or8 = or i32 %or6, %shl7
  %call = tail call i32 @snd_emu10k1_ptr20_read(ptr noundef %1, i32 noundef 64, i32 noundef 0) #9
  %and = and i32 %call, 65535
  %or9 = or i32 %or8, %and
  tail call void @snd_emu10k1_ptr20_write(ptr noundef %1, i32 noundef 64, i32 noundef 0, i32 noundef %or9) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 1, %if.then2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_p16v_capture_channel_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 4, ptr noundef nonnull @snd_p16v_capture_channel_info.texts) #9
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_p16v_capture_channel_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %p16v_capture_channel = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 51
  %2 = ptrtoint ptr %p16v_capture_channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p16v_capture_channel, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_p16v_capture_channel_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp ugt i32 %3, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %p16v_capture_channel = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 51
  %4 = ptrtoint ptr %p16v_capture_channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %p16v_capture_channel, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp1.not = icmp eq i32 %5, %3
  br i1 %cmp1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %p16v_capture_channel to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %p16v_capture_channel, align 4
  %call = tail call i32 @snd_emu10k1_ptr20_read(ptr noundef %1, i32 noundef 22, i32 noundef 0) #9
  %and = and i32 %call, 65532
  %or = or i32 %and, %3
  tail call void @snd_emu10k1_ptr20_write(ptr noundef %1, i32 noundef 22, i32 noundef 0, i32 noundef %or) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 1, %if.then2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/emu10k1/p16v.c", i32 580, i32 31}
!2 = !{ptr @snd_p16v_playback_front_ops, !3, !"snd_p16v_playback_front_ops", i1 false, i1 false}
!3 = !{!"../sound/pci/emu10k1/p16v.c", i32 554, i32 33}
!4 = !{ptr @snd_p16v_playback_hw, !5, !"snd_p16v_playback_hw", i1 false, i1 false}
!5 = !{!"../sound/pci/emu10k1/p16v.c", i32 111, i32 38}
!6 = !{ptr @snd_p16v_capture_ops, !7, !"snd_p16v_capture_ops", i1 false, i1 false}
!7 = !{!"../sound/pci/emu10k1/p16v.c", i32 562, i32 33}
!8 = !{ptr @snd_p16v_capture_hw, !9, !"snd_p16v_capture_hw", i1 false, i1 false}
!9 = !{!"../sound/pci/emu10k1/p16v.c", i32 132, i32 38}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/emu10k1/p16v.c", i32 541, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @snd_p16v_pcm_pointer_capture._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @snd_p16v_pcm_pointer_capture._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/pci/emu10k1/p16v.c", i32 769, i32 2}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/pci/emu10k1/p16v.c", i32 770, i32 2}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/pci/emu10k1/p16v.c", i32 771, i32 2}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/pci/emu10k1/p16v.c", i32 772, i32 2}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/pci/emu10k1/p16v.c", i32 773, i32 2}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/pci/emu10k1/p16v.c", i32 774, i32 2}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/pci/emu10k1/p16v.c", i32 775, i32 2}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/pci/emu10k1/p16v.c", i32 776, i32 2}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/pci/emu10k1/p16v.c", i32 779, i32 12}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/pci/emu10k1/p16v.c", i32 786, i32 12}
!38 = !{ptr @p16v_mixer_controls, !39, !"p16v_mixer_controls", i1 false, i1 false}
!39 = !{!"../sound/pci/emu10k1/p16v.c", i32 768, i32 38}
!40 = !{ptr @snd_p16v_db_scale1, !41, !"snd_p16v_db_scale1", i1 false, i1 false}
!41 = !{!"../sound/pci/emu10k1/p16v.c", i32 755, i32 14}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/pci/emu10k1/p16v.c", i32 681, i32 3}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/pci/emu10k1/p16v.c", i32 681, i32 12}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/pci/emu10k1/p16v.c", i32 681, i32 19}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/pci/emu10k1/p16v.c", i32 681, i32 28}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/pci/emu10k1/p16v.c", i32 681, i32 46}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/pci/emu10k1/p16v.c", i32 682, i32 3}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/pci/emu10k1/p16v.c", i32 682, i32 11}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/pci/emu10k1/p16v.c", i32 682, i32 17}
!58 = !{ptr @snd_p16v_capture_source_info.texts, !59, !"texts", i1 false, i1 false}
!59 = !{!"../sound/pci/emu10k1/p16v.c", i32 680, i32 28}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/pci/emu10k1/p16v.c", i32 722, i32 41}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/pci/emu10k1/p16v.c", i32 722, i32 46}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/pci/emu10k1/p16v.c", i32 722, i32 51}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/pci/emu10k1/p16v.c", i32 722, i32 56}
!68 = !{ptr @snd_p16v_capture_channel_info.texts, !69, !"texts", i1 false, i1 false}
!69 = !{!"../sound/pci/emu10k1/p16v.c", i32 722, i32 28}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{!"auto-init"}
!80 = !{i64 4231209}
!81 = !{i64 2154876675}
!82 = !{i64 2154876936}
!83 = !{i64 4230791}
!84 = !{i64 2154878201}
!85 = !{i64 2154878463}
