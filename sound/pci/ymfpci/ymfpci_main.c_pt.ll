; ModuleID = '/llk/IR_all_yes/sound/pci/ymfpci/ymfpci_main.c_pt.bc'
source_filename = "../sound/pci/ymfpci/ymfpci_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_chmap_elem = type { i8, [15 x i8] }
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.87, i32 }
%union.anon.87 = type { ptr }
%struct.snd_timer_hardware = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_ymfpci = type { i32, i32, i8, i32, ptr, i16, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.snd_dma_buffer, ptr, [64 x [2 x ptr]], [2 x [2 x ptr]], [5 x [2 x ptr]], i32, i32, [64 x %struct.snd_ymfpci_voice], i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], [5 x ptr], ptr, ptr, ptr, i16, i16, ptr, i32, i32, i32, [32 x %struct.snd_ymfpci_pcm_mixer], %struct.spinlock, %struct.spinlock, %struct.wait_queue_head, %struct.atomic_t, ptr, ptr, ptr, ptr, i32, i16, i16 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_ymfpci_voice = type { ptr, i32, i8, ptr, i32, ptr, ptr }
%struct.snd_ymfpci_pcm_mixer = type { i16, i16, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.snd_pcm_oss = type { i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.83, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.83 = type { ptr }
%struct.snd_ac97_template = type { ptr, ptr, ptr, i16, i16, i32, ptr }
%struct.snd_ac97_bus = type { ptr, ptr, ptr, ptr, i16, i8, i32, %struct.spinlock, [2 x [4 x i16]], i16, ptr, [4 x ptr], ptr }
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.84, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%union.anon.84 = type { i32, [28 x i8] }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.82, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.82 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_timer_id = type { i32, i32, i32, i32, i32 }
%struct.snd_timer = type { i32, ptr, ptr, i32, i32, [64 x i8], [80 x i8], i32, i32, i32, ptr, ptr, %struct.snd_timer_hardware, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, i32, i32 }
%struct.snd_ymfpci_effect_bank = type { i32, i32, i32, i32 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.snd_ymfpci_pcm = type { ptr, i32, ptr, [2 x ptr], i8, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_ymfpci_capture_bank = type { i32, i32, i32, i32 }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.firmware = type { i32, ptr, ptr }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_ymfpci_playback_bank = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.73, [64 x i8] }
%union.anon.73 = type { %struct.anon.76, [40 x i8] }
%struct.anon.76 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.77, [128 x i8] }
%union.anon.77 = type { %union.anon.79 }
%union.anon.79 = type { [64 x i64] }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.68, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.68 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"YMFPCI\00", [25 x i8] zeroinitializer }, align 32
@snd_ymfpci_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_ymfpci_playback_open, ptr @snd_ymfpci_playback_close, ptr null, ptr @snd_ymfpci_playback_hw_params, ptr @snd_ymfpci_playback_hw_free, ptr @snd_ymfpci_playback_prepare, ptr @snd_ymfpci_playback_trigger, ptr null, ptr @snd_ymfpci_playback_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_ymfpci_capture_rec_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_ymfpci_capture_rec_open, ptr @snd_ymfpci_capture_close, ptr null, ptr null, ptr @snd_ymfpci_capture_hw_free, ptr @snd_ymfpci_capture_prepare, ptr @snd_ymfpci_capture_trigger, ptr null, ptr @snd_ymfpci_capture_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_pcm_std_chmaps = external dso_local constant [0 x %struct.snd_pcm_chmap_elem], align 1
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"YMFPCI - PCM2\00", [18 x i8] zeroinitializer }, align 32
@snd_ymfpci_capture_ac97_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_ymfpci_capture_ac97_open, ptr @snd_ymfpci_capture_close, ptr null, ptr null, ptr @snd_ymfpci_capture_hw_free, ptr @snd_ymfpci_capture_prepare, ptr @snd_ymfpci_capture_trigger, ptr null, ptr @snd_ymfpci_capture_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"YMFPCI - %s\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Direct Recording\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AC'97\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"YMFPCI - IEC958\00", [16 x i8] zeroinitializer }, align 32
@snd_ymfpci_playback_spdif_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_ymfpci_playback_spdif_open, ptr @snd_ymfpci_playback_spdif_close, ptr null, ptr @snd_ymfpci_playback_hw_params, ptr @snd_ymfpci_playback_hw_free, ptr @snd_ymfpci_playback_prepare, ptr @snd_ymfpci_playback_trigger, ptr null, ptr @snd_ymfpci_playback_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"YMFPCI - Rear\00", [18 x i8] zeroinitializer }, align 32
@snd_ymfpci_playback_4ch_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_ymfpci_playback_4ch_open, ptr @snd_ymfpci_playback_4ch_close, ptr null, ptr @snd_ymfpci_playback_hw_params, ptr @snd_ymfpci_playback_hw_free, ptr @snd_ymfpci_playback_prepare, ptr @snd_ymfpci_playback_trigger, ptr null, ptr @snd_ymfpci_playback_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"YMFPCI - Rear PCM\00", [46 x i8] zeroinitializer }, align 32
@snd_ymfpci_mixer.ops = internal constant { %struct.snd_ac97_bus_ops, [40 x i8] } { %struct.snd_ac97_bus_ops { ptr null, ptr null, ptr @snd_ymfpci_codec_write, ptr @snd_ymfpci_codec_read, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snd_ymfpci_controls = internal constant { [16 x %struct.snd_kcontrol_new], [192 x i8] } { [16 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 19, i32 0, ptr @snd_ymfpci_info_double, ptr @snd_ymfpci_get_double, ptr @snd_ymfpci_put_nativedacvol, %union.anon.87 { ptr @db_scale_native }, i32 132 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 19, i32 0, ptr @snd_ymfpci_info_double, ptr @snd_ymfpci_get_double, ptr @snd_ymfpci_put_double, %union.anon.87 { ptr @db_scale_native }, i32 152 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 19, i32 0, ptr @snd_ymfpci_info_double, ptr @snd_ymfpci_get_double, ptr @snd_ymfpci_put_double, %union.anon.87 { ptr @db_scale_native }, i32 172 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 1, i32 19, i32 0, ptr @snd_ymfpci_info_double, ptr @snd_ymfpci_get_double, ptr @snd_ymfpci_put_double, %union.anon.87 { ptr @db_scale_native }, i32 168 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 19, i32 0, ptr @snd_ymfpci_info_double, ptr @snd_ymfpci_get_double, ptr @snd_ymfpci_put_double, %union.anon.87 { ptr @db_scale_native }, i32 144 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 19, i32 0, ptr @snd_ymfpci_info_double, ptr @snd_ymfpci_get_double, ptr @snd_ymfpci_put_double, %union.anon.87 { ptr @db_scale_native }, i32 164 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 1, i32 19, i32 0, ptr @snd_ymfpci_info_double, ptr @snd_ymfpci_get_double, ptr @snd_ymfpci_put_double, %union.anon.87 { ptr @db_scale_native }, i32 140 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 1, i32 19, i32 0, ptr @snd_ymfpci_info_double, ptr @snd_ymfpci_get_double, ptr @snd_ymfpci_put_double, %union.anon.87 { ptr @db_scale_native }, i32 160 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 19, i32 0, ptr @snd_ymfpci_info_double, ptr @snd_ymfpci_get_double, ptr @snd_ymfpci_put_double, %union.anon.87 { ptr @db_scale_native }, i32 128 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 19, i32 0, ptr @snd_ymfpci_info_double, ptr @snd_ymfpci_get_double, ptr @snd_ymfpci_put_double, %union.anon.87 { ptr @db_scale_native }, i32 136 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 19, i32 0, ptr @snd_ymfpci_info_double, ptr @snd_ymfpci_get_double, ptr @snd_ymfpci_put_double, %union.anon.87 { ptr @db_scale_native }, i32 156 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 1, i32 19, i32 0, ptr @snd_ymfpci_info_double, ptr @snd_ymfpci_get_double, ptr @snd_ymfpci_put_double, %union.anon.87 { ptr @db_scale_native }, i32 184 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 1, i32 19, i32 0, ptr @snd_ymfpci_info_double, ptr @snd_ymfpci_get_double, ptr @snd_ymfpci_put_double, %union.anon.87 { ptr @db_scale_native }, i32 188 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_ymfpci_get_single, ptr @snd_ymfpci_put_single, %union.anon.87 zeroinitializer, i32 24 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_ymfpci_get_single, ptr @snd_ymfpci_put_single, %union.anon.87 zeroinitializer, i32 52 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_ymfpci_get_single, ptr @snd_ymfpci_put_single, %union.anon.87 zeroinitializer, i32 262196 }], [192 x i8] zeroinitializer }, align 32
@snd_ymfpci_dup4ch = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 3, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_ymfpci_get_dup4ch, ptr @snd_ymfpci_put_dup4ch, %union.anon.87 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sound/pci/ymfpci/ymfpci_main.c\00", [33 x i8] zeroinitializer }, align 32
@snd_ymfpci_spdif_default = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_ymfpci_spdif_default_info, ptr @snd_ymfpci_spdif_default_get, ptr @snd_ymfpci_spdif_default_put, %union.anon.87 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_ymfpci_spdif_mask = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.40, i32 0, i32 1, i32 0, ptr @snd_ymfpci_spdif_mask_info, ptr @snd_ymfpci_spdif_mask_get, ptr null, %union.anon.87 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_ymfpci_spdif_stream = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.41, i32 0, i32 259, i32 0, ptr @snd_ymfpci_spdif_stream_info, ptr @snd_ymfpci_spdif_stream_get, ptr @snd_ymfpci_spdif_stream_put, %union.anon.87 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_ymfpci_drec_source = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 3, i32 0, ptr @snd_ymfpci_drec_source_info, ptr @snd_ymfpci_drec_source_get, ptr @snd_ymfpci_drec_source_put, %union.anon.87 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_ymfpci_rear_shared = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_ymfpci_gpio_sw_get, ptr @snd_ymfpci_gpio_sw_put, %union.anon.87 zeroinitializer, i32 2 }, [48 x i8] zeroinitializer }, align 32
@snd_ymfpci_pcm_volume = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.46, i32 0, i32 259, i32 0, ptr @snd_ymfpci_pcm_vol_info, ptr @snd_ymfpci_pcm_vol_get, ptr @snd_ymfpci_pcm_vol_put, %union.anon.87 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"YMFPCI timer\00", [19 x i8] zeroinitializer }, align 32
@snd_ymfpci_timer_hw = internal constant { %struct.snd_timer_hardware, [48 x i8] } { %struct.snd_timer_hardware { i32 1, i32 10417, i32 0, i32 0, i32 65536, ptr null, ptr null, ptr null, ptr @snd_ymfpci_timer_start, ptr @snd_ymfpci_timer_stop, ptr null, ptr @snd_ymfpci_timer_precise_resolution }, [48 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_firmware242 = internal constant [38 x i8] c"snd_ymfpci.firmware=yamaha/ds1_dsp.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware243 = internal constant [39 x i8] c"snd_ymfpci.firmware=yamaha/ds1_ctrl.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware244 = internal constant [40 x i8] c"snd_ymfpci.firmware=yamaha/ds1e_ctrl.fw\00", section ".modinfo", align 1
@snd_ymfpci_pm = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @snd_ymfpci_suspend, ptr @snd_ymfpci_resume, ptr @snd_ymfpci_suspend, ptr @snd_ymfpci_resume, ptr @snd_ymfpci_suspend, ptr @snd_ymfpci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@snd_ymfpci_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->reg_lock\00", [16 x i8] zeroinitializer }, align 32
@snd_ymfpci_create.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&chip->voice_lock\00", [46 x i8] zeroinitializer }, align 32
@snd_ymfpci_create.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&chip->interrupt_sleep\00", [41 x i8] zeroinitializer }, align 32
@snd_ymfpci_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.8, i32 2347, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unable to grab memory region 0x%lx-0x%lx\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_ymfpci_create\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_ymfpci_create._entry_ptr = internal global ptr @snd_ymfpci_create._entry, section ".printk_index", align 4
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"snd_ymfpci\00", [21 x i8] zeroinitializer }, align 32
@snd_ymfpci_create._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.8, i32 2355, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to grab IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@snd_ymfpci_create._entry_ptr.22 = internal global ptr @snd_ymfpci_create._entry.20, section ".printk_index", align 4
@snd_ymfpci_create._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.8, i32 2368, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"firmware request failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@snd_ymfpci_create._entry_ptr.25 = internal global ptr @snd_ymfpci_create._entry.23, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@snd_ymfpci_playback = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 852227, i64 6, i32 1073742078, i32 8000, i32 48000, i32 1, i32 2, i32 262144, i32 64, i32 262144, i32 3, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@snd_ymfpci_calc_lpfQ.val = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 891813888, i32 883359744, i32 838991872, i32 829882368, i32 825819136, i32 835256320, i32 869269504, i32 1073741824], [32 x i8] zeroinitializer }, align 32
@snd_ymfpci_calc_lpfK.val = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 5701632, i32 111804416, i32 414318592, i32 546504704, i32 731512832, i32 899743744, i32 1051328512, i32 1073741824], [32 x i8] zeroinitializer }, align 32
@snd_ymfpci_capture = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 852227, i64 6, i32 1073742078, i32 8000, i32 48000, i32 1, i32 2, i32 262144, i32 64, i32 262144, i32 3, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@surround_map = internal constant { <{ { i8, <{ i8, [14 x i8] }> }, { i8, <{ i8, i8, [13 x i8] }> }, %struct.snd_pcm_chmap_elem }>, [48 x i8] } { <{ { i8, <{ i8, [14 x i8] }> }, { i8, <{ i8, i8, [13 x i8] }> }, %struct.snd_pcm_chmap_elem }> <{ { i8, <{ i8, [14 x i8] }> } { i8 1, <{ i8, [14 x i8] }> <{ i8 2, [14 x i8] zeroinitializer }> }, { i8, <{ i8, i8, [13 x i8] }> } { i8 2, <{ i8, i8, [13 x i8] }> <{ i8 5, i8 6, [13 x i8] zeroinitializer }> }, %struct.snd_pcm_chmap_elem zeroinitializer }>, [48 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Wave Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@db_scale_native = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2, i32 8, i32 -9999999, i32 0], [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Wave Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Digital Capture Volume\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ADC Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"FM Legacy Playback Volume\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"IEC958 AC97 Playback Volume\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IEC958 Capture Volume\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IEC958 Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IEC958 Capture Switch\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IEC958 Loop\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"4ch Duplication\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IEC958 Playback Default\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IEC958 Playback Con Mask\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IEC958 Playback PCM Stream\00", [37 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Direct Recording Source\00", [40 x i8] zeroinitializer }, align 32
@snd_ymfpci_drec_source_info.texts = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.4, ptr @.str.43, ptr @.str.44], [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"IEC958\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ZV Port\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Shared Rear/Line-In Switch\00", [37 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@saved_regs_index = internal constant { [21 x i32], [44 x i8] } { [21 x i32] [i32 24, i32 28, i32 52, i32 164, i32 172, i32 132, i32 176, i32 168, i32 188, i32 184, i32 136, i32 128, i32 344, i32 348, i32 352, i32 356, i32 336, i32 204, i32 196, i32 200, i32 192], [44 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@snd_ymfpci_codec_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.8, i32 77, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"codec_ready: codec %i is not ready [0x%x]\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_ymfpci_codec_ready\00", [41 x i8] zeroinitializer }, align 32
@snd_ymfpci_codec_ready._entry_ptr = internal global ptr @snd_ymfpci_codec_ready._entry, section ".printk_index", align 4
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"yamaha/ds1_dsp.fw\00", [46 x i8] zeroinitializer }, align 32
@snd_ymfpci_request_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.8, i32 2037, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DSP microcode has wrong size\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"snd_ymfpci_request_firmware\00", [36 x i8] zeroinitializer }, align 32
@snd_ymfpci_request_firmware._entry_ptr = internal global ptr @snd_ymfpci_request_firmware._entry, section ".printk_index", align 4
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"yamaha/ds1e_ctrl.fw\00", [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"yamaha/ds1_ctrl.fw\00", [45 x i8] zeroinitializer }, align 32
@snd_ymfpci_request_firmware._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.51, ptr @.str.8, i32 2053, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"controller microcode has wrong size\0A\00", [59 x i8] zeroinitializer }, align 32
@snd_ymfpci_request_firmware._entry_ptr.56 = internal global ptr @snd_ymfpci_request_firmware._entry.54, section ".printk_index", align 4
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ymfpci\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"YMFPCI\0A\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%04x: %04x\0A\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 12, i64 13, i64 16]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.61 = internal global [8 x i64] [i64 6, i64 32, i64 8000, i64 11025, i64 16000, i64 22050, i64 32000, i64 44100]
@__sancov_gen_cov_switch_values.62 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.64 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 16, i64 24, i64 52]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 16, i64 24, i64 52]
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1132, i32 32 }
@___asan_gen_.70 = private unnamed_addr constant [24 x i8] c"snd_ymfpci_playback_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1108, i32 33 }
@___asan_gen_.73 = private unnamed_addr constant [27 x i8] c"snd_ymfpci_capture_rec_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1118, i32 33 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1166, i32 32 }
@___asan_gen_.79 = private unnamed_addr constant [28 x i8] c"snd_ymfpci_capture_ac97_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1152, i32 33 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1175, i32 21 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1176, i32 49 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1176, i32 70 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1200, i32 32 }
@___asan_gen_.94 = private unnamed_addr constant [30 x i8] c"snd_ymfpci_playback_spdif_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1185, i32 33 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1241, i32 32 }
@___asan_gen_.100 = private unnamed_addr constant [28 x i8] c"snd_ymfpci_playback_4ch_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1218, i32 33 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1250, i32 20 }
@___asan_gen_.106 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1792, i32 39 }
@___asan_gen_.109 = private unnamed_addr constant [20 x i8] c"snd_ymfpci_controls\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1600, i32 38 }
@___asan_gen_.112 = private unnamed_addr constant [18 x i8] c"snd_ymfpci_dup4ch\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1591, i32 38 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1827, i32 6 }
@___asan_gen_.118 = private unnamed_addr constant [25 x i8] c"snd_ymfpci_spdif_default\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1298, i32 38 }
@___asan_gen_.121 = private unnamed_addr constant [22 x i8] c"snd_ymfpci_spdif_mask\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1326, i32 38 }
@___asan_gen_.124 = private unnamed_addr constant [24 x i8] c"snd_ymfpci_spdif_stream\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1373, i32 38 }
@___asan_gen_.127 = private unnamed_addr constant [23 x i8] c"snd_ymfpci_drec_source\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1421, i32 38 }
@___asan_gen_.130 = private unnamed_addr constant [23 x i8] c"snd_ymfpci_rear_shared\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1694, i32 38 }
@___asan_gen_.133 = private unnamed_addr constant [22 x i8] c"snd_ymfpci_pcm_volume\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1758, i32 38 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1956, i32 23 }
@___asan_gen_.139 = private unnamed_addr constant [20 x i8] c"snd_ymfpci_timer_hw\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1934, i32 40 }
@___asan_gen_.142 = private unnamed_addr constant [14 x i8] c"snd_ymfpci_pm\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 2312, i32 1 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 2328, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 2329, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 2330, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 2345, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 2354, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 2355, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 2368, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant [20 x i8] c"snd_ymfpci_playback\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 827, i32 38 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 148, i32 19 }
@___asan_gen_.199 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 132, i32 19 }
@___asan_gen_.202 = private unnamed_addr constant [19 x i8] c"snd_ymfpci_capture\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 849, i32 38 }
@___asan_gen_.205 = private unnamed_addr constant [13 x i8] c"surround_map\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1228, i32 40 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1603, i32 10 }
@___asan_gen_.211 = private unnamed_addr constant [16 x i8] c"db_scale_native\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1486, i32 14 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1612, i32 1 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1613, i32 1 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1615, i32 1 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1616, i32 1 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1619, i32 1 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1620, i32 1 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1621, i32 1 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1624, i32 1 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1625, i32 1 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1626, i32 1 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1593, i32 10 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1301, i32 18 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1330, i32 18 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1377, i32 18 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1424, i32 11 }
@___asan_gen_.259 = private unnamed_addr constant [6 x i8] c"texts\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1385, i32 27 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1385, i32 48 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1385, i32 58 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1695, i32 10 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1760, i32 10 }
@___asan_gen_.274 = private unnamed_addr constant [17 x i8] c"saved_regs_index\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 2229, i32 18 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 75, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 2032, i32 47 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 2036, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 2047, i32 17 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 2047, i32 41 }
@___asan_gen_.304 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 2052, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1982, i32 36 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1975, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.317 = private constant [34 x i8] c"../sound/pci/ymfpci/ymfpci_main.c\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1977, i32 3 }
@llvm.compiler.used = appending global [93 x ptr] [ptr @__UNIQUE_ID_firmware242, ptr @__UNIQUE_ID_firmware243, ptr @__UNIQUE_ID_firmware244, ptr @snd_ymfpci_codec_ready._entry, ptr @snd_ymfpci_codec_ready._entry_ptr, ptr @snd_ymfpci_create._entry, ptr @snd_ymfpci_create._entry.20, ptr @snd_ymfpci_create._entry.23, ptr @snd_ymfpci_create._entry_ptr, ptr @snd_ymfpci_create._entry_ptr.22, ptr @snd_ymfpci_create._entry_ptr.25, ptr @snd_ymfpci_request_firmware._entry, ptr @snd_ymfpci_request_firmware._entry.54, ptr @snd_ymfpci_request_firmware._entry_ptr, ptr @snd_ymfpci_request_firmware._entry_ptr.56, ptr @.str, ptr @snd_ymfpci_playback_ops, ptr @snd_ymfpci_capture_rec_ops, ptr @.str.1, ptr @snd_ymfpci_capture_ac97_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @snd_ymfpci_playback_spdif_ops, ptr @.str.6, ptr @snd_ymfpci_playback_4ch_ops, ptr @.str.7, ptr @snd_ymfpci_mixer.ops, ptr @snd_ymfpci_controls, ptr @snd_ymfpci_dup4ch, ptr @.str.8, ptr @snd_ymfpci_spdif_default, ptr @snd_ymfpci_spdif_mask, ptr @snd_ymfpci_spdif_stream, ptr @snd_ymfpci_drec_source, ptr @snd_ymfpci_rear_shared, ptr @snd_ymfpci_pcm_volume, ptr @.str.9, ptr @snd_ymfpci_timer_hw, ptr @snd_ymfpci_pm, ptr @snd_ymfpci_create.__key, ptr @.str.10, ptr @snd_ymfpci_create.__key.11, ptr @.str.12, ptr @snd_ymfpci_create.__key.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @snd_ymfpci_playback, ptr @snd_ymfpci_calc_lpfQ.val, ptr @snd_ymfpci_calc_lpfK.val, ptr @snd_ymfpci_capture, ptr @surround_map, ptr @.str.27, ptr @db_scale_native, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @snd_ymfpci_drec_source_info.texts, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @saved_regs_index, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ymfpci_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ymfpci_capture_rec_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ymfpci_capture_ac97_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ymfpci_playback_spdif_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ymfpci_playback_4ch_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ymfpci_mixer.ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ymfpci_controls to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ymfpci_dup4ch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ymfpci_spdif_default to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ymfpci_spdif_mask to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ymfpci_spdif_stream to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ymfpci_drec_source to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ymfpci_rear_shared to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ymfpci_pcm_volume to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ymfpci_timer_hw to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ymfpci_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ymfpci_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ymfpci_create.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ymfpci_create.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ymfpci_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ymfpci_create._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ymfpci_create._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ymfpci_playback to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ymfpci_calc_lpfQ.val to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ymfpci_calc_lpfK.val to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ymfpci_capture to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @surround_map to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_native to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ymfpci_drec_source_info.texts to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saved_regs_index to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ymfpci_codec_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ymfpci_request_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ymfpci_request_firmware._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ymfpci_pcm(ptr noundef %chip, i32 noundef %device) local_unnamed_addr #0 align 64 {
entry:
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #13
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !178
  %card = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 35
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 4
  %call = call i32 @snd_pcm_new(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef %device, i32 noundef 32, i32 noundef 1, ptr noundef nonnull %pcm) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcm, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %chip, ptr %private_data, align 8
  call void @snd_pcm_set_ops(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @snd_ymfpci_playback_ops) #13
  %6 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %7, i32 noundef 1, ptr noundef nonnull @snd_ymfpci_capture_rec_ops) #13
  %8 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcm, align 4
  %info_flags = getelementptr inbounds %struct.snd_pcm, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %info_flags, align 8
  %name = getelementptr inbounds %struct.snd_pcm, ptr %9, i32 0, i32 7
  %11 = call ptr @memcpy(ptr %name, ptr @.str, i32 7)
  %pcm2 = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 36
  %12 = ptrtoint ptr %pcm2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %pcm2, align 4
  %pci = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 34
  %13 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %call3 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %9, i32 noundef 2, ptr noundef %dev, i32 noundef 65536, i32 noundef 262144) #13
  %15 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcm, align 4
  %call4 = call i32 @snd_pcm_add_chmap_ctls(ptr noundef %16, i32 noundef 0, ptr noundef nonnull @snd_pcm_std_chmaps, i32 noundef 2, i32 noundef 0, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #13
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_add_chmap_ctls(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ymfpci_pcm2(ptr noundef %chip, i32 noundef %device) local_unnamed_addr #0 align 64 {
entry:
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #13
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !178
  %card = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 35
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 4
  %call = call i32 @snd_pcm_new(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %device, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %pcm) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcm, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %chip, ptr %private_data, align 8
  call void @snd_pcm_set_ops(ptr noundef %4, i32 noundef 1, ptr noundef nonnull @snd_ymfpci_capture_ac97_ops) #13
  %6 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcm, align 4
  %info_flags = getelementptr inbounds %struct.snd_pcm, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %info_flags, align 8
  %name = getelementptr inbounds %struct.snd_pcm, ptr %7, i32 0, i32 7
  %device_id = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 1
  %9 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %device_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %10)
  %cmp1 = icmp eq i32 %10, 18
  %cond = select i1 %cmp1, ptr @.str.3, ptr @.str.4
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.2, ptr noundef nonnull %cond)
  %11 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcm, align 4
  %pcm2 = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 37
  %13 = ptrtoint ptr %pcm2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %pcm2, align 4
  %pci = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 34
  %14 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %call3 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %12, i32 noundef 2, ptr noundef %dev, i32 noundef 65536, i32 noundef 262144) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #13
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ymfpci_pcm_spdif(ptr noundef %chip, i32 noundef %device) local_unnamed_addr #0 align 64 {
entry:
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #13
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !178
  %card = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 35
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 4
  %call = call i32 @snd_pcm_new(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %device, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %pcm) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcm, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %chip, ptr %private_data, align 8
  call void @snd_pcm_set_ops(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @snd_ymfpci_playback_spdif_ops) #13
  %6 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcm, align 4
  %info_flags = getelementptr inbounds %struct.snd_pcm, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %info_flags, align 8
  %name = getelementptr inbounds %struct.snd_pcm, ptr %7, i32 0, i32 7
  %9 = call ptr @memcpy(ptr %name, ptr @.str.5, i32 16)
  %pcm_spdif = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 38
  %10 = ptrtoint ptr %pcm_spdif to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %pcm_spdif, align 4
  %pci = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 34
  %11 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %call2 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %7, i32 noundef 2, ptr noundef %dev, i32 noundef 65536, i32 noundef 262144) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ymfpci_pcm_4ch(ptr noundef %chip, i32 noundef %device) local_unnamed_addr #0 align 64 {
entry:
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #13
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !178
  %card = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 35
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 4
  %call = call i32 @snd_pcm_new(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %device, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %pcm) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcm, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %chip, ptr %private_data, align 8
  call void @snd_pcm_set_ops(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @snd_ymfpci_playback_4ch_ops) #13
  %6 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcm, align 4
  %info_flags = getelementptr inbounds %struct.snd_pcm, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %info_flags, align 8
  %name = getelementptr inbounds %struct.snd_pcm, ptr %7, i32 0, i32 7
  %9 = call ptr @memcpy(ptr %name, ptr @.str.7, i32 18)
  %pcm_4ch = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 39
  %10 = ptrtoint ptr %pcm_4ch to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %pcm_4ch, align 4
  %pci = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 34
  %11 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %call2 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %7, i32 noundef 2, ptr noundef %dev, i32 noundef 65536, i32 noundef 262144) #13
  %13 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcm, align 4
  %call3 = call i32 @snd_pcm_add_chmap_ctls(ptr noundef %14, i32 noundef 0, ptr noundef nonnull @surround_map, i32 noundef 2, i32 noundef 0, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ymfpci_mixer(ptr noundef %chip, i32 noundef %rear_switch) local_unnamed_addr #0 align 64 {
entry:
  %ac97 = alloca %struct.snd_ac97_template, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ac97) #13
  %card = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 35
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %ac97_bus = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 29
  %call = tail call i32 @snd_ac97_bus(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @snd_ymfpci_mixer.ops, ptr noundef %chip, ptr noundef %ac97_bus) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97, i32 0, i32 1
  %3 = ptrtoint ptr %ac97_bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ac97_bus, align 4
  %private_free = getelementptr inbounds %struct.snd_ac97_bus, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @snd_ymfpci_mixer_free_ac97_bus, ptr %private_free, align 4
  %6 = load ptr, ptr %ac97_bus, align 4
  %no_vra = getelementptr inbounds %struct.snd_ac97_bus, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %no_vra to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %no_vra, align 2
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %no_vra, align 2
  %8 = getelementptr inbounds i8, ptr %ac97, i32 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 16)
  %10 = ptrtoint ptr %ac97 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %chip, ptr %ac97, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @snd_ymfpci_mixer_free_ac97, ptr %2, align 4
  %12 = load ptr, ptr %ac97_bus, align 4
  %ac975 = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 30
  %call6 = call i32 @snd_ac97_mixer(ptr noundef %12, ptr noundef nonnull %ac97, ptr noundef %ac975) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %13 = ptrtoint ptr %ac975 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ac975, align 4
  %call11 = call i32 @snd_ac97_update_bits(ptr noundef %14, i16 noundef zeroext 42, i16 noundef zeroext 9, i16 noundef zeroext 0) #13
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %idx.0220, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end9
  %idx.0220 = phi i32 [ 0, %if.end9 ], [ %inc, %for.cond.for.body_crit_edge ]
  %15 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card, align 4
  %arrayidx = getelementptr [16 x %struct.snd_kcontrol_new], ptr @snd_ymfpci_controls, i32 0, i32 %idx.0220
  %call14 = call ptr @snd_ctl_new1(ptr noundef %arrayidx, ptr noundef %chip) #13
  %call15 = call i32 @snd_ctl_add(ptr noundef %16, ptr noundef %call14) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %17 = ptrtoint ptr %ac975 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ac975, align 4
  %ext_id = getelementptr inbounds %struct.snd_ac97, ptr %18, i32 0, i32 15
  %19 = ptrtoint ptr %ext_id to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %ext_id, align 2
  %21 = and i16 %20, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not = icmp eq i16 %21, 0
  br i1 %tobool.not, label %for.end.if.end28_crit_edge, label %if.then20

for.end.if.end28_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then20:                                        ; preds = %for.end
  %call21 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ymfpci_dup4ch, ptr noundef %chip) #13
  %22 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card, align 4
  %call23 = call i32 @snd_ctl_add(ptr noundef %23, ptr noundef %call21) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then20.cleanup_crit_edge, label %if.then20.if.end28_crit_edge

if.then20.if.end28_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end28:                                         ; preds = %if.then20.if.end28_crit_edge, %for.end.if.end28_crit_edge
  %pcm_spdif = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 38
  %24 = ptrtoint ptr %pcm_spdif to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcm_spdif, align 4
  %tobool29.not = icmp eq ptr %25, null
  br i1 %tobool29.not, label %do.end, label %if.end54, !prof !179

do.end:                                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1827, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end54:                                         ; preds = %if.end28
  %call55 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ymfpci_spdif_default, ptr noundef %chip) #13
  %26 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card, align 4
  %call57 = call i32 @snd_ctl_add(ptr noundef %27, ptr noundef %call55) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.end54.cleanup_crit_edge, label %if.end61

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end61:                                         ; preds = %if.end54
  %28 = ptrtoint ptr %pcm_spdif to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pcm_spdif, align 4
  %device = getelementptr inbounds %struct.snd_pcm, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %device, align 4
  %device63 = getelementptr inbounds %struct.snd_kcontrol, ptr %call55, i32 0, i32 1, i32 2
  %32 = ptrtoint ptr %device63 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %device63, align 4
  %call64 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ymfpci_spdif_mask, ptr noundef %chip) #13
  %33 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %card, align 4
  %call66 = call i32 @snd_ctl_add(ptr noundef %34, ptr noundef %call64) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.end61.cleanup_crit_edge, label %if.end70

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end70:                                         ; preds = %if.end61
  %35 = ptrtoint ptr %pcm_spdif to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pcm_spdif, align 4
  %device72 = getelementptr inbounds %struct.snd_pcm, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %device72 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %device72, align 4
  %device74 = getelementptr inbounds %struct.snd_kcontrol, ptr %call64, i32 0, i32 1, i32 2
  %39 = ptrtoint ptr %device74 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %device74, align 4
  %call75 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ymfpci_spdif_stream, ptr noundef %chip) #13
  %40 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %card, align 4
  %call77 = call i32 @snd_ctl_add(ptr noundef %41, ptr noundef %call75) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %if.end70.cleanup_crit_edge, label %if.end81

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end81:                                         ; preds = %if.end70
  %42 = ptrtoint ptr %pcm_spdif to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pcm_spdif, align 4
  %device83 = getelementptr inbounds %struct.snd_pcm, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %device83 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %device83, align 4
  %device85 = getelementptr inbounds %struct.snd_kcontrol, ptr %call75, i32 0, i32 1, i32 2
  %46 = ptrtoint ptr %device85 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %device85, align 4
  %spdif_pcm_ctl = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 47
  %47 = ptrtoint ptr %spdif_pcm_ctl to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call75, ptr %spdif_pcm_ctl, align 4
  %device_id = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 1
  %48 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %device_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %49)
  %cmp86 = icmp eq i32 %49, 18
  br i1 %cmp86, label %if.then88, label %if.end81.if.end96_crit_edge

if.end81.if.end96_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end96

if.then88:                                        ; preds = %if.end81
  %call89 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ymfpci_drec_source, ptr noundef %chip) #13
  %50 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %card, align 4
  %call91 = call i32 @snd_ctl_add(ptr noundef %51, ptr noundef %call89) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %if.then88.cleanup_crit_edge, label %if.then88.if.end96_crit_edge

if.then88.if.end96_crit_edge:                     ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end96

if.then88.cleanup_crit_edge:                      ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end96:                                         ; preds = %if.then88.if.end96_crit_edge, %if.end81.if.end96_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rear_switch)
  %tobool97.not = icmp eq i32 %rear_switch, 0
  br i1 %tobool97.not, label %if.end96.if.end106_crit_edge, label %if.then98

if.end96.if.end106_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end106

if.then98:                                        ; preds = %if.end96
  %52 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %card, align 4
  %call100 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ymfpci_rear_shared, ptr noundef %chip) #13
  %call101 = call i32 @snd_ctl_add(ptr noundef %53, ptr noundef %call100) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %if.then98.cleanup_crit_edge, label %if.then98.if.end106_crit_edge

if.then98.if.end106_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end106

if.then98.cleanup_crit_edge:                      ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end106:                                        ; preds = %if.then98.if.end106_crit_edge, %if.end96.if.end106_crit_edge
  %pcm = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 36
  %54 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pcm, align 4
  %substream108 = getelementptr inbounds %struct.snd_pcm, ptr %55, i32 0, i32 8, i32 0, i32 4
  br label %for.body112

for.body112:                                      ; preds = %if.end127.for.body112_crit_edge, %if.end106
  %substream.0223.in = phi ptr [ %substream108, %if.end106 ], [ %next, %if.end127.for.body112_crit_edge ]
  %idx.1222 = phi i32 [ 0, %if.end106 ], [ %inc134, %if.end127.for.body112_crit_edge ]
  %56 = ptrtoint ptr %substream.0223.in to i32
  call void @__asan_load4_noabort(i32 %56)
  %substream.0223 = load ptr, ptr %substream.0223.in, align 4
  %call113 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ymfpci_pcm_volume, ptr noundef %chip) #13
  %tobool114.not = icmp eq ptr %call113, null
  br i1 %tobool114.not, label %for.body112.cleanup_crit_edge, label %if.end116

for.body112.cleanup_crit_edge:                    ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end116:                                        ; preds = %for.body112
  %57 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pcm, align 4
  %device118 = getelementptr inbounds %struct.snd_pcm, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %device118 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %device118, align 4
  %device120 = getelementptr inbounds %struct.snd_kcontrol, ptr %call113, i32 0, i32 1, i32 2
  %61 = ptrtoint ptr %device120 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %device120, align 4
  %subdevice = getelementptr inbounds %struct.snd_kcontrol, ptr %call113, i32 0, i32 1, i32 3
  %62 = ptrtoint ptr %subdevice to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %idx.1222, ptr %subdevice, align 4
  %63 = ptrtoint ptr %substream.0223 to i32
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %call113, i32 0, i32 7
  %64 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %private_value, align 4
  %65 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %card, align 4
  %call123 = call i32 @snd_ctl_add(ptr noundef %66, ptr noundef nonnull %call113) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp124 = icmp slt i32 %call123, 0
  br i1 %cmp124, label %if.end116.cleanup_crit_edge, label %if.end127

if.end116.cleanup_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end127:                                        ; preds = %if.end116
  %arrayidx128 = getelementptr %struct.snd_ymfpci, ptr %chip, i32 0, i32 51, i32 %idx.1222
  %67 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 -32768, ptr %arrayidx128, align 4
  %right = getelementptr %struct.snd_ymfpci, ptr %chip, i32 0, i32 51, i32 %idx.1222, i32 1
  %68 = ptrtoint ptr %right to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 -32768, ptr %right, align 2
  %ctl = getelementptr %struct.snd_ymfpci, ptr %chip, i32 0, i32 51, i32 %idx.1222, i32 2
  %69 = ptrtoint ptr %ctl to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call113, ptr %ctl, align 4
  %next = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.0223, i32 0, i32 15
  %inc134 = add nuw nsw i32 %idx.1222, 1
  %exitcond226.not = icmp eq i32 %inc134, 32
  br i1 %exitcond226.not, label %if.end127.cleanup_crit_edge, label %if.end127.for.body112_crit_edge

if.end127.for.body112_crit_edge:                  ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body112

if.end127.cleanup_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %if.end127.cleanup_crit_edge, %if.end116.cleanup_crit_edge, %for.body112.cleanup_crit_edge, %if.then98.cleanup_crit_edge, %if.then88.cleanup_crit_edge, %if.end70.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %do.end, %if.then20.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ %call23, %if.then20.cleanup_crit_edge ], [ %call57, %if.end54.cleanup_crit_edge ], [ %call66, %if.end61.cleanup_crit_edge ], [ %call77, %if.end70.cleanup_crit_edge ], [ %call91, %if.then88.cleanup_crit_edge ], [ %call101, %if.then98.cleanup_crit_edge ], [ 0, %if.end127.cleanup_crit_edge ], [ %call123, %if.end116.cleanup_crit_edge ], [ -12, %for.body112.cleanup_crit_edge ], [ %call15, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ymfpci_codec_write(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg, i16 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %reg_area_virt.i.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 4
  %add.neg.i = sub i32 -75, %2
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %entry
  %3 = ptrtoint ptr %reg_area_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_area_virt.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 102
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #13, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !181
  %.mask.i = and i16 %5, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i)
  %cmp.i = icmp eq i16 %.mask.i, 0
  br i1 %cmp.i, label %do.body.i.snd_ymfpci_codec_ready.exit_crit_edge, label %if.end.i

do.body.i.snd_ymfpci_codec_ready.exit_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_ymfpci_codec_ready.exit

if.end.i:                                         ; preds = %do.body.i
  %call3.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %6
  %cmp4.i = icmp slt i32 %sub.i, 0
  br i1 %cmp4.i, label %if.end.i.do.body.i_crit_edge, label %do.end8.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %card.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 35
  %7 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 8
  %11 = ptrtoint ptr %reg_area_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_area_virt.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %12, i32 102
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i2.i) #13, !srcloc !180
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !181
  %conv10.i = zext i16 %14 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.47, i32 noundef 0, i32 noundef %conv10.i) #16
  br label %snd_ymfpci_codec_ready.exit

snd_ymfpci_codec_ready.exit:                      ; preds = %do.end8.i, %do.body.i.snd_ymfpci_codec_ready.exit_crit_edge
  %conv = zext i16 %reg to i32
  %shl = shl nuw i32 %conv, 16
  %conv1 = zext i16 %val to i32
  %or2 = or i32 %shl, %conv1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %15 = tail call i32 @llvm.bswap.i32(i32 %or2) #13
  %16 = ptrtoint ptr %reg_area_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_area_virt.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %15) #13, !srcloc !183
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @snd_ymfpci_codec_read(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %reg_area_virt.i.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 4
  %add.neg.i = sub i32 -75, %2
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %entry
  %3 = ptrtoint ptr %reg_area_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_area_virt.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 102
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #13, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !181
  %.mask.i = and i16 %5, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i)
  %cmp.i = icmp eq i16 %.mask.i, 0
  br i1 %cmp.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %do.body.i
  %call3.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %6
  %cmp4.i = icmp slt i32 %sub.i, 0
  br i1 %cmp4.i, label %if.end.i.do.body.i_crit_edge, label %snd_ymfpci_codec_ready.exit

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

snd_ymfpci_codec_ready.exit:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %card.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 35
  %7 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 8
  %11 = ptrtoint ptr %reg_area_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_area_virt.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %12, i32 102
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i2.i) #13, !srcloc !180
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !181
  %conv10.i = zext i16 %14 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.47, i32 noundef 0, i32 noundef %conv10.i) #16
  br label %cleanup

if.end:                                           ; preds = %do.body.i
  %15 = or i16 %reg, -32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !184
  tail call void @arm_heavy_mb() #13
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #13
  %17 = ptrtoint ptr %reg_area_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_area_virt.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 98
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %16) #13, !srcloc !185
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i24 = sub i32 -75, %19
  br label %do.body.i28

do.body.i28:                                      ; preds = %if.end.i32.do.body.i28_crit_edge, %if.end
  %20 = ptrtoint ptr %reg_area_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_area_virt.i.i, align 4
  %add.ptr.i.i25 = getelementptr i8, ptr %21, i32 102
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i25) #13, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !181
  %.mask.i26 = and i16 %22, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i26)
  %cmp.i27 = icmp eq i16 %.mask.i26, 0
  br i1 %cmp.i27, label %if.end5, label %if.end.i32

if.end.i32:                                       ; preds = %do.body.i28
  %call3.i29 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %sub.i30 = add i32 %add.neg.i24, %23
  %cmp4.i31 = icmp slt i32 %sub.i30, 0
  br i1 %cmp4.i31, label %if.end.i32.do.body.i28_crit_edge, label %snd_ymfpci_codec_ready.exit39

if.end.i32.do.body.i28_crit_edge:                 ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i28

snd_ymfpci_codec_ready.exit39:                    ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #15
  %card.i33 = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 35
  %24 = ptrtoint ptr %card.i33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %card.i33, align 4
  %dev.i34 = getelementptr inbounds %struct.snd_card, ptr %25, i32 0, i32 27
  %26 = ptrtoint ptr %dev.i34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i34, align 8
  %28 = ptrtoint ptr %reg_area_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_area_virt.i.i, align 4
  %add.ptr.i2.i35 = getelementptr i8, ptr %29, i32 102
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i2.i35) #13, !srcloc !180
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !181
  %conv10.i36 = zext i16 %31 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.47, i32 noundef 0, i32 noundef %conv10.i36) #16
  br label %cleanup

if.end5:                                          ; preds = %do.body.i28
  %device_id = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %device_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %33)
  %cmp = icmp eq i32 %33, 16
  br i1 %cmp, label %land.lhs.true, label %if.end5.if.end14_crit_edge

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end5
  %rev = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %35)
  %cmp8 = icmp ult i8 %35, 2
  br i1 %cmp8, label %land.lhs.true.for.body_crit_edge, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

land.lhs.true.for.body_crit_edge:                 ; preds = %land.lhs.true
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %land.lhs.true.for.body_crit_edge
  %i.049 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %land.lhs.true.for.body_crit_edge ]
  %36 = ptrtoint ptr %reg_area_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_area_virt.i.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %37, i32 100
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i41) #13, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !181
  %inc = add nuw nsw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc, 600
  br i1 %exitcond.not, label %for.body.if.end14_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.end14:                                         ; preds = %for.body.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %if.end5.if.end14_crit_edge
  %39 = ptrtoint ptr %reg_area_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_area_virt.i.i, align 4
  %add.ptr.i43 = getelementptr i8, ptr %40, i32 100
  %41 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i43) #13, !srcloc !180
  %42 = tail call i16 @llvm.bswap.i16(i16 %41) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !181
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %snd_ymfpci_codec_ready.exit39, %snd_ymfpci_codec_ready.exit
  %retval.0 = phi i16 [ %42, %if.end14 ], [ -1, %snd_ymfpci_codec_ready.exit ], [ -1, %snd_ymfpci_codec_ready.exit39 ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_bus(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snd_ymfpci_mixer_free_ac97_bus(ptr nocapture noundef readonly %bus) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97_bus, ptr %bus, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ac97_bus = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %ac97_bus to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ac97_bus, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snd_ymfpci_mixer_free_ac97(ptr nocapture noundef readonly %ac97) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ac971 = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %ac971 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ac971, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_mixer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_update_bits(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ymfpci_timer(ptr noundef %chip, i32 noundef %device) local_unnamed_addr #0 align 64 {
entry:
  %timer = alloca ptr, align 4
  %tid = alloca %struct.snd_timer_id, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timer) #13
  %0 = ptrtoint ptr %timer to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %timer, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tid) #13
  %1 = getelementptr inbounds %struct.snd_timer_id, ptr %tid, i32 0, i32 1
  %2 = getelementptr inbounds %struct.snd_timer_id, ptr %tid, i32 0, i32 2
  %3 = getelementptr inbounds %struct.snd_timer_id, ptr %tid, i32 0, i32 3
  %4 = getelementptr inbounds %struct.snd_timer_id, ptr %tid, i32 0, i32 4
  %5 = ptrtoint ptr %tid to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %tid, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %1, align 4
  %card = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 35
  %7 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %device, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %4, align 4
  %call = call i32 @snd_timer_new(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef nonnull %tid, ptr noundef nonnull %timer) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %timer, align 4
  %name = getelementptr inbounds %struct.snd_timer, ptr %15, i32 0, i32 6
  %16 = call ptr @memcpy(ptr %name, ptr @.str.9, i32 13)
  %private_data = getelementptr inbounds %struct.snd_timer, ptr %15, i32 0, i32 10
  %17 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %chip, ptr %private_data, align 4
  %hw = getelementptr inbounds %struct.snd_timer, ptr %15, i32 0, i32 12
  %18 = call ptr @memcpy(ptr %hw, ptr @snd_ymfpci_timer_hw, i32 48)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %19 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %timer, align 4
  %timer5 = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 32
  %21 = ptrtoint ptr %timer5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %timer5, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tid) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timer) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_timer_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %4 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 768, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  %ac97 = getelementptr inbounds %struct.snd_ymfpci, ptr %3, i32 0, i32 30
  %5 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ac97, align 4
  tail call void @snd_ac97_suspend(ptr noundef %6) #13
  %reg_area_virt.i = getelementptr inbounds %struct.snd_ymfpci, ptr %3, i32 0, i32 4
  %saved_regs = getelementptr inbounds %struct.snd_ymfpci, ptr %3, i32 0, i32 59
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.028 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [21 x i32], ptr @saved_regs_index, i32 0, i32 %i.028
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !186
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %13 = ptrtoint ptr %saved_regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %saved_regs, align 4
  %arrayidx2 = getelementptr i32, ptr %14, i32 %i.028
  %15 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %12, ptr %arrayidx2, align 4
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, 21
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body
  %16 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %17, i32 264
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #13, !srcloc !186
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %saved_ydsxgr_mode = getelementptr inbounds %struct.snd_ymfpci, ptr %3, i32 0, i32 60
  %20 = ptrtoint ptr %saved_ydsxgr_mode to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %saved_ydsxgr_mode, align 4
  %pci = getelementptr inbounds %struct.snd_ymfpci, ptr %3, i32 0, i32 34
  %21 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci, align 4
  %saved_dsxg_legacy = getelementptr inbounds %struct.snd_ymfpci, ptr %3, i32 0, i32 61
  %call4 = tail call i32 @pci_read_config_word(ptr noundef %22, i32 noundef 64, ptr noundef %saved_dsxg_legacy) #13
  %23 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci, align 4
  %saved_dsxg_elegacy = getelementptr inbounds %struct.snd_ymfpci, ptr %3, i32 0, i32 62
  %call6 = tail call i32 @pci_read_config_word(ptr noundef %24, i32 noundef 66, ptr noundef %saved_dsxg_elegacy) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %25 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %26, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 0) #13, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %27 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %28, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 0) #13, !srcloc !183
  %29 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 276
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %for.end.while.cond.i.preheader_crit_edge, label %if.then.i

for.end.while.cond.i.preheader_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.preheader

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %32 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %33, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 0) #13, !srcloc !183
  br label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %if.then.i, %for.end.while.cond.i.preheader_crit_edge
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.cond.i.preheader
  %timeout.0.i = phi i32 [ %dec.i, %while.body.i.while.cond.i_crit_edge ], [ 1000, %while.cond.i.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i)
  %cmp.not.i = icmp eq i32 %timeout.0.i, 0
  br i1 %cmp.not.i, label %while.cond.i.snd_ymfpci_disable_dsp.exit_crit_edge, label %while.body.i

while.cond.i.snd_ymfpci_disable_dsp.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_ymfpci_disable_dsp.exit

while.body.i:                                     ; preds = %while.cond.i
  %dec.i = add nsw i32 %timeout.0.i, -1
  %34 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %35, i32 256
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i) #13, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %37 = and i32 %36, 33554432
  %cmp2.i = icmp eq i32 %37, 0
  br i1 %cmp2.i, label %while.body.i.snd_ymfpci_disable_dsp.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.snd_ymfpci_disable_dsp.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_ymfpci_disable_dsp.exit

snd_ymfpci_disable_dsp.exit:                      ; preds = %while.body.i.snd_ymfpci_disable_dsp.exit_crit_edge, %while.cond.i.snd_ymfpci_disable_dsp.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_resume(ptr noundef %dev) #0 align 64 {
entry:
  %cmd.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.i) #13
  %4 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %cmd.i, align 1, !annotation !178
  %call.i = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 72, ptr noundef nonnull %cmd.i) #13
  %5 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cmd.i, align 1
  %7 = and i8 %6, -4
  %call2.i = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 72, i8 noundef zeroext %7) #13
  %8 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cmd.i, align 1
  %10 = or i8 %9, 3
  %call5.i = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 72, i8 noundef zeroext %10) #13
  %11 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cmd.i, align 1
  %13 = and i8 %12, -4
  %call9.i = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 72, i8 noundef zeroext %13) #13
  %call10.i = call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef 74, i16 noundef zeroext 0) #13
  %call11.i = call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef 78, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %reg_area_virt.i.i = getelementptr inbounds %struct.snd_ymfpci, ptr %3, i32 0, i32 4
  %add.neg.i = sub i32 -75, %14
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %entry
  %15 = ptrtoint ptr %reg_area_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_area_virt.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 102
  %17 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #13, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !181
  %.mask.i = and i16 %17, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i)
  %cmp.i = icmp eq i16 %.mask.i, 0
  br i1 %cmp.i, label %do.body.i.snd_ymfpci_codec_ready.exit_crit_edge, label %if.end.i

do.body.i.snd_ymfpci_codec_ready.exit_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_ymfpci_codec_ready.exit

if.end.i:                                         ; preds = %do.body.i
  %call3.i = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %18
  %cmp4.i = icmp slt i32 %sub.i, 0
  br i1 %cmp4.i, label %if.end.i.do.body.i_crit_edge, label %do.end8.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %card.i = getelementptr inbounds %struct.snd_ymfpci, ptr %3, i32 0, i32 35
  %19 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %20, i32 0, i32 27
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 8
  %23 = ptrtoint ptr %reg_area_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_area_virt.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %24, i32 102
  %25 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i2.i) #13, !srcloc !180
  %26 = call i16 @llvm.bswap.i16(i16 %25) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !181
  %conv10.i = zext i16 %26 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.47, i32 noundef 0, i32 noundef %conv10.i) #16
  br label %snd_ymfpci_codec_ready.exit

snd_ymfpci_codec_ready.exit:                      ; preds = %do.end8.i, %do.body.i.snd_ymfpci_codec_ready.exit_crit_edge
  call fastcc void @snd_ymfpci_download_image(ptr noundef %3)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 21474800) #13
  %saved_regs = getelementptr inbounds %struct.snd_ymfpci, ptr %3, i32 0, i32 59
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %snd_ymfpci_codec_ready.exit
  %i.034 = phi i32 [ 0, %snd_ymfpci_codec_ready.exit ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [21 x i32], ptr @saved_regs_index, i32 0, i32 %i.034
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  %30 = ptrtoint ptr %saved_regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %saved_regs, align 4
  %arrayidx2 = getelementptr i32, ptr %31, i32 %i.034
  %32 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx2, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  call void @arm_heavy_mb() #13
  %34 = call i32 @llvm.bswap.i32(i32 %33) #13
  %35 = ptrtoint ptr %reg_area_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_area_virt.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %36, i32 %29
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %34) #13, !srcloc !183
  %inc = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, 21
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body
  %ac97 = getelementptr inbounds %struct.snd_ymfpci, ptr %3, i32 0, i32 30
  %37 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ac97, align 4
  call void @snd_ac97_resume(ptr noundef %38) #13
  %pci3 = getelementptr inbounds %struct.snd_ymfpci, ptr %3, i32 0, i32 34
  %39 = ptrtoint ptr %pci3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pci3, align 4
  %saved_dsxg_legacy = getelementptr inbounds %struct.snd_ymfpci, ptr %3, i32 0, i32 61
  %41 = ptrtoint ptr %saved_dsxg_legacy to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %saved_dsxg_legacy, align 4
  %call4 = call i32 @pci_write_config_word(ptr noundef %40, i32 noundef 64, i16 noundef zeroext %42) #13
  %43 = ptrtoint ptr %pci3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pci3, align 4
  %saved_dsxg_elegacy = getelementptr inbounds %struct.snd_ymfpci, ptr %3, i32 0, i32 62
  %45 = ptrtoint ptr %saved_dsxg_elegacy to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %saved_dsxg_elegacy, align 2
  %call6 = call i32 @pci_write_config_word(ptr noundef %44, i32 noundef 66, i16 noundef zeroext %46) #13
  %start_count = getelementptr inbounds %struct.snd_ymfpci, ptr %3, i32 0, i32 25
  %47 = ptrtoint ptr %start_count to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %start_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp7 = icmp sgt i32 %48, 0
  br i1 %cmp7, label %if.then, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %reg_lock = getelementptr inbounds %struct.snd_ymfpci, ptr %3, i32 0, i32 52
  call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #13
  %saved_ydsxgr_mode = getelementptr inbounds %struct.snd_ymfpci, ptr %3, i32 0, i32 60
  %49 = ptrtoint ptr %saved_ydsxgr_mode to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %saved_ydsxgr_mode, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  call void @arm_heavy_mb() #13
  %51 = call i32 @llvm.bswap.i32(i32 %50) #13
  %52 = ptrtoint ptr %reg_area_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg_area_virt.i.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %53, i32 264
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %51) #13, !srcloc !183
  %54 = ptrtoint ptr %reg_area_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg_area_virt.i.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %55, i32 260
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #13, !srcloc !186
  %57 = call i32 @llvm.bswap.i32(i32 %56) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %active_bank = getelementptr inbounds %struct.snd_ymfpci, ptr %3, i32 0, i32 26
  %58 = ptrtoint ptr %active_bank to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %active_bank, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %59 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile i32 0, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ymfpci_create(ptr noundef %card, ptr noundef %pci, i16 noundef zeroext %old_legacy_ctrl) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %call = tail call i32 @pcim_enable_device(ptr noundef %pci) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %old_legacy_ctrl1 = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %old_legacy_ctrl1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %old_legacy_ctrl, ptr %old_legacy_ctrl1, align 4
  %reg_lock = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 52
  tail call void @__raw_spin_lock_init(ptr noundef %reg_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @snd_ymfpci_create.__key, i16 noundef signext 3) #13
  %voice_lock = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 53
  tail call void @__raw_spin_lock_init(ptr noundef %voice_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @snd_ymfpci_create.__key.11, i16 noundef signext 3) #13
  %interrupt_sleep = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 54
  tail call void @__init_waitqueue_head(ptr noundef %interrupt_sleep, ptr noundef nonnull @.str.14, ptr noundef nonnull @snd_ymfpci_create.__key.13) #13
  %interrupt_sleep_count = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 55
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %interrupt_sleep_count, i32 noundef 4) #13
  %3 = ptrtoint ptr %interrupt_sleep_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %interrupt_sleep_count, align 4
  %card10 = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 35
  %4 = ptrtoint ptr %card10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %card, ptr %card10, align 4
  %pci11 = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 34
  %5 = ptrtoint ptr %pci11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pci, ptr %pci11, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %1, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 8
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %device, align 2
  %conv = zext i16 %8 to i32
  %device_id = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %device_id to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %device_id, align 4
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 12
  %10 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %revision, align 4
  %rev = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %rev to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %rev, align 4
  %call12 = tail call i32 @pci_request_regions(ptr noundef %pci, ptr noundef nonnull @.str) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %13 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %resource, align 8
  %reg_area_phys = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %reg_area_phys to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %reg_area_phys, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %call18 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %14, i32 noundef 32768) #13
  %reg_area_virt = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call18, ptr %reg_area_virt, align 4
  %tobool.not = icmp eq ptr %call18, null
  br i1 %tobool.not, label %do.end23, label %if.end28

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %card10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card10, align 4
  %dev25 = getelementptr inbounds %struct.snd_card, ptr %18, i32 0, i32 27
  %19 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev25, align 8
  %21 = ptrtoint ptr %reg_area_phys to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg_area_phys, align 4
  %sub = add i32 %22, 32767
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.15, i32 noundef %22, i32 noundef %sub) #16
  br label %cleanup

if.end28:                                         ; preds = %if.end16
  tail call void @pci_set_master(ptr noundef %pci) #13
  %src441_used = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 28
  %23 = ptrtoint ptr %src441_used to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %src441_used, align 4
  %irq30 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %24 = ptrtoint ptr %irq30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq30, align 4
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %25, ptr noundef nonnull @snd_ymfpci_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.19, ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool32.not = icmp eq i32 %call.i, 0
  br i1 %tobool32.not, label %if.end40, label %do.end36

do.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %card10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card10, align 4
  %dev38 = getelementptr inbounds %struct.snd_card, ptr %27, i32 0, i32 27
  %28 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev38, align 8
  %30 = ptrtoint ptr %irq30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.21, i32 noundef %31) #16
  br label %cleanup

if.end40:                                         ; preds = %if.end28
  %32 = ptrtoint ptr %irq30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq30, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %1, align 4
  %sync_irq = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 33
  %35 = ptrtoint ptr %sync_irq to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %33, ptr %sync_irq, align 4
  %private_free = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 10
  %36 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @snd_ymfpci_free, ptr %private_free, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.i) #13
  %37 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -1, ptr %cmd.i, align 1, !annotation !178
  %call.i132 = call i32 @pci_read_config_byte(ptr noundef %pci, i32 noundef 72, ptr noundef nonnull %cmd.i) #13
  %38 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %cmd.i, align 1
  %40 = and i8 %39, -4
  %call2.i = call i32 @pci_write_config_byte(ptr noundef %pci, i32 noundef 72, i8 noundef zeroext %40) #13
  %41 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %cmd.i, align 1
  %43 = or i8 %42, 3
  %call5.i = call i32 @pci_write_config_byte(ptr noundef %pci, i32 noundef 72, i8 noundef zeroext %43) #13
  %44 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %cmd.i, align 1
  %46 = and i8 %45, -4
  %call9.i = call i32 @pci_write_config_byte(ptr noundef %pci, i32 noundef 72, i8 noundef zeroext %46) #13
  %call10.i = call i32 @pci_write_config_word(ptr noundef %pci, i32 noundef 74, i16 noundef zeroext 0) #13
  %call11.i = call i32 @pci_write_config_word(ptr noundef %pci, i32 noundef 78, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -75, %47
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.end40
  %48 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i.i = getelementptr i8, ptr %49, i32 102
  %50 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #13, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !181
  %.mask.i = and i16 %50, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i)
  %cmp.i = icmp eq i16 %.mask.i, 0
  br i1 %cmp.i, label %if.end48, label %if.end.i

if.end.i:                                         ; preds = %do.body.i
  %call3.i = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %51
  %cmp4.i = icmp slt i32 %sub.i, 0
  br i1 %cmp4.i, label %if.end.i.do.body.i_crit_edge, label %snd_ymfpci_codec_ready.exit.thread

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

snd_ymfpci_codec_ready.exit.thread:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %52 = ptrtoint ptr %card10 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %card10, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %53, i32 0, i32 27
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 8
  %56 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %57, i32 102
  %58 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i2.i) #13, !srcloc !180
  %59 = call i16 @llvm.bswap.i16(i16 %58) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !181
  %conv10.i = zext i16 %59 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.47, i32 noundef 0, i32 noundef %conv10.i) #16
  br label %cleanup

if.end48:                                         ; preds = %do.body.i
  %dsp_microcode.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 57
  %60 = ptrtoint ptr %pci11 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pci11, align 4
  %dev.i133 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  %call.i134 = call i32 @request_firmware(ptr noundef %dsp_microcode.i, ptr noundef nonnull @.str.49, ptr noundef %dev.i133) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i134)
  %cmp.i135 = icmp sgt i32 %call.i134, -1
  br i1 %cmp.i135, label %if.then.i, label %if.end48.do.end55_crit_edge

if.end48.do.end55_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end55

if.then.i:                                        ; preds = %if.end48
  %62 = ptrtoint ptr %dsp_microcode.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dsp_microcode.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %65)
  %cmp2.not.i = icmp eq i32 %65, 128
  br i1 %cmp2.not.i, label %if.end8.i, label %if.then.i.cleanup.sink.split.i_crit_edge

if.then.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i

if.end8.i:                                        ; preds = %if.then.i
  %66 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %device_id, align 4
  %68 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values)
  switch i32 %67, label %lor.rhs.i [
    i32 13, label %if.end8.i.lor.end.i_crit_edge
    i32 12, label %if.end8.i.lor.end.i_crit_edge168
    i32 16, label %if.end8.i.lor.end.i_crit_edge169
  ]

if.end8.i.lor.end.i_crit_edge169:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end.i

if.end8.i.lor.end.i_crit_edge168:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end.i

if.end8.i.lor.end.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end.i

lor.rhs.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %67)
  %cmp16.i = icmp eq i32 %67, 18
  %phi.sel.i = select i1 %cmp16.i, ptr @.str.52, ptr @.str.53
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %if.end8.i.lor.end.i_crit_edge, %if.end8.i.lor.end.i_crit_edge168, %if.end8.i.lor.end.i_crit_edge169
  %69 = phi ptr [ @.str.52, %if.end8.i.lor.end.i_crit_edge ], [ %phi.sel.i, %lor.rhs.i ], [ @.str.52, %if.end8.i.lor.end.i_crit_edge168 ], [ @.str.52, %if.end8.i.lor.end.i_crit_edge169 ]
  %controller_microcode.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 58
  %70 = ptrtoint ptr %pci11 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pci11, align 4
  %dev18.i = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  %call19.i = call i32 @request_firmware(ptr noundef %controller_microcode.i, ptr noundef nonnull %69, ptr noundef %dev18.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call19.i)
  %cmp20.i = icmp sgt i32 %call19.i, -1
  br i1 %cmp20.i, label %if.then21.i, label %lor.end.i.do.end55_crit_edge

lor.end.i.do.end55_crit_edge:                     ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end55

if.then21.i:                                      ; preds = %lor.end.i
  %72 = ptrtoint ptr %controller_microcode.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %controller_microcode.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288, i32 %75)
  %cmp24.not.i = icmp eq i32 %75, 12288
  br i1 %cmp24.not.i, label %if.end58, label %if.then21.i.cleanup.sink.split.i_crit_edge

if.then21.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then21.i.cleanup.sink.split.i_crit_edge, %if.then.i.cleanup.sink.split.i_crit_edge
  %.str.50.sink.i = phi ptr [ @.str.50, %if.then.i.cleanup.sink.split.i_crit_edge ], [ @.str.55, %if.then21.i.cleanup.sink.split.i_crit_edge ]
  %76 = ptrtoint ptr %card10 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %card10, align 4
  %dev4.i = getelementptr inbounds %struct.snd_card, ptr %77, i32 0, i32 27
  %78 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev4.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull %.str.50.sink.i) #16
  br label %do.end55

do.end55:                                         ; preds = %cleanup.sink.split.i, %lor.end.i.do.end55_crit_edge, %if.end48.do.end55_crit_edge
  %retval.0.i137.ph = phi i32 [ -22, %cleanup.sink.split.i ], [ %call.i134, %if.end48.do.end55_crit_edge ], [ %call19.i, %lor.end.i.do.end55_crit_edge ]
  %80 = ptrtoint ptr %card10 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %card10, align 4
  %dev57 = getelementptr inbounds %struct.snd_card, ptr %81, i32 0, i32 27
  %82 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev57, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.24, i32 noundef %retval.0.i137.ph) #16
  br label %cleanup

if.end58:                                         ; preds = %if.then21.i
  call fastcc void @snd_ymfpci_download_image(ptr noundef %1)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %84(i32 noundef 21474800) #13
  %85 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i.i139 = getelementptr i8, ptr %86, i32 320
  %87 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i139) #13, !srcloc !186
  %88 = call i32 @llvm.bswap.i32(i32 %87) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %shl.i = shl i32 %88, 2
  %bank_size_playback.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 8
  %89 = ptrtoint ptr %bank_size_playback.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %shl.i, ptr %bank_size_playback.i, align 4
  %90 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i266.i = getelementptr i8, ptr %91, i32 324
  %92 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i266.i) #13, !srcloc !186
  %93 = call i32 @llvm.bswap.i32(i32 %92) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %shl2.i = shl i32 %93, 2
  %bank_size_capture.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 9
  %94 = ptrtoint ptr %bank_size_capture.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %shl2.i, ptr %bank_size_capture.i, align 4
  %95 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i268.i = getelementptr i8, ptr %96, i32 328
  %97 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i268.i) #13, !srcloc !186
  %98 = call i32 @llvm.bswap.i32(i32 %97) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %shl4.i = shl i32 %98, 2
  %bank_size_effect.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 10
  %99 = ptrtoint ptr %bank_size_effect.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %shl4.i, ptr %bank_size_effect.i, align 4
  %work_size.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 11
  %100 = ptrtoint ptr %work_size.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1024, ptr %work_size.i, align 4
  %101 = ptrtoint ptr %bank_size_playback.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %bank_size_playback.i, align 4
  %mul6.i = shl i32 %102, 7
  %103 = add i32 %mul6.i, 767
  %add9.i = and i32 %103, -256
  %104 = ptrtoint ptr %bank_size_capture.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %bank_size_capture.i, align 4
  %mul12.i = shl i32 %105, 2
  %add13.i = add i32 %mul12.i, 255
  %and14.i = and i32 %add13.i, -256
  %mul18.i = mul i32 %98, 40
  %106 = add i32 %mul18.i, 1279
  %add15.i = and i32 %106, -256
  %add21.i = add i32 %add9.i, %add15.i
  %add23.i = add i32 %add21.i, %and14.i
  %107 = ptrtoint ptr %pci11 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pci11, align 4
  %dev.i141 = getelementptr inbounds %struct.pci_dev, ptr %108, i32 0, i32 44
  %call.i.i142 = call ptr @snd_devm_alloc_dir_pages(ptr noundef %dev.i141, i32 noundef 2, i32 noundef 0, i32 noundef %add23.i) #13
  %work_ptr.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 7
  %109 = ptrtoint ptr %work_ptr.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call.i.i142, ptr %work_ptr.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i142, null
  br i1 %tobool.not.i, label %if.end58.cleanup_crit_edge, label %if.end.i143

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i143:                                      ; preds = %if.end58
  %area.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %call.i.i142, i32 0, i32 1
  %110 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %area.i, align 4
  %addr.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %call.i.i142, i32 0, i32 2
  %112 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %addr.i, align 4
  %114 = call ptr @memset(ptr %111, i32 0, i32 %add23.i)
  %bank_base_playback.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 12
  %115 = ptrtoint ptr %bank_base_playback.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %111, ptr %bank_base_playback.i, align 4
  %bank_base_playback_addr.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 16
  %116 = ptrtoint ptr %bank_base_playback_addr.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %113, ptr %bank_base_playback_addr.i, align 4
  %ctrl_playback.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 21
  %117 = ptrtoint ptr %ctrl_playback.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %111, ptr %ctrl_playback.i, align 4
  %118 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 1073741824, ptr %111, align 4
  %add.ptr.i = getelementptr i8, ptr %111, i32 512
  %add33.i = add i32 %113, 512
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i143
  %ptr_addr.0308.i = phi i32 [ %add33.i, %if.end.i143 ], [ %add48.1.i, %for.body.i.for.body.i_crit_edge ]
  %ptr.0307.i = phi ptr [ %add.ptr.i, %if.end.i143 ], [ %add.ptr46.1.i, %for.body.i.for.body.i_crit_edge ]
  %voice.0306.i = phi i32 [ 0, %if.end.i143 ], [ %inc50.i, %for.body.i.for.body.i_crit_edge ]
  %number.i = getelementptr %struct.snd_ymfpci, ptr %1, i32 0, i32 27, i32 %voice.0306.i, i32 1
  %119 = ptrtoint ptr %number.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %voice.0306.i, ptr %number.i, align 4
  %bank37.i = getelementptr %struct.snd_ymfpci, ptr %1, i32 0, i32 27, i32 %voice.0306.i, i32 3
  %120 = ptrtoint ptr %bank37.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %ptr.0307.i, ptr %bank37.i, align 4
  %bank_addr.i = getelementptr %struct.snd_ymfpci, ptr %1, i32 0, i32 27, i32 %voice.0306.i, i32 4
  %121 = ptrtoint ptr %bank_addr.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %ptr_addr.0308.i, ptr %bank_addr.i, align 4
  %arrayidx44.i = getelementptr %struct.snd_ymfpci, ptr %1, i32 0, i32 22, i32 %voice.0306.i, i32 0
  %122 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %ptr.0307.i, ptr %arrayidx44.i, align 4
  %123 = ptrtoint ptr %bank_size_playback.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %bank_size_playback.i, align 4
  %add.ptr46.i = getelementptr i8, ptr %ptr.0307.i, i32 %124
  %add48.i = add i32 %124, %ptr_addr.0308.i
  %arrayidx44.1.i = getelementptr %struct.snd_ymfpci, ptr %1, i32 0, i32 22, i32 %voice.0306.i, i32 1
  %125 = ptrtoint ptr %arrayidx44.1.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %add.ptr46.i, ptr %arrayidx44.1.i, align 4
  %126 = load i32, ptr %bank_size_playback.i, align 4
  %add.ptr46.1.i = getelementptr i8, ptr %add.ptr46.i, i32 %126
  %add48.1.i = add i32 %add48.i, %126
  %inc50.i = add nuw nsw i32 %voice.0306.i, 1
  %exitcond.not.i = icmp eq i32 %inc50.i, 64
  br i1 %exitcond.not.i, label %for.end51.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end51.i:                                      ; preds = %for.body.i
  %127 = ptrtoint ptr %add.ptr46.1.i to i32
  %add52.i = add i32 %127, 255
  %and53.i = and i32 %add52.i, -256
  %128 = inttoptr i32 %and53.i to ptr
  %add54.i = add i32 %add48.1.i, 255
  %and55.i = and i32 %add54.i, -256
  %bank_base_capture.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 13
  %129 = ptrtoint ptr %bank_base_capture.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %128, ptr %bank_base_capture.i, align 4
  %bank_base_capture_addr.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 17
  %130 = ptrtoint ptr %bank_base_capture_addr.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %and55.i, ptr %bank_base_capture_addr.i, align 4
  %arrayidx63.i = getelementptr %struct.snd_ymfpci, ptr %1, i32 0, i32 23, i32 0, i32 0
  %131 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %128, ptr %arrayidx63.i, align 4
  %132 = ptrtoint ptr %bank_size_capture.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %bank_size_capture.i, align 4
  %add.ptr65.i = getelementptr i8, ptr %128, i32 %133
  %arrayidx63.1.i = getelementptr %struct.snd_ymfpci, ptr %1, i32 0, i32 23, i32 0, i32 1
  %134 = ptrtoint ptr %arrayidx63.1.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %add.ptr65.i, ptr %arrayidx63.1.i, align 4
  %add.ptr65.1.i = getelementptr i8, ptr %add.ptr65.i, i32 %133
  %reass.add.i = shl i32 %133, 2
  %arrayidx63.1323.i = getelementptr %struct.snd_ymfpci, ptr %1, i32 0, i32 23, i32 1, i32 0
  %135 = ptrtoint ptr %arrayidx63.1323.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %add.ptr65.1.i, ptr %arrayidx63.1323.i, align 4
  %add.ptr65.1324.i = getelementptr i8, ptr %add.ptr65.1.i, i32 %133
  %arrayidx63.1.1.i = getelementptr %struct.snd_ymfpci, ptr %1, i32 0, i32 23, i32 1, i32 1
  %136 = ptrtoint ptr %arrayidx63.1.1.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %add.ptr65.1324.i, ptr %arrayidx63.1.1.i, align 4
  %add.ptr65.1.1.i = getelementptr i8, ptr %add.ptr65.1324.i, i32 %133
  %137 = ptrtoint ptr %add.ptr65.1.1.i to i32
  %add74.i = add i32 %137, 255
  %and75.i = and i32 %add74.i, -256
  %138 = inttoptr i32 %and75.i to ptr
  %add67.1.1.i = or i32 %add54.i, 255
  %add76.i = add i32 %add67.1.1.i, %reass.add.i
  %and77.i = and i32 %add76.i, -256
  %bank_base_effect.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 14
  %139 = ptrtoint ptr %bank_base_effect.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %138, ptr %bank_base_effect.i, align 4
  %bank_base_effect_addr.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 18
  %140 = ptrtoint ptr %bank_base_effect_addr.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %and77.i, ptr %bank_base_effect_addr.i, align 4
  %arrayidx85.i = getelementptr %struct.snd_ymfpci, ptr %1, i32 0, i32 24, i32 0, i32 0
  %141 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %138, ptr %arrayidx85.i, align 4
  %142 = ptrtoint ptr %bank_size_effect.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %bank_size_effect.i, align 4
  %add.ptr87.i = getelementptr i8, ptr %138, i32 %143
  %arrayidx85.1.i = getelementptr %struct.snd_ymfpci, ptr %1, i32 0, i32 24, i32 0, i32 1
  %144 = ptrtoint ptr %arrayidx85.1.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %add.ptr87.i, ptr %arrayidx85.1.i, align 4
  %add.ptr87.1.i = getelementptr i8, ptr %add.ptr87.i, i32 %143
  %arrayidx85.1327.i = getelementptr %struct.snd_ymfpci, ptr %1, i32 0, i32 24, i32 1, i32 0
  %145 = ptrtoint ptr %arrayidx85.1327.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %add.ptr87.1.i, ptr %arrayidx85.1327.i, align 4
  %add.ptr87.1328.i = getelementptr i8, ptr %add.ptr87.1.i, i32 %143
  %arrayidx85.1.1.i = getelementptr %struct.snd_ymfpci, ptr %1, i32 0, i32 24, i32 1, i32 1
  %146 = ptrtoint ptr %arrayidx85.1.1.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %add.ptr87.1328.i, ptr %arrayidx85.1.1.i, align 4
  %add.ptr87.1.1.i = getelementptr i8, ptr %add.ptr87.1328.i, i32 %143
  %arrayidx85.2.i = getelementptr %struct.snd_ymfpci, ptr %1, i32 0, i32 24, i32 2, i32 0
  %147 = ptrtoint ptr %arrayidx85.2.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %add.ptr87.1.1.i, ptr %arrayidx85.2.i, align 4
  %add.ptr87.2.i = getelementptr i8, ptr %add.ptr87.1.1.i, i32 %143
  %arrayidx85.1.2.i = getelementptr %struct.snd_ymfpci, ptr %1, i32 0, i32 24, i32 2, i32 1
  %148 = ptrtoint ptr %arrayidx85.1.2.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %add.ptr87.2.i, ptr %arrayidx85.1.2.i, align 4
  %add.ptr87.1.2.i = getelementptr i8, ptr %add.ptr87.2.i, i32 %143
  %arrayidx85.3.i = getelementptr %struct.snd_ymfpci, ptr %1, i32 0, i32 24, i32 3, i32 0
  %149 = ptrtoint ptr %arrayidx85.3.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %add.ptr87.1.2.i, ptr %arrayidx85.3.i, align 4
  %add.ptr87.3.i = getelementptr i8, ptr %add.ptr87.1.2.i, i32 %143
  %arrayidx85.1.3.i = getelementptr %struct.snd_ymfpci, ptr %1, i32 0, i32 24, i32 3, i32 1
  %150 = ptrtoint ptr %arrayidx85.1.3.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %add.ptr87.3.i, ptr %arrayidx85.1.3.i, align 4
  %add.ptr87.1.3.i = getelementptr i8, ptr %add.ptr87.3.i, i32 %143
  %arrayidx85.4.i = getelementptr %struct.snd_ymfpci, ptr %1, i32 0, i32 24, i32 4, i32 0
  %151 = ptrtoint ptr %arrayidx85.4.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %add.ptr87.1.3.i, ptr %arrayidx85.4.i, align 4
  %add.ptr87.4.i = getelementptr i8, ptr %add.ptr87.1.3.i, i32 %143
  %arrayidx85.1.4.i = getelementptr %struct.snd_ymfpci, ptr %1, i32 0, i32 24, i32 4, i32 1
  %152 = ptrtoint ptr %arrayidx85.1.4.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %add.ptr87.4.i, ptr %arrayidx85.1.4.i, align 4
  %add.ptr87.1.4.i = getelementptr i8, ptr %add.ptr87.4.i, i32 %143
  %153 = ptrtoint ptr %add.ptr87.1.4.i to i32
  %add96.i = add i32 %153, 255
  %and97.i = and i32 %add96.i, -256
  %154 = inttoptr i32 %and97.i to ptr
  %reass.mul = mul i32 %143, 10
  %add89.1.4.i = or i32 %add76.i, 255
  %add98.i = add i32 %add89.1.4.i, %reass.mul
  %and99.i = and i32 %add98.i, -256
  %work_base.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 15
  %155 = ptrtoint ptr %work_base.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %154, ptr %work_base.i, align 4
  %work_base_addr.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 19
  %156 = ptrtoint ptr %work_base_addr.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %and99.i, ptr %work_base_addr.i, align 4
  %157 = ptrtoint ptr %work_size.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %work_size.i, align 4
  %add.ptr101.i = getelementptr i8, ptr %154, i32 %158
  %159 = ptrtoint ptr %work_ptr.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %work_ptr.i, align 4
  %area103.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %area103.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %area103.i, align 4
  %bytes.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %160, i32 0, i32 3
  %163 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %bytes.i, align 4
  %add.ptr105.i = getelementptr i8, ptr %162, i32 %164
  %cmp106.not.i = icmp eq ptr %add.ptr101.i, %add.ptr105.i
  br i1 %cmp106.not.i, label %for.end51.i.if.end63_crit_edge, label %do.end.i, !prof !188

for.end51.i.if.end63_crit_edge:                   ; preds = %for.end51.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

do.end.i:                                         ; preds = %for.end51.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 2169, i32 noundef 9, ptr noundef null) #13
  br label %if.end63

if.end63:                                         ; preds = %do.end.i, %for.end51.i.if.end63_crit_edge
  %165 = ptrtoint ptr %bank_base_playback_addr.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %bank_base_playback_addr.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  call void @arm_heavy_mb() #13
  %167 = call i32 @llvm.bswap.i32(i32 %166) #13
  %168 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i270.i = getelementptr i8, ptr %169, i32 344
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i270.i, i32 %167) #13, !srcloc !183
  %170 = ptrtoint ptr %bank_base_capture_addr.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %bank_base_capture_addr.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  call void @arm_heavy_mb() #13
  %172 = call i32 @llvm.bswap.i32(i32 %171) #13
  %173 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i272.i = getelementptr i8, ptr %174, i32 348
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i272.i, i32 %172) #13, !srcloc !183
  %175 = ptrtoint ptr %bank_base_effect_addr.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %bank_base_effect_addr.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  call void @arm_heavy_mb() #13
  %177 = call i32 @llvm.bswap.i32(i32 %176) #13
  %178 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i274.i = getelementptr i8, ptr %179, i32 352
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i274.i, i32 %177) #13, !srcloc !183
  %180 = ptrtoint ptr %work_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %work_base_addr.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  call void @arm_heavy_mb() #13
  %182 = call i32 @llvm.bswap.i32(i32 %181) #13
  %183 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i276.i = getelementptr i8, ptr %184, i32 356
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i276.i, i32 %182) #13, !srcloc !183
  %185 = ptrtoint ptr %work_size.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %work_size.i, align 4
  %shr.i = lshr i32 %186, 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  call void @arm_heavy_mb() #13
  %187 = call i32 @llvm.bswap.i32(i32 %shr.i) #13
  %188 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i278.i = getelementptr i8, ptr %189, i32 332
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i278.i, i32 %187) #13, !srcloc !183
  %spdif_pcm_bits.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 46
  %190 = ptrtoint ptr %spdif_pcm_bits.i to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 -32256, ptr %spdif_pcm_bits.i, align 2
  %spdif_bits.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 45
  %191 = ptrtoint ptr %spdif_bits.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 -32256, ptr %spdif_bits.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !184
  call void @arm_heavy_mb() #13
  %192 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i280.i = getelementptr i8, ptr %193, i32 24
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i280.i, i16 0) #13, !srcloc !185
  %194 = ptrtoint ptr %spdif_bits.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %spdif_bits.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !184
  call void @arm_heavy_mb() #13
  %196 = call i16 @llvm.bswap.i16(i16 %195) #13
  %197 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i282.i = getelementptr i8, ptr %198, i32 28
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i282.i, i16 %196) #13, !srcloc !185
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !184
  call void @arm_heavy_mb() #13
  %199 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i284.i = getelementptr i8, ptr %200, i32 52
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i284.i, i16 0) #13, !srcloc !185
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  call void @arm_heavy_mb() #13
  %201 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i286.i = getelementptr i8, ptr %202, i32 128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i286.i, i32 0) #13, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  call void @arm_heavy_mb() #13
  %203 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i286.1.i = getelementptr i8, ptr %204, i32 132
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i286.1.i, i32 0) #13, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  call void @arm_heavy_mb() #13
  %205 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i286.2.i = getelementptr i8, ptr %206, i32 136
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i286.2.i, i32 0) #13, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  call void @arm_heavy_mb() #13
  %207 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i286.3.i = getelementptr i8, ptr %208, i32 140
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i286.3.i, i32 0) #13, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  call void @arm_heavy_mb() #13
  %209 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i286.4.i = getelementptr i8, ptr %210, i32 144
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i286.4.i, i32 0) #13, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  call void @arm_heavy_mb() #13
  %211 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i286.5.i = getelementptr i8, ptr %212, i32 148
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i286.5.i, i32 0) #13, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  call void @arm_heavy_mb() #13
  %213 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i286.6.i = getelementptr i8, ptr %214, i32 152
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i286.6.i, i32 0) #13, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  call void @arm_heavy_mb() #13
  %215 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i286.7.i = getelementptr i8, ptr %216, i32 156
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i286.7.i, i32 0) #13, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  call void @arm_heavy_mb() #13
  %217 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i286.8.i = getelementptr i8, ptr %218, i32 160
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i286.8.i, i32 0) #13, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  call void @arm_heavy_mb() #13
  %219 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i286.9.i = getelementptr i8, ptr %220, i32 164
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i286.9.i, i32 0) #13, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  call void @arm_heavy_mb() #13
  %221 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i286.10.i = getelementptr i8, ptr %222, i32 168
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i286.10.i, i32 0) #13, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  call void @arm_heavy_mb() #13
  %223 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i286.11.i = getelementptr i8, ptr %224, i32 172
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i286.11.i, i32 0) #13, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  call void @arm_heavy_mb() #13
  %225 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i286.12.i = getelementptr i8, ptr %226, i32 176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i286.12.i, i32 0) #13, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  call void @arm_heavy_mb() #13
  %227 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i286.13.i = getelementptr i8, ptr %228, i32 180
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i286.13.i, i32 0) #13, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  call void @arm_heavy_mb() #13
  %229 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i286.14.i = getelementptr i8, ptr %230, i32 184
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i286.14.i, i32 0) #13, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  call void @arm_heavy_mb() #13
  %231 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i286.15.i = getelementptr i8, ptr %232, i32 188
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i286.15.i, i32 0) #13, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  call void @arm_heavy_mb() #13
  %233 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i288.i = getelementptr i8, ptr %234, i32 132
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i288.i, i32 -12583105) #13, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  call void @arm_heavy_mb() #13
  %235 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i290.i = getelementptr i8, ptr %236, i32 176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i290.i, i32 -12583105) #13, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  call void @arm_heavy_mb() #13
  %237 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i292.i = getelementptr i8, ptr %238, i32 136
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i292.i, i32 -12583105) #13, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  call void @arm_heavy_mb() #13
  %239 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i294.i = getelementptr i8, ptr %240, i32 184
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i294.i, i32 -12583105) #13, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  call void @arm_heavy_mb() #13
  %241 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i296.i = getelementptr i8, ptr %242, i32 168
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i296.i, i32 -12583105) #13, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  call void @arm_heavy_mb() #13
  %243 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i298.i = getelementptr i8, ptr %244, i32 172
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i298.i, i32 -12583105) #13, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  call void @arm_heavy_mb() #13
  %245 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i300.i = getelementptr i8, ptr %246, i32 164
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i300.i, i32 -12583105) #13, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  call void @arm_heavy_mb() #13
  %247 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i302.i = getelementptr i8, ptr %248, i32 128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i302.i, i32 -12583105) #13, !srcloc !183
  %249 = ptrtoint ptr %pci11 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %pci11, align 4
  %dev.i146 = getelementptr inbounds %struct.pci_dev, ptr %250, i32 0, i32 44
  %ac3_tmp_base.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 20
  %call.i.i147 = call i32 @snd_dma_alloc_dir_pages(i32 noundef 2, ptr noundef %dev.i146, i32 noundef 0, i32 noundef 4096, ptr noundef %ac3_tmp_base.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i147)
  %cmp.i148 = icmp slt i32 %call.i.i147, 0
  br i1 %cmp.i148, label %if.end63.cleanup_crit_edge, label %if.end68

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end68:                                         ; preds = %if.end63
  %addr.i149 = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 20, i32 2
  %251 = ptrtoint ptr %addr.i149 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %addr.i149, align 4
  %253 = call i32 @llvm.bswap.i32(i32 %252) #13
  %254 = ptrtoint ptr %arrayidx85.1.3.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %arrayidx85.1.3.i, align 4
  %256 = ptrtoint ptr %255 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %253, ptr %255, align 4
  %257 = ptrtoint ptr %arrayidx85.3.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %arrayidx85.3.i, align 4
  %259 = ptrtoint ptr %258 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %253, ptr %258, align 4
  %260 = load ptr, ptr %arrayidx85.1.3.i, align 4
  %loop_end.i = getelementptr inbounds %struct.snd_ymfpci_effect_bank, ptr %260, i32 0, i32 1
  %261 = ptrtoint ptr %loop_end.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 262144, ptr %loop_end.i, align 4
  %262 = load ptr, ptr %arrayidx85.3.i, align 4
  %loop_end13.i = getelementptr inbounds %struct.snd_ymfpci_effect_bank, ptr %262, i32 0, i32 1
  %263 = ptrtoint ptr %loop_end13.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 262144, ptr %loop_end13.i, align 4
  %264 = ptrtoint ptr %addr.i149 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %addr.i149, align 4
  %add.i = add i32 %265, 2048
  %266 = call i32 @llvm.bswap.i32(i32 %add.i) #13
  %267 = ptrtoint ptr %arrayidx85.1.4.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %arrayidx85.1.4.i, align 4
  %269 = ptrtoint ptr %268 to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %266, ptr %268, align 4
  %270 = ptrtoint ptr %arrayidx85.4.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %arrayidx85.4.i, align 4
  %272 = ptrtoint ptr %271 to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %266, ptr %271, align 4
  %273 = load ptr, ptr %arrayidx85.1.4.i, align 4
  %loop_end27.i = getelementptr inbounds %struct.snd_ymfpci_effect_bank, ptr %273, i32 0, i32 1
  %274 = ptrtoint ptr %loop_end27.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 262144, ptr %loop_end27.i, align 4
  %275 = load ptr, ptr %arrayidx85.4.i, align 4
  %loop_end31.i = getelementptr inbounds %struct.snd_ymfpci_effect_bank, ptr %275, i32 0, i32 1
  %276 = ptrtoint ptr %loop_end31.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 262144, ptr %loop_end31.i, align 4
  call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #13
  %277 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i.i151 = getelementptr i8, ptr %278, i32 340
  %279 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i151) #13, !srcloc !186
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %280 = or i32 %279, 402653184
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  call void @arm_heavy_mb() #13
  %281 = ptrtoint ptr %reg_area_virt to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %reg_area_virt, align 4
  %add.ptr.i50.i = getelementptr i8, ptr %282, i32 340
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50.i, i32 %280) #13, !srcloc !183
  call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #13
  %call5.i154 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 84, i32 noundef 3264) #13
  %saved_regs = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 59
  %283 = ptrtoint ptr %saved_regs to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr %call5.i154, ptr %saved_regs, align 4
  %tobool72.not = icmp eq ptr %call5.i154, null
  br i1 %tobool72.not, label %if.end68.cleanup_crit_edge, label %if.end74

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end74:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i155 = call i32 @snd_card_rw_proc_new(ptr noundef %card, ptr noundef nonnull @.str.57, ptr noundef %1, ptr noundef nonnull @snd_ymfpci_proc_read, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %if.end68.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %do.end55, %snd_ymfpci_codec_ready.exit.thread, %do.end36, %do.end23, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end36 ], [ %retval.0.i137.ph, %do.end55 ], [ 0, %if.end74 ], [ -16, %do.end23 ], [ %call, %entry.cleanup_crit_edge ], [ %call12, %if.end.cleanup_crit_edge ], [ -12, %if.end68.cleanup_crit_edge ], [ -5, %snd_ymfpci_codec_ready.exit.thread ], [ -5, %if.end58.cleanup_crit_edge ], [ -12, %if.end63.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_interrupt(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_area_virt.i = getelementptr inbounds %struct.snd_ymfpci, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 256
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %.mask = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool.not = icmp eq i32 %.mask, 0
  br i1 %tobool.not, label %entry.if.end26_crit_edge, label %if.then

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i80 = getelementptr i8, ptr %4, i32 260
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80) #13, !srcloc !186
  %6 = lshr i32 %5, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %and2 = and i32 %6, 1
  %active_bank = getelementptr inbounds %struct.snd_ymfpci, ptr %dev_id, i32 0, i32 26
  %7 = ptrtoint ptr %active_bank to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and2, ptr %active_bank, align 4
  %voice_lock = getelementptr inbounds %struct.snd_ymfpci, ptr %dev_id, i32 0, i32 53
  tail call void @_raw_spin_lock(ptr noundef %voice_lock) #13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then
  %nvoice.091 = phi i32 [ 0, %if.then ], [ %inc, %for.inc.for.body_crit_edge ]
  %interrupt = getelementptr %struct.snd_ymfpci, ptr %dev_id, i32 0, i32 27, i32 %nvoice.091, i32 5
  %8 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %interrupt, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %if.then4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.snd_ymfpci, ptr %dev_id, i32 0, i32 27, i32 %nvoice.091
  tail call void %9(ptr noundef %dev_id, ptr noundef %arrayidx) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %nvoice.091, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.body8.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body8.preheader:                              ; preds = %for.inc
  %arrayidx9 = getelementptr %struct.snd_ymfpci, ptr %dev_id, i32 0, i32 40, i32 0
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx9, align 4
  %tobool10.not = icmp eq ptr %11, null
  br i1 %tobool10.not, label %for.body8.preheader.for.inc15_crit_edge, label %if.then11

for.body8.preheader.for.inc15_crit_edge:          ; preds = %for.body8.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc15

if.then11:                                        ; preds = %for.body8.preheader
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %runtime1.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %private_data.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %reg_lock.i = getelementptr inbounds %struct.snd_ymfpci, ptr %17, i32 0, i32 52
  tail call void @_raw_spin_lock(ptr noundef %reg_lock.i) #13
  %running.i = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %15, i32 0, i32 4
  %18 = ptrtoint ptr %running.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then11.snd_ymfpci_pcm_capture_interrupt.exit_crit_edge, label %if.then.i

if.then11.snd_ymfpci_pcm_capture_interrupt.exit_crit_edge: ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_ymfpci_pcm_capture_interrupt.exit

if.then.i:                                        ; preds = %if.then11
  %capture_bank_number.i = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %15, i32 0, i32 10
  %19 = ptrtoint ptr %capture_bank_number.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %capture_bank_number.i, align 4
  %active_bank.i = getelementptr inbounds %struct.snd_ymfpci, ptr %17, i32 0, i32 26
  %21 = ptrtoint ptr %active_bank.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %active_bank.i, align 4
  %arrayidx3.i = getelementptr %struct.snd_ymfpci, ptr %17, i32 0, i32 23, i32 %20, i32 %22
  %23 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx3.i, align 4
  %start.i = getelementptr inbounds %struct.snd_ymfpci_capture_bank, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %start.i, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #13
  %shift.i = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %15, i32 0, i32 11
  %28 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %shift.i, align 4
  %shr.i = lshr i32 %27, %29
  %last_pos.i = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %15, i32 0, i32 9
  %30 = ptrtoint ptr %last_pos.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %last_pos.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %31)
  %cmp.i = icmp ult i32 %shr.i, %31
  br i1 %cmp.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %buffer_size.i = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %15, i32 0, i32 7
  %32 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buffer_size.i, align 4
  %sub.i = sub i32 %shr.i, %31
  %add.i = add i32 %sub.i, %33
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub7.i = sub i32 %shr.i, %31
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then4.i
  %delta.0.i = phi i32 [ %add.i, %if.then4.i ], [ %sub7.i, %if.else.i ]
  %period_pos.i = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %15, i32 0, i32 8
  %34 = ptrtoint ptr %period_pos.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %period_pos.i, align 4
  %add8.i = add i32 %35, %delta.0.i
  store i32 %add8.i, ptr %period_pos.i, align 4
  %36 = ptrtoint ptr %last_pos.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %shr.i, ptr %last_pos.i, align 4
  %period_size.i = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %15, i32 0, i32 6
  %37 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %period_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add8.i, i32 %38)
  %cmp11.not.i = icmp ult i32 %add8.i, %38
  br i1 %cmp11.not.i, label %if.end.i.snd_ymfpci_pcm_capture_interrupt.exit_crit_edge, label %if.then12.i

if.end.i.snd_ymfpci_pcm_capture_interrupt.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_ymfpci_pcm_capture_interrupt.exit

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %rem.i = urem i32 %add8.i, %38
  %39 = ptrtoint ptr %period_pos.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %rem.i, ptr %period_pos.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock.i) #13
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %11) #13
  tail call void @_raw_spin_lock(ptr noundef %reg_lock.i) #13
  br label %snd_ymfpci_pcm_capture_interrupt.exit

snd_ymfpci_pcm_capture_interrupt.exit:            ; preds = %if.then12.i, %if.end.i.snd_ymfpci_pcm_capture_interrupt.exit_crit_edge, %if.then11.snd_ymfpci_pcm_capture_interrupt.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock.i) #13
  br label %for.inc15

for.inc15:                                        ; preds = %snd_ymfpci_pcm_capture_interrupt.exit, %for.body8.preheader.for.inc15_crit_edge
  %arrayidx9.1 = getelementptr %struct.snd_ymfpci, ptr %dev_id, i32 0, i32 40, i32 1
  %40 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx9.1, align 4
  %tobool10.not.1 = icmp eq ptr %41, null
  br i1 %tobool10.not.1, label %for.inc15.for.inc15.1_crit_edge, label %if.then11.1

for.inc15.for.inc15.1_crit_edge:                  ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc15.1

if.then11.1:                                      ; preds = %for.inc15
  %runtime1.i.1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %runtime1.i.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %runtime1.i.1, align 4
  %private_data.i.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %43, i32 0, i32 44
  %44 = ptrtoint ptr %private_data.i.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %private_data.i.1, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %reg_lock.i.1 = getelementptr inbounds %struct.snd_ymfpci, ptr %47, i32 0, i32 52
  tail call void @_raw_spin_lock(ptr noundef %reg_lock.i.1) #13
  %running.i.1 = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %45, i32 0, i32 4
  %48 = ptrtoint ptr %running.i.1 to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load.i.1 = load i8, ptr %running.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.1)
  %tobool.not.i.1 = icmp sgt i8 %bf.load.i.1, -1
  br i1 %tobool.not.i.1, label %if.then11.1.snd_ymfpci_pcm_capture_interrupt.exit.1_crit_edge, label %if.then.i.1

if.then11.1.snd_ymfpci_pcm_capture_interrupt.exit.1_crit_edge: ; preds = %if.then11.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_ymfpci_pcm_capture_interrupt.exit.1

if.then.i.1:                                      ; preds = %if.then11.1
  %capture_bank_number.i.1 = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %45, i32 0, i32 10
  %49 = ptrtoint ptr %capture_bank_number.i.1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %capture_bank_number.i.1, align 4
  %active_bank.i.1 = getelementptr inbounds %struct.snd_ymfpci, ptr %47, i32 0, i32 26
  %51 = ptrtoint ptr %active_bank.i.1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %active_bank.i.1, align 4
  %arrayidx3.i.1 = getelementptr %struct.snd_ymfpci, ptr %47, i32 0, i32 23, i32 %50, i32 %52
  %53 = ptrtoint ptr %arrayidx3.i.1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx3.i.1, align 4
  %start.i.1 = getelementptr inbounds %struct.snd_ymfpci_capture_bank, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %start.i.1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %start.i.1, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #13
  %shift.i.1 = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %45, i32 0, i32 11
  %58 = ptrtoint ptr %shift.i.1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %shift.i.1, align 4
  %shr.i.1 = lshr i32 %57, %59
  %last_pos.i.1 = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %45, i32 0, i32 9
  %60 = ptrtoint ptr %last_pos.i.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %last_pos.i.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.1, i32 %61)
  %cmp.i.1 = icmp ult i32 %shr.i.1, %61
  br i1 %cmp.i.1, label %if.then4.i.1, label %if.else.i.1

if.else.i.1:                                      ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #15
  %sub7.i.1 = sub i32 %shr.i.1, %61
  br label %if.end.i.1

if.then4.i.1:                                     ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #15
  %buffer_size.i.1 = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %45, i32 0, i32 7
  %62 = ptrtoint ptr %buffer_size.i.1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %buffer_size.i.1, align 4
  %sub.i.1 = sub i32 %shr.i.1, %61
  %add.i.1 = add i32 %sub.i.1, %63
  br label %if.end.i.1

if.end.i.1:                                       ; preds = %if.then4.i.1, %if.else.i.1
  %delta.0.i.1 = phi i32 [ %add.i.1, %if.then4.i.1 ], [ %sub7.i.1, %if.else.i.1 ]
  %period_pos.i.1 = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %45, i32 0, i32 8
  %64 = ptrtoint ptr %period_pos.i.1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %period_pos.i.1, align 4
  %add8.i.1 = add i32 %65, %delta.0.i.1
  store i32 %add8.i.1, ptr %period_pos.i.1, align 4
  %66 = ptrtoint ptr %last_pos.i.1 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %shr.i.1, ptr %last_pos.i.1, align 4
  %period_size.i.1 = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %45, i32 0, i32 6
  %67 = ptrtoint ptr %period_size.i.1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %period_size.i.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add8.i.1, i32 %68)
  %cmp11.not.i.1 = icmp ult i32 %add8.i.1, %68
  br i1 %cmp11.not.i.1, label %if.end.i.1.snd_ymfpci_pcm_capture_interrupt.exit.1_crit_edge, label %if.then12.i.1

if.end.i.1.snd_ymfpci_pcm_capture_interrupt.exit.1_crit_edge: ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_ymfpci_pcm_capture_interrupt.exit.1

if.then12.i.1:                                    ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #15
  %rem.i.1 = urem i32 %add8.i.1, %68
  %69 = ptrtoint ptr %period_pos.i.1 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %rem.i.1, ptr %period_pos.i.1, align 4
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock.i.1) #13
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %41) #13
  tail call void @_raw_spin_lock(ptr noundef %reg_lock.i.1) #13
  br label %snd_ymfpci_pcm_capture_interrupt.exit.1

snd_ymfpci_pcm_capture_interrupt.exit.1:          ; preds = %if.then12.i.1, %if.end.i.1.snd_ymfpci_pcm_capture_interrupt.exit.1_crit_edge, %if.then11.1.snd_ymfpci_pcm_capture_interrupt.exit.1_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock.i.1) #13
  br label %for.inc15.1

for.inc15.1:                                      ; preds = %snd_ymfpci_pcm_capture_interrupt.exit.1, %for.inc15.for.inc15.1_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %voice_lock) #13
  %reg_lock = getelementptr inbounds %struct.snd_ymfpci, ptr %dev_id, i32 0, i32 52
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %70 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i82 = getelementptr i8, ptr %71, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82, i32 128) #13, !srcloc !183
  %72 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i84 = getelementptr i8, ptr %73, i32 264
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i84) #13, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %75 = or i32 %74, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %76 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i86 = getelementptr i8, ptr %77, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 %75) #13, !srcloc !183
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #13
  %interrupt_sleep_count = getelementptr inbounds %struct.snd_ymfpci, ptr %dev_id, i32 0, i32 55
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %interrupt_sleep_count, i32 noundef 4) #13
  %78 = ptrtoint ptr %interrupt_sleep_count to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %interrupt_sleep_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool22.not = icmp eq i32 %79, 0
  br i1 %tobool22.not, label %for.inc15.1.if.end26_crit_edge, label %if.then23

for.inc15.1.if.end26_crit_edge:                   ; preds = %for.inc15.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then23:                                        ; preds = %for.inc15.1
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i78 = tail call zeroext i1 @__kasan_check_write(ptr noundef %interrupt_sleep_count, i32 noundef 4) #13
  %80 = ptrtoint ptr %interrupt_sleep_count to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile i32 0, ptr %interrupt_sleep_count, align 4
  %interrupt_sleep = getelementptr inbounds %struct.snd_ymfpci, ptr %dev_id, i32 0, i32 54
  tail call void @__wake_up(ptr noundef %interrupt_sleep, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %for.inc15.1.if.end26_crit_edge, %entry.if.end26_crit_edge
  %81 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i88 = getelementptr i8, ptr %82, i32 4
  %83 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i88) #13, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !181
  %84 = and i16 %83, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %tobool29.not = icmp eq i16 %84, 0
  br i1 %tobool29.not, label %if.end26.if.end35_crit_edge, label %if.then30

if.end26.if.end35_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then30:                                        ; preds = %if.end26
  %timer = getelementptr inbounds %struct.snd_ymfpci, ptr %dev_id, i32 0, i32 32
  %85 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %timer, align 4
  %tobool31.not = icmp eq ptr %86, null
  br i1 %tobool31.not, label %if.then30.if.end35_crit_edge, label %if.then32

if.then30.if.end35_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then32:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  %timer_ticks = getelementptr inbounds %struct.snd_ymfpci, ptr %dev_id, i32 0, i32 33
  %87 = ptrtoint ptr %timer_ticks to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %timer_ticks, align 4
  tail call void @snd_timer_interrupt(ptr noundef nonnull %86, i32 noundef %88) #13
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.then30.if.end35_crit_edge, %if.end26.if.end35_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !184
  tail call void @arm_heavy_mb() #13
  %89 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i90 = getelementptr i8, ptr %90, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i90, i16 %83) #13, !srcloc !185
  %rawmidi = getelementptr inbounds %struct.snd_ymfpci, ptr %dev_id, i32 0, i32 31
  %91 = ptrtoint ptr %rawmidi to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rawmidi, align 4
  %tobool37.not = icmp eq ptr %92, null
  br i1 %tobool37.not, label %if.end35.if.end41_crit_edge, label %if.then38

if.end35.if.end41_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %92, i32 0, i32 9
  %93 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %private_data, align 4
  %call40 = tail call i32 @snd_mpu401_uart_interrupt(i32 noundef %irq, ptr noundef %94) #13
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end35.if.end41_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ymfpci_free(ptr nocapture noundef readonly %card) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %reg_area_virt.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #13, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %5, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 0) #13, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %6 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %7, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 0) #13, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %8 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %9, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 -1) #13, !srcloc !183
  %10 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 276
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %entry.while.cond.i.preheader_crit_edge, label %if.then.i

entry.while.cond.i.preheader_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.preheader

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %13 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %14, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 0) #13, !srcloc !183
  br label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %if.then.i, %entry.while.cond.i.preheader_crit_edge
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.cond.i.preheader
  %timeout.0.i = phi i32 [ %dec.i, %while.body.i.while.cond.i_crit_edge ], [ 1000, %while.cond.i.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i)
  %cmp.not.i = icmp eq i32 %timeout.0.i, 0
  br i1 %cmp.not.i, label %while.cond.i.snd_ymfpci_disable_dsp.exit_crit_edge, label %while.body.i

while.cond.i.snd_ymfpci_disable_dsp.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_ymfpci_disable_dsp.exit

while.body.i:                                     ; preds = %while.cond.i
  %dec.i = add nsw i32 %timeout.0.i, -1
  %15 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %16, i32 256
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i) #13, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %18 = and i32 %17, 33554432
  %cmp2.i = icmp eq i32 %18, 0
  br i1 %cmp2.i, label %while.body.i.snd_ymfpci_disable_dsp.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.snd_ymfpci_disable_dsp.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_ymfpci_disable_dsp.exit

snd_ymfpci_disable_dsp.exit:                      ; preds = %while.body.i.snd_ymfpci_disable_dsp.exit_crit_edge, %while.cond.i.snd_ymfpci_disable_dsp.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %19 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %20, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 0) #13, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %21 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %22, i32 348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 0) #13, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %23 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %24, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 0) #13, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %25 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i34 = getelementptr i8, ptr %26, i32 356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 0) #13, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %27 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %28, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 0) #13, !srcloc !183
  %29 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %30, i32 8
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i38) #13, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !181
  %32 = and i16 %31, -1793
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !184
  tail call void @arm_heavy_mb() #13
  %33 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %34, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i40, i16 %32) #13, !srcloc !185
  %reg_lock.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 52
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock.i) #13
  %35 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i.i42 = getelementptr i8, ptr %36, i32 340
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i42) #13, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %38 = and i32 %37, -402653185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %39 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %40, i32 340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %38) #13, !srcloc !183
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock.i) #13
  %area.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 20, i32 1
  %41 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %area.i, align 4
  %tobool.not.i43 = icmp eq ptr %42, null
  br i1 %tobool.not.i43, label %snd_ymfpci_disable_dsp.exit.snd_ymfpci_ac3_done.exit_crit_edge, label %if.then.i44

snd_ymfpci_disable_dsp.exit.snd_ymfpci_ac3_done.exit_crit_edge: ; preds = %snd_ymfpci_disable_dsp.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_ymfpci_ac3_done.exit

if.then.i44:                                      ; preds = %snd_ymfpci_disable_dsp.exit
  call void @__sanitizer_cov_trace_pc() #15
  %ac3_tmp_base.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 20
  tail call void @snd_dma_free_pages(ptr noundef %ac3_tmp_base.i) #13
  %43 = ptrtoint ptr %area.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %area.i, align 4
  br label %snd_ymfpci_ac3_done.exit

snd_ymfpci_ac3_done.exit:                         ; preds = %if.then.i44, %snd_ymfpci_disable_dsp.exit.snd_ymfpci_ac3_done.exit_crit_edge
  tail call void @snd_ymfpci_free_gameport(ptr noundef %1) #13
  %pci = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 34
  %44 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pci, align 4
  %old_legacy_ctrl = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 5
  %46 = ptrtoint ptr %old_legacy_ctrl to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %old_legacy_ctrl, align 4
  %call3 = tail call i32 @pci_write_config_word(ptr noundef %45, i32 noundef 64, i16 noundef zeroext %47) #13
  %dsp_microcode = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 57
  %48 = ptrtoint ptr %dsp_microcode to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dsp_microcode, align 4
  tail call void @release_firmware(ptr noundef %49) #13
  %controller_microcode = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 58
  %50 = ptrtoint ptr %controller_microcode to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %controller_microcode, align 4
  tail call void @release_firmware(ptr noundef %51) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_ymfpci_download_image(ptr nocapture noundef readonly %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %reg_area_virt.i = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #13, !srcloc !183
  %2 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 276
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.while.cond.i.preheader_crit_edge, label %if.then.i

entry.while.cond.i.preheader_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.preheader

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %5 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %6, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 0) #13, !srcloc !183
  br label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %if.then.i, %entry.while.cond.i.preheader_crit_edge
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.cond.i.preheader
  %timeout.0.i = phi i32 [ %dec.i, %while.body.i.while.cond.i_crit_edge ], [ 1000, %while.cond.i.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i)
  %cmp.not.i = icmp eq i32 %timeout.0.i, 0
  br i1 %cmp.not.i, label %while.cond.i.snd_ymfpci_disable_dsp.exit_crit_edge, label %while.body.i

while.cond.i.snd_ymfpci_disable_dsp.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_ymfpci_disable_dsp.exit

while.body.i:                                     ; preds = %while.cond.i
  %dec.i = add nsw i32 %timeout.0.i, -1
  %7 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %8, i32 256
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i) #13, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %10 = and i32 %9, 33554432
  %cmp2.i = icmp eq i32 %10, 0
  br i1 %cmp2.i, label %while.body.i.snd_ymfpci_disable_dsp.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.snd_ymfpci_disable_dsp.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_ymfpci_disable_dsp.exit

snd_ymfpci_disable_dsp.exit:                      ; preds = %while.body.i.snd_ymfpci_disable_dsp.exit_crit_edge, %while.cond.i.snd_ymfpci_disable_dsp.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %11 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %12, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 256) #13, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %13 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %14, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 0) #13, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %15 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %16, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 0) #13, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %17 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %18, i32 340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 0) #13, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %19 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %20, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 0) #13, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %21 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %22, i32 348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 0) #13, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %23 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %24, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 0) #13, !srcloc !183
  %25 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %26, i32 8
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i52) #13, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !181
  %28 = and i16 %27, -1793
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !184
  tail call void @arm_heavy_mb() #13
  %29 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i54 = getelementptr i8, ptr %30, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i54, i16 %28) #13, !srcloc !185
  %dsp_microcode = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 57
  %31 = ptrtoint ptr %dsp_microcode to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dsp_microcode, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %snd_ymfpci_disable_dsp.exit
  %i.061 = phi i32 [ 0, %snd_ymfpci_disable_dsp.exit ], [ %inc, %for.body.for.body_crit_edge ]
  %shl = shl i32 %i.061, 2
  %add = add nuw nsw i32 %shl, 4096
  %arrayidx = getelementptr i32, ptr %34, i32 %i.061
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %37 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i56 = getelementptr i8, ptr %38, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %36) #13, !srcloc !183
  %inc = add nuw nsw i32 %i.061, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body
  %controller_microcode = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 58
  %39 = ptrtoint ptr %controller_microcode to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %controller_microcode, align 4
  %data3 = getelementptr inbounds %struct.firmware, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data3, align 4
  br label %for.body7

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.end
  %i.162 = phi i32 [ 0, %for.end ], [ %inc12, %for.body7.for.body7_crit_edge ]
  %shl8 = shl i32 %i.162, 2
  %add9 = add nuw nsw i32 %shl8, 16384
  %arrayidx10 = getelementptr i32, ptr %42, i32 %i.162
  %43 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx10, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %45 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %46, i32 %add9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %44) #13, !srcloc !183
  %inc12 = add nuw nsw i32 %i.162, 1
  %exitcond63.not = icmp eq i32 %inc12, 3072
  br i1 %exitcond63.not, label %for.end13, label %for.body7.for.body7_crit_edge

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body7

for.end13:                                        ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %47 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i.i60 = getelementptr i8, ptr %48, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i60, i32 16777216) #13, !srcloc !183
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_playback_open(ptr noundef %substream) #0 align 64 {
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
  %hw.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %4 = call ptr @memcpy(ptr %hw.i, ptr @snd_ymfpci_playback, i32 64)
  %call.i = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 12, i32 noundef 5334, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call2.i = tail call i32 @snd_pcm_hw_rule_noresample(ptr noundef %3, i32 noundef 48000) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %if.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 52) #17
  %cmp7.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp7.i, label %if.end5.i.cleanup_crit_edge, label %if.end

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.end5.i
  %6 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %call7.i.i.i, align 8
  %type.i = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %call7.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %type.i, align 4
  %substream11.i = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %call7.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %substream11.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %substream, ptr %substream11.i, align 8
  %private_data12.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %9 = ptrtoint ptr %private_data12.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i.i, ptr %private_data12.i, align 8
  %private_free.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 45
  %10 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @snd_ymfpci_pcm_free_substream, ptr %private_free.i, align 4
  %output_front = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %call7.i.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %output_front to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %output_front, align 4
  %mode_dup4ch = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 48
  %12 = ptrtoint ptr %mode_dup4ch to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode_dup4ch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.not = icmp eq i32 %13, 0
  %bf.shl = select i1 %tobool.not.not, i8 0, i8 16
  %bf.set = and i8 %bf.load, -57
  %bf.clear4 = or i8 %bf.set, 32
  %bf.set5 = or i8 %bf.shl, %bf.clear4
  %14 = ptrtoint ptr %output_front to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %bf.set5, ptr %output_front, align 4
  %reg_lock = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 52
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #13
  %15 = ptrtoint ptr %output_front to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load10 = load i8, ptr %output_front, align 4
  %16 = and i8 %bf.load10, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool12.not = icmp eq i8 %16, 0
  br i1 %tobool12.not, label %if.end.if.end14_crit_edge, label %if.then13

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then13:                                        ; preds = %if.end
  %rear_opened.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 49
  %17 = ptrtoint ptr %rear_opened.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rear_opened.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then13.ymfpci_open_extension.exit_crit_edge

if.then13.ymfpci_open_extension.exit_crit_edge:   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %ymfpci_open_extension.exit

if.then.i:                                        ; preds = %if.then13
  %spdif_opened.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 50
  %19 = ptrtoint ptr %spdif_opened.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %spdif_opened.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool1.not.i = icmp eq i32 %20, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.then.i.if.end.i29_crit_edge

if.then.i.if.end.i29_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i29

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %reg_area_virt.i.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %reg_area_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_area_virt.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 264
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %24 = or i32 %23, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %25 = ptrtoint ptr %reg_area_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_area_virt.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %26, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %24) #13, !srcloc !183
  br label %if.end.i29

if.end.i29:                                       ; preds = %if.then2.i, %if.then.i.if.end.i29_crit_edge
  %reg_area_virt.i14.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %reg_area_virt.i14.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_area_virt.i14.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %28, i32 112
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i15.i) #13, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !181
  %30 = and i16 %29, -12292
  %31 = or i16 %30, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !184
  tail call void @arm_heavy_mb() #13
  %32 = ptrtoint ptr %reg_area_virt.i14.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_area_virt.i14.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %33, i32 112
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i17.i, i16 %31) #13, !srcloc !185
  br label %ymfpci_open_extension.exit

ymfpci_open_extension.exit:                       ; preds = %if.end.i29, %if.then13.ymfpci_open_extension.exit_crit_edge
  %34 = ptrtoint ptr %rear_opened.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rear_opened.i, align 4
  %inc = add i32 %35, 1
  store i32 %inc, ptr %rear_opened.i, align 4
  br label %if.end14

if.end14:                                         ; preds = %ymfpci_open_extension.exit, %if.end.if.end14_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -12, %if.end5.i.cleanup_crit_edge ], [ %call2.i, %if.end.i.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_playback_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  %reg_lock = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 52
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #13
  %output_rear = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %output_rear to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %output_rear, align 4
  %7 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %rear_opened = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 49
  %8 = ptrtoint ptr %rear_opened to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rear_opened, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %dec = add nsw i32 %9, -1
  %10 = ptrtoint ptr %rear_opened to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %dec, ptr %rear_opened, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not.i = icmp eq i32 %dec, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then.i:                                        ; preds = %if.then
  %spdif_opened.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 50
  %11 = ptrtoint ptr %spdif_opened.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %spdif_opened.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool1.not.i = icmp eq i32 %12, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %reg_area_virt.i.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %reg_area_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_area_virt.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 264
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %16 = and i32 %15, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %17 = ptrtoint ptr %reg_area_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_area_virt.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %18, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %16) #13, !srcloc !183
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  %reg_area_virt.i15.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %reg_area_virt.i15.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_area_virt.i15.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %20, i32 112
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i16.i) #13, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !181
  %22 = and i16 %21, -12292
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !184
  tail call void @arm_heavy_mb() #13
  %23 = ptrtoint ptr %reg_area_virt.i15.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_area_virt.i15.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %24, i32 112
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i18.i, i16 %22) #13, !srcloc !185
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_playback_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %hw_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %voices1.i = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %3, i32 0, i32 3
  %arrayidx.i = getelementptr %struct.snd_ymfpci_pcm, ptr %3, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %cmp.not.i = icmp ne ptr %7, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp2.i = icmp slt i32 %5, 2
  %or.cond.i = and i1 %cmp2.i, %cmp.not.i
  br i1 %or.cond.i, label %if.end23.i.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end23.i.i:                                     ; preds = %entry
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  tail call fastcc void @snd_ymfpci_hw_stop(ptr noundef %9) #13
  %voice_lock.i.i = getelementptr inbounds %struct.snd_ymfpci, ptr %9, i32 0, i32 53
  %call27.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_lock.i.i) #13
  %number.i.i = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %number.i.i, align 4
  %src441_used.i.i = getelementptr inbounds %struct.snd_ymfpci, ptr %9, i32 0, i32 28
  %12 = ptrtoint ptr %src441_used.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %src441_used.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp32.i.i = icmp eq i32 %11, %13
  br i1 %cmp32.i.i, label %if.then34.i.i, label %if.end23.i.i.snd_ymfpci_voice_free.exit.i_crit_edge

if.end23.i.i.snd_ymfpci_voice_free.exit.i_crit_edge: ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_ymfpci_voice_free.exit.i

if.then34.i.i:                                    ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %src441_used.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %src441_used.i.i, align 4
  %ypcm.i.i = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %7, i32 0, i32 6
  %15 = ptrtoint ptr %ypcm.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ypcm.i.i, align 4
  %use_441_slot.i.i = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %use_441_slot.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i.i = load i8, ptr %use_441_slot.i.i, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, -65
  store i8 %bf.clear.i.i, ptr %use_441_slot.i.i, align 4
  br label %snd_ymfpci_voice_free.exit.i

snd_ymfpci_voice_free.exit.i:                     ; preds = %if.then34.i.i, %if.end23.i.i.snd_ymfpci_voice_free.exit.i_crit_edge
  %midi.i.i = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %7, i32 0, i32 2
  %18 = ptrtoint ptr %midi.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load37.i.i = load i8, ptr %midi.i.i, align 4
  %bf.clear47.i.i = and i8 %bf.load37.i.i, 15
  store i8 %bf.clear47.i.i, ptr %midi.i.i, align 4
  %ypcm49.i.i = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %7, i32 0, i32 6
  %19 = ptrtoint ptr %ypcm49.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %ypcm49.i.i, align 4
  %interrupt.i.i = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %7, i32 0, i32 5
  %20 = ptrtoint ptr %interrupt.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %interrupt.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_lock.i.i, i32 noundef %call27.i.i) #13
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %snd_ymfpci_voice_free.exit.i, %entry.if.end.i_crit_edge
  %22 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %5, label %if.end24.i [
    i32 1, label %land.lhs.true8.i
    i32 2, label %land.lhs.true15.i
  ]

land.lhs.true8.i:                                 ; preds = %if.end.i
  %23 = ptrtoint ptr %voices1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %voices1.i, align 4
  %cmp11.not.i = icmp eq ptr %24, null
  br i1 %cmp11.not.i, label %land.lhs.true8.i.if.end42.i_crit_edge, label %land.lhs.true8.i.snd_ymfpci_pcm_voice_alloc.exit.thread_crit_edge

land.lhs.true8.i.snd_ymfpci_pcm_voice_alloc.exit.thread_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_ymfpci_pcm_voice_alloc.exit.thread

land.lhs.true8.i.if.end42.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42.i

land.lhs.true15.i:                                ; preds = %if.end.i
  %25 = ptrtoint ptr %voices1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %voices1.i, align 4
  %cmp18.not.i = icmp eq ptr %26, null
  br i1 %cmp18.not.i, label %land.lhs.true15.i.if.end42.i_crit_edge, label %land.lhs.true19.i

land.lhs.true15.i.if.end42.i_crit_edge:           ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42.i

land.lhs.true19.i:                                ; preds = %land.lhs.true15.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %cmp22.not.i = icmp eq ptr %28, null
  br i1 %cmp22.not.i, label %land.lhs.true19.i.if.end23.i106.i_crit_edge, label %land.lhs.true19.i.snd_ymfpci_pcm_voice_alloc.exit.thread_crit_edge

land.lhs.true19.i.snd_ymfpci_pcm_voice_alloc.exit.thread_crit_edge: ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_ymfpci_pcm_voice_alloc.exit.thread

land.lhs.true19.i.if.end23.i106.i_crit_edge:      ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.i106.i

if.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp25.i = icmp sgt i32 %5, 1
  br i1 %cmp25.i, label %if.then26.i, label %if.end24.i.if.end42.i_crit_edge

if.end24.i.if.end42.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42.i

if.then26.i:                                      ; preds = %if.end24.i
  %29 = ptrtoint ptr %voices1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr.i = load ptr, ptr %voices1.i, align 4
  %cmp29.not.i = icmp eq ptr %.pr.i, null
  br i1 %cmp29.not.i, label %if.then26.i.if.end42.i_crit_edge, label %land.lhs.true30.i

if.then26.i.if.end42.i_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42.i

land.lhs.true30.i:                                ; preds = %if.then26.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr152.i = load ptr, ptr %arrayidx.i, align 4
  %cmp33.i = icmp eq ptr %.pr152.i, null
  br i1 %cmp33.i, label %land.lhs.true30.i.if.end23.i106.i_crit_edge, label %land.lhs.true30.i.if.end42.i_crit_edge

land.lhs.true30.i.if.end42.i_crit_edge:           ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42.i

land.lhs.true30.i.if.end23.i106.i_crit_edge:      ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.i106.i

if.end23.i106.i:                                  ; preds = %land.lhs.true30.i.if.end23.i106.i_crit_edge, %land.lhs.true19.i.if.end23.i106.i_crit_edge
  %31 = phi ptr [ %.pr.i, %land.lhs.true30.i.if.end23.i106.i_crit_edge ], [ %26, %land.lhs.true19.i.if.end23.i106.i_crit_edge ]
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 4
  tail call fastcc void @snd_ymfpci_hw_stop(ptr noundef %33) #13
  %voice_lock.i101.i = getelementptr inbounds %struct.snd_ymfpci, ptr %33, i32 0, i32 53
  %call27.i102.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_lock.i101.i) #13
  %number.i103.i = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %number.i103.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %number.i103.i, align 4
  %src441_used.i104.i = getelementptr inbounds %struct.snd_ymfpci, ptr %33, i32 0, i32 28
  %36 = ptrtoint ptr %src441_used.i104.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %src441_used.i104.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp32.i105.i = icmp eq i32 %35, %37
  br i1 %cmp32.i105.i, label %if.then34.i111.i, label %if.end23.i106.i.snd_ymfpci_voice_free.exit118.i_crit_edge

if.end23.i106.i.snd_ymfpci_voice_free.exit118.i_crit_edge: ; preds = %if.end23.i106.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_ymfpci_voice_free.exit118.i

if.then34.i111.i:                                 ; preds = %if.end23.i106.i
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %src441_used.i104.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %src441_used.i104.i, align 4
  %ypcm.i107.i = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %31, i32 0, i32 6
  %39 = ptrtoint ptr %ypcm.i107.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ypcm.i107.i, align 4
  %use_441_slot.i108.i = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %use_441_slot.i108.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load.i109.i = load i8, ptr %use_441_slot.i108.i, align 4
  %bf.clear.i110.i = and i8 %bf.load.i109.i, -65
  store i8 %bf.clear.i110.i, ptr %use_441_slot.i108.i, align 4
  br label %snd_ymfpci_voice_free.exit118.i

snd_ymfpci_voice_free.exit118.i:                  ; preds = %if.then34.i111.i, %if.end23.i106.i.snd_ymfpci_voice_free.exit118.i_crit_edge
  %midi.i112.i = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %31, i32 0, i32 2
  %42 = ptrtoint ptr %midi.i112.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load37.i113.i = load i8, ptr %midi.i112.i, align 4
  %bf.clear47.i114.i = and i8 %bf.load37.i113.i, 15
  store i8 %bf.clear47.i114.i, ptr %midi.i112.i, align 4
  %ypcm49.i115.i = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %31, i32 0, i32 6
  %43 = ptrtoint ptr %ypcm49.i115.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %ypcm49.i115.i, align 4
  %interrupt.i116.i = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %31, i32 0, i32 5
  %44 = ptrtoint ptr %interrupt.i116.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %interrupt.i116.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_lock.i101.i, i32 noundef %call27.i102.i) #13
  %45 = ptrtoint ptr %voices1.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %voices1.i, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %snd_ymfpci_voice_free.exit118.i, %land.lhs.true30.i.if.end42.i_crit_edge, %if.then26.i.if.end42.i_crit_edge, %if.end24.i.if.end42.i_crit_edge, %land.lhs.true15.i.if.end42.i_crit_edge, %land.lhs.true8.i.if.end42.i_crit_edge
  %cmp25124.i = phi i1 [ true, %if.then26.i.if.end42.i_crit_edge ], [ true, %land.lhs.true30.i.if.end42.i_crit_edge ], [ true, %snd_ymfpci_voice_free.exit118.i ], [ false, %if.end24.i.if.end42.i_crit_edge ], [ false, %land.lhs.true8.i.if.end42.i_crit_edge ], [ true, %land.lhs.true15.i.if.end42.i_crit_edge ]
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %3, align 4
  %voice_lock.i121.i = getelementptr inbounds %struct.snd_ymfpci, ptr %47, i32 0, i32 53
  %call62.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_lock.i121.i) #13
  %48 = ptrtoint ptr %voices1.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %voices1.i, align 4
  %spec.select = select i1 %cmp25124.i, i32 2, i32 1
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end42.i
  %idx.037.i.i.i = phi i32 [ 0, %if.end42.i ], [ %add42.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %add.i.i.i = add nuw nsw i32 %idx.037.i.i.i, 1
  %arrayidx2.i.i.i = getelementptr %struct.snd_ymfpci, ptr %47, i32 0, i32 27, i32 %add.i.i.i
  %cond.i.i.i = select i1 %cmp25124.i, ptr %arrayidx2.i.i.i, ptr null
  %use.i.i.i = getelementptr %struct.snd_ymfpci, ptr %47, i32 0, i32 27, i32 %idx.037.i.i.i, i32 2
  %49 = ptrtoint ptr %use.i.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load.i.i.i = load i8, ptr %use.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool3.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool3.not.i.i.i, label %lor.lhs.false.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %for.body.i.i.i
  %tobool4.not.i.i.i = icmp eq ptr %cond.i.i.i, null
  br i1 %tobool4.not.i.i.i, label %if.end18.critedge.i.i.i, label %land.lhs.true.i.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i.i
  %use5.i.i.i = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %cond.i.i.i, i32 0, i32 2
  %50 = ptrtoint ptr %use5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load6.i.i.i = load i8, ptr %use5.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load6.i.i.i)
  %tobool9.not.i.i.i = icmp sgt i8 %bf.load6.i.i.i, -1
  br i1 %tobool9.not.i.i.i, label %if.then13.critedge.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i.i

if.then13.critedge.i.i.i:                         ; preds = %land.lhs.true.i.i.i
  %use5.i.i.i.le = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %cond.i.i.i, i32 0, i32 2
  %bf.set.c.i.i.i = or i8 %bf.load.i.i.i, -128
  %51 = ptrtoint ptr %use.i.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %bf.set.c.i.i.i, ptr %use.i.i.i, align 4
  %52 = ptrtoint ptr %use5.i.i.i.le to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load15.i.i.i = load i8, ptr %use5.i.i.i.le, align 4
  %bf.set17.i.i.i = or i8 %bf.load15.i.i.i, -128
  store i8 %bf.set17.i.i.i, ptr %use5.i.i.i.le, align 4
  %bf.load19.c.i.i.i = load i8, ptr %use.i.i.i, align 4
  %bf.set21.c.i.i.i = or i8 %bf.load19.c.i.i.i, 64
  store i8 %bf.set21.c.i.i.i, ptr %use.i.i.i, align 4
  %bf.load25.i.i.i = load i8, ptr %use5.i.i.i.le, align 4
  %bf.set27.i.i.i = or i8 %bf.load25.i.i.i, 64
  store i8 %bf.set27.i.i.i, ptr %use5.i.i.i.le, align 4
  %reg_lock.i.i.i.i = getelementptr inbounds %struct.snd_ymfpci, ptr %47, i32 0, i32 52
  %call2.i.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i.i.i) #13
  %start_count.i.i.i.i = getelementptr inbounds %struct.snd_ymfpci, ptr %47, i32 0, i32 25
  %53 = ptrtoint ptr %start_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %start_count.i.i.i.i, align 4
  %inc.i.i.i.i = add i32 %54, 1
  store i32 %inc.i.i.i.i, ptr %start_count.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp5.i.i.i.i = icmp sgt i32 %54, 0
  br i1 %cmp5.i.i.i.i, label %if.then13.critedge.i.i.i.snd_ymfpci_hw_start.exit.i.i.i_crit_edge, label %if.end.i.i.i.i

if.then13.critedge.i.i.i.snd_ymfpci_hw_start.exit.i.i.i_crit_edge: ; preds = %if.then13.critedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_ymfpci_hw_start.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then13.critedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %reg_area_virt.i.i.i.i.i = getelementptr inbounds %struct.snd_ymfpci, ptr %47, i32 0, i32 4
  %55 = ptrtoint ptr %reg_area_virt.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg_area_virt.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %56, i32 264
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #13, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %58 = or i32 %57, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %59 = ptrtoint ptr %reg_area_virt.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg_area_virt.i.i.i.i.i, align 4
  %add.ptr.i17.i.i.i.i = getelementptr i8, ptr %60, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i.i.i.i, i32 %58) #13, !srcloc !183
  %61 = ptrtoint ptr %reg_area_virt.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reg_area_virt.i.i.i.i.i, align 4
  %add.ptr.i19.i.i.i.i = getelementptr i8, ptr %62, i32 260
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i.i.i.i) #13, !srcloc !186
  %64 = lshr i32 %63, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %and.i.i.i.i = and i32 %64, 1
  %active_bank.i.i.i.i = getelementptr inbounds %struct.snd_ymfpci, ptr %47, i32 0, i32 26
  %65 = ptrtoint ptr %active_bank.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %and.i.i.i.i, ptr %active_bank.i.i.i.i, align 4
  br label %snd_ymfpci_hw_start.exit.i.i.i

snd_ymfpci_hw_start.exit.i.i.i:                   ; preds = %if.end.i.i.i.i, %if.then13.critedge.i.i.i.snd_ymfpci_hw_start.exit.i.i.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i.i.i, i32 noundef %call2.i.i.i.i) #13
  %call2.i6.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i.i.i) #13
  %66 = ptrtoint ptr %start_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %start_count.i.i.i.i, align 4
  %inc.i8.i.i.i = add i32 %67, 1
  store i32 %inc.i8.i.i.i, ptr %start_count.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp5.i9.i.i.i = icmp sgt i32 %67, 0
  br i1 %cmp5.i9.i.i.i, label %snd_ymfpci_hw_start.exit.i.i.i.snd_ymfpci_hw_start.exit17.i.i.i_crit_edge, label %if.end.i16.i.i.i

snd_ymfpci_hw_start.exit.i.i.i.snd_ymfpci_hw_start.exit17.i.i.i_crit_edge: ; preds = %snd_ymfpci_hw_start.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_ymfpci_hw_start.exit17.i.i.i

if.end.i16.i.i.i:                                 ; preds = %snd_ymfpci_hw_start.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %reg_area_virt.i.i10.i.i.i = getelementptr inbounds %struct.snd_ymfpci, ptr %47, i32 0, i32 4
  %68 = ptrtoint ptr %reg_area_virt.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %reg_area_virt.i.i10.i.i.i, align 4
  %add.ptr.i.i11.i.i.i = getelementptr i8, ptr %69, i32 264
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i11.i.i.i) #13, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %71 = or i32 %70, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %72 = ptrtoint ptr %reg_area_virt.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %reg_area_virt.i.i10.i.i.i, align 4
  %add.ptr.i17.i12.i.i.i = getelementptr i8, ptr %73, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i12.i.i.i, i32 %71) #13, !srcloc !183
  %74 = ptrtoint ptr %reg_area_virt.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %reg_area_virt.i.i10.i.i.i, align 4
  %add.ptr.i19.i13.i.i.i = getelementptr i8, ptr %75, i32 260
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i13.i.i.i) #13, !srcloc !186
  %77 = lshr i32 %76, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %and.i14.i.i.i = and i32 %77, 1
  %active_bank.i15.i.i.i = getelementptr inbounds %struct.snd_ymfpci, ptr %47, i32 0, i32 26
  %78 = ptrtoint ptr %active_bank.i15.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %and.i14.i.i.i, ptr %active_bank.i15.i.i.i, align 4
  br label %snd_ymfpci_hw_start.exit17.i.i.i

snd_ymfpci_hw_start.exit17.i.i.i:                 ; preds = %if.end.i16.i.i.i, %snd_ymfpci_hw_start.exit.i.i.i.snd_ymfpci_hw_start.exit17.i.i.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i.i.i, i32 noundef %call2.i6.i.i.i) #13
  br label %if.end51.i

if.end18.critedge.i.i.i:                          ; preds = %lor.lhs.false.i.i.i
  %bf.set21.c4.i.i.i = or i8 %bf.load.i.i.i, -64
  %79 = ptrtoint ptr %use.i.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %bf.set21.c4.i.i.i, ptr %use.i.i.i, align 4
  %reg_lock.i18.i.i.i = getelementptr inbounds %struct.snd_ymfpci, ptr %47, i32 0, i32 52
  %call2.i19.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i18.i.i.i) #13
  %start_count.i20.i.i.i = getelementptr inbounds %struct.snd_ymfpci, ptr %47, i32 0, i32 25
  %80 = ptrtoint ptr %start_count.i20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %start_count.i20.i.i.i, align 4
  %inc.i21.i.i.i = add i32 %81, 1
  store i32 %inc.i21.i.i.i, ptr %start_count.i20.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp5.i22.i.i.i = icmp sgt i32 %81, 0
  br i1 %cmp5.i22.i.i.i, label %if.end18.critedge.i.i.i.snd_ymfpci_hw_start.exit30.i.i.i_crit_edge, label %if.end.i29.i.i.i

if.end18.critedge.i.i.i.snd_ymfpci_hw_start.exit30.i.i.i_crit_edge: ; preds = %if.end18.critedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_ymfpci_hw_start.exit30.i.i.i

if.end.i29.i.i.i:                                 ; preds = %if.end18.critedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %reg_area_virt.i.i23.i.i.i = getelementptr inbounds %struct.snd_ymfpci, ptr %47, i32 0, i32 4
  %82 = ptrtoint ptr %reg_area_virt.i.i23.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %reg_area_virt.i.i23.i.i.i, align 4
  %add.ptr.i.i24.i.i.i = getelementptr i8, ptr %83, i32 264
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i24.i.i.i) #13, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %85 = or i32 %84, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %86 = ptrtoint ptr %reg_area_virt.i.i23.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %reg_area_virt.i.i23.i.i.i, align 4
  %add.ptr.i17.i25.i.i.i = getelementptr i8, ptr %87, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i25.i.i.i, i32 %85) #13, !srcloc !183
  %88 = ptrtoint ptr %reg_area_virt.i.i23.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %reg_area_virt.i.i23.i.i.i, align 4
  %add.ptr.i19.i26.i.i.i = getelementptr i8, ptr %89, i32 260
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i26.i.i.i) #13, !srcloc !186
  %91 = lshr i32 %90, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %and.i27.i.i.i = and i32 %91, 1
  %active_bank.i28.i.i.i = getelementptr inbounds %struct.snd_ymfpci, ptr %47, i32 0, i32 26
  %92 = ptrtoint ptr %active_bank.i28.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %and.i27.i.i.i, ptr %active_bank.i28.i.i.i, align 4
  br label %snd_ymfpci_hw_start.exit30.i.i.i

snd_ymfpci_hw_start.exit30.i.i.i:                 ; preds = %if.end.i29.i.i.i, %if.end18.critedge.i.i.i.snd_ymfpci_hw_start.exit30.i.i.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i18.i.i.i, i32 noundef %call2.i19.i.i.i) #13
  br label %if.end51.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %add42.i.i.i = add nuw nsw i32 %idx.037.i.i.i, %spec.select
  %cmp.i.i.i = icmp ult i32 %add42.i.i.i, 64
  br i1 %cmp.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %107

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i

if.end51.i:                                       ; preds = %snd_ymfpci_hw_start.exit30.i.i.i, %snd_ymfpci_hw_start.exit17.i.i.i
  %arrayidx34.i.i.i = getelementptr %struct.snd_ymfpci, ptr %47, i32 0, i32 27, i32 %idx.037.i.i.i
  %93 = ptrtoint ptr %voices1.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %arrayidx34.i.i.i, ptr %voices1.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_lock.i121.i, i32 noundef %call62.i.i) #13
  %94 = ptrtoint ptr %voices1.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %voices1.i, align 4
  %ypcm54.i = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %95, i32 0, i32 6
  %96 = ptrtoint ptr %ypcm54.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %3, ptr %ypcm54.i, align 4
  %97 = load ptr, ptr %voices1.i, align 4
  %interrupt.i = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %97, i32 0, i32 5
  %98 = ptrtoint ptr %interrupt.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @snd_ymfpci_pcm_interrupt, ptr %interrupt.i, align 4
  br i1 %cmp25124.i, label %if.then59.i, label %if.end51.i.snd_ymfpci_pcm_voice_alloc.exit.thread_crit_edge

if.end51.i.snd_ymfpci_pcm_voice_alloc.exit.thread_crit_edge: ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_ymfpci_pcm_voice_alloc.exit.thread

if.then59.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #15
  %99 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %3, align 4
  %101 = ptrtoint ptr %voices1.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %voices1.i, align 4
  %number.i = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %number.i, align 4
  %add.i = add i32 %104, 1
  %arrayidx64.i = getelementptr %struct.snd_ymfpci, ptr %100, i32 0, i32 27, i32 %add.i
  %105 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %arrayidx64.i, ptr %arrayidx.i, align 4
  %ypcm69.i = getelementptr %struct.snd_ymfpci, ptr %100, i32 0, i32 27, i32 %add.i, i32 6
  %106 = ptrtoint ptr %ypcm69.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %3, ptr %ypcm69.i, align 4
  br label %snd_ymfpci_pcm_voice_alloc.exit.thread

107:                                              ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_lock.i121.i, i32 noundef %call62.i.i) #13
  br label %snd_ymfpci_pcm_voice_alloc.exit.thread

snd_ymfpci_pcm_voice_alloc.exit.thread:           ; preds = %107, %if.then59.i, %if.end51.i.snd_ymfpci_pcm_voice_alloc.exit.thread_crit_edge, %land.lhs.true19.i.snd_ymfpci_pcm_voice_alloc.exit.thread_crit_edge, %land.lhs.true8.i.snd_ymfpci_pcm_voice_alloc.exit.thread_crit_edge
  %108 = phi i32 [ -12, %107 ], [ 0, %land.lhs.true8.i.snd_ymfpci_pcm_voice_alloc.exit.thread_crit_edge ], [ 0, %land.lhs.true19.i.snd_ymfpci_pcm_voice_alloc.exit.thread_crit_edge ], [ 0, %if.then59.i ], [ 0, %if.end51.i.snd_ymfpci_pcm_voice_alloc.exit.thread_crit_edge ]
  ret i32 %108
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_playback_hw_free(ptr nocapture noundef readonly %substream) #0 align 64 {
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
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @snd_ymfpci_irq_wait(ptr noundef %1)
  %voices = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %5, i32 0, i32 3
  %arrayidx = getelementptr %struct.snd_ymfpci_pcm, ptr %5, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.end23.i

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.end23.i:                                       ; preds = %if.end
  tail call fastcc void @snd_ymfpci_hw_stop(ptr noundef %1) #13
  %voice_lock.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 53
  %call27.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_lock.i) #13
  %number.i = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %number.i, align 4
  %src441_used.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 28
  %10 = ptrtoint ptr %src441_used.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %src441_used.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp32.i = icmp eq i32 %9, %11
  br i1 %cmp32.i, label %if.then34.i, label %if.end23.i.snd_ymfpci_voice_free.exit_crit_edge

if.end23.i.snd_ymfpci_voice_free.exit_crit_edge:  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_ymfpci_voice_free.exit

if.then34.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %src441_used.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %src441_used.i, align 4
  %ypcm.i = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %7, i32 0, i32 6
  %13 = ptrtoint ptr %ypcm.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ypcm.i, align 4
  %use_441_slot.i = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %use_441_slot.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %use_441_slot.i, align 4
  %bf.clear.i = and i8 %bf.load.i, -65
  store i8 %bf.clear.i, ptr %use_441_slot.i, align 4
  br label %snd_ymfpci_voice_free.exit

snd_ymfpci_voice_free.exit:                       ; preds = %if.then34.i, %if.end23.i.snd_ymfpci_voice_free.exit_crit_edge
  %midi.i = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %7, i32 0, i32 2
  %16 = ptrtoint ptr %midi.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load37.i = load i8, ptr %midi.i, align 4
  %bf.clear47.i = and i8 %bf.load37.i, 15
  store i8 %bf.clear47.i, ptr %midi.i, align 4
  %ypcm49.i = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %7, i32 0, i32 6
  %17 = ptrtoint ptr %ypcm49.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %ypcm49.i, align 4
  %interrupt.i = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %7, i32 0, i32 5
  %18 = ptrtoint ptr %interrupt.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %interrupt.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_lock.i, i32 noundef %call27.i) #13
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end9

if.end9:                                          ; preds = %snd_ymfpci_voice_free.exit, %if.end.if.end9_crit_edge
  %20 = ptrtoint ptr %voices to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %voices, align 4
  %tobool12.not = icmp eq ptr %21, null
  br i1 %tobool12.not, label %if.end9.cleanup_crit_edge, label %if.end23.i40

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end23.i40:                                     ; preds = %if.end9
  tail call fastcc void @snd_ymfpci_hw_stop(ptr noundef %1) #13
  %voice_lock.i35 = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 53
  %call27.i36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_lock.i35) #13
  %number.i37 = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %number.i37 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %number.i37, align 4
  %src441_used.i38 = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 28
  %24 = ptrtoint ptr %src441_used.i38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %src441_used.i38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp32.i39 = icmp eq i32 %23, %25
  br i1 %cmp32.i39, label %if.then34.i45, label %if.end23.i40.snd_ymfpci_voice_free.exit52_crit_edge

if.end23.i40.snd_ymfpci_voice_free.exit52_crit_edge: ; preds = %if.end23.i40
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_ymfpci_voice_free.exit52

if.then34.i45:                                    ; preds = %if.end23.i40
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %src441_used.i38 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %src441_used.i38, align 4
  %ypcm.i41 = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %21, i32 0, i32 6
  %27 = ptrtoint ptr %ypcm.i41 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ypcm.i41, align 4
  %use_441_slot.i42 = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %use_441_slot.i42 to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i43 = load i8, ptr %use_441_slot.i42, align 4
  %bf.clear.i44 = and i8 %bf.load.i43, -65
  store i8 %bf.clear.i44, ptr %use_441_slot.i42, align 4
  br label %snd_ymfpci_voice_free.exit52

snd_ymfpci_voice_free.exit52:                     ; preds = %if.then34.i45, %if.end23.i40.snd_ymfpci_voice_free.exit52_crit_edge
  %midi.i46 = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %21, i32 0, i32 2
  %30 = ptrtoint ptr %midi.i46 to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load37.i47 = load i8, ptr %midi.i46, align 4
  %bf.clear47.i48 = and i8 %bf.load37.i47, 15
  store i8 %bf.clear47.i48, ptr %midi.i46, align 4
  %ypcm49.i49 = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %21, i32 0, i32 6
  %31 = ptrtoint ptr %ypcm49.i49 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %ypcm49.i49, align 4
  %interrupt.i50 = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %21, i32 0, i32 5
  %32 = ptrtoint ptr %interrupt.i50 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %interrupt.i50, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_lock.i35, i32 noundef %call27.i36) #13
  %33 = ptrtoint ptr %voices to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %voices, align 4
  br label %cleanup

cleanup:                                          ; preds = %snd_ymfpci_voice_free.exit52, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_playback_prepare(ptr nocapture noundef readonly %substream) #0 align 64 {
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
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2, align 8
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %period_size, align 4
  %period_size3 = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %period_size3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %period_size3, align 4
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %9 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buffer_size, align 4
  %buffer_size4 = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %5, i32 0, i32 7
  %11 = ptrtoint ptr %buffer_size4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %buffer_size4, align 4
  %period_pos = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %5, i32 0, i32 8
  %12 = ptrtoint ptr %period_pos to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %period_pos, align 4
  %last_pos = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %5, i32 0, i32 9
  %13 = ptrtoint ptr %last_pos to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %last_pos, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %14 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp31.not = icmp eq i32 %15, 0
  br i1 %cmp31.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pcm5 = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 36
  %rate.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %substream.i = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %5, i32 0, i32 2
  %format64.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %use_441_slot.i = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %5, i32 0, i32 4
  %dma_addr.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  br label %for.body

for.body:                                         ; preds = %snd_ymfpci_pcm_init_voice.exit.for.body_crit_edge, %for.body.lr.ph
  %16 = phi i32 [ %15, %for.body.lr.ph ], [ %159, %snd_ymfpci_pcm_init_voice.exit.for.body_crit_edge ]
  %nvoice.032 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %snd_ymfpci_pcm_init_voice.exit.for.body_crit_edge ]
  %17 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %substream, align 4
  %19 = ptrtoint ptr %pcm5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcm5, align 4
  %cmp6.not = icmp eq ptr %18, %20
  %arrayidx.i = getelementptr %struct.snd_ymfpci_pcm, ptr %5, i32 0, i32 3, i32 %nvoice.032
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %23 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rate.i, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %24, label %for.body.preheader.i.i [
    i32 8000, label %for.body.if.then3.i269.i_crit_edge
    i32 11025, label %for.body.for.inc.2.i275.i_crit_edge
    i32 16000, label %for.body.for.inc.3.i277.i_crit_edge
    i32 22050, label %for.body.for.inc.4.i279.i_crit_edge
    i32 32000, label %for.body.for.inc.5.i281.i_crit_edge
    i32 44100, label %for.body.snd_ymfpci_calc_lpfK.exit.i_crit_edge
  ]

for.body.snd_ymfpci_calc_lpfK.exit.i_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_ymfpci_calc_lpfK.exit.i

for.body.for.inc.5.i281.i_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.5.i281.i

for.body.for.inc.4.i279.i_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.4.i279.i

for.body.for.inc.3.i277.i_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3.i277.i

for.body.for.inc.2.i275.i_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i275.i

for.body.if.then3.i269.i_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3.i269.i

for.body.preheader.i.i:                           ; preds = %for.body
  %shl.i.i = shl i32 %24, 16
  %div.i.i = udiv i32 %shl.i.i, 375
  %shl6.i.i = shl nuw nsw i32 %div.i.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %24)
  %cmp2.not.i.i = icmp ugt i32 %24, 100
  br i1 %cmp2.not.i.i, label %for.inc.i.i, label %for.body.preheader.i.i.if.then3.i269.i_crit_edge

for.body.preheader.i.i.if.then3.i269.i_crit_edge: ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3.i269.i

for.inc.i.i:                                      ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %24)
  %cmp2.not.1.i.i = icmp ugt i32 %24, 2000
  br i1 %cmp2.not.1.i.i, label %for.inc.1.i.i, label %for.inc.i.i.if.then3.i269.i_crit_edge

for.inc.i.i.if.then3.i269.i_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3.i269.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %24)
  %cmp2.not.2.i.i = icmp ugt i32 %24, 8000
  br i1 %cmp2.not.2.i.i, label %for.inc.2.i.i, label %for.inc.1.i.i.if.then3.i269.i_crit_edge

for.inc.1.i.i.if.then3.i269.i_crit_edge:          ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3.i269.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11025, i32 %24)
  %cmp2.not.3.i.i = icmp ugt i32 %24, 11025
  br i1 %cmp2.not.3.i.i, label %for.inc.3.i.i, label %for.inc.2.i.i.for.inc.2.i275.i_crit_edge

for.inc.2.i.i.for.inc.2.i275.i_crit_edge:         ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i275.i

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000, i32 %24)
  %cmp2.not.4.i.i = icmp ugt i32 %24, 16000
  br i1 %cmp2.not.4.i.i, label %for.inc.4.i.i, label %for.inc.3.i.i.for.inc.3.i277.i_crit_edge

for.inc.3.i.i.for.inc.3.i277.i_crit_edge:         ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3.i277.i

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 22050, i32 %24)
  %cmp2.not.5.i.i = icmp ugt i32 %24, 22050
  br i1 %cmp2.not.5.i.i, label %for.inc.5.i.i, label %for.inc.4.i.i.for.inc.4.i279.i_crit_edge

for.inc.4.i.i.for.inc.4.i279.i_crit_edge:         ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.4.i279.i

for.inc.5.i.i:                                    ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32000, i32 %24)
  %cmp2.not.6.i.i = icmp ugt i32 %24, 32000
  br i1 %cmp2.not.6.i.i, label %for.inc.6.i.i, label %for.inc.5.i.i.for.inc.5.i281.i_crit_edge

for.inc.5.i.i.for.inc.5.i281.i_crit_edge:         ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.5.i281.i

for.inc.6.i.i:                                    ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %24)
  %cmp2.not.7.i.i = icmp ugt i32 %24, 48000
  br i1 %cmp2.not.7.i.i, label %for.inc.6.i.i.snd_ymfpci_calc_lpfK.exit.i_crit_edge, label %for.inc.6.i.i.for.inc.5.i281.i_crit_edge

for.inc.6.i.i.for.inc.5.i281.i_crit_edge:         ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.5.i281.i

for.inc.6.i.i.snd_ymfpci_calc_lpfK.exit.i_crit_edge: ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_ymfpci_calc_lpfK.exit.i

if.then3.i269.i:                                  ; preds = %for.inc.5.i281.i, %for.inc.4.i279.i, %for.inc.3.i277.i, %for.inc.2.i275.i, %for.inc.1.i.i.if.then3.i269.i_crit_edge, %for.inc.i.i.if.then3.i269.i_crit_edge, %for.body.preheader.i.i.if.then3.i269.i_crit_edge, %for.body.if.then3.i269.i_crit_edge
  %26 = phi i32 [ 829882368, %for.inc.2.i275.i ], [ 825819136, %for.inc.3.i277.i ], [ 835256320, %for.inc.4.i279.i ], [ %30, %for.inc.5.i281.i ], [ 891813888, %for.body.preheader.i.i.if.then3.i269.i_crit_edge ], [ 883359744, %for.inc.i.i.if.then3.i269.i_crit_edge ], [ 838991872, %for.inc.1.i.i.if.then3.i269.i_crit_edge ], [ 838991872, %for.body.if.then3.i269.i_crit_edge ]
  %retval.0.i.ph295363.i = phi i32 [ %retval.0.i.ph294302367397.i, %for.inc.2.i275.i ], [ %retval.0.i.ph294302367392404.i, %for.inc.3.i277.i ], [ %retval.0.i.ph294302367392400411.i, %for.inc.4.i279.i ], [ %retval.0.i.ph294302367393.i, %for.inc.5.i281.i ], [ %shl6.i.i, %for.body.preheader.i.i.if.then3.i269.i_crit_edge ], [ %shl6.i.i, %for.inc.i.i.if.then3.i269.i_crit_edge ], [ %shl6.i.i, %for.inc.1.i.i.if.then3.i269.i_crit_edge ], [ 44739328, %for.body.if.then3.i269.i_crit_edge ]
  %i.011.lcssa.i267.i = phi i32 [ 3, %for.inc.2.i275.i ], [ 4, %for.inc.3.i277.i ], [ 5, %for.inc.4.i279.i ], [ %spec.select350.i, %for.inc.5.i281.i ], [ 0, %for.body.preheader.i.i.if.then3.i269.i_crit_edge ], [ 1, %for.inc.i.i.if.then3.i269.i_crit_edge ], [ 2, %for.inc.1.i.i.if.then3.i269.i_crit_edge ], [ 2, %for.body.if.then3.i269.i_crit_edge ]
  %arrayidx4.i268.i = getelementptr [8 x i32], ptr @snd_ymfpci_calc_lpfK.val, i32 0, i32 %i.011.lcssa.i267.i
  %27 = ptrtoint ptr %arrayidx4.i268.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx4.i268.i, align 4
  br label %snd_ymfpci_calc_lpfK.exit.i

for.inc.2.i275.i:                                 ; preds = %for.inc.2.i.i.for.inc.2.i275.i_crit_edge, %for.body.for.inc.2.i275.i_crit_edge
  %retval.0.i.ph294302367397.i = phi i32 [ %shl6.i.i, %for.inc.2.i.i.for.inc.2.i275.i_crit_edge ], [ 61656320, %for.body.for.inc.2.i275.i_crit_edge ]
  br label %if.then3.i269.i

for.inc.3.i277.i:                                 ; preds = %for.inc.3.i.i.for.inc.3.i277.i_crit_edge, %for.body.for.inc.3.i277.i_crit_edge
  %retval.0.i.ph294302367392404.i = phi i32 [ %shl6.i.i, %for.inc.3.i.i.for.inc.3.i277.i_crit_edge ], [ 89478400, %for.body.for.inc.3.i277.i_crit_edge ]
  br label %if.then3.i269.i

for.inc.4.i279.i:                                 ; preds = %for.inc.4.i.i.for.inc.4.i279.i_crit_edge, %for.body.for.inc.4.i279.i_crit_edge
  %retval.0.i.ph294302367392400411.i = phi i32 [ %shl6.i.i, %for.inc.4.i.i.for.inc.4.i279.i_crit_edge ], [ 123312640, %for.body.for.inc.4.i279.i_crit_edge ]
  br label %if.then3.i269.i

for.inc.5.i281.i:                                 ; preds = %for.inc.6.i.i.for.inc.5.i281.i_crit_edge, %for.inc.5.i.i.for.inc.5.i281.i_crit_edge, %for.body.for.inc.5.i281.i_crit_edge
  %retval.0.i.ph294302367393.i = phi i32 [ %shl6.i.i, %for.inc.5.i.i.for.inc.5.i281.i_crit_edge ], [ %shl6.i.i, %for.inc.6.i.i.for.inc.5.i281.i_crit_edge ], [ 178957056, %for.body.for.inc.5.i281.i_crit_edge ]
  %i.011.lcssa.i.ph.ph.ph.ph.ph.ph.i = phi i32 [ 6, %for.inc.5.i.i.for.inc.5.i281.i_crit_edge ], [ 7, %for.inc.6.i.i.for.inc.5.i281.i_crit_edge ], [ 6, %for.body.for.inc.5.i281.i_crit_edge ]
  %arrayidx4.i361373378382385388.i = getelementptr [8 x i32], ptr @snd_ymfpci_calc_lpfQ.val, i32 0, i32 %i.011.lcssa.i.ph.ph.ph.ph.ph.ph.i
  %29 = ptrtoint ptr %arrayidx4.i361373378382385388.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx4.i361373378382385388.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32000, i32 %24)
  %cmp2.not.6.i280.i = icmp ugt i32 %24, 32000
  %spec.select350.i = select i1 %cmp2.not.6.i280.i, i32 7, i32 6
  br label %if.then3.i269.i

snd_ymfpci_calc_lpfK.exit.i:                      ; preds = %if.then3.i269.i, %for.inc.6.i.i.snd_ymfpci_calc_lpfK.exit.i_crit_edge, %for.body.snd_ymfpci_calc_lpfK.exit.i_crit_edge
  %retval.0.i263307.i = phi i32 [ %26, %if.then3.i269.i ], [ 923402240, %for.body.snd_ymfpci_calc_lpfK.exit.i_crit_edge ], [ 891813888, %for.inc.6.i.i.snd_ymfpci_calc_lpfK.exit.i_crit_edge ]
  %retval.0.i288306.i = phi i32 [ %retval.0.i.ph295363.i, %if.then3.i269.i ], [ 246625024, %for.body.snd_ymfpci_calc_lpfK.exit.i_crit_edge ], [ %shl6.i.i, %for.inc.6.i.i.snd_ymfpci_calc_lpfK.exit.i_crit_edge ]
  %retval.0.i284.i = phi i32 [ %28, %if.then3.i269.i ], [ 1073741824, %for.body.snd_ymfpci_calc_lpfK.exit.i_crit_edge ], [ 5701632, %for.inc.6.i.i.snd_ymfpci_calc_lpfK.exit.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end27.i, !prof !179

do.end.i:                                         ; preds = %snd_ymfpci_calc_lpfK.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 499, i32 noundef 9, ptr noundef null) #13
  br label %snd_ymfpci_pcm_init_voice.exit

if.end27.i:                                       ; preds = %snd_ymfpci_calc_lpfK.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.i = icmp eq i32 %16, 1
  %31 = trunc i32 %nvoice.032 to i8
  %32 = and i8 %31, 1
  br i1 %cmp6.not, label %if.then37.i, label %if.end27.i.do.body50.i_crit_edge

if.end27.i.do.body50.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body50.i

if.then37.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %5, align 4
  %35 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %substream.i, align 4
  %number.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %number.i, align 4
  %arrayidx38.i = getelementptr %struct.snd_ymfpci, ptr %34, i32 0, i32 51, i32 %38
  %39 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx38.i, align 4
  %conv39.i = zext i16 %40 to i32
  %shl.i = shl nuw nsw i32 %conv39.i, 15
  %41 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #13
  %right.i = getelementptr %struct.snd_ymfpci, ptr %34, i32 0, i32 51, i32 %38, i32 1
  %42 = ptrtoint ptr %right.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %right.i, align 2
  %conv45.i = zext i16 %43 to i32
  %shl46.i = shl nuw nsw i32 %conv45.i, 15
  %44 = tail call i32 @llvm.bswap.i32(i32 %shl46.i) #13
  br label %do.body50.i

do.body50.i:                                      ; preds = %if.then37.i, %if.end27.i.do.body50.i_crit_edge
  %vol_left.0.i = phi i32 [ %41, %if.then37.i ], [ 64, %if.end27.i.do.body50.i_crit_edge ]
  %vol_right.0.i = phi i32 [ %44, %if.then37.i ], [ 64, %if.end27.i.do.body50.i_crit_edge ]
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %5, align 4
  %voice_lock.i = getelementptr inbounds %struct.snd_ymfpci, ptr %46, i32 0, i32 53
  %call56.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_lock.i) #13
  %47 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %48)
  %cmp62.i = icmp eq i32 %48, 2
  %cond.i = select i1 %cmp62.i, i32 65536, i32 0
  %49 = ptrtoint ptr %format64.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %format64.i, align 4
  %call65.i = tail call i32 @snd_pcm_format_width(i32 noundef %50) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call65.i)
  %cmp66.i = icmp eq i32 %call65.i, 8
  br i1 %cmp66.i, label %if.then68.i, label %if.else69.i

if.then68.i:                                      ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #15
  %or.i = or i32 %cond.i, -2147483648
  br label %if.end98.i

if.else69.i:                                      ; preds = %do.body50.i
  %51 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %5, align 4
  %device_id.i = getelementptr inbounds %struct.snd_ymfpci, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %device_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %54)
  %cmp71.i = icmp eq i32 %54, 18
  br i1 %cmp71.i, label %land.lhs.true.i, label %if.else69.i.if.end98.i_crit_edge

if.else69.i.if.end98.i_crit_edge:                 ; preds = %if.else69.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end98.i

land.lhs.true.i:                                  ; preds = %if.else69.i
  %55 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44100, i32 %56)
  %cmp74.i = icmp eq i32 %56, 44100
  br i1 %cmp74.i, label %land.lhs.true76.i, label %land.lhs.true.i.if.end98.i_crit_edge

land.lhs.true.i.if.end98.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end98.i

land.lhs.true76.i:                                ; preds = %land.lhs.true.i
  %57 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %58)
  %cmp78.i = icmp eq i32 %58, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nvoice.032)
  %cmp81.i = icmp eq i32 %nvoice.032, 0
  %or.cond.i = and i1 %cmp81.i, %cmp78.i
  br i1 %or.cond.i, label %land.lhs.true83.i, label %land.lhs.true76.i.if.end98.i_crit_edge

land.lhs.true76.i.if.end98.i_crit_edge:           ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end98.i

land.lhs.true83.i:                                ; preds = %land.lhs.true76.i
  %src441_used.i = getelementptr inbounds %struct.snd_ymfpci, ptr %52, i32 0, i32 28
  %59 = ptrtoint ptr %src441_used.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %src441_used.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %60)
  %cmp85.i = icmp eq i32 %60, -1
  br i1 %cmp85.i, label %land.lhs.true83.i.if.then92.i_crit_edge, label %lor.lhs.false.i

land.lhs.true83.i.if.then92.i_crit_edge:          ; preds = %land.lhs.true83.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then92.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true83.i
  %number89.i = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %22, i32 0, i32 1
  %61 = ptrtoint ptr %number89.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %number89.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp90.i = icmp eq i32 %60, %62
  br i1 %cmp90.i, label %lor.lhs.false.i.if.then92.i_crit_edge, label %lor.lhs.false.i.if.end98.i_crit_edge

lor.lhs.false.i.if.end98.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end98.i

lor.lhs.false.i.if.then92.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then92.i

if.then92.i:                                      ; preds = %lor.lhs.false.i.if.then92.i_crit_edge, %land.lhs.true83.i.if.then92.i_crit_edge
  %number93.i = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %22, i32 0, i32 1
  %63 = ptrtoint ptr %number93.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %number93.i, align 4
  %65 = ptrtoint ptr %src441_used.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %src441_used.i, align 4
  %66 = ptrtoint ptr %use_441_slot.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load.i = load i8, ptr %use_441_slot.i, align 4
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %use_441_slot.i, align 4
  %or96.i = or i32 %cond.i, 268435456
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.then92.i, %lor.lhs.false.i.if.end98.i_crit_edge, %land.lhs.true76.i.if.end98.i_crit_edge, %land.lhs.true.i.if.end98.i_crit_edge, %if.else69.i.if.end98.i_crit_edge, %if.then68.i
  %format.0.i = phi i32 [ %or.i, %if.then68.i ], [ %or96.i, %if.then92.i ], [ %cond.i, %lor.lhs.false.i.if.end98.i_crit_edge ], [ %cond.i, %land.lhs.true76.i.if.end98.i_crit_edge ], [ %cond.i, %land.lhs.true.i.if.end98.i_crit_edge ], [ %cond.i, %if.else69.i.if.end98.i_crit_edge ]
  %67 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %5, align 4
  %src441_used100.i = getelementptr inbounds %struct.snd_ymfpci, ptr %68, i32 0, i32 28
  %69 = ptrtoint ptr %src441_used100.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %src441_used100.i, align 4
  %number101.i = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %22, i32 0, i32 1
  %71 = ptrtoint ptr %number101.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %number101.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp102.i = icmp eq i32 %70, %72
  %and105.i = and i32 %format.0.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105.i)
  %cmp106.i = icmp eq i32 %and105.i, 0
  %or.cond261.i = select i1 %cmp102.i, i1 %cmp106.i, i1 false
  br i1 %or.cond261.i, label %if.then108.i, label %if.end98.i.if.end115.i_crit_edge

if.end98.i.if.end115.i_crit_edge:                 ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end115.i

if.then108.i:                                     ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #15
  %73 = ptrtoint ptr %src441_used100.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -1, ptr %src441_used100.i, align 4
  %74 = ptrtoint ptr %use_441_slot.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load112.i = load i8, ptr %use_441_slot.i, align 4
  %bf.clear113.i = and i8 %bf.load112.i, -65
  store i8 %bf.clear113.i, ptr %use_441_slot.i, align 4
  br label %if.end115.i

if.end115.i:                                      ; preds = %if.then108.i, %if.end98.i.if.end115.i_crit_edge
  %75 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %76)
  %cmp117.i = icmp eq i32 %76, 2
  %and120.i = and i32 %nvoice.032, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120.i)
  %cmp121.not.i = icmp ne i32 %and120.i, 0
  %not.or.cond262.i = and i1 %cmp121.not.i, %cmp117.i
  %or124.i = zext i1 %not.or.cond262.i to i32
  %format.1.i = or i32 %format.0.i, %or124.i
  %77 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %5, align 4
  %voice_lock127.i = getelementptr inbounds %struct.snd_ymfpci, ptr %78, i32 0, i32 53
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_lock127.i, i32 noundef %call56.i) #13
  %bank130.i = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %22, i32 0, i32 3
  %79 = tail call i32 @llvm.bswap.i32(i32 %format.1.i) #13
  %80 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i263307.i) #13
  %81 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i288306.i) #13
  %82 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i284.i) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool140.not357.i = icmp eq i8 %32, 0
  %83 = or i1 %cmp.i, %tobool140.not357.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool143.not358.i = icmp ne i8 %32, 0
  %84 = or i1 %cmp.i, %tobool143.not358.i
  %85 = ptrtoint ptr %bank130.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bank130.i, align 4
  %87 = getelementptr inbounds i8, ptr %86, i32 4
  %88 = call ptr @memset(ptr %87, i32 0, i32 116)
  %89 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %79, ptr %86, align 4
  %90 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %dma_addr.i, align 8
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #13
  %base.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %86, i32 0, i32 2
  %93 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %base.i, align 4
  %94 = ptrtoint ptr %buffer_size4 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %buffer_size4, align 4
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #13
  %loop_end.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %86, i32 0, i32 4
  %97 = ptrtoint ptr %loop_end.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %loop_end.i, align 4
  %lpfQ133.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %86, i32 0, i32 14
  %98 = ptrtoint ptr %lpfQ133.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %80, ptr %lpfQ133.i, align 4
  %delta_end.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %86, i32 0, i32 6
  %99 = ptrtoint ptr %delta_end.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %81, ptr %delta_end.i, align 4
  %delta134.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %86, i32 0, i32 20
  %100 = ptrtoint ptr %delta134.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %81, ptr %delta134.i, align 4
  %lpfK_end.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %86, i32 0, i32 7
  %101 = ptrtoint ptr %lpfK_end.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %82, ptr %lpfK_end.i, align 4
  %lpfK135.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %86, i32 0, i32 21
  %102 = ptrtoint ptr %lpfK135.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %82, ptr %lpfK135.i, align 4
  %eg_gain_end.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %86, i32 0, i32 8
  %103 = ptrtoint ptr %eg_gain_end.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 64, ptr %eg_gain_end.i, align 4
  %eg_gain.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %86, i32 0, i32 22
  %104 = ptrtoint ptr %eg_gain.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 64, ptr %eg_gain.i, align 4
  %105 = ptrtoint ptr %use_441_slot.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %bf.load136.i = load i8, ptr %use_441_slot.i, align 4
  %106 = and i8 %bf.load136.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool138.not.i = icmp eq i8 %106, 0
  br i1 %tobool138.not.i, label %if.end115.i.if.end146.i_crit_edge, label %if.then139.i

if.end115.i.if.end146.i_crit_edge:                ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end146.i

if.then139.i:                                     ; preds = %if.end115.i
  br i1 %83, label %if.then141.i, label %if.then139.i.if.end142.i_crit_edge

if.then139.i.if.end142.i_crit_edge:               ; preds = %if.then139.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end142.i

if.then141.i:                                     ; preds = %if.then139.i
  call void @__sanitizer_cov_trace_pc() #15
  %left_gain_end.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %86, i32 0, i32 9
  %107 = ptrtoint ptr %left_gain_end.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %vol_left.0.i, ptr %left_gain_end.i, align 4
  %left_gain.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %86, i32 0, i32 23
  %108 = ptrtoint ptr %left_gain.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %vol_left.0.i, ptr %left_gain.i, align 4
  br label %if.end142.i

if.end142.i:                                      ; preds = %if.then141.i, %if.then139.i.if.end142.i_crit_edge
  br i1 %84, label %if.then144.i, label %if.end142.i.if.end146.i_crit_edge

if.end142.i.if.end146.i_crit_edge:                ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end146.i

if.then144.i:                                     ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #15
  %right_gain_end.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %86, i32 0, i32 10
  %109 = ptrtoint ptr %right_gain_end.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %vol_right.0.i, ptr %right_gain_end.i, align 4
  %right_gain.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %86, i32 0, i32 24
  %110 = ptrtoint ptr %right_gain.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %vol_right.0.i, ptr %right_gain.i, align 4
  br label %if.end146.i

if.end146.i:                                      ; preds = %if.then144.i, %if.end142.i.if.end146.i_crit_edge, %if.end115.i.if.end146.i_crit_edge
  %111 = ptrtoint ptr %use_441_slot.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %bf.load147.i = load i8, ptr %use_441_slot.i, align 4
  %112 = and i8 %bf.load147.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool151.not.i = icmp eq i8 %112, 0
  br i1 %tobool151.not.i, label %if.end146.i.for.inc.i_crit_edge, label %if.then152.i

if.end146.i.for.inc.i_crit_edge:                  ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then152.i:                                     ; preds = %if.end146.i
  %113 = and i8 %bf.load147.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool157.not.i = icmp eq i8 %113, 0
  br i1 %tobool157.not.i, label %if.then158.i, label %if.else165.i

if.then158.i:                                     ; preds = %if.then152.i
  br i1 %83, label %if.then160.i, label %if.then158.i.if.end161.i_crit_edge

if.then158.i.if.end161.i_crit_edge:               ; preds = %if.then158.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end161.i

if.then160.i:                                     ; preds = %if.then158.i
  call void @__sanitizer_cov_trace_pc() #15
  %eff2_gain_end.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %86, i32 0, i32 12
  %114 = ptrtoint ptr %eff2_gain_end.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %vol_left.0.i, ptr %eff2_gain_end.i, align 4
  %eff2_gain.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %86, i32 0, i32 26
  %115 = ptrtoint ptr %eff2_gain.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %vol_left.0.i, ptr %eff2_gain.i, align 4
  br label %if.end161.i

if.end161.i:                                      ; preds = %if.then160.i, %if.then158.i.if.end161.i_crit_edge
  br i1 %84, label %if.then163.i, label %if.end161.i.for.inc.i_crit_edge

if.end161.i.for.inc.i_crit_edge:                  ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then163.i:                                     ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #15
  %eff3_gain_end.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %86, i32 0, i32 13
  %116 = ptrtoint ptr %eff3_gain_end.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %vol_right.0.i, ptr %eff3_gain_end.i, align 4
  %eff3_gain.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %86, i32 0, i32 27
  br label %for.inc.sink.split.i

if.else165.i:                                     ; preds = %if.then152.i
  br i1 %83, label %if.then167.i, label %if.else165.i.if.end170.i_crit_edge

if.else165.i.if.end170.i_crit_edge:               ; preds = %if.else165.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end170.i

if.then167.i:                                     ; preds = %if.else165.i
  call void @__sanitizer_cov_trace_pc() #15
  %eff3_gain_end168.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %86, i32 0, i32 13
  %117 = ptrtoint ptr %eff3_gain_end168.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %vol_left.0.i, ptr %eff3_gain_end168.i, align 4
  %eff3_gain169.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %86, i32 0, i32 27
  %118 = ptrtoint ptr %eff3_gain169.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %vol_left.0.i, ptr %eff3_gain169.i, align 4
  br label %if.end170.i

if.end170.i:                                      ; preds = %if.then167.i, %if.else165.i.if.end170.i_crit_edge
  br i1 %84, label %if.then172.i, label %if.end170.i.for.inc.i_crit_edge

if.end170.i.for.inc.i_crit_edge:                  ; preds = %if.end170.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then172.i:                                     ; preds = %if.end170.i
  call void @__sanitizer_cov_trace_pc() #15
  %eff2_gain_end173.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %86, i32 0, i32 12
  %119 = ptrtoint ptr %eff2_gain_end173.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %vol_right.0.i, ptr %eff2_gain_end173.i, align 4
  %eff2_gain174.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %86, i32 0, i32 26
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %if.then172.i, %if.then163.i
  %eff2_gain174.sink.i = phi ptr [ %eff2_gain174.i, %if.then172.i ], [ %eff3_gain.i, %if.then163.i ]
  %120 = ptrtoint ptr %eff2_gain174.sink.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %vol_right.0.i, ptr %eff2_gain174.sink.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %if.end170.i.for.inc.i_crit_edge, %if.end161.i.for.inc.i_crit_edge, %if.end146.i.for.inc.i_crit_edge
  %121 = ptrtoint ptr %bank130.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %bank130.i, align 4
  %arrayidx131.1.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %122, i32 1
  %123 = getelementptr %struct.snd_ymfpci_playback_bank, ptr %122, i32 1, i32 1
  %124 = call ptr @memset(ptr %123, i32 0, i32 116)
  %125 = ptrtoint ptr %arrayidx131.1.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %79, ptr %arrayidx131.1.i, align 4
  %126 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %dma_addr.i, align 8
  %128 = tail call i32 @llvm.bswap.i32(i32 %127) #13
  %base.1.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %122, i32 1, i32 2
  %129 = ptrtoint ptr %base.1.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %base.1.i, align 4
  %130 = ptrtoint ptr %buffer_size4 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %buffer_size4, align 4
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #13
  %loop_end.1.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %122, i32 1, i32 4
  %133 = ptrtoint ptr %loop_end.1.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %loop_end.1.i, align 4
  %lpfQ133.1.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %122, i32 1, i32 14
  %134 = ptrtoint ptr %lpfQ133.1.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %80, ptr %lpfQ133.1.i, align 4
  %delta_end.1.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %122, i32 1, i32 6
  %135 = ptrtoint ptr %delta_end.1.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %81, ptr %delta_end.1.i, align 4
  %delta134.1.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %122, i32 1, i32 20
  %136 = ptrtoint ptr %delta134.1.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %81, ptr %delta134.1.i, align 4
  %lpfK_end.1.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %122, i32 1, i32 7
  %137 = ptrtoint ptr %lpfK_end.1.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %82, ptr %lpfK_end.1.i, align 4
  %lpfK135.1.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %122, i32 1, i32 21
  %138 = ptrtoint ptr %lpfK135.1.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %82, ptr %lpfK135.1.i, align 4
  %eg_gain_end.1.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %122, i32 1, i32 8
  %139 = ptrtoint ptr %eg_gain_end.1.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 64, ptr %eg_gain_end.1.i, align 4
  %eg_gain.1.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %122, i32 1, i32 22
  %140 = ptrtoint ptr %eg_gain.1.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 64, ptr %eg_gain.1.i, align 4
  %141 = ptrtoint ptr %use_441_slot.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %bf.load136.1.i = load i8, ptr %use_441_slot.i, align 4
  %142 = and i8 %bf.load136.1.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool138.not.1.i = icmp eq i8 %142, 0
  br i1 %tobool138.not.1.i, label %for.inc.i.if.end146.1.i_crit_edge, label %if.then139.1.i

for.inc.i.if.end146.1.i_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end146.1.i

if.then139.1.i:                                   ; preds = %for.inc.i
  br i1 %83, label %if.then141.1.i, label %if.then139.1.i.if.end142.1.i_crit_edge

if.then139.1.i.if.end142.1.i_crit_edge:           ; preds = %if.then139.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end142.1.i

if.then141.1.i:                                   ; preds = %if.then139.1.i
  call void @__sanitizer_cov_trace_pc() #15
  %left_gain_end.1.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %122, i32 1, i32 9
  %143 = ptrtoint ptr %left_gain_end.1.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %vol_left.0.i, ptr %left_gain_end.1.i, align 4
  %left_gain.1.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %122, i32 1, i32 23
  %144 = ptrtoint ptr %left_gain.1.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %vol_left.0.i, ptr %left_gain.1.i, align 4
  br label %if.end142.1.i

if.end142.1.i:                                    ; preds = %if.then141.1.i, %if.then139.1.i.if.end142.1.i_crit_edge
  br i1 %84, label %if.then144.1.i, label %if.end142.1.i.if.end146.1.i_crit_edge

if.end142.1.i.if.end146.1.i_crit_edge:            ; preds = %if.end142.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end146.1.i

if.then144.1.i:                                   ; preds = %if.end142.1.i
  call void @__sanitizer_cov_trace_pc() #15
  %right_gain_end.1.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %122, i32 1, i32 10
  %145 = ptrtoint ptr %right_gain_end.1.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %vol_right.0.i, ptr %right_gain_end.1.i, align 4
  %right_gain.1.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %122, i32 1, i32 24
  %146 = ptrtoint ptr %right_gain.1.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %vol_right.0.i, ptr %right_gain.1.i, align 4
  br label %if.end146.1.i

if.end146.1.i:                                    ; preds = %if.then144.1.i, %if.end142.1.i.if.end146.1.i_crit_edge, %for.inc.i.if.end146.1.i_crit_edge
  %147 = ptrtoint ptr %use_441_slot.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %bf.load147.1.i = load i8, ptr %use_441_slot.i, align 4
  %148 = and i8 %bf.load147.1.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool151.not.1.i = icmp eq i8 %148, 0
  br i1 %tobool151.not.1.i, label %if.end146.1.i.snd_ymfpci_pcm_init_voice.exit_crit_edge, label %if.then152.1.i

if.end146.1.i.snd_ymfpci_pcm_init_voice.exit_crit_edge: ; preds = %if.end146.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_ymfpci_pcm_init_voice.exit

if.then152.1.i:                                   ; preds = %if.end146.1.i
  %149 = and i8 %bf.load147.1.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool157.not.1.i = icmp eq i8 %149, 0
  br i1 %tobool157.not.1.i, label %if.then158.1.i, label %if.else165.1.i

if.else165.1.i:                                   ; preds = %if.then152.1.i
  br i1 %83, label %if.then167.1.i, label %if.else165.1.i.if.end170.1.i_crit_edge

if.else165.1.i.if.end170.1.i_crit_edge:           ; preds = %if.else165.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end170.1.i

if.then167.1.i:                                   ; preds = %if.else165.1.i
  call void @__sanitizer_cov_trace_pc() #15
  %eff3_gain_end168.1.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %122, i32 1, i32 13
  %150 = ptrtoint ptr %eff3_gain_end168.1.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %vol_left.0.i, ptr %eff3_gain_end168.1.i, align 4
  %eff3_gain169.1.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %122, i32 1, i32 27
  %151 = ptrtoint ptr %eff3_gain169.1.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %vol_left.0.i, ptr %eff3_gain169.1.i, align 4
  br label %if.end170.1.i

if.end170.1.i:                                    ; preds = %if.then167.1.i, %if.else165.1.i.if.end170.1.i_crit_edge
  br i1 %84, label %if.then172.1.i, label %if.end170.1.i.snd_ymfpci_pcm_init_voice.exit_crit_edge

if.end170.1.i.snd_ymfpci_pcm_init_voice.exit_crit_edge: ; preds = %if.end170.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_ymfpci_pcm_init_voice.exit

if.then172.1.i:                                   ; preds = %if.end170.1.i
  call void @__sanitizer_cov_trace_pc() #15
  %eff2_gain_end173.1.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %122, i32 1, i32 12
  %152 = ptrtoint ptr %eff2_gain_end173.1.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %vol_right.0.i, ptr %eff2_gain_end173.1.i, align 4
  %eff2_gain174.1.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %122, i32 1, i32 26
  %153 = ptrtoint ptr %eff2_gain174.1.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %vol_right.0.i, ptr %eff2_gain174.1.i, align 4
  br label %snd_ymfpci_pcm_init_voice.exit

if.then158.1.i:                                   ; preds = %if.then152.1.i
  br i1 %83, label %if.then160.1.i, label %if.then158.1.i.if.end161.1.i_crit_edge

if.then158.1.i.if.end161.1.i_crit_edge:           ; preds = %if.then158.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end161.1.i

if.then160.1.i:                                   ; preds = %if.then158.1.i
  call void @__sanitizer_cov_trace_pc() #15
  %eff2_gain_end.1.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %122, i32 1, i32 12
  %154 = ptrtoint ptr %eff2_gain_end.1.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %vol_left.0.i, ptr %eff2_gain_end.1.i, align 4
  %eff2_gain.1.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %122, i32 1, i32 26
  %155 = ptrtoint ptr %eff2_gain.1.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %vol_left.0.i, ptr %eff2_gain.1.i, align 4
  br label %if.end161.1.i

if.end161.1.i:                                    ; preds = %if.then160.1.i, %if.then158.1.i.if.end161.1.i_crit_edge
  br i1 %84, label %if.then163.1.i, label %if.end161.1.i.snd_ymfpci_pcm_init_voice.exit_crit_edge

if.end161.1.i.snd_ymfpci_pcm_init_voice.exit_crit_edge: ; preds = %if.end161.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_ymfpci_pcm_init_voice.exit

if.then163.1.i:                                   ; preds = %if.end161.1.i
  call void @__sanitizer_cov_trace_pc() #15
  %eff3_gain_end.1.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %122, i32 1, i32 13
  %156 = ptrtoint ptr %eff3_gain_end.1.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %vol_right.0.i, ptr %eff3_gain_end.1.i, align 4
  %eff3_gain.1.i = getelementptr %struct.snd_ymfpci_playback_bank, ptr %122, i32 1, i32 27
  %157 = ptrtoint ptr %eff3_gain.1.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %vol_right.0.i, ptr %eff3_gain.1.i, align 4
  br label %snd_ymfpci_pcm_init_voice.exit

snd_ymfpci_pcm_init_voice.exit:                   ; preds = %if.then163.1.i, %if.end161.1.i.snd_ymfpci_pcm_init_voice.exit_crit_edge, %if.then172.1.i, %if.end170.1.i.snd_ymfpci_pcm_init_voice.exit_crit_edge, %if.end146.1.i.snd_ymfpci_pcm_init_voice.exit_crit_edge, %do.end.i
  %inc = add nuw i32 %nvoice.032, 1
  %158 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %channels, align 8
  %cmp = icmp ult i32 %inc, %159
  br i1 %cmp, label %snd_ymfpci_pcm_init_voice.exit.for.body_crit_edge, label %snd_ymfpci_pcm_init_voice.exit.for.end_crit_edge

snd_ymfpci_pcm_init_voice.exit.for.end_crit_edge: ; preds = %snd_ymfpci_pcm_init_voice.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

snd_ymfpci_pcm_init_voice.exit.for.body_crit_edge: ; preds = %snd_ymfpci_pcm_init_voice.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %snd_ymfpci_pcm_init_voice.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %160 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %substream, align 4
  %pcm8 = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 36
  %162 = ptrtoint ptr %pcm8 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %pcm8, align 4
  %cmp9 = icmp eq ptr %161, %163
  br i1 %cmp9, label %land.lhs.true, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %for.end
  %use_441_slot = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %5, i32 0, i32 4
  %164 = ptrtoint ptr %use_441_slot to i32
  call void @__asan_load1_noabort(i32 %164)
  %bf.load = load i8, ptr %use_441_slot, align 4
  %165 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool.not = icmp eq i8 %165, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %166 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %number, align 4
  %ctl = getelementptr %struct.snd_ymfpci, ptr %1, i32 0, i32 51, i32 %167, i32 2
  %168 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ctl, align 4
  %access = getelementptr inbounds %struct.snd_kcontrol, ptr %169, i32 1, i32 0, i32 1
  %170 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %access, align 4
  %and = and i32 %171, -257
  store i32 %and, ptr %access, align 4
  %card = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 35
  %172 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %card, align 4
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %169, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %173, i32 noundef 2, ptr noundef %id) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %for.end.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_playback_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  %reg_lock = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 52
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #13
  %voices = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %voices to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %voices, align 4
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %entry.__unlock.thread_crit_edge, label %if.end

entry.__unlock.thread_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %__unlock.thread

if.end:                                           ; preds = %entry
  %8 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %cmd, label %if.end.__unlock.thread_crit_edge [
    i32 1, label %if.end.sw.bb_crit_edge
    i32 4, label %if.end.sw.bb_crit_edge102
    i32 6, label %if.end.sw.bb_crit_edge103
    i32 0, label %sw.bb23
    i32 3, label %if.end.sw.bb38_crit_edge
    i32 5, label %if.end.sw.bb38_crit_edge104
  ]

if.end.sw.bb38_crit_edge104:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb38

if.end.sw.bb38_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb38

if.end.sw.bb_crit_edge103:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.sw.bb_crit_edge102:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.__unlock.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %__unlock.thread

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge102, %if.end.sw.bb_crit_edge103
  %bank_addr = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %7, i32 0, i32 4
  %9 = ptrtoint ptr %bank_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bank_addr, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %ctrl_playback = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 21
  %12 = ptrtoint ptr %ctrl_playback to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl_playback, align 4
  %number = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %number, align 4
  %add = add i32 %15, 1
  %arrayidx6 = getelementptr i32, ptr %13, i32 %add
  %16 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %11, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr %struct.snd_ymfpci_pcm, ptr %5, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx8, align 4
  %cmp9.not = icmp eq ptr %18, null
  br i1 %cmp9.not, label %sw.bb.if.end20_crit_edge, label %land.lhs.true

sw.bb.if.end20_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

land.lhs.true:                                    ; preds = %sw.bb
  %use_441_slot = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %5, i32 0, i32 4
  %19 = ptrtoint ptr %use_441_slot to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %use_441_slot, align 4
  %20 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not = icmp eq i8 %20, 0
  br i1 %tobool.not, label %if.then10, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %bank_addr13 = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %18, i32 0, i32 4
  %21 = ptrtoint ptr %bank_addr13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bank_addr13, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = ptrtoint ptr %ctrl_playback to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctrl_playback, align 4
  %number17 = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %18, i32 0, i32 1
  %26 = ptrtoint ptr %number17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %number17, align 4
  %add18 = add i32 %27, 1
  %arrayidx19 = getelementptr i32, ptr %25, i32 %add18
  %28 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %23, ptr %arrayidx19, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then10, %land.lhs.true.if.end20_crit_edge, %sw.bb.if.end20_crit_edge
  %running = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %5, i32 0, i32 4
  %29 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load21 = load i8, ptr %running, align 4
  %bf.set = or i8 %bf.load21, -128
  store i8 %bf.set, ptr %running, align 4
  br label %__unlock.thread

sw.bb23:                                          ; preds = %if.end
  %30 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %substream, align 4
  %pcm24 = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 36
  %32 = ptrtoint ptr %pcm24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pcm24, align 4
  %cmp25 = icmp eq ptr %31, %33
  br i1 %cmp25, label %land.lhs.true26, label %sw.bb23.sw.bb38_crit_edge

sw.bb23.sw.bb38_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb38

land.lhs.true26:                                  ; preds = %sw.bb23
  %use_441_slot27 = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %5, i32 0, i32 4
  %34 = ptrtoint ptr %use_441_slot27 to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load28 = load i8, ptr %use_441_slot27, align 4
  %35 = and i8 %bf.load28, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool32.not = icmp eq i8 %35, 0
  br i1 %tobool32.not, label %if.then33, label %land.lhs.true26.sw.bb38_crit_edge

land.lhs.true26.sw.bb38_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb38

if.then33:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #15
  %number34 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %36 = ptrtoint ptr %number34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %number34, align 4
  %ctl = getelementptr %struct.snd_ymfpci, ptr %1, i32 0, i32 51, i32 %37, i32 2
  %38 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctl, align 4
  %access = getelementptr inbounds %struct.snd_kcontrol, ptr %39, i32 1, i32 0, i32 1
  %40 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %access, align 4
  %or = or i32 %41, 256
  store i32 %or, ptr %access, align 4
  br label %sw.bb38

sw.bb38:                                          ; preds = %if.then33, %land.lhs.true26.sw.bb38_crit_edge, %sw.bb23.sw.bb38_crit_edge, %if.end.sw.bb38_crit_edge, %if.end.sw.bb38_crit_edge104
  %kctl.0 = phi ptr [ null, %if.end.sw.bb38_crit_edge ], [ null, %if.end.sw.bb38_crit_edge104 ], [ null, %land.lhs.true26.sw.bb38_crit_edge ], [ %39, %if.then33 ], [ null, %sw.bb23.sw.bb38_crit_edge ]
  %ctrl_playback39 = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 21
  %42 = ptrtoint ptr %ctrl_playback39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ctrl_playback39, align 4
  %44 = ptrtoint ptr %voices to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %voices, align 4
  %number42 = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %number42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %number42, align 4
  %add43 = add i32 %47, 1
  %arrayidx44 = getelementptr i32, ptr %43, i32 %add43
  %48 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %arrayidx44, align 4
  %arrayidx46 = getelementptr %struct.snd_ymfpci_pcm, ptr %5, i32 0, i32 3, i32 1
  %49 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx46, align 4
  %cmp47.not = icmp eq ptr %50, null
  br i1 %cmp47.not, label %sw.bb38.__unlock_crit_edge, label %land.lhs.true48

sw.bb38.__unlock_crit_edge:                       ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #15
  br label %__unlock

land.lhs.true48:                                  ; preds = %sw.bb38
  %use_441_slot49 = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %5, i32 0, i32 4
  %51 = ptrtoint ptr %use_441_slot49 to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load50 = load i8, ptr %use_441_slot49, align 4
  %52 = and i8 %bf.load50, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool54.not = icmp eq i8 %52, 0
  br i1 %tobool54.not, label %if.then55, label %land.lhs.true48.__unlock_crit_edge

land.lhs.true48.__unlock_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #15
  br label %__unlock

if.then55:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %ctrl_playback39 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ctrl_playback39, align 4
  %number59 = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %50, i32 0, i32 1
  %55 = ptrtoint ptr %number59 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %number59, align 4
  %add60 = add i32 %56, 1
  %arrayidx61 = getelementptr i32, ptr %54, i32 %add60
  %57 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %arrayidx61, align 4
  br label %__unlock

__unlock.thread:                                  ; preds = %if.end20, %if.end.__unlock.thread_crit_edge, %entry.__unlock.thread_crit_edge
  %result.0.ph = phi i32 [ -22, %if.end.__unlock.thread_crit_edge ], [ -22, %entry.__unlock.thread_crit_edge ], [ 0, %if.end20 ]
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #13
  br label %if.end70

__unlock:                                         ; preds = %if.then55, %land.lhs.true48.__unlock_crit_edge, %sw.bb38.__unlock_crit_edge
  %running63 = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %5, i32 0, i32 4
  %58 = ptrtoint ptr %running63 to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load64 = load i8, ptr %running63, align 4
  %bf.clear65 = and i8 %bf.load64, 127
  store i8 %bf.clear65, ptr %running63, align 4
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #13
  %tobool68.not = icmp eq ptr %kctl.0, null
  br i1 %tobool68.not, label %__unlock.if.end70_crit_edge, label %if.then69

__unlock.if.end70_crit_edge:                      ; preds = %__unlock
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70

if.then69:                                        ; preds = %__unlock
  call void @__sanitizer_cov_trace_pc() #15
  %card = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 35
  %59 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %card, align 4
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl.0, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %60, i32 noundef 2, ptr noundef %id) #13
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %__unlock.if.end70_crit_edge, %__unlock.thread
  %result.0101 = phi i32 [ %result.0.ph, %__unlock.thread ], [ 0, %if.then69 ], [ 0, %__unlock.if.end70_crit_edge ]
  ret i32 %result.0101
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_ymfpci_playback_pointer(ptr nocapture noundef readonly %substream) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data2, align 8
  %voices = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %voices to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %voices, align 4
  %running = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %tobool3.not = icmp eq ptr %5, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %7 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private_data, align 4
  %bank = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bank, align 4
  %active_bank = getelementptr inbounds %struct.snd_ymfpci, ptr %8, i32 0, i32 26
  %11 = ptrtoint ptr %active_bank to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %active_bank, align 4
  %start = getelementptr %struct.snd_ymfpci_playback_bank, ptr %10, i32 %12, i32 18
  %13 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %start, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_rule_noresample(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ymfpci_pcm_free_substream(ptr nocapture noundef readonly %runtime) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 44
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  tail call void @kfree(ptr noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ymfpci_pcm_interrupt(ptr noundef %chip, ptr nocapture noundef readonly %voice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ypcm1 = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %voice, i32 0, i32 6
  %0 = ptrtoint ptr %ypcm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ypcm1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %substream = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substream, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %reg_lock = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 52
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #13
  %running = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool4.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool4.not, label %if.end3.if.end62_crit_edge, label %if.then5

if.end3.if.end62_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.then5:                                         ; preds = %if.end3
  %bank = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %voice, i32 0, i32 3
  %5 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bank, align 4
  %active_bank = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 26
  %7 = ptrtoint ptr %active_bank to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %active_bank, align 4
  %start = getelementptr %struct.snd_ymfpci_playback_bank, ptr %6, i32 %8, i32 18
  %9 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %start, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %last_pos = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %last_pos to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %last_pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp6 = icmp ult i32 %11, %13
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %buffer_size = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buffer_size, align 4
  %sub = sub i32 %11, %13
  %add = add i32 %sub, %15
  br label %if.end11

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %sub10 = sub i32 %11, %13
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then7
  %delta.0 = phi i32 [ %add, %if.then7 ], [ %sub10, %if.else ]
  %period_pos = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %period_pos to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %period_pos, align 4
  %add12 = add i32 %17, %delta.0
  store i32 %add12, ptr %period_pos, align 4
  %18 = ptrtoint ptr %last_pos to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %11, ptr %last_pos, align 4
  %period_size = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %period_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add12, i32 %20)
  %cmp15.not = icmp ult i32 %add12, %20
  br i1 %cmp15.not, label %if.end11.if.end22_crit_edge, label %if.then16

if.end11.if.end22_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %rem = urem i32 %add12, %20
  %21 = ptrtoint ptr %period_pos to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %rem, ptr %period_pos, align 4
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #13
  %22 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %23) #13
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #13
  br label %if.end22

if.end22:                                         ; preds = %if.then16, %if.end11.if.end22_crit_edge
  %update_pcm_vol = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %update_pcm_vol to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %update_pcm_vol, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool23.not = icmp eq i32 %25, 0
  br i1 %tobool23.not, label %if.end22.if.end62_crit_edge, label %if.then26, !prof !188

if.end22.if.end62_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.then26:                                        ; preds = %if.end22
  %26 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %substream, align 4
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %number, align 4
  %30 = ptrtoint ptr %active_bank to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %active_bank, align 4
  %sub29 = sub i32 1, %31
  %32 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bank, align 4
  %arrayidx33 = getelementptr %struct.snd_ymfpci, ptr %chip, i32 0, i32 51, i32 %29
  %34 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx33, align 4
  %conv = zext i16 %35 to i32
  %shl = shl nuw nsw i32 %conv, 15
  %36 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %left_gain_end = getelementptr %struct.snd_ymfpci_playback_bank, ptr %33, i32 %sub29, i32 9
  %37 = ptrtoint ptr %left_gain_end to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %left_gain_end, align 4
  %38 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load34 = load i8, ptr %running, align 4
  %39 = and i8 %bf.load34, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool37.not = icmp eq i8 %39, 0
  br i1 %tobool37.not, label %if.then26.if.end39_crit_edge, label %if.then38

if.then26.if.end39_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then38:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  %eff2_gain_end = getelementptr %struct.snd_ymfpci_playback_bank, ptr %33, i32 %sub29, i32 12
  %40 = ptrtoint ptr %eff2_gain_end to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %36, ptr %eff2_gain_end, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.then26.if.end39_crit_edge
  %arrayidx40 = getelementptr %struct.snd_ymfpci_pcm, ptr %1, i32 0, i32 3, i32 1
  %41 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx40, align 4
  %tobool41.not = icmp eq ptr %42, null
  br i1 %tobool41.not, label %if.end39.if.end47_crit_edge, label %if.then42

if.end39.if.end47_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  %bank45 = getelementptr inbounds %struct.snd_ymfpci_voice, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %bank45 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bank45, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %if.end39.if.end47_crit_edge
  %.pn = phi ptr [ %44, %if.then42 ], [ %33, %if.end39.if.end47_crit_edge ]
  %right = getelementptr %struct.snd_ymfpci, ptr %chip, i32 0, i32 51, i32 %29, i32 1
  %45 = ptrtoint ptr %right to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %right, align 2
  %conv50 = zext i16 %46 to i32
  %shl51 = shl nuw nsw i32 %conv50, 15
  %47 = tail call i32 @llvm.bswap.i32(i32 %shl51)
  %right_gain_end = getelementptr %struct.snd_ymfpci_playback_bank, ptr %.pn, i32 %sub29, i32 10
  %48 = ptrtoint ptr %right_gain_end to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %right_gain_end, align 4
  %49 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load53 = load i8, ptr %running, align 4
  %50 = and i8 %bf.load53, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool57.not = icmp eq i8 %50, 0
  br i1 %tobool57.not, label %if.end47.if.end59_crit_edge, label %if.then58

if.end47.if.end59_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59

if.then58:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  %eff3_gain_end = getelementptr %struct.snd_ymfpci_playback_bank, ptr %.pn, i32 %sub29, i32 13
  %51 = ptrtoint ptr %eff3_gain_end to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %47, ptr %eff3_gain_end, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end47.if.end59_crit_edge
  %52 = ptrtoint ptr %update_pcm_vol to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %update_pcm_vol, align 4
  %dec = add i32 %53, -1
  store i32 %dec, ptr %update_pcm_vol, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.end59, %if.end22.if.end62_crit_edge, %if.end3.if.end62_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_ymfpci_hw_stop(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_lock = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 52
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #13
  %start_count = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 25
  %0 = ptrtoint ptr %start_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start_count, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %start_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp5 = icmp sgt i32 %dec, 0
  br i1 %cmp5, label %entry.__end_crit_edge, label %if.end

entry.__end_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %__end

if.end:                                           ; preds = %entry
  %reg_area_virt.i = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 4
  %2 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 264
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %5 = and i32 %4, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %6 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %7, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %5) #13, !srcloc !183
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end
  %timeout.0 = phi i32 [ 1000, %if.end ], [ %dec8, %while.body.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0)
  %cmp9.not = icmp eq i32 %timeout.0, 0
  br i1 %cmp9.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %while.cond
  %dec8 = add nsw i32 %timeout.0, -1
  %8 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i34 = getelementptr i8, ptr %9, i32 256
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #13, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %11 = and i32 %10, 33554432
  %cmp13 = icmp eq i32 %11, 0
  br i1 %cmp13, label %while.body.while.end_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %interrupt_sleep_count = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 55
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %interrupt_sleep_count, i32 noundef 4) #13
  %12 = ptrtoint ptr %interrupt_sleep_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %interrupt_sleep_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %while.end.__end_crit_edge, label %if.then18

while.end.__end_crit_edge:                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %__end

if.then18:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i30 = tail call zeroext i1 @__kasan_check_write(ptr noundef %interrupt_sleep_count, i32 noundef 4) #13
  %14 = ptrtoint ptr %interrupt_sleep_count to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 0, ptr %interrupt_sleep_count, align 4
  %interrupt_sleep = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 54
  tail call void @__wake_up(ptr noundef %interrupt_sleep, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %__end

__end:                                            ; preds = %if.then18, %while.end.__end_crit_edge, %entry.__end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_ymfpci_irq_wait(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #13
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %reg_area_virt.i = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 4
  %interrupt_sleep = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 54
  %interrupt_sleep_count = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 55
  %2 = call ptr @memset(ptr %wait, i32 255, i32 20)
  %3 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 264
  %5 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !186
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %6 = and i32 %5, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %entry.while.cond.backedge_crit_edge, label %if.end

entry.while.cond.backedge_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %7 = call i32 @llvm.read_register.i32(metadata !168) #13
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %11 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %wait, align 4
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %0, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @default_wake_function, ptr %1, align 4
  call void @add_wait_queue(ptr noundef %interrupt_sleep, ptr noundef nonnull %wait) #13
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %interrupt_sleep_count, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %interrupt_sleep_count, i32 1, i32 3, i32 1) #13
  %14 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %interrupt_sleep_count, ptr %interrupt_sleep_count, i32 1, ptr elementtype(i32) %interrupt_sleep_count) #13, !srcloc !189
  %call4 = call i32 @schedule_timeout_uninterruptible(i32 noundef 5) #13
  call void @remove_wait_queue(ptr noundef %interrupt_sleep, ptr noundef nonnull %wait) #13
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end, %entry.while.cond.backedge_crit_edge
  %15 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %16, i32 264
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #13, !srcloc !186
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %18 = and i32 %17, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp1.1 = icmp eq i32 %18, 0
  br i1 %cmp1.1, label %while.cond.backedge.while.cond.backedge.1_crit_edge, label %if.end.1

while.cond.backedge.while.cond.backedge.1_crit_edge: ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge.1

if.end.1:                                         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #15
  %19 = call i32 @llvm.read_register.i32(metadata !168) #13
  %and.i.1 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.1 to ptr
  %task.1 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.1, align 8
  %23 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %wait, align 4
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %0, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @default_wake_function, ptr %1, align 4
  call void @add_wait_queue(ptr noundef %interrupt_sleep, ptr noundef nonnull %wait) #13
  %call.i.i.1 = call zeroext i1 @__kasan_check_write(ptr noundef %interrupt_sleep_count, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %interrupt_sleep_count, i32 1, i32 3, i32 1) #13
  %26 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %interrupt_sleep_count, ptr %interrupt_sleep_count, i32 1, ptr elementtype(i32) %interrupt_sleep_count) #13, !srcloc !189
  %call4.1 = call i32 @schedule_timeout_uninterruptible(i32 noundef 5) #13
  call void @remove_wait_queue(ptr noundef %interrupt_sleep, ptr noundef nonnull %wait) #13
  br label %while.cond.backedge.1

while.cond.backedge.1:                            ; preds = %if.end.1, %while.cond.backedge.while.cond.backedge.1_crit_edge
  %27 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %28, i32 264
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2) #13, !srcloc !186
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %30 = and i32 %29, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp1.2 = icmp eq i32 %30, 0
  br i1 %cmp1.2, label %while.cond.backedge.1.while.cond.backedge.2_crit_edge, label %if.end.2

while.cond.backedge.1.while.cond.backedge.2_crit_edge: ; preds = %while.cond.backedge.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge.2

if.end.2:                                         ; preds = %while.cond.backedge.1
  call void @__sanitizer_cov_trace_pc() #15
  %31 = call i32 @llvm.read_register.i32(metadata !168) #13
  %and.i.2 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.2 to ptr
  %task.2 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task.2, align 8
  %35 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %wait, align 4
  %36 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %34, ptr %0, align 4
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @default_wake_function, ptr %1, align 4
  call void @add_wait_queue(ptr noundef %interrupt_sleep, ptr noundef nonnull %wait) #13
  %call.i.i.2 = call zeroext i1 @__kasan_check_write(ptr noundef %interrupt_sleep_count, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %interrupt_sleep_count, i32 1, i32 3, i32 1) #13
  %38 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %interrupt_sleep_count, ptr %interrupt_sleep_count, i32 1, ptr elementtype(i32) %interrupt_sleep_count) #13, !srcloc !189
  %call4.2 = call i32 @schedule_timeout_uninterruptible(i32 noundef 5) #13
  call void @remove_wait_queue(ptr noundef %interrupt_sleep, ptr noundef nonnull %wait) #13
  br label %while.cond.backedge.2

while.cond.backedge.2:                            ; preds = %if.end.2, %while.cond.backedge.1.while.cond.backedge.2_crit_edge
  %39 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %40, i32 264
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3) #13, !srcloc !186
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %42 = and i32 %41, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp1.3 = icmp eq i32 %42, 0
  br i1 %cmp1.3, label %while.cond.backedge.2.while.cond.backedge.3_crit_edge, label %if.end.3

while.cond.backedge.2.while.cond.backedge.3_crit_edge: ; preds = %while.cond.backedge.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge.3

if.end.3:                                         ; preds = %while.cond.backedge.2
  call void @__sanitizer_cov_trace_pc() #15
  %43 = call i32 @llvm.read_register.i32(metadata !168) #13
  %and.i.3 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.3 to ptr
  %task.3 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task.3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task.3, align 8
  %47 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %wait, align 4
  %48 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %46, ptr %0, align 4
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @default_wake_function, ptr %1, align 4
  call void @add_wait_queue(ptr noundef %interrupt_sleep, ptr noundef nonnull %wait) #13
  %call.i.i.3 = call zeroext i1 @__kasan_check_write(ptr noundef %interrupt_sleep_count, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %interrupt_sleep_count, i32 1, i32 3, i32 1) #13
  %50 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %interrupt_sleep_count, ptr %interrupt_sleep_count, i32 1, ptr elementtype(i32) %interrupt_sleep_count) #13, !srcloc !189
  %call4.3 = call i32 @schedule_timeout_uninterruptible(i32 noundef 5) #13
  call void @remove_wait_queue(ptr noundef %interrupt_sleep, ptr noundef nonnull %wait) #13
  br label %while.cond.backedge.3

while.cond.backedge.3:                            ; preds = %if.end.3, %while.cond.backedge.2.while.cond.backedge.3_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_capture_rec_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @snd_ymfpci_capture_open(ptr noundef %substream, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_capture_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data2, align 8
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %capture_bank_number = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %capture_bank_number to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %capture_bank_number, align 4
  %arrayidx = getelementptr %struct.snd_ymfpci, ptr %5, i32 0, i32 40, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx, align 4
  tail call fastcc void @snd_ymfpci_hw_stop(ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_capture_hw_free(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call fastcc void @snd_ymfpci_irq_wait(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_capture_prepare(ptr nocapture noundef readonly %substream) #0 align 64 {
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
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2, align 8
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %period_size, align 4
  %period_size3 = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %period_size3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %period_size3, align 4
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %9 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buffer_size, align 4
  %buffer_size4 = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %5, i32 0, i32 7
  %11 = ptrtoint ptr %buffer_size4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %buffer_size4, align 4
  %period_pos = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %5, i32 0, i32 8
  %12 = ptrtoint ptr %period_pos to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %period_pos, align 4
  %last_pos = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %5, i32 0, i32 9
  %13 = ptrtoint ptr %last_pos to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %last_pos, align 4
  %shift = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %5, i32 0, i32 11
  %14 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %shift, align 4
  %rate5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %15 = ptrtoint ptr %rate5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rate5, align 4
  %div = udiv i32 196608000, %16
  %sub = add nsw i32 %div, -1
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %17 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp = icmp eq i32 %18, 2
  %spec.store.select = zext i1 %cmp to i32
  %19 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.store.select, ptr %shift, align 4
  %spec.select = select i1 %cmp, i32 2, i32 0
  %format7 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %20 = ptrtoint ptr %format7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %format7, align 4
  %call = tail call i32 @snd_pcm_format_width(i32 noundef %21) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call)
  %cmp8 = icmp eq i32 %call, 8
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %or10 = or i32 %spec.select, 1
  br label %if.end13

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %shift, align 4
  %inc12 = add i32 %23, 1
  store i32 %inc12, ptr %shift, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then9
  %format.1 = phi i32 [ %or10, %if.then9 ], [ %spec.select, %if.else ]
  %capture_bank_number = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %5, i32 0, i32 10
  %24 = ptrtoint ptr %capture_bank_number to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %capture_bank_number, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %25, label %if.end13.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
  ]

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %27 = tail call i32 @llvm.bswap.i32(i32 %format.1) #13
  %reg_area_virt.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %27) #13, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %30 = tail call i32 @llvm.bswap.i32(i32 %sub) #13
  %31 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %32, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %30) #13, !srcloc !183
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %33 = tail call i32 @llvm.bswap.i32(i32 %format.1) #13
  %reg_area_virt.i53 = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 4
  %34 = ptrtoint ptr %reg_area_virt.i53 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_area_virt.i53, align 4
  %add.ptr.i54 = getelementptr i8, ptr %35, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 %33) #13, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %36 = tail call i32 @llvm.bswap.i32(i32 %sub) #13
  %37 = ptrtoint ptr %reg_area_virt.i53 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_area_virt.i53, align 4
  %add.ptr.i56 = getelementptr i8, ptr %38, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %36) #13, !srcloc !183
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb, %if.end13.sw.epilog_crit_edge
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %39 = ptrtoint ptr %capture_bank_number to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %capture_bank_number, align 4
  %arrayidx17 = getelementptr %struct.snd_ymfpci, ptr %1, i32 0, i32 23, i32 %40, i32 0
  %41 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx17, align 4
  %43 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dma_addr, align 8
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %42, align 4
  %47 = ptrtoint ptr %buffer_size4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %buffer_size4, align 4
  %49 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %shift, align 4
  %shl = shl i32 %48, %50
  %51 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %loop_end = getelementptr inbounds %struct.snd_ymfpci_capture_bank, ptr %42, i32 0, i32 1
  %52 = ptrtoint ptr %loop_end to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %loop_end, align 4
  %start = getelementptr inbounds %struct.snd_ymfpci_capture_bank, ptr %42, i32 0, i32 2
  %53 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %start, align 4
  %num_of_loops = getelementptr inbounds %struct.snd_ymfpci_capture_bank, ptr %42, i32 0, i32 3
  %54 = ptrtoint ptr %num_of_loops to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %num_of_loops, align 4
  %55 = ptrtoint ptr %capture_bank_number to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %capture_bank_number, align 4
  %arrayidx17.1 = getelementptr %struct.snd_ymfpci, ptr %1, i32 0, i32 23, i32 %56, i32 1
  %57 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx17.1, align 4
  %59 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dma_addr, align 8
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %58, align 4
  %63 = ptrtoint ptr %buffer_size4 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %buffer_size4, align 4
  %65 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %shift, align 4
  %shl.1 = shl i32 %64, %66
  %67 = tail call i32 @llvm.bswap.i32(i32 %shl.1)
  %loop_end.1 = getelementptr inbounds %struct.snd_ymfpci_capture_bank, ptr %58, i32 0, i32 1
  %68 = ptrtoint ptr %loop_end.1 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %loop_end.1, align 4
  %start.1 = getelementptr inbounds %struct.snd_ymfpci_capture_bank, ptr %58, i32 0, i32 2
  %69 = ptrtoint ptr %start.1 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %start.1, align 4
  %num_of_loops.1 = getelementptr inbounds %struct.snd_ymfpci_capture_bank, ptr %58, i32 0, i32 3
  %70 = ptrtoint ptr %num_of_loops.1 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %num_of_loops.1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_capture_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  %reg_lock = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 52
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #13
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge27
    i32 6, label %entry.sw.bb_crit_edge28
    i32 0, label %entry.sw.bb2_crit_edge
    i32 3, label %entry.sw.bb2_crit_edge29
    i32 5, label %entry.sw.bb2_crit_edge30
  ]

entry.sw.bb2_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb2

entry.sw.bb2_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb2

entry.sw.bb_crit_edge28:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge27:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge27, %entry.sw.bb_crit_edge28
  %reg_area_virt.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 336
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !186
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %capture_bank_number = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %5, i32 0, i32 10
  %11 = ptrtoint ptr %capture_bank_number to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %capture_bank_number, align 4
  %shl = shl nuw i32 1, %12
  %or = or i32 %shl, %10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %13 = tail call i32 @llvm.bswap.i32(i32 %or) #13
  %14 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %15, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %13) #13, !srcloc !183
  %running = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %5, i32 0, i32 4
  %16 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %running, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %running, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge29, %entry.sw.bb2_crit_edge30
  %reg_area_virt.i23 = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %reg_area_virt.i23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_area_virt.i23, align 4
  %add.ptr.i24 = getelementptr i8, ptr %18, i32 336
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24) #13, !srcloc !186
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %capture_bank_number4 = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %5, i32 0, i32 10
  %21 = ptrtoint ptr %capture_bank_number4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %capture_bank_number4, align 4
  %shl5 = shl nuw i32 1, %22
  %neg = xor i32 %shl5, -1
  %and = and i32 %20, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %23 = tail call i32 @llvm.bswap.i32(i32 %and) #13
  %24 = ptrtoint ptr %reg_area_virt.i23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_area_virt.i23, align 4
  %add.ptr.i26 = getelementptr i8, ptr %25, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %23) #13, !srcloc !183
  %running6 = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %5, i32 0, i32 4
  %26 = ptrtoint ptr %running6 to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load7 = load i8, ptr %running6, align 4
  %bf.clear8 = and i8 %bf.load7, 127
  store i8 %bf.clear8, ptr %running6, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %result.0 = phi i32 [ 0, %sw.bb2 ], [ 0, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #13
  ret i32 %result.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_ymfpci_capture_pointer(ptr nocapture noundef readonly %substream) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data2, align 8
  %running = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data, align 4
  %capture_bank_number = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %3, i32 0, i32 10
  %7 = ptrtoint ptr %capture_bank_number to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %capture_bank_number, align 4
  %active_bank = getelementptr inbounds %struct.snd_ymfpci, ptr %6, i32 0, i32 26
  %9 = ptrtoint ptr %active_bank to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %active_bank, align 4
  %arrayidx3 = getelementptr %struct.snd_ymfpci, ptr %6, i32 0, i32 23, i32 %8, i32 %10
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx3, align 4
  %start = getelementptr inbounds %struct.snd_ymfpci_capture_bank, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %start, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %shift = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %3, i32 0, i32 11
  %16 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %shift, align 4
  %shr = lshr i32 %15, %17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %shr, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_ymfpci_capture_open(ptr noundef %substream, i32 noundef %capture_bank_number) unnamed_addr #0 align 64 {
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
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %4 = call ptr @memcpy(ptr %hw, ptr @snd_ymfpci_capture, i32 64)
  %call = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 12, i32 noundef 5334, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @snd_pcm_hw_rule_noresample(ptr noundef %3, i32 noundef 48000) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 52) #17
  %cmp7 = icmp eq ptr %call7.i.i, null
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %call7.i.i, align 8
  %add = add i32 %capture_bank_number, 1
  %type = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %type, align 4
  %substream11 = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %substream11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %substream, ptr %substream11, align 8
  %capture_bank_number12 = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %call7.i.i, i32 0, i32 10
  %9 = ptrtoint ptr %capture_bank_number12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %capture_bank_number, ptr %capture_bank_number12, align 4
  %arrayidx = getelementptr %struct.snd_ymfpci, ptr %1, i32 0, i32 40, i32 %capture_bank_number
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %substream, ptr %arrayidx, align 4
  %private_data13 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %11 = ptrtoint ptr %private_data13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %private_data13, align 8
  %private_free = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 45
  %12 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @snd_ymfpci_pcm_free_substream, ptr %private_free, align 4
  %reg_lock.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 52
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #13
  %start_count.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 25
  %13 = ptrtoint ptr %start_count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %start_count.i, align 4
  %inc.i = add i32 %14, 1
  store i32 %inc.i, ptr %start_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp5.i = icmp sgt i32 %14, 0
  br i1 %cmp5.i, label %if.end9.snd_ymfpci_hw_start.exit_crit_edge, label %if.end.i

if.end9.snd_ymfpci_hw_start.exit_crit_edge:       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_ymfpci_hw_start.exit

if.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %reg_area_virt.i.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %reg_area_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_area_virt.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 264
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %18 = or i32 %17, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %19 = ptrtoint ptr %reg_area_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_area_virt.i.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %20, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 %18) #13, !srcloc !183
  %21 = ptrtoint ptr %reg_area_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_area_virt.i.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %22, i32 260
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i) #13, !srcloc !186
  %24 = lshr i32 %23, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %and.i = and i32 %24, 1
  %active_bank.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 26
  %25 = ptrtoint ptr %active_bank.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and.i, ptr %active_bank.i, align 4
  br label %snd_ymfpci_hw_start.exit

snd_ymfpci_hw_start.exit:                         ; preds = %if.end.i, %if.end9.snd_ymfpci_hw_start.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i) #13
  br label %cleanup

cleanup:                                          ; preds = %snd_ymfpci_hw_start.exit, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %snd_ymfpci_hw_start.exit ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_capture_ac97_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @snd_ymfpci_capture_open(ptr noundef %substream, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_playback_spdif_open(ptr noundef %substream) #0 align 64 {
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
  %hw.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %4 = call ptr @memcpy(ptr %hw.i, ptr @snd_ymfpci_playback, i32 64)
  %call.i = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 12, i32 noundef 5334, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call2.i = tail call i32 @snd_pcm_hw_rule_noresample(ptr noundef %3, i32 noundef 48000) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %if.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 52) #17
  %cmp7.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp7.i, label %if.end5.i.cleanup_crit_edge, label %if.end

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.end5.i
  %6 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %call7.i.i.i, align 8
  %type.i = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %call7.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %type.i, align 4
  %substream11.i = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %call7.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %substream11.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %substream, ptr %substream11.i, align 8
  %private_data12.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %9 = ptrtoint ptr %private_data12.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i.i, ptr %private_data12.i, align 8
  %private_free.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 45
  %10 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @snd_ymfpci_pcm_free_substream, ptr %private_free.i, align 4
  %output_front = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %call7.i.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %output_front to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %output_front, align 4
  %bf.clear4 = and i8 %bf.load, -57
  %bf.set8 = or i8 %bf.clear4, 24
  store i8 %bf.set8, ptr %output_front, align 4
  %reg_lock = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 52
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #13
  %reg_area_virt.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 24
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #13, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !181
  %15 = or i16 %14, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !184
  tail call void @arm_heavy_mb() #13
  %16 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %17, i32 24
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i35, i16 %15) #13, !srcloc !185
  %rear_opened.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 49
  %18 = ptrtoint ptr %rear_opened.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rear_opened.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.ymfpci_open_extension.exit_crit_edge

if.end.ymfpci_open_extension.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %ymfpci_open_extension.exit

if.then.i:                                        ; preds = %if.end
  %spdif_opened.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 50
  %20 = ptrtoint ptr %spdif_opened.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %spdif_opened.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool1.not.i = icmp eq i32 %21, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.then.i.if.end.i36_crit_edge

if.then.i.if.end.i36_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i36

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 264
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %25 = or i32 %24, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %26 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %27, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %25) #13, !srcloc !183
  br label %if.end.i36

if.end.i36:                                       ; preds = %if.then2.i, %if.then.i.if.end.i36_crit_edge
  %28 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %29, i32 112
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i15.i) #13, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !181
  %31 = and i16 %30, -12292
  %32 = or i16 %31, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !184
  tail call void @arm_heavy_mb() #13
  %33 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %34, i32 112
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i17.i, i16 %32) #13, !srcloc !185
  br label %ymfpci_open_extension.exit

ymfpci_open_extension.exit:                       ; preds = %if.end.i36, %if.end.ymfpci_open_extension.exit_crit_edge
  %spdif_bits = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 45
  %35 = ptrtoint ptr %spdif_bits to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %spdif_bits, align 4
  %spdif_pcm_bits = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 46
  %37 = ptrtoint ptr %spdif_pcm_bits to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %spdif_pcm_bits, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !184
  tail call void @arm_heavy_mb() #13
  %38 = tail call i16 @llvm.bswap.i16(i16 %36) #13
  %39 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %40, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i38, i16 %38) #13, !srcloc !185
  %spdif_opened = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 50
  %41 = ptrtoint ptr %spdif_opened to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %spdif_opened, align 4
  %inc = add i32 %42, 1
  store i32 %inc, ptr %spdif_opened, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #13
  %spdif_pcm_ctl = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 47
  %43 = ptrtoint ptr %spdif_pcm_ctl to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %spdif_pcm_ctl, align 4
  %access = getelementptr inbounds %struct.snd_kcontrol, ptr %44, i32 1, i32 0, i32 1
  %45 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %access, align 4
  %and = and i32 %46, -257
  store i32 %and, ptr %access, align 4
  %card = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 35
  %47 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %card, align 4
  %49 = load ptr, ptr %spdif_pcm_ctl, align 4
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %49, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %48, i32 noundef 3, ptr noundef %id) #13
  br label %cleanup

cleanup:                                          ; preds = %ymfpci_open_extension.exit, %if.end5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ymfpci_open_extension.exit ], [ -12, %if.end5.i.cleanup_crit_edge ], [ %call2.i, %if.end.i.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_playback_spdif_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 52
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #13
  %spdif_opened = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %spdif_opened to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %spdif_opened, align 4
  %rear_opened.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 49
  %3 = ptrtoint ptr %rear_opened.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rear_opened.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.ymfpci_close_extension.exit_crit_edge

entry.ymfpci_close_extension.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %ymfpci_close_extension.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %reg_area_virt.i.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %reg_area_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_area_virt.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 264
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %8 = and i32 %7, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %9 = ptrtoint ptr %reg_area_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_area_virt.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %10, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %8) #13, !srcloc !183
  %11 = ptrtoint ptr %reg_area_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_area_virt.i.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %12, i32 112
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i16.i) #13, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !181
  %14 = and i16 %13, -12292
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !184
  tail call void @arm_heavy_mb() #13
  %15 = ptrtoint ptr %reg_area_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_area_virt.i.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %16, i32 112
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i18.i, i16 %14) #13, !srcloc !185
  br label %ymfpci_close_extension.exit

ymfpci_close_extension.exit:                      ; preds = %if.end.i, %entry.ymfpci_close_extension.exit_crit_edge
  %reg_area_virt.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 24
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #13, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !181
  %20 = and i16 %19, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !184
  tail call void @arm_heavy_mb() #13
  %21 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %22, i32 24
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i17, i16 %20) #13, !srcloc !185
  %spdif_bits = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 45
  %23 = ptrtoint ptr %spdif_bits to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %spdif_bits, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !184
  tail call void @arm_heavy_mb() #13
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #13
  %26 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %27, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i19, i16 %25) #13, !srcloc !185
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #13
  %spdif_pcm_ctl = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 47
  %28 = ptrtoint ptr %spdif_pcm_ctl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %spdif_pcm_ctl, align 4
  %access = getelementptr inbounds %struct.snd_kcontrol, ptr %29, i32 1, i32 0, i32 1
  %30 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %access, align 4
  %or = or i32 %31, 256
  store i32 %or, ptr %access, align 4
  %card = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 35
  %32 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %card, align 4
  %34 = load ptr, ptr %spdif_pcm_ctl, align 4
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %34, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %33, i32 noundef 3, ptr noundef %id) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_playback_4ch_open(ptr noundef %substream) #0 align 64 {
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
  %hw.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %4 = call ptr @memcpy(ptr %hw.i, ptr @snd_ymfpci_playback, i32 64)
  %call.i = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 12, i32 noundef 5334, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call2.i = tail call i32 @snd_pcm_hw_rule_noresample(ptr noundef %3, i32 noundef 48000) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %if.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 52) #17
  %cmp7.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp7.i, label %if.end5.i.cleanup_crit_edge, label %if.end

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.end5.i
  %6 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %call7.i.i.i, align 8
  %type.i = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %call7.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %type.i, align 4
  %substream11.i = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %call7.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %substream11.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %substream, ptr %substream11.i, align 8
  %private_data12.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %9 = ptrtoint ptr %private_data12.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i.i, ptr %private_data12.i, align 8
  %private_free.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 45
  %10 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @snd_ymfpci_pcm_free_substream, ptr %private_free.i, align 4
  %output_front = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %call7.i.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %output_front to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %output_front, align 4
  %bf.clear4 = and i8 %bf.load, -57
  %bf.set5 = or i8 %bf.clear4, 16
  store i8 %bf.set5, ptr %output_front, align 4
  %reg_lock = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 52
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #13
  %rear_opened.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 49
  %12 = ptrtoint ptr %rear_opened.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rear_opened.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.ymfpci_open_extension.exit_crit_edge

if.end.ymfpci_open_extension.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %ymfpci_open_extension.exit

if.then.i:                                        ; preds = %if.end
  %spdif_opened.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 50
  %14 = ptrtoint ptr %spdif_opened.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %spdif_opened.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1.not.i = icmp eq i32 %15, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.then.i.if.end.i21_crit_edge

if.then.i.if.end.i21_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i21

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %reg_area_virt.i.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %reg_area_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_area_virt.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 264
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %19 = or i32 %18, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %20 = ptrtoint ptr %reg_area_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_area_virt.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %21, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %19) #13, !srcloc !183
  br label %if.end.i21

if.end.i21:                                       ; preds = %if.then2.i, %if.then.i.if.end.i21_crit_edge
  %reg_area_virt.i14.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %reg_area_virt.i14.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_area_virt.i14.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %23, i32 112
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i15.i) #13, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !181
  %25 = and i16 %24, -12292
  %26 = or i16 %25, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !184
  tail call void @arm_heavy_mb() #13
  %27 = ptrtoint ptr %reg_area_virt.i14.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_area_virt.i14.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %28, i32 112
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i17.i, i16 %26) #13, !srcloc !185
  br label %ymfpci_open_extension.exit

ymfpci_open_extension.exit:                       ; preds = %if.end.i21, %if.end.ymfpci_open_extension.exit_crit_edge
  %29 = ptrtoint ptr %rear_opened.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rear_opened.i, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %rear_opened.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %ymfpci_open_extension.exit, %if.end5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ymfpci_open_extension.exit ], [ -12, %if.end5.i.cleanup_crit_edge ], [ %call2.i, %if.end.i.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_playback_4ch_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 52
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #13
  %rear_opened = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 49
  %2 = ptrtoint ptr %rear_opened to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rear_opened, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %dec = add nsw i32 %3, -1
  %4 = ptrtoint ptr %rear_opened to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dec, ptr %rear_opened, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not.i = icmp eq i32 %dec, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then.i:                                        ; preds = %if.then
  %spdif_opened.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 50
  %5 = ptrtoint ptr %spdif_opened.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %spdif_opened.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not.i = icmp eq i32 %6, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %reg_area_virt.i.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %reg_area_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_area_virt.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 264
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %10 = and i32 %9, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %11 = ptrtoint ptr %reg_area_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_area_virt.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %12, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %10) #13, !srcloc !183
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  %reg_area_virt.i15.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %reg_area_virt.i15.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_area_virt.i15.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %14, i32 112
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i16.i) #13, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !181
  %16 = and i16 %15, -12292
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !184
  tail call void @arm_heavy_mb() #13
  %17 = ptrtoint ptr %reg_area_virt.i15.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_area_virt.i15.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %18, i32 112
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i18.i, i16 %16) #13, !srcloc !185
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #13
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_ymfpci_info_double(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = add i32 %1, -192
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %2)
  %3 = icmp ult i32 %2, -64
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %5 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %7 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16383, ptr %max, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_get_double(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = add i32 %1, -192
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %2)
  %3 = icmp ult i32 %2, -64
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_ymfpci, ptr %5, i32 0, i32 52
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #13
  %reg_area_virt.i = getelementptr inbounds %struct.snd_ymfpci, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %1
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !186
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #13
  %and = and i32 %9, 16383
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %value, align 8
  %shr3 = lshr i32 %9, 16
  %and4 = and i32 %shr3, 16383
  %arrayidx6 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and4, ptr %arrayidx6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_put_nativedacvol(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value1, align 8
  %and = and i32 %3, 16383
  %arrayidx3 = getelementptr [128 x i32], ptr %value1, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %and4 = shl i32 %5, 16
  %shl = and i32 %and4, 1073676288
  %or = or i32 %shl, %and
  %reg_lock = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 52
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #13
  %reg_area_virt.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 132
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !186
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %9)
  %cmp = icmp ne i32 %or, %9
  %conv = zext i1 %cmp to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %10 = tail call i32 @llvm.bswap.i32(i32 %or) #13
  %11 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %12, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %10) #13, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %13 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %14, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %10) #13, !srcloc !183
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #13
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_put_double(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = add i32 %1, -192
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %2)
  %3 = icmp ult i32 %2, -64
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  %and = and i32 %7, 16383
  %arrayidx3 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3, align 4
  %and4 = shl i32 %9, 16
  %shl5 = and i32 %and4, 1073676288
  %reg_lock = getelementptr inbounds %struct.snd_ymfpci, ptr %5, i32 0, i32 52
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #13
  %reg_area_virt.i = getelementptr inbounds %struct.snd_ymfpci, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %1
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !186
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %and8 = and i32 %13, -1073692672
  %or9 = or i32 %shl5, %and
  %or10 = or i32 %or9, %and8
  call void @__sanitizer_cov_trace_cmp4(i32 %or10, i32 %13)
  %cmp11 = icmp ne i32 %or10, %13
  %conv = zext i1 %cmp11 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %14 = tail call i32 @llvm.bswap.i32(i32 %or10) #13
  %15 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %16, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %14) #13, !srcloc !183
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_get_single(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %trunc = trunc i32 %1 to i16
  %2 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.65)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 24, label %entry.sw.epilog_crit_edge
    i16 52, label %entry.sw.epilog_crit_edge11
  ]

entry.sw.epilog_crit_edge11:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge11
  %and = and i32 %1, 65535
  %shr = lshr i32 %1, 16
  %and2 = and i32 %shr, 255
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  %reg_area_virt.i = getelementptr inbounds %struct.snd_ymfpci, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %and
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !186
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %shr3 = lshr i32 %8, %and2
  %and4 = and i32 %shr3, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and4, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_put_single(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %trunc = trunc i32 %1 to i16
  %2 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.66)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 24, label %entry.sw.epilog_crit_edge
    i16 52, label %entry.sw.epilog_crit_edge28
  ]

entry.sw.epilog_crit_edge28:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge28
  %and = and i32 %1, 65535
  %shr = lshr i32 %1, 16
  %and2 = and i32 %shr, 255
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 8
  %and3 = and i32 %6, 1
  %shl = shl nuw i32 %and3, %and2
  %reg_lock = getelementptr inbounds %struct.snd_ymfpci, ptr %4, i32 0, i32 52
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #13
  %reg_area_virt.i = getelementptr inbounds %struct.snd_ymfpci, ptr %4, i32 0, i32 4
  %7 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 %and
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !186
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  %shl4 = shl nuw i32 1, %and2
  %neg = xor i32 %shl4, -1
  %and5 = and i32 %10, %neg
  %or = or i32 %and5, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %10)
  %cmp = icmp ne i32 %or, %10
  %conv = zext i1 %cmp to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %11 = tail call i32 @llvm.bswap.i32(i32 %or) #13
  %12 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %13, i32 %and
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %11) #13, !srcloc !183
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_ymfpci_get_dup4ch(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mode_dup4ch = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %mode_dup4ch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode_dup4ch, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_ymfpci_put_dup4ch(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  %mode_dup4ch = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 48
  %4 = ptrtoint ptr %mode_dup4ch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode_dup4ch, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp ne i32 %3, %5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3 = icmp ne i32 %3, 0
  %lnot.ext = zext i1 %tobool3 to i32
  %6 = ptrtoint ptr %mode_dup4ch to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %lnot.ext, ptr %mode_dup4ch, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_ymfpci_spdif_default_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 5, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_spdif_default_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 52
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #13
  %spdif_bits = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 45
  %2 = ptrtoint ptr %spdif_bits to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %spdif_bits, align 4
  %conv1 = trunc i16 %3 to i8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv1, ptr %value, align 8
  %5 = load i16, ptr %spdif_bits, align 4
  %6 = lshr i16 %5, 8
  %conv6 = trunc i16 %6 to i8
  %arrayidx9 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv6, ptr %arrayidx9, align 1
  %arrayidx12 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %arrayidx12, align 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_spdif_default_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %value, align 8
  %4 = and i8 %3, 62
  %and = zext i8 %4 to i32
  %arrayidx3 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %6 to i32
  %shl5 = shl nuw nsw i32 %conv4, 8
  %or = or i32 %shl5, %and
  %reg_lock = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 52
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #13
  %spdif_bits = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 45
  %7 = ptrtoint ptr %spdif_bits to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %spdif_bits, align 4
  %conv8 = trunc i32 %or to i16
  store i16 %conv8, ptr %spdif_bits, align 4
  %reg_area_virt.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 24
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #13, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !181
  %12 = and i16 %11, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp eq i16 %12, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %pcm_spdif = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 38
  %13 = ptrtoint ptr %pcm_spdif to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcm_spdif, align 4
  %cmp12 = icmp eq ptr %14, null
  br i1 %cmp12, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %spdif_bits to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %spdif_bits, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !184
  tail call void @arm_heavy_mb() #13
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #13
  %18 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %19, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i26, i16 %17) #13, !srcloc !185
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %conv6 = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv6)
  %cmp = icmp ne i32 %or, %conv6
  %conv7 = zext i1 %cmp to i32
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #13
  ret i32 %conv7
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_ymfpci_spdif_mask_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 5, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_spdif_mask_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 52
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #13
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 62, ptr %value, align 8
  %arrayidx3 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %arrayidx3, align 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #13
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_ymfpci_spdif_stream_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 5, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_spdif_stream_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 52
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #13
  %spdif_pcm_bits = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %spdif_pcm_bits to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %spdif_pcm_bits, align 2
  %conv1 = trunc i16 %3 to i8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv1, ptr %value, align 8
  %5 = load i16, ptr %spdif_pcm_bits, align 2
  %6 = lshr i16 %5, 8
  %conv6 = trunc i16 %6 to i8
  %arrayidx9 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv6, ptr %arrayidx9, align 1
  %arrayidx12 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %arrayidx12, align 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_spdif_stream_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %value, align 8
  %4 = and i8 %3, 62
  %and = zext i8 %4 to i32
  %arrayidx3 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %6 to i32
  %shl5 = shl nuw nsw i32 %conv4, 8
  %or = or i32 %shl5, %and
  %reg_lock = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 52
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #13
  %spdif_pcm_bits = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 46
  %7 = ptrtoint ptr %spdif_pcm_bits to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %spdif_pcm_bits, align 2
  %conv8 = trunc i32 %or to i16
  store i16 %conv8, ptr %spdif_pcm_bits, align 2
  %reg_area_virt.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 24
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #13, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !181
  %12 = and i16 %11, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp eq i16 %12, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %spdif_pcm_bits to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %spdif_pcm_bits, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !184
  tail call void @arm_heavy_mb() #13
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #13
  %16 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %17, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i23, i16 %15) #13, !srcloc !185
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv6 = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv6)
  %cmp = icmp ne i32 %or, %conv6
  %conv7 = zext i1 %cmp to i32
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #13
  ret i32 %conv7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_drec_source_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %info, i32 noundef 1, i32 noundef 3, ptr noundef nonnull @snd_ymfpci_drec_source_info.texts) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_drec_source_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 52
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #13
  %reg_area_virt.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 8
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #13, !srcloc !180
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !181
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #13
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and4 = lshr i32 %conv, 9
  %and4.lobit = and i32 %and4, 1
  %add = add nuw nsw i32 %and4.lobit, 1
  %add.sink = select i1 %tobool.not, i32 0, i32 %add
  %6 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add.sink, ptr %6, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_drec_source_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 52
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #13
  %reg_area_virt.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 8
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #13, !srcloc !180
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !181
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %6 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %8 = and i16 %5, -257
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %9 = and i16 %5, -769
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp7 = icmp eq i32 %7, 2
  %shl = select i1 %cmp7, i16 512, i16 0
  %10 = or i16 %9, %shl
  %or9 = or i16 %10, 256
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %reg.0 = phi i16 [ %8, %if.then ], [ %or9, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !184
  tail call void @arm_heavy_mb() #13
  %11 = tail call i16 @llvm.bswap.i16(i16 %reg.0) #13
  %12 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i24, i16 %11) #13, !srcloc !185
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #13
  call void @__sanitizer_cov_trace_cmp2(i16 %reg.0, i16 %5)
  %cmp14 = icmp ne i16 %reg.0, %5
  %conv15 = zext i1 %cmp14 to i32
  ret i32 %conv15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_gpio_sw_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %call = tail call fastcc i32 @snd_ymfpci_get_gpio_out(ptr noundef %1, i32 noundef %3)
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_gpio_sw_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %call = tail call fastcc i32 @snd_ymfpci_get_gpio_out(ptr noundef %1, i32 noundef %3)
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %5)
  %cmp.not = icmp eq i32 %call, %5
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool = icmp ne i32 %5, 0
  %lnot.ext = zext i1 %tobool to i32
  %reg_lock.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 52
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #13
  %reg_area_virt.i.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %reg_area_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_area_virt.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 88
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #13, !srcloc !180
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !181
  %shl.i = shl nuw i32 1, %3
  %add.i = add i32 %3, 8
  %shl8.i = shl nuw i32 1, %add.i
  %10 = or i32 %shl8.i, %shl.i
  %11 = trunc i32 %10 to i16
  %12 = xor i16 %11, -1
  %conv12.i = and i16 %9, %12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !184
  tail call void @arm_heavy_mb() #13
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv12.i) #13
  %14 = ptrtoint ptr %reg_area_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_area_virt.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %15, i32 88
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i2.i, i16 %13) #13, !srcloc !185
  %shl13.i = shl nuw i32 %lnot.ext, %3
  %conv14.i = trunc i32 %shl13.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !184
  tail call void @arm_heavy_mb() #13
  %16 = tail call i16 @llvm.bswap.i16(i16 %conv14.i) #13
  %17 = ptrtoint ptr %reg_area_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_area_virt.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %18, i32 86
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i4.i, i16 %16) #13, !srcloc !185
  %19 = trunc i32 %shl8.i to i16
  %conv18.i = or i16 %conv12.i, %19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !184
  tail call void @arm_heavy_mb() #13
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv18.i) #13
  %21 = ptrtoint ptr %reg_area_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_area_virt.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %22, i32 88
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i6.i, i16 %20) #13, !srcloc !185
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i) #13
  %call5 = tail call fastcc i32 @snd_ymfpci_get_gpio_out(ptr noundef %1, i32 noundef %3)
  %23 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call5, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_ymfpci_get_gpio_out(ptr noundef %chip, i32 noundef %pin) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_lock = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 52
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #13
  %reg_area_virt.i = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 88
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #13, !srcloc !180
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !181
  %add = add i32 %pin, 8
  %shl = shl nuw i32 1, %add
  %4 = trunc i32 %shl to i16
  %5 = xor i16 %4, -1
  %conv7 = and i16 %3, %5
  %shl8 = shl nuw i32 1, %pin
  %6 = trunc i32 %shl8 to i16
  %conv10 = or i16 %conv7, %6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !184
  tail call void @arm_heavy_mb() #13
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv10) #13
  %8 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i43 = getelementptr i8, ptr %9, i32 88
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i43, i16 %7) #13, !srcloc !185
  %10 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %11, i32 90
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i45) #13, !srcloc !180
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !181
  %mul = shl i32 %pin, 1
  %shl12 = shl i32 3, %mul
  %14 = trunc i32 %shl12 to i16
  %15 = xor i16 %14, -1
  %conv16 = and i16 %13, %15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !184
  tail call void @arm_heavy_mb() #13
  %16 = tail call i16 @llvm.bswap.i16(i16 %conv16) #13
  %17 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %18, i32 90
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i47, i16 %16) #13, !srcloc !185
  %conv21 = or i16 %conv10, %4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !184
  tail call void @arm_heavy_mb() #13
  %19 = tail call i16 @llvm.bswap.i16(i16 %conv21) #13
  %20 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %21, i32 88
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i49, i16 %19) #13, !srcloc !185
  %22 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %23, i32 84
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i51) #13, !srcloc !180
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !181
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call2) #13
  %conv24 = zext i16 %25 to i32
  %shr = lshr i32 %conv24, %pin
  %and25 = and i32 %shr, 1
  ret i32 %and25
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_ymfpci_pcm_vol_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  store i32 32768, ptr %max, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_ymfpci_pcm_vol_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %subdevice = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %subdevice, align 4
  %arrayidx = getelementptr %struct.snd_ymfpci, ptr %1, i32 0, i32 51, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 4
  %conv = zext i16 %5 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %value, align 8
  %right = getelementptr %struct.snd_ymfpci, ptr %1, i32 0, i32 51, i32 %3, i32 1
  %7 = ptrtoint ptr %right to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %right, align 2
  %conv4 = zext i16 %8 to i32
  %arrayidx6 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv4, ptr %arrayidx6, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_pcm_vol_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %subdevice = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %subdevice, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  %arrayidx1 = getelementptr %struct.snd_ymfpci, ptr %1, i32 0, i32 51, i32 %3
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx1, align 4
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp.not = icmp eq i32 %5, %conv
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx4 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  %right = getelementptr %struct.snd_ymfpci, ptr %1, i32 0, i32 51, i32 %3, i32 1
  %10 = ptrtoint ptr %right to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %right, align 2
  %conv7 = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv7)
  %cmp8.not = icmp eq i32 %9, %conv7
  br i1 %cmp8.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %conv12 = trunc i32 %5 to i16
  %12 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv12, ptr %arrayidx1, align 4
  %arrayidx17 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx17, align 4
  %conv18 = trunc i32 %14 to i16
  %right21 = getelementptr %struct.snd_ymfpci, ptr %1, i32 0, i32 51, i32 %3, i32 1
  %15 = ptrtoint ptr %right21 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv18, ptr %right21, align 2
  %conv25 = and i32 %5, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %conv25)
  %cmp26 = icmp ugt i32 %conv25, 32768
  br i1 %cmp26, label %if.then28, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then28:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -32768, ptr %arrayidx1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then28, %if.then.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %conv18)
  %cmp36 = icmp ugt i16 %conv18, -32768
  br i1 %cmp36, label %if.then38, label %if.end.if.end42_crit_edge

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.then38:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %right21 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -32768, ptr %right21, align 2
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %if.end.if.end42_crit_edge
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %18 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %private_value, align 4
  %20 = inttoptr i32 %19 to ptr
  %voice_lock = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 53
  %call46 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_lock) #13
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 11
  %21 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %runtime, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %if.end42.if.end58_crit_edge, label %land.lhs.true

if.end42.if.end58_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

land.lhs.true:                                    ; preds = %if.end42
  %private_data50 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %22, i32 0, i32 44
  %23 = ptrtoint ptr %private_data50 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %private_data50, align 8
  %tobool51.not = icmp eq ptr %24, null
  br i1 %tobool51.not, label %land.lhs.true.if.end58_crit_edge, label %if.then52

land.lhs.true.if.end58_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

if.then52:                                        ; preds = %land.lhs.true
  %use_441_slot = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %use_441_slot to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load = load i8, ptr %use_441_slot, align 4
  %26 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool55.not = icmp eq i8 %26, 0
  br i1 %tobool55.not, label %if.then56, label %if.then52.if.end58_crit_edge

if.then52.if.end58_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

if.then56:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  %update_pcm_vol = getelementptr inbounds %struct.snd_ymfpci_pcm, ptr %24, i32 0, i32 5
  %27 = ptrtoint ptr %update_pcm_vol to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %update_pcm_vol, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.then52.if.end58_crit_edge, %land.lhs.true.if.end58_crit_edge, %if.end42.if.end58_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_lock, i32 noundef %call46) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end58 ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_timer_start(ptr nocapture noundef readonly %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_timer, ptr %timer, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 52
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #13
  %sticks = getelementptr inbounds %struct.snd_timer, ptr %timer, i32 0, i32 9
  %2 = ptrtoint ptr %sticks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sticks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp5 = icmp ugt i32 %3, 1
  %timer_ticks = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 33
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %timer_ticks to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %timer_ticks, align 4
  %5 = ptrtoint ptr %sticks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sticks, align 4
  %7 = trunc i32 %6 to i16
  %phi.cast = add i16 %7, -1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %timer_ticks to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %timer_ticks, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %count.0 = phi i16 [ %phi.cast, %if.then ], [ 1, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !184
  tail call void @arm_heavy_mb() #13
  %9 = tail call i16 @llvm.bswap.i16(i16 %count.0) #13
  %reg_area_virt.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %9) #13, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !190
  tail call void @arm_heavy_mb() #13
  %12 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i21, i8 3) #13, !srcloc !191
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call2) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ymfpci_timer_stop(ptr nocapture noundef readonly %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_timer, ptr %timer, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 52
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !190
  tail call void @arm_heavy_mb() #13
  %reg_area_virt.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 0) #13, !srcloc !191
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call2) #13
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_ymfpci_timer_precise_resolution(ptr nocapture noundef readnone %timer, ptr nocapture noundef writeonly %num, ptr nocapture noundef writeonly %den) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %num, align 4
  %1 = ptrtoint ptr %den to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 96000, ptr %den, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_timer_interrupt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mpu401_uart_interrupt(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ymfpci_free_gameport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dma_free_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_devm_alloc_dir_pages(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dma_alloc_dir_pages(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ymfpci_proc_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.58) #13
  %reg_area_virt.i = getelementptr inbounds %struct.snd_ymfpci, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.08 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  %6 = ptrtoint ptr %reg_area_virt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_area_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %i.08
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !186
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.59, i32 noundef %i.08, i32 noundef %9) #13
  %add = add nuw nsw i32 %i.08, 4
  %cmp = icmp ult i32 %i.08, 353
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !35, !36, !38, !39, !41, !42, !43, !44, !45, !46, !48, !50, !51, !52, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !145, !146, !147, !149, !151, !152, !153, !154, !156, !158, !160, !161, !162, !164, !166}
!llvm.named.register.sp = !{!168}
!llvm.module.flags = !{!169, !170, !171, !172, !173, !174, !175, !176}
!llvm.ident = !{!177}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1132, i32 32}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1166, i32 32}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1175, i32 21}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1176, i32 49}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1176, i32 70}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1200, i32 32}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1241, i32 32}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1250, i32 20}
!16 = !{ptr @snd_ymfpci_mixer.ops, !17, !"ops", i1 false, i1 false}
!17 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1792, i32 39}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1827, i32 6}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1956, i32 23}
!22 = !{ptr @__UNIQUE_ID_firmware242, !23, !"__UNIQUE_ID_firmware242", i1 false, i1 false}
!23 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 2062, i32 1}
!24 = !{ptr @__UNIQUE_ID_firmware243, !25, !"__UNIQUE_ID_firmware243", i1 false, i1 false}
!25 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 2063, i32 1}
!26 = !{ptr @__UNIQUE_ID_firmware244, !27, !"__UNIQUE_ID_firmware244", i1 false, i1 false}
!27 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 2064, i32 1}
!28 = !{ptr @snd_ymfpci_pm, !29, !"snd_ymfpci_pm", i1 false, i1 false}
!29 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 2312, i32 1}
!30 = !{ptr @snd_ymfpci_create.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 2328, i32 2}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @snd_ymfpci_create.__key.11, !34, !"__key", i1 false, i1 false}
!34 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 2329, i32 2}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @snd_ymfpci_create.__key.13, !37, !"__key", i1 false, i1 false}
!37 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 2330, i32 2}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 2345, i32 3}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @snd_ymfpci_create._entry, !40, !"_entry", i1 false, i1 false}
!45 = !{ptr @snd_ymfpci_create._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 2354, i32 4}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 2355, i32 3}
!50 = !{ptr @snd_ymfpci_create._entry.20, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @snd_ymfpci_create._entry_ptr.22, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 2368, i32 3}
!54 = !{ptr @snd_ymfpci_create._entry.23, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @snd_ymfpci_create._entry_ptr.25, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @snd_ymfpci_playback_ops, !57, !"snd_ymfpci_playback_ops", i1 false, i1 false}
!57 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1108, i32 33}
!58 = !{ptr @snd_ymfpci_playback, !59, !"snd_ymfpci_playback", i1 false, i1 false}
!59 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 827, i32 38}
!60 = !{ptr @snd_ymfpci_calc_lpfQ.val, !61, !"val", i1 false, i1 false}
!61 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 148, i32 19}
!62 = distinct !{null, !63, !"def_rate", i1 false, i1 false}
!63 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 125, i32 18}
!64 = !{ptr @snd_ymfpci_calc_lpfK.val, !65, !"val", i1 false, i1 false}
!65 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 132, i32 19}
!66 = !{ptr @snd_ymfpci_capture_rec_ops, !67, !"snd_ymfpci_capture_rec_ops", i1 false, i1 false}
!67 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1118, i32 33}
!68 = !{ptr @snd_ymfpci_capture, !69, !"snd_ymfpci_capture", i1 false, i1 false}
!69 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 849, i32 38}
!70 = !{ptr @snd_ymfpci_capture_ac97_ops, !71, !"snd_ymfpci_capture_ac97_ops", i1 false, i1 false}
!71 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1152, i32 33}
!72 = !{ptr @snd_ymfpci_playback_spdif_ops, !73, !"snd_ymfpci_playback_spdif_ops", i1 false, i1 false}
!73 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1185, i32 33}
!74 = !{ptr @snd_ymfpci_playback_4ch_ops, !75, !"snd_ymfpci_playback_4ch_ops", i1 false, i1 false}
!75 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1218, i32 33}
!76 = !{ptr @surround_map, !77, !"surround_map", i1 false, i1 false}
!77 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1228, i32 40}
!78 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1603, i32 10}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1612, i32 1}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1613, i32 1}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1615, i32 1}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1616, i32 1}
!88 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1619, i32 1}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1620, i32 1}
!92 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1621, i32 1}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1624, i32 1}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1625, i32 1}
!98 = !{ptr @.str.37, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1626, i32 1}
!100 = !{ptr @snd_ymfpci_controls, !101, !"snd_ymfpci_controls", i1 false, i1 false}
!101 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1600, i32 38}
!102 = !{ptr @db_scale_native, !103, !"db_scale_native", i1 false, i1 false}
!103 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1486, i32 14}
!104 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1593, i32 10}
!106 = !{ptr @snd_ymfpci_dup4ch, !107, !"snd_ymfpci_dup4ch", i1 false, i1 false}
!107 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1591, i32 38}
!108 = !{ptr @.str.39, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1301, i32 18}
!110 = !{ptr @snd_ymfpci_spdif_default, !111, !"snd_ymfpci_spdif_default", i1 false, i1 false}
!111 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1298, i32 38}
!112 = !{ptr @.str.40, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1330, i32 18}
!114 = !{ptr @snd_ymfpci_spdif_mask, !115, !"snd_ymfpci_spdif_mask", i1 false, i1 false}
!115 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1326, i32 38}
!116 = !{ptr @.str.41, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1377, i32 18}
!118 = !{ptr @snd_ymfpci_spdif_stream, !119, !"snd_ymfpci_spdif_stream", i1 false, i1 false}
!119 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1373, i32 38}
!120 = !{ptr @.str.42, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1424, i32 11}
!122 = !{ptr @snd_ymfpci_drec_source, !123, !"snd_ymfpci_drec_source", i1 false, i1 false}
!123 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1421, i32 38}
!124 = !{ptr @.str.43, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1385, i32 48}
!126 = !{ptr @.str.44, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1385, i32 58}
!128 = !{ptr @snd_ymfpci_drec_source_info.texts, !129, !"texts", i1 false, i1 false}
!129 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1385, i32 27}
!130 = !{ptr @.str.45, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1695, i32 10}
!132 = !{ptr @snd_ymfpci_rear_shared, !133, !"snd_ymfpci_rear_shared", i1 false, i1 false}
!133 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1694, i32 38}
!134 = !{ptr @.str.46, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1760, i32 10}
!136 = !{ptr @snd_ymfpci_pcm_volume, !137, !"snd_ymfpci_pcm_volume", i1 false, i1 false}
!137 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1758, i32 38}
!138 = !{ptr @snd_ymfpci_timer_hw, !139, !"snd_ymfpci_timer_hw", i1 false, i1 false}
!139 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1934, i32 40}
!140 = !{ptr @saved_regs_index, !141, !"saved_regs_index", i1 false, i1 false}
!141 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 2229, i32 18}
!142 = !{ptr @.str.47, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 75, i32 2}
!144 = !{ptr @.str.48, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @snd_ymfpci_codec_ready._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @snd_ymfpci_codec_ready._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.49, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 2032, i32 47}
!149 = !{ptr @.str.50, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 2036, i32 4}
!151 = !{ptr @.str.51, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @snd_ymfpci_request_firmware._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @snd_ymfpci_request_firmware._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.52, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 2047, i32 17}
!156 = !{ptr @.str.53, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 2047, i32 41}
!158 = !{ptr @.str.55, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 2052, i32 4}
!160 = !{ptr @snd_ymfpci_request_firmware._entry.54, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @snd_ymfpci_request_firmware._entry_ptr.56, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.57, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1982, i32 36}
!164 = !{ptr @.str.58, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1975, i32 2}
!166 = !{ptr @.str.59, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/pci/ymfpci/ymfpci_main.c", i32 1977, i32 3}
!168 = !{!"sp"}
!169 = !{i32 1, !"wchar_size", i32 2}
!170 = !{i32 1, !"min_enum_size", i32 4}
!171 = !{i32 8, !"branch-target-enforcement", i32 0}
!172 = !{i32 8, !"sign-return-address", i32 0}
!173 = !{i32 8, !"sign-return-address-all", i32 0}
!174 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!175 = !{i32 7, !"uwtable", i32 1}
!176 = !{i32 7, !"frame-pointer", i32 2}
!177 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!178 = !{!"auto-init"}
!179 = !{!"branch_weights", i32 1, i32 2000}
!180 = !{i64 4324734}
!181 = !{i64 2154829909}
!182 = !{i64 2154831582}
!183 = !{i64 4325154}
!184 = !{i64 2154830303}
!185 = !{i64 4324534}
!186 = !{i64 4325572}
!187 = !{i64 2154831188}
!188 = !{!"branch_weights", i32 2000, i32 1}
!189 = !{i64 2148257380, i64 2148257406, i64 2148257435, i64 2148257469, i64 2148257500, i64 2148257523}
!190 = !{i64 2154829146}
!191 = !{i64 4324957}
