; ModuleID = '/llk/IR_all_yes/sound/pci/cs46xx/cs46xx_lib.c_pt.bc'
source_filename = "../sound/pci/cs46xx/cs46xx_lib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.91, i32 }
%union.anon.91 = type { ptr }
%struct.snd_rawmidi_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cs_card_type = type { i16, i16, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.snd_info_entry_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_cs46xx = type { i32, i32, i32, %union.anon, i32, %struct.anon.0, i32, ptr, [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.mutex, ptr, ptr, ptr, ptr, [5 x ptr], ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.snd_cs46xx_region, %struct.snd_cs46xx_region, %struct.snd_cs46xx_region, %struct.snd_cs46xx_region, %struct.snd_cs46xx_region }
%struct.snd_cs46xx_region = type { [24 x i8], i32, ptr, i32 }
%struct.anon.0 = type { %struct.snd_dma_buffer, i32, i32, %struct.snd_pcm_indirect, ptr }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_indirect = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.86, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.86 = type { ptr }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.85, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.85 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.87, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%union.anon.87 = type { i32, [28 x i8] }
%struct.snd_ac97_bus = type { ptr, ptr, ptr, ptr, i16, i8, i32, %struct.spinlock, [2 x [4 x i16]], i16, ptr, [4 x ptr], ptr }
%struct.snd_ac97_template = type { ptr, ptr, ptr, i16, i16, i32, ptr }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.gameport = type { ptr, [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, i32, %struct.spinlock, i32, ptr, ptr, ptr, ptr, %struct.mutex, %struct.device, %struct.list_head }
%struct.firmware = type { i32, ptr, ptr }
%struct.dsp_module_desc = type { ptr, %struct.dsp_symbol_desc, i32, ptr, i32, i32, i32 }
%struct.dsp_symbol_desc = type { i32, ptr, i32 }
%struct.dsp_symbol_entry = type { i32, [100 x i8], i32, ptr, i32 }
%struct.dsp_segment_desc = type { i32, i32, i32, ptr }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.71, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.71 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.dsp_spos_instance = type { %struct.dsp_symbol_desc, i32, ptr, %struct.dsp_segment_desc, ptr, i16, i16, ptr, ptr, i32, i32, [32 x %struct.dsp_pcm_channel_descriptor], [14 x i32], ptr, ptr, ptr, ptr, i32, i32, [200 x %struct.dsp_scb_descriptor], ptr, i32, [50 x %struct.dsp_task_descriptor], i32, i32, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.dsp_pcm_channel_descriptor = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.dsp_scb_descriptor = type { [60 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [2 x i16], i8 }
%struct.dsp_task_descriptor = type { [60 x i8], i32, i32, i32, ptr }
%struct.snd_cs46xx_pcm = type { %struct.snd_dma_buffer, i32, i32, %struct.snd_pcm_indirect, ptr, ptr, i32 }
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
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_pcm_mmap_control = type { [4 x i8], i32, [4 x i8], [4 x i8], i32, [0 x i8] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.76, [64 x i8] }
%union.anon.76 = type { %struct.anon.79, [40 x i8] }
%struct.anon.79 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.80, [128 x i8] }
%union.anon.80 = type { %union.anon.82 }
%union.anon.82 = type { [64 x i64] }
%struct.snd_rawmidi_substream = type { %struct.list_head, i32, i32, i8, i8, i8, i32, i32, i32, i32, ptr, ptr, [32 x i8], ptr, ptr, ptr }

@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/pci/cs46xx/cs46xx_lib.c\00", [34 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_firmware242 = internal constant [35 x i8] c"snd_cs46xx.firmware=cs46xx/cwc4630\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware243 = internal constant [36 x i8] c"snd_cs46xx.firmware=cs46xx/cwcasync\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware244 = internal constant [36 x i8] c"snd_cs46xx.firmware=cs46xx/cwcsnoop\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware245 = internal constant [38 x i8] c"snd_cs46xx.firmware=cs46xx/cwcbinhack\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware246 = internal constant [34 x i8] c"snd_cs46xx.firmware=cs46xx/cwcdma\00", section ".modinfo", align 1
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CS46xx\00", [25 x i8] zeroinitializer }, align 32
@snd_cs46xx_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_cs46xx_playback_open, ptr @snd_cs46xx_playback_close, ptr null, ptr @snd_cs46xx_playback_hw_params, ptr @snd_cs46xx_playback_hw_free, ptr @snd_cs46xx_playback_prepare, ptr @snd_cs46xx_playback_trigger, ptr null, ptr @snd_cs46xx_playback_direct_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_cs46xx_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_cs46xx_capture_open, ptr @snd_cs46xx_capture_close, ptr null, ptr @snd_cs46xx_capture_hw_params, ptr @snd_cs46xx_capture_hw_free, ptr @snd_cs46xx_capture_prepare, ptr @snd_cs46xx_capture_trigger, ptr null, ptr @snd_cs46xx_capture_direct_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CS46xx - Rear\00", [18 x i8] zeroinitializer }, align 32
@snd_cs46xx_playback_rear_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_cs46xx_playback_open_rear, ptr @snd_cs46xx_playback_close, ptr null, ptr @snd_cs46xx_playback_hw_params, ptr @snd_cs46xx_playback_hw_free, ptr @snd_cs46xx_playback_prepare, ptr @snd_cs46xx_playback_trigger, ptr null, ptr @snd_cs46xx_playback_direct_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CS46xx - Center LFE\00", [44 x i8] zeroinitializer }, align 32
@snd_cs46xx_playback_clfe_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_cs46xx_playback_open_clfe, ptr @snd_cs46xx_playback_close, ptr null, ptr @snd_cs46xx_playback_hw_params, ptr @snd_cs46xx_playback_hw_free, ptr @snd_cs46xx_playback_prepare, ptr @snd_cs46xx_playback_trigger, ptr null, ptr @snd_cs46xx_playback_direct_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CS46xx - IEC958\00", [16 x i8] zeroinitializer }, align 32
@snd_cs46xx_playback_iec958_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_cs46xx_playback_open_iec958, ptr @snd_cs46xx_playback_close_iec958, ptr null, ptr @snd_cs46xx_playback_hw_params, ptr @snd_cs46xx_playback_hw_free, ptr @snd_cs46xx_playback_prepare, ptr @snd_cs46xx_playback_trigger, ptr null, ptr @snd_cs46xx_playback_direct_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_cs46xx_mixer.ops = internal constant { %struct.snd_ac97_bus_ops, [40 x i8] } { %struct.snd_ac97_bus_ops { ptr @snd_cs46xx_codec_reset, ptr null, ptr @snd_cs46xx_ac97_write, ptr @snd_cs46xx_ac97_read, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snd_cs46xx_mixer.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str, ptr @.str.7, i8 2, i8 104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"snd_cs46xx\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_cs46xx_mixer\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"detecting primary codec\0A\00", [39 x i8] zeroinitializer }, align 32
@snd_cs46xx_mixer.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str, ptr @.str.8, i8 2, i8 106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"detecting secondary codec\0A\00", [37 x i8] zeroinitializer }, align 32
@snd_cs46xx_controls = internal constant { [9 x %struct.snd_kcontrol_new], [112 x i8] } { [9 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 0, i32 0, ptr @snd_cs46xx_vol_info, ptr @snd_cs46xx_vol_dac_get, ptr @snd_cs46xx_vol_dac_put, %union.anon.91 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.84, i32 0, i32 0, i32 0, ptr @snd_cs46xx_vol_info, ptr @snd_cs46xx_vol_get, ptr @snd_cs46xx_vol_put, %union.anon.91 zeroinitializer, i32 760 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_cs46xx_adc_capture_get, ptr @snd_cs46xx_adc_capture_put, %union.anon.91 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.86, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_cs46xx_pcm_capture_get, ptr @snd_cs46xx_pcm_capture_put, %union.anon.91 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_cs46xx_iec958_get, ptr @snd_cs46xx_iec958_put, %union.anon.91 zeroinitializer, i32 2 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.88, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_cs46xx_iec958_get, ptr @snd_cs46xx_iec958_put, %union.anon.91 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.89, i32 0, i32 0, i32 0, ptr @snd_cs46xx_spdif_info, ptr @snd_cs46xx_spdif_default_get, ptr @snd_cs46xx_spdif_default_put, %union.anon.91 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.90, i32 0, i32 1, i32 0, ptr @snd_cs46xx_spdif_info, ptr @snd_cs46xx_spdif_mask_get, ptr null, %union.anon.91 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.91, i32 0, i32 0, i32 0, ptr @snd_cs46xx_spdif_info, ptr @snd_cs46xx_spdif_stream_get, ptr @snd_cs46xx_spdif_stream_put, %union.anon.91 zeroinitializer, i32 0 }], [112 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"External Amplifier\00", [45 x i8] zeroinitializer }, align 32
@snd_cs46xx_front_dup_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.92, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_cs46xx_front_dup_get, ptr @snd_cs46xx_front_dup_put, %union.anon.91 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_cs46xx_mixer.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str, ptr @.str.10, i8 2, i8 115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"calling chip->mixer_init(chip);\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CS46XX\00", [25 x i8] zeroinitializer }, align 32
@snd_cs46xx_midi_output = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @snd_cs46xx_midi_output_open, ptr @snd_cs46xx_midi_output_close, ptr @snd_cs46xx_midi_output_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@snd_cs46xx_midi_input = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @snd_cs46xx_midi_input_open, ptr @snd_cs46xx_midi_input_close, ptr @snd_cs46xx_midi_input_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@snd_cs46xx_gameport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str, i32 2756, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cannot allocate memory for gameport\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snd_cs46xx_gameport\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_cs46xx_gameport._entry_ptr = internal global ptr @snd_cs46xx_gameport._entry, section ".printk_index", align 4
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CS46xx Gameport\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pci%s/gameport0\00", [16 x i8] zeroinitializer }, align 32
@module_names = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98], [44 x i8] zeroinitializer }, align 32
@snd_cs46xx_start_dsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str, i32 3204, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"firmware load error [%s]\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_cs46xx_start_dsp\00", [43 x i8] zeroinitializer }, align 32
@snd_cs46xx_start_dsp._entry_ptr = internal global ptr @snd_cs46xx_start_dsp._entry, section ".printk_index", align 4
@snd_cs46xx_start_dsp._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str, i32 3210, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"image download error [%s]\0A\00", [37 x i8] zeroinitializer }, align 32
@snd_cs46xx_start_dsp._entry_ptr.22 = internal global ptr @snd_cs46xx_start_dsp._entry.20, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@snd_cs46xx_pm = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @snd_cs46xx_suspend, ptr @snd_cs46xx_resume, ptr @snd_cs46xx_suspend, ptr @snd_cs46xx_resume, ptr @snd_cs46xx_suspend, ptr @snd_cs46xx_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@snd_cs46xx_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->reg_lock\00", [16 x i8] zeroinitializer }, align 32
@snd_cs46xx_create.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&chip->spos_mutex\00", [46 x i8] zeroinitializer }, align 32
@snd_cs46xx_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str, i32 3854, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"wrong address(es) - ba0 = 0x%lx, ba1 = 0x%lx\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_cs46xx_create\00", [46 x i8] zeroinitializer }, align 32
@snd_cs46xx_create._entry_ptr = internal global ptr @snd_cs46xx_create._entry, section ".printk_index", align 4
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CS46xx_BA0\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CS46xx_BA1_data0\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CS46xx_BA1_data1\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CS46xx_BA1_pmem\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CS46xx_BA1_reg\00", [17 x i8] zeroinitializer }, align 32
@cards = internal constant { [17 x %struct.cs_card_type], [104 x i8] } { [17 x %struct.cs_card_type] [%struct.cs_card_type { i16 5257, i16 28673, ptr @.str.101, ptr null, ptr null, ptr null, ptr null }, %struct.cs_card_type { i16 20563, i16 13143, ptr @.str.102, ptr null, ptr @amp_voyetra, ptr null, ptr @voyetra_mixer_init }, %struct.cs_card_type { i16 4209, i16 24579, ptr @.str.103, ptr null, ptr @amp_voyetra, ptr null, ptr null }, %struct.cs_card_type { i16 5295, i16 80, ptr @.str.104, ptr null, ptr @amp_hercules, ptr null, ptr @hercules_mixer_init }, %struct.cs_card_type { i16 5761, i16 80, ptr @.str.104, ptr null, ptr @amp_hercules, ptr null, ptr @hercules_mixer_init }, %struct.cs_card_type { i16 5761, i16 81, ptr @.str.104, ptr null, ptr @amp_hercules, ptr null, ptr @hercules_mixer_init }, %struct.cs_card_type { i16 5761, i16 82, ptr @.str.104, ptr null, ptr @amp_hercules, ptr null, ptr @hercules_mixer_init }, %struct.cs_card_type { i16 5761, i16 83, ptr @.str.104, ptr null, ptr @amp_hercules, ptr null, ptr @hercules_mixer_init }, %struct.cs_card_type { i16 5761, i16 84, ptr @.str.104, ptr null, ptr @amp_hercules, ptr null, ptr @hercules_mixer_init }, %struct.cs_card_type { i16 5761, i16 -24560, ptr @.str.105, ptr null, ptr null, ptr null, ptr null }, %struct.cs_card_type { i16 5761, i16 -24559, ptr @.str.106, ptr null, ptr null, ptr null, ptr null }, %struct.cs_card_type { i16 5435, i16 4398, ptr @.str.107, ptr null, ptr null, ptr null, ptr null }, %struct.cs_card_type { i16 5435, i16 4406, ptr @.str.108, ptr null, ptr null, ptr null, ptr null }, %struct.cs_card_type { i16 4116, i16 306, ptr @.str.109, ptr @clkrun_init, ptr null, ptr @clkrun_hack, ptr null }, %struct.cs_card_type { i16 4116, i16 339, ptr @.str.110, ptr @clkrun_init, ptr null, ptr @clkrun_hack, ptr null }, %struct.cs_card_type { i16 4116, i16 4112, ptr @.str.111, ptr null, ptr null, ptr null, ptr null }, %struct.cs_card_type zeroinitializer], [104 x i8] zeroinitializer }, align 32
@snd_cs46xx_create.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.27, ptr @.str, ptr @.str.33, i8 3, i8 -52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hack for %s enabled\0A\00", [43 x i8] zeroinitializer }, align 32
@snd_cs46xx_create._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.27, ptr @.str, i32 3904, ptr @.str.36, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Crystal EAPD support forced on.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@snd_cs46xx_create._entry_ptr.37 = internal global ptr @snd_cs46xx_create._entry.34, section ".printk_index", align 4
@snd_cs46xx_create._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.27, ptr @.str, i32 3910, ptr @.str.36, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Activating CLKRUN hack for Thinkpad.\0A\00", [58 x i8] zeroinitializer }, align 32
@snd_cs46xx_create._entry_ptr.40 = internal global ptr @snd_cs46xx_create._entry.38, section ".printk_index", align 4
@snd_cs46xx_create._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.27, ptr @.str, i32 3930, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s ioremap problem\0A\00", [44 x i8] zeroinitializer }, align 32
@snd_cs46xx_create._entry_ptr.43 = internal global ptr @snd_cs46xx_create._entry.41, section ".printk_index", align 4
@snd_cs46xx_create._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.27, ptr @.str, i32 3937, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to grab IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@snd_cs46xx_create._entry_ptr.46 = internal global ptr @snd_cs46xx_create._entry.44, section ".printk_index", align 4
@snd_cs46xx_playback_open.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.47, ptr @.str, ptr @.str.48, i8 1, i8 124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_cs46xx_playback_open\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"open front channel\0A\00", [44 x i8] zeroinitializer }, align 32
@snd_cs46xx_playback = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65825, i64 63, i32 1073742078, i32 5500, i32 48000, i32 1, i32 2, i32 262144, i32 64, i32 1048576, i32 2, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@hw_constraints_period_sizes = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @period_sizes, i32 7, i32 0 }, [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@period_sizes = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048], [36 x i8] zeroinitializer }, align 32
@snd_cs46xx_playback_hw_params.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.49, ptr @.str, ptr @.str.50, i8 1, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"snd_cs46xx_playback_hw_params\00", [34 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"period_size (%d), periods (%d) buffer_size(%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUG?\0A\00", [26 x i8] zeroinitializer }, align 32
@snd_cs46xx_playback_indirect_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_cs46xx_playback_open, ptr @snd_cs46xx_playback_close, ptr null, ptr @snd_cs46xx_playback_hw_params, ptr @snd_cs46xx_playback_hw_free, ptr @snd_cs46xx_playback_prepare, ptr @snd_cs46xx_playback_trigger, ptr null, ptr @snd_cs46xx_playback_indirect_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_cs46xx_playback_transfer }, [32 x i8] zeroinitializer }, align 32
@snd_cs46xx_playback_indirect_rear_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_cs46xx_playback_open_rear, ptr @snd_cs46xx_playback_close, ptr null, ptr @snd_cs46xx_playback_hw_params, ptr @snd_cs46xx_playback_hw_free, ptr @snd_cs46xx_playback_prepare, ptr @snd_cs46xx_playback_trigger, ptr null, ptr @snd_cs46xx_playback_indirect_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_cs46xx_playback_transfer }, [32 x i8] zeroinitializer }, align 32
@snd_cs46xx_playback_indirect_clfe_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_cs46xx_playback_open_clfe, ptr @snd_cs46xx_playback_close, ptr null, ptr @snd_cs46xx_playback_hw_params, ptr @snd_cs46xx_playback_hw_free, ptr @snd_cs46xx_playback_prepare, ptr @snd_cs46xx_playback_trigger, ptr null, ptr @snd_cs46xx_playback_indirect_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_cs46xx_playback_transfer }, [32 x i8] zeroinitializer }, align 32
@snd_cs46xx_playback_indirect_iec958_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_cs46xx_playback_open_iec958, ptr @snd_cs46xx_playback_close_iec958, ptr null, ptr @snd_cs46xx_playback_hw_params, ptr @snd_cs46xx_playback_hw_free, ptr @snd_cs46xx_playback_prepare, ptr @snd_cs46xx_playback_trigger, ptr null, ptr @snd_cs46xx_playback_indirect_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_cs46xx_playback_transfer }, [32 x i8] zeroinitializer }, align 32
@_cs46xx_adjust_sample_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str, i32 1051, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to create virtual PCM channel\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"_cs46xx_adjust_sample_rate\00", [37 x i8] zeroinitializer }, align 32
@_cs46xx_adjust_sample_rate._entry_ptr = internal global ptr @_cs46xx_adjust_sample_rate._entry, section ".printk_index", align 4
@_cs46xx_adjust_sample_rate._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str, i32 1066, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to re-create virtual PCM channel\0A\00", [55 x i8] zeroinitializer }, align 32
@_cs46xx_adjust_sample_rate._entry_ptr.56 = internal global ptr @_cs46xx_adjust_sample_rate._entry.54, section ".printk_index", align 4
@snd_cs46xx_playback_open_rear.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.57, ptr @.str, ptr @.str.58, i8 1, i8 126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"snd_cs46xx_playback_open_rear\00", [34 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"open rear channel\0A\00", [45 x i8] zeroinitializer }, align 32
@snd_cs46xx_playback_open_clfe.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.59, ptr @.str, ptr @.str.60, i8 1, i8 127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"snd_cs46xx_playback_open_clfe\00", [34 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"open center - LFE channel\0A\00", [37 x i8] zeroinitializer }, align 32
@snd_cs46xx_playback_open_iec958.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.61, ptr @.str, ptr @.str.62, i8 1, i8 -127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"snd_cs46xx_playback_open_iec958\00", [32 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"open raw iec958 channel\0A\00", [39 x i8] zeroinitializer }, align 32
@snd_cs46xx_playback_close_iec958.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.63, ptr @.str, ptr @.str.64, i8 1, i8 -123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"snd_cs46xx_playback_close_iec958\00", [63 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"close raw iec958 channel\0A\00", [38 x i8] zeroinitializer }, align 32
@snd_cs46xx_capture = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65825, i64 4, i32 1073742078, i32 5500, i32 48000, i32 2, i32 2, i32 262144, i32 64, i32 1048576, i32 2, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_cs46xx_capture_indirect_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_cs46xx_capture_open, ptr @snd_cs46xx_capture_close, ptr null, ptr @snd_cs46xx_capture_hw_params, ptr @snd_cs46xx_capture_hw_free, ptr @snd_cs46xx_capture_prepare, ptr @snd_cs46xx_capture_trigger, ptr null, ptr @snd_cs46xx_capture_indirect_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_cs46xx_capture_transfer }, [32 x i8] zeroinitializer }, align 32
@snd_cs46xx_codec_reset.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.65, ptr @.str, ptr @.str.66, i8 2, i8 81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_cs46xx_codec_reset\00", [41 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CODEC1 mode %04x\0A\00", [46 x i8] zeroinitializer }, align 32
@snd_cs46xx_codec_reset.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.65, ptr @.str, ptr @.str.67, i8 2, i8 82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CODEC2 mode %04x\0A\00", [46 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@snd_cs46xx_codec_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.65, ptr @.str, i32 2411, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"CS46xx secondary codec doesn't respond!\0A\00", [55 x i8] zeroinitializer }, align 32
@snd_cs46xx_codec_reset._entry_ptr = internal global ptr @snd_cs46xx_codec_reset._entry, section ".printk_index", align 4
@snd_cs46xx_codec_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str, i32 280, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"AC'97 write problem, codec_index = %d, reg = 0x%x, val = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_cs46xx_codec_write\00", [41 x i8] zeroinitializer }, align 32
@snd_cs46xx_codec_write._entry_ptr = internal global ptr @snd_cs46xx_codec_write._entry, section ".printk_index", align 4
@snd_cs46xx_codec_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str, i32 104, ptr @.str.73, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ACCTL_VFRM not set 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_cs46xx_codec_read\00", [42 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@snd_cs46xx_codec_read._entry_ptr = internal global ptr @snd_cs46xx_codec_read._entry, section ".printk_index", align 4
@snd_cs46xx_codec_read._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.72, ptr @.str, i32 157, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"AC'97 read problem (ACCTL_DCV), reg = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@snd_cs46xx_codec_read._entry_ptr.76 = internal global ptr @snd_cs46xx_codec_read._entry.74, section ".printk_index", align 4
@snd_cs46xx_codec_read._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.72, ptr @.str, i32 178, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"AC'97 read problem (ACSTS_VSTS), codec_index %d, reg = 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@snd_cs46xx_codec_read._entry_ptr.79 = internal global ptr @snd_cs46xx_codec_read._entry.77, section ".printk_index", align 4
@cs46xx_detect_codec.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.80, ptr @.str, ptr @.str.81, i8 2, i8 96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cs46xx_detect_codec\00", [44 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"secondary codec not present\0A\00", [35 x i8] zeroinitializer }, align 32
@cs46xx_detect_codec.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.80, ptr @.str, ptr @.str.82, i8 2, i8 99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"codec %d detection timeout\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC Volume\00", [21 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC Volume\00", [21 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DAC Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IEC958 Output Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IEC958 Input Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IEC958 Playback Default\00", [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IEC958 Playback Mask\00", [43 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IEC958 Playback PCM Stream\00", [37 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Duplicate Front\00", [16 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cs46xx/%s\00", [22 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cwc4630\00", [24 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cwcasync\00", [23 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cwcsnoop\00", [23 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cwcbinhack\00", [21 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cwcdma\00", [25 x i8] zeroinitializer }, align 32
@snd_cs46xx_proc_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str, i32 690, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SPCR_RUNFR never reset\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_cs46xx_proc_start\00", [42 x i8] zeroinitializer }, align 32
@snd_cs46xx_proc_start._entry_ptr = internal global ptr @snd_cs46xx_proc_start._entry, section ".printk_index", align 4
@.str.101 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Genius Soundmaker 128 value\00", [36 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Voyetra\00", [24 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Mitac MI6020/21\00", [16 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Hercules Game Theatre XP\00", [39 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Hercules Gamesurround Fortissimo II\00", [60 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Hercules Gamesurround Fortissimo III 7.1\00", [55 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Terratec DMX XFire 1024\00", [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Terratec SiXPack 5.1\00", [43 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Thinkpad 570\00", [19 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Thinkpad 600X/A20/T20\00", [42 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Thinkpad 600E (unsupported)\00", [36 x i8] zeroinitializer }, align 32
@voyetra_mixer_init.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.112, ptr @.str, ptr @.str.113, i8 3, i8 98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"voyetra_mixer_init\00", [45 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"initializing Voyetra mixer\0A\00", [36 x i8] zeroinitializer }, align 32
@amp_hercules.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.114, ptr @.str, ptr @.str.115, i8 3, i8 94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"amp_hercules\00", [19 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Hercules amplifier ON\0A\00", [41 x i8] zeroinitializer }, align 32
@amp_hercules.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.114, ptr @.str, ptr @.str.116, i8 3, i8 96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Hercules amplifier OFF\0A\00", [40 x i8] zeroinitializer }, align 32
@hercules_mixer_init.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.117, ptr @.str, ptr @.str.118, i8 3, i8 102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hercules_mixer_init\00", [44 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"initializing Hercules mixer\0A\00", [35 x i8] zeroinitializer }, align 32
@snd_hercules_controls = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.120, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_herc_spdif_select_get, ptr @snd_herc_spdif_select_put, %union.anon.91 zeroinitializer, i32 0 }], [48 x i8] zeroinitializer }, align 32
@hercules_mixer_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.117, ptr @.str, i32 3497, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to initialize Hercules mixer (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@hercules_mixer_init._entry_ptr = internal global ptr @hercules_mixer_init._entry, section ".printk_index", align 4
@.str.120 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Optical/Coaxial SPDIF Input Switch\00", [61 x i8] zeroinitializer }, align 32
@voyetra_setup_eapd_slot.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.121, ptr @.str, ptr @.str.122, i8 3, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"voyetra_setup_eapd_slot\00", [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cs46xx_setup_eapd_slot()+\0A\00", [37 x i8] zeroinitializer }, align 32
@voyetra_setup_eapd_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str, i32 3297, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"cs46xx_setup_eapd_slot() - no secondary codec configured\0A\00", [38 x i8] zeroinitializer }, align 32
@voyetra_setup_eapd_slot._entry_ptr = internal global ptr @voyetra_setup_eapd_slot._entry, section ".printk_index", align 4
@voyetra_setup_eapd_slot.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.121, ptr @.str, ptr @.str.124, i8 3, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FIFO is busy\0A\00", [18 x i8] zeroinitializer }, align 32
@voyetra_setup_eapd_slot.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.121, ptr @.str, ptr @.str.125, i8 3, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed waiting for FIFO at addr (%02X)\0A\00", [56 x i8] zeroinitializer }, align 32
@cs46xx_wait_for_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str, i32 603, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failure waiting for FIFO command to complete\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cs46xx_wait_for_fifo\00", [43 x i8] zeroinitializer }, align 32
@cs46xx_wait_for_fifo._entry_ptr = internal global ptr @cs46xx_wait_for_fifo._entry, section ".printk_index", align 4
@snd_cs46xx_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str, i32 3069, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"create - never read codec ready from AC'97\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_cs46xx_chip_init\00", [43 x i8] zeroinitializer }, align 32
@snd_cs46xx_chip_init._entry_ptr = internal global ptr @snd_cs46xx_chip_init._entry, section ".printk_index", align 4
@snd_cs46xx_chip_init._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.129, ptr @.str, i32 3071, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"it is not probably bug, try to use CS4236 driver\0A\00", [46 x i8] zeroinitializer }, align 32
@snd_cs46xx_chip_init._entry_ptr.132 = internal global ptr @snd_cs46xx_chip_init._entry.130, section ".printk_index", align 4
@snd_cs46xx_chip_init.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.129, ptr @.str, ptr @.str.133, i8 3, i8 4, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"never read card ready from secondary AC'97\0A\00", [52 x i8] zeroinitializer }, align 32
@snd_cs46xx_chip_init._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.129, ptr @.str, i32 3128, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"never read ISV3 & ISV4 from AC'97\0A\00", [61 x i8] zeroinitializer }, align 32
@snd_cs46xx_chip_init._entry_ptr.136 = internal global ptr @snd_cs46xx_chip_init._entry.134, section ".printk_index", align 4
@snd_cs46xx_chip_init._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.129, ptr @.str, i32 3130, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Try reloading the ALSA driver, if you find something\0A\00", [42 x i8] zeroinitializer }, align 32
@snd_cs46xx_chip_init._entry_ptr.139 = internal global ptr @snd_cs46xx_chip_init._entry.137, section ".printk_index", align 4
@snd_cs46xx_chip_init._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.129, ptr @.str, i32 3132, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"broken or not working on your soundcard upon\0A\00", [50 x i8] zeroinitializer }, align 32
@snd_cs46xx_chip_init._entry_ptr.142 = internal global ptr @snd_cs46xx_chip_init._entry.140, section ".printk_index", align 4
@snd_cs46xx_chip_init._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.129, ptr @.str, i32 3134, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"this message please report to alsa-devel@alsa-project.org\0A\00", [37 x i8] zeroinitializer }, align 32
@snd_cs46xx_chip_init._entry_ptr.145 = internal global ptr @snd_cs46xx_chip_init._entry.143, section ".printk_index", align 4
@snd_cs46xx_clear_serial_FIFOs.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.146, ptr @.str, ptr @.str.125, i8 0, i8 -96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.146 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"snd_cs46xx_clear_serial_FIFOs\00", [34 x i8] zeroinitializer }, align 32
@snd_cs46xx_proc_io_ops = internal constant { %struct.snd_info_entry_ops, [32 x i8] } { %struct.snd_info_entry_ops { ptr null, ptr null, ptr @snd_cs46xx_io_read, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.149 = internal global [9 x i64] [i64 7, i64 16, i64 4116, i64 4209, i64 5257, i64 5295, i64 5435, i64 5761, i64 20563]
@__sancov_gen_cov_switch_values.150 = internal global [4 x i64] [i64 2, i64 16, i64 4398, i64 4406]
@__sancov_gen_cov_switch_values.151 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.152 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.153 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 5, i64 6]
@__sancov_gen_cov_switch_values.154 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 5, i64 6]
@__sancov_gen_cov_switch_values.155 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 313, i32 6 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1752, i32 32 }
@___asan_gen_.162 = private unnamed_addr constant [24 x i8] c"snd_cs46xx_playback_ops\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1699, i32 33 }
@___asan_gen_.165 = private unnamed_addr constant [23 x i8] c"snd_cs46xx_capture_ops\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1720, i32 33 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1780, i32 32 }
@___asan_gen_.171 = private unnamed_addr constant [29 x i8] c"snd_cs46xx_playback_rear_ops\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1634, i32 33 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1805, i32 32 }
@___asan_gen_.177 = private unnamed_addr constant [29 x i8] c"snd_cs46xx_playback_clfe_ops\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1655, i32 33 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1830, i32 32 }
@___asan_gen_.183 = private unnamed_addr constant [31 x i8] c"snd_cs46xx_playback_iec958_ops\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1676, i32 33 }
@___asan_gen_.186 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2455, i32 39 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2465, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2475, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant [20 x i8] c"snd_cs46xx_controls\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2227, i32 38 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2495, i32 18 }
@___asan_gen_.207 = private unnamed_addr constant [25 x i8] c"snd_cs46xx_front_dup_ctl\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2342, i32 38 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2511, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2675, i32 36 }
@___asan_gen_.216 = private unnamed_addr constant [23 x i8] c"snd_cs46xx_midi_output\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2656, i32 37 }
@___asan_gen_.219 = private unnamed_addr constant [22 x i8] c"snd_cs46xx_midi_input\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2663, i32 37 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2755, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2760, i32 24 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2761, i32 24 }
@___asan_gen_.243 = private unnamed_addr constant [13 x i8] c"module_names\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 341, i32 20 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3203, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3209, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant [14 x i8] c"snd_cs46xx_pm\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3815, i32 1 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3837, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3839, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3852, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3859, i32 23 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3864, i32 23 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3869, i32 23 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3874, i32 23 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3879, i32 23 }
@___asan_gen_.300 = private unnamed_addr constant [6 x i8] c"cards\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3599, i32 28 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3889, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3903, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3909, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3929, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3937, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1521, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant [20 x i8] c"snd_cs46xx_playback\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1416, i32 38 }
@___asan_gen_.342 = private unnamed_addr constant [28 x i8] c"hw_constraints_period_sizes\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1464, i32 48 }
@___asan_gen_.345 = private unnamed_addr constant [13 x i8] c"period_sizes\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1462, i32 27 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1115, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1137, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant [33 x i8] c"snd_cs46xx_playback_indirect_ops\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1709, i32 33 }
@___asan_gen_.360 = private unnamed_addr constant [38 x i8] c"snd_cs46xx_playback_indirect_rear_ops\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1644, i32 33 }
@___asan_gen_.363 = private unnamed_addr constant [38 x i8] c"snd_cs46xx_playback_indirect_clfe_ops\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1665, i32 33 }
@___asan_gen_.366 = private unnamed_addr constant [40 x i8] c"snd_cs46xx_playback_indirect_iec958_ops\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1686, i32 33 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1050, i32 4 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1065, i32 4 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1528, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1534, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1542, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1558, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant [19 x i8] c"snd_cs46xx_capture\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1439, i32 38 }
@___asan_gen_.411 = private unnamed_addr constant [32 x i8] c"snd_cs46xx_capture_indirect_ops\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1730, i32 33 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2374, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2377, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2410, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 278, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 104, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 156, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 176, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2431, i32 4 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2445, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2230, i32 10 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2244, i32 10 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2257, i32 10 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2264, i32 10 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2271, i32 10 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2279, i32 10 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2298, i32 11 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2305, i32 11 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2312, i32 11 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2344, i32 10 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 393, i32 19 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 342, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 342, i32 13 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 342, i32 25 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 342, i32 37 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 342, i32 51 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 690, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3603, i32 11 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3609, i32 11 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3616, i32 11 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3623, i32 11 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3667, i32 11 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3672, i32 11 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3678, i32 11 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3683, i32 11 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3689, i32 11 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3696, i32 11 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3703, i32 11 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3465, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3450, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3457, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3483, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant [22 x i8] c"snd_hercules_controls\00", align 1
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2353, i32 38 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3495, i32 4 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2356, i32 10 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3278, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3296, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3338, i32 3 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3359, i32 4 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 602, i32 3 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3068, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3070, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3089, i32 4 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3128, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3129, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3131, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 3133, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 640, i32 4 }
@___asan_gen_.666 = private unnamed_addr constant [23 x i8] c"snd_cs46xx_proc_io_ops\00", align 1
@___asan_gen_.667 = private constant [33 x i8] c"../sound/pci/cs46xx/cs46xx_lib.c\00", align 1
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2807, i32 40 }
@llvm.compiler.used = appending global [201 x ptr] [ptr @__UNIQUE_ID_firmware242, ptr @__UNIQUE_ID_firmware243, ptr @__UNIQUE_ID_firmware244, ptr @__UNIQUE_ID_firmware245, ptr @__UNIQUE_ID_firmware246, ptr @_cs46xx_adjust_sample_rate._entry, ptr @_cs46xx_adjust_sample_rate._entry.54, ptr @_cs46xx_adjust_sample_rate._entry_ptr, ptr @_cs46xx_adjust_sample_rate._entry_ptr.56, ptr @cs46xx_wait_for_fifo._entry, ptr @cs46xx_wait_for_fifo._entry_ptr, ptr @hercules_mixer_init._entry, ptr @hercules_mixer_init._entry_ptr, ptr @snd_cs46xx_chip_init._entry, ptr @snd_cs46xx_chip_init._entry.130, ptr @snd_cs46xx_chip_init._entry.134, ptr @snd_cs46xx_chip_init._entry.137, ptr @snd_cs46xx_chip_init._entry.140, ptr @snd_cs46xx_chip_init._entry.143, ptr @snd_cs46xx_chip_init._entry_ptr, ptr @snd_cs46xx_chip_init._entry_ptr.132, ptr @snd_cs46xx_chip_init._entry_ptr.136, ptr @snd_cs46xx_chip_init._entry_ptr.139, ptr @snd_cs46xx_chip_init._entry_ptr.142, ptr @snd_cs46xx_chip_init._entry_ptr.145, ptr @snd_cs46xx_codec_read._entry, ptr @snd_cs46xx_codec_read._entry.74, ptr @snd_cs46xx_codec_read._entry.77, ptr @snd_cs46xx_codec_read._entry_ptr, ptr @snd_cs46xx_codec_read._entry_ptr.76, ptr @snd_cs46xx_codec_read._entry_ptr.79, ptr @snd_cs46xx_codec_reset._entry, ptr @snd_cs46xx_codec_reset._entry_ptr, ptr @snd_cs46xx_codec_write._entry, ptr @snd_cs46xx_codec_write._entry_ptr, ptr @snd_cs46xx_create._entry, ptr @snd_cs46xx_create._entry.34, ptr @snd_cs46xx_create._entry.38, ptr @snd_cs46xx_create._entry.41, ptr @snd_cs46xx_create._entry.44, ptr @snd_cs46xx_create._entry_ptr, ptr @snd_cs46xx_create._entry_ptr.37, ptr @snd_cs46xx_create._entry_ptr.40, ptr @snd_cs46xx_create._entry_ptr.43, ptr @snd_cs46xx_create._entry_ptr.46, ptr @snd_cs46xx_gameport._entry, ptr @snd_cs46xx_gameport._entry_ptr, ptr @snd_cs46xx_proc_start._entry, ptr @snd_cs46xx_proc_start._entry_ptr, ptr @snd_cs46xx_start_dsp._entry, ptr @snd_cs46xx_start_dsp._entry.20, ptr @snd_cs46xx_start_dsp._entry_ptr, ptr @snd_cs46xx_start_dsp._entry_ptr.22, ptr @voyetra_setup_eapd_slot._entry, ptr @voyetra_setup_eapd_slot._entry_ptr, ptr @.str, ptr @.str.1, ptr @snd_cs46xx_playback_ops, ptr @snd_cs46xx_capture_ops, ptr @.str.2, ptr @snd_cs46xx_playback_rear_ops, ptr @.str.3, ptr @snd_cs46xx_playback_clfe_ops, ptr @.str.4, ptr @snd_cs46xx_playback_iec958_ops, ptr @snd_cs46xx_mixer.ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @snd_cs46xx_controls, ptr @.str.9, ptr @snd_cs46xx_front_dup_ctl, ptr @.str.10, ptr @.str.11, ptr @snd_cs46xx_midi_output, ptr @snd_cs46xx_midi_input, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @module_names, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @snd_cs46xx_pm, ptr @snd_cs46xx_create.__key, ptr @.str.23, ptr @snd_cs46xx_create.__key.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @cards, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @snd_cs46xx_playback, ptr @hw_constraints_period_sizes, ptr @period_sizes, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @snd_cs46xx_playback_indirect_ops, ptr @snd_cs46xx_playback_indirect_rear_ops, ptr @snd_cs46xx_playback_indirect_clfe_ops, ptr @snd_cs46xx_playback_indirect_iec958_ops, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @snd_cs46xx_capture, ptr @snd_cs46xx_capture_indirect_ops, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @snd_hercules_controls, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.131, ptr @.str.133, ptr @.str.135, ptr @.str.138, ptr @.str.141, ptr @.str.144, ptr @.str.146, ptr @snd_cs46xx_proc_io_ops], section "llvm.metadata"
@0 = internal global [171 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_playback_rear_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_playback_clfe_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_playback_iec958_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_mixer.ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_controls to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_front_dup_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_midi_output to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_midi_input to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_gameport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @module_names to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_start_dsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_start_dsp._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_create.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cards to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_create._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_create._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_create._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_create._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_playback to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_constraints_period_sizes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @period_sizes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_playback_indirect_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_playback_indirect_rear_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_playback_indirect_clfe_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_playback_indirect_iec958_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_cs46xx_adjust_sample_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_cs46xx_adjust_sample_rate._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_capture to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_capture_indirect_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_codec_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_codec_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_codec_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_codec_read._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_codec_read._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_proc_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hercules_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hercules_mixer_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voyetra_setup_eapd_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs46xx_wait_for_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_chip_init._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_chip_init._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_chip_init._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_chip_init._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_chip_init._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_proc_io_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_cs46xx_download(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %src, i32 noundef %offset, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i32 %len, %offset
  %1 = and i32 %0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %if.end25, label %do.end, !prof !357

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 313, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end25:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp.not39 = icmp ult i32 %len, 4
  br i1 %cmp.not39, label %if.end25.cleanup_crit_edge, label %do.body26.preheader

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body26.preheader:                              ; preds = %if.end25
  %div38 = lshr i32 %len, 2
  %region = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 3
  %shr = lshr i32 %offset, 16
  %add = add nuw nsw i32 %shr, 1
  %remap_addr = getelementptr [5 x %struct.snd_cs46xx_region], ptr %region, i32 0, i32 %add, i32 2
  %2 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remap_addr, align 4
  %and = and i32 %offset, 65535
  %add.ptr = getelementptr i8, ptr %3, i32 %and
  br label %do.body26

do.body26:                                        ; preds = %do.body26.do.body26_crit_edge, %do.body26.preheader
  %dst.042 = phi ptr [ %add.ptr29, %do.body26.do.body26_crit_edge ], [ %add.ptr, %do.body26.preheader ]
  %len.addr.041 = phi i32 [ %dec, %do.body26.do.body26_crit_edge ], [ %div38, %do.body26.preheader ]
  %src.addr.040 = phi ptr [ %incdec.ptr, %do.body26.do.body26_crit_edge ], [ %src, %do.body26.preheader ]
  %dec = add nsw i32 %len.addr.041, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !358
  tail call void @arm_heavy_mb() #13
  %incdec.ptr = getelementptr i32, ptr %src.addr.040, i32 1
  %4 = ptrtoint ptr %src.addr.040 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src.addr.040, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.042, i32 %6) #13, !srcloc !359
  %add.ptr29 = getelementptr i8, ptr %dst.042, i32 4
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %do.body26.cleanup_crit_edge, label %do.body26.do.body26_crit_edge

do.body26.do.body26_crit_edge:                    ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body26

do.body26.cleanup_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %do.body26.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end25.cleanup_crit_edge ], [ 0, %do.body26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_cs46xx_clear_BA1(ptr nocapture noundef readonly %chip, i32 noundef %offset, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i32 %len, %offset
  %1 = and i32 %0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %if.end25, label %do.end, !prof !357

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 476, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end25:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp.not39 = icmp ult i32 %len, 4
  br i1 %cmp.not39, label %if.end25.cleanup_crit_edge, label %do.body26.preheader

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body26.preheader:                              ; preds = %if.end25
  %div38 = lshr i32 %len, 2
  %region = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 3
  %shr = lshr i32 %offset, 16
  %add = add nuw nsw i32 %shr, 1
  %remap_addr = getelementptr [5 x %struct.snd_cs46xx_region], ptr %region, i32 0, i32 %add, i32 2
  %2 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remap_addr, align 4
  %and = and i32 %offset, 65535
  %add.ptr = getelementptr i8, ptr %3, i32 %and
  br label %do.body26

do.body26:                                        ; preds = %do.body26.do.body26_crit_edge, %do.body26.preheader
  %dst.041 = phi ptr [ %add.ptr29, %do.body26.do.body26_crit_edge ], [ %add.ptr, %do.body26.preheader ]
  %len.addr.040 = phi i32 [ %dec, %do.body26.do.body26_crit_edge ], [ %div38, %do.body26.preheader ]
  %dec = add nsw i32 %len.addr.040, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !360
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.041, i32 0) #13, !srcloc !359
  %add.ptr29 = getelementptr i8, ptr %dst.041, i32 4
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %do.body26.cleanup_crit_edge, label %do.body26.do.body26_crit_edge

do.body26.do.body26_crit_edge:                    ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body26

do.body26.cleanup_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %do.body26.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end25.cleanup_crit_edge ], [ 0, %do.body26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_cs46xx_pcm(ptr noundef %chip, i32 noundef %device) local_unnamed_addr #0 align 64 {
entry:
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #13
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !361
  %card = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 4
  %call = call i32 @snd_pcm_new(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %device, i32 noundef 31, i32 noundef 1, ptr noundef nonnull %pcm) #13
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
  call void @snd_pcm_set_ops(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @snd_cs46xx_playback_ops) #13
  %6 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %7, i32 noundef 1, ptr noundef nonnull @snd_cs46xx_capture_ops) #13
  %8 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcm, align 4
  %info_flags = getelementptr inbounds %struct.snd_pcm, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %info_flags, align 8
  %name = getelementptr inbounds %struct.snd_pcm, ptr %9, i32 0, i32 7
  %11 = call ptr @memcpy(ptr %name, ptr @.str.1, i32 7)
  %pcm2 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 11
  %12 = ptrtoint ptr %pcm2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %pcm2, align 4
  %pci = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 9
  %13 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  call void @snd_pcm_lib_preallocate_pages_for_all(ptr noundef %9, i32 noundef 2, ptr noundef %dev, i32 noundef 65536, i32 noundef 262144) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_lib_preallocate_pages_for_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_cs46xx_pcm_rear(ptr noundef %chip, i32 noundef %device) local_unnamed_addr #0 align 64 {
entry:
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #13
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !361
  %card = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 4
  %call = call i32 @snd_pcm_new(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %device, i32 noundef 31, i32 noundef 0, ptr noundef nonnull %pcm) #13
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
  call void @snd_pcm_set_ops(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @snd_cs46xx_playback_rear_ops) #13
  %6 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcm, align 4
  %info_flags = getelementptr inbounds %struct.snd_pcm, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %info_flags, align 8
  %name = getelementptr inbounds %struct.snd_pcm, ptr %7, i32 0, i32 7
  %9 = call ptr @memcpy(ptr %name, ptr @.str.2, i32 14)
  %pcm_rear = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 29
  %10 = ptrtoint ptr %pcm_rear to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %pcm_rear, align 4
  %pci = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 9
  %11 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  call void @snd_pcm_lib_preallocate_pages_for_all(ptr noundef %7, i32 noundef 2, ptr noundef %dev, i32 noundef 65536, i32 noundef 262144) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_cs46xx_pcm_center_lfe(ptr noundef %chip, i32 noundef %device) local_unnamed_addr #0 align 64 {
entry:
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #13
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !361
  %card = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 4
  %call = call i32 @snd_pcm_new(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %device, i32 noundef 31, i32 noundef 0, ptr noundef nonnull %pcm) #13
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
  call void @snd_pcm_set_ops(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @snd_cs46xx_playback_clfe_ops) #13
  %6 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcm, align 4
  %info_flags = getelementptr inbounds %struct.snd_pcm, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %info_flags, align 8
  %name = getelementptr inbounds %struct.snd_pcm, ptr %7, i32 0, i32 7
  %9 = call ptr @memcpy(ptr %name, ptr @.str.3, i32 20)
  %pcm_center_lfe = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 30
  %10 = ptrtoint ptr %pcm_center_lfe to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %pcm_center_lfe, align 4
  %pci = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 9
  %11 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  call void @snd_pcm_lib_preallocate_pages_for_all(ptr noundef %7, i32 noundef 2, ptr noundef %dev, i32 noundef 65536, i32 noundef 262144) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_cs46xx_pcm_iec958(ptr noundef %chip, i32 noundef %device) local_unnamed_addr #0 align 64 {
entry:
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #13
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !361
  %card = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 4
  %call = call i32 @snd_pcm_new(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %device, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %pcm) #13
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
  call void @snd_pcm_set_ops(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @snd_cs46xx_playback_iec958_ops) #13
  %6 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcm, align 4
  %info_flags = getelementptr inbounds %struct.snd_pcm, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %info_flags, align 8
  %name = getelementptr inbounds %struct.snd_pcm, ptr %7, i32 0, i32 7
  %9 = call ptr @memcpy(ptr %name, ptr @.str.4, i32 16)
  %pcm_iec958 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 31
  %10 = ptrtoint ptr %pcm_iec958 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %pcm_iec958, align 4
  %pci = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 9
  %11 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  call void @snd_pcm_lib_preallocate_pages_for_all(ptr noundef %7, i32 noundef 2, ptr noundef %dev, i32 noundef 65536, i32 noundef 262144) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_cs46xx_mixer(ptr noundef %chip, i32 noundef %spdif_device) local_unnamed_addr #0 align 64 {
entry:
  %id = alloca %struct.snd_ctl_elem_id, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %id) #13
  %nr_ac97_codecs = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 6
  %2 = ptrtoint ptr %nr_ac97_codecs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %nr_ac97_codecs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_cs46xx_mixer.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_cs46xx_mixer, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card1, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 27
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_cs46xx_mixer.__UNIQUE_ID_ddebug258, ptr noundef %6, ptr noundef nonnull @.str.7) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ac97_bus = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 7
  %call5 = tail call i32 @snd_ac97_bus(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @snd_cs46xx_mixer.ops, ptr noundef %chip, ptr noundef %ac97_bus) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end.cleanup94_crit_edge, label %if.end7

do.end.cleanup94_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup94

if.end7:                                          ; preds = %do.end
  %call8 = tail call fastcc i32 @cs46xx_detect_codec(ptr noundef %chip, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end7.cleanup94_crit_edge, label %if.end11

if.end7.cleanup94_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup94

if.end11:                                         ; preds = %if.end7
  %7 = ptrtoint ptr %nr_ac97_codecs to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %nr_ac97_codecs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_cs46xx_mixer.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_cs46xx_mixer, %if.then25)) #13
          to label %do.end30 [label %if.then25], !srcloc !362

if.then25:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card1, align 4
  %dev27 = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev27, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_cs46xx_mixer.__UNIQUE_ID_ddebug259, ptr noundef %11, ptr noundef nonnull @.str.8) #13
  br label %do.end30

do.end30:                                         ; preds = %if.then25, %if.end11
  %call31 = tail call fastcc i32 @cs46xx_detect_codec(ptr noundef %chip, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %do.end30.for.body.preheader_crit_edge

do.end30.for.body.preheader_crit_edge:            ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.preheader

if.then33:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %nr_ac97_codecs to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %nr_ac97_codecs, align 4
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then33, %do.end30.for.body.preheader_crit_edge
  br label %for.body

for.cond:                                         ; preds = %if.end43
  %inc = add nuw nsw i32 %idx.0145, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %idx.0145 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [9 x %struct.snd_kcontrol_new], ptr @snd_cs46xx_controls, i32 0, i32 %idx.0145
  %call37 = tail call ptr @snd_ctl_new1(ptr noundef %arrayidx, ptr noundef %chip) #13
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %for.body.if.end43_crit_edge, label %land.lhs.true

for.body.if.end43_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

land.lhs.true:                                    ; preds = %for.body
  %iface = getelementptr inbounds %struct.snd_kcontrol, ptr %call37, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp40 = icmp eq i32 %14, 3
  br i1 %cmp40, label %if.then41, label %land.lhs.true.if.end43_crit_edge

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

if.then41:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %device = getelementptr inbounds %struct.snd_kcontrol, ptr %call37, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spdif_device, ptr %device, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %land.lhs.true.if.end43_crit_edge, %for.body.if.end43_crit_edge
  %call44 = tail call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call37) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.end43.cleanup94_crit_edge, label %for.cond

if.end43.cleanup94_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup94

for.end:                                          ; preds = %for.cond
  %16 = call ptr @memset(ptr %id, i32 0, i32 64)
  %iface48 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id, i32 0, i32 1
  %17 = ptrtoint ptr %iface48 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %iface48, align 4
  %name = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id, i32 0, i32 4
  %18 = call ptr @memcpy(ptr %name, ptr @.str.9, i32 19)
  %19 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card1, align 4
  %call51 = call ptr @snd_ctl_find_id(ptr noundef %20, ptr noundef nonnull %id) #13
  %eapd_switch = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 23
  %21 = ptrtoint ptr %eapd_switch to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call51, ptr %eapd_switch, align 4
  %22 = ptrtoint ptr %nr_ac97_codecs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_ac97_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp53 = icmp eq i32 %23, 1
  br i1 %cmp53, label %if.then54, label %for.end.if.end71_crit_edge

for.end.if.end71_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71

if.then54:                                        ; preds = %for.end
  %ac97 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 8
  %24 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ac97, align 4
  %id56 = getelementptr inbounds %struct.snd_ac97, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %id56 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id56, align 4
  %and57 = and i32 %27, 65520
  call void @__sanitizer_cov_trace_const_cmp4(i32 22816, i32 %and57)
  %cmp58 = icmp eq i32 %and57, 22816
  br i1 %cmp58, label %if.then59, label %if.then54.if.end71_crit_edge

if.then54.if.end71_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71

if.then59:                                        ; preds = %if.then54
  %call60 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_cs46xx_front_dup_ctl, ptr noundef %chip) #13
  %call61 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call60) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.then59.cleanup94_crit_edge, label %if.end64

if.then59.cleanup94_crit_edge:                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup94

if.end64:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ac97, align 4
  call void @snd_ac97_write_cache(ptr noundef %29, i16 noundef zeroext 94, i16 noundef zeroext 512) #13
  br label %if.end71

if.end71:                                         ; preds = %if.end64, %if.then54.if.end71_crit_edge, %for.end.if.end71_crit_edge
  %mixer_init = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 21
  %30 = ptrtoint ptr %mixer_init to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mixer_init, align 4
  %tobool72.not = icmp eq ptr %31, null
  br i1 %tobool72.not, label %if.end71.if.end93_crit_edge, label %do.body74

if.end71.if.end93_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end93

do.body74:                                        ; preds = %if.end71
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_cs46xx_mixer.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_cs46xx_mixer, %if.then86)) #13
          to label %do.end91 [label %if.then86], !srcloc !362

if.then86:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %card1, align 4
  %dev88 = getelementptr inbounds %struct.snd_card, ptr %33, i32 0, i32 27
  %34 = ptrtoint ptr %dev88 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev88, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_cs46xx_mixer.__UNIQUE_ID_ddebug260, ptr noundef %35, ptr noundef nonnull @.str.10) #13
  br label %do.end91

do.end91:                                         ; preds = %if.then86, %do.body74
  %36 = ptrtoint ptr %mixer_init to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mixer_init, align 4
  call void %37(ptr noundef %chip) #13
  br label %if.end93

if.end93:                                         ; preds = %do.end91, %if.end71.if.end93_crit_edge
  %amplifier_ctrl = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 19
  %38 = ptrtoint ptr %amplifier_ctrl to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %amplifier_ctrl, align 4
  call void %39(ptr noundef %chip, i32 noundef 1) #13
  br label %cleanup94

cleanup94:                                        ; preds = %if.end93, %if.then59.cleanup94_crit_edge, %if.end43.cleanup94_crit_edge, %if.end7.cleanup94_crit_edge, %do.end.cleanup94_crit_edge
  %retval.3 = phi i32 [ 0, %if.end93 ], [ %call5, %do.end.cleanup94_crit_edge ], [ -6, %if.end7.cleanup94_crit_edge ], [ %call61, %if.then59.cleanup94_crit_edge ], [ %call44, %if.end43.cleanup94_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %id) #13
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_cs46xx_codec_reset(ptr noundef %ac97) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @snd_ac97_write(ptr noundef %ac97, i16 noundef zeroext 0, i16 noundef zeroext 0) #13
  %num = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 11
  %0 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num, align 8
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %1, label %do.end41 [
    i16 0, label %do.body
    i16 1, label %do.body10
  ]

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_cs46xx_codec_reset.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_cs46xx_codec_reset, %if.then4)) #13
          to label %do.end [label %if.then4], !srcloc !362

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %bus = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 3
  %3 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus, align 4
  %card = getelementptr inbounds %struct.snd_ac97_bus, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_cs46xx_codec_reset.__UNIQUE_ID_ddebug254, ptr noundef %8, ptr noundef nonnull @.str.66, i32 noundef 0) #13
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %9 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %10)
  %11 = icmp ugt i16 %10, 1
  br i1 %11, label %do.end.i, label %if.end24.i, !prof !363

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 293, i32 noundef 9, ptr noundef null) #13
  br label %if.end56

if.end24.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i = zext i16 %10 to i32
  %private_data.i = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %12 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data.i, align 4
  tail call fastcc void @snd_cs46xx_codec_write(ptr noundef %13, i16 noundef zeroext 94, i16 noundef zeroext 0, i32 noundef %conv.i) #13
  br label %if.end56

do.body10:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_cs46xx_codec_reset.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_cs46xx_codec_reset, %if.then22)) #13
          to label %do.end28 [label %if.then22], !srcloc !362

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #15
  %bus23 = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 3
  %14 = ptrtoint ptr %bus23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus23, align 4
  %card24 = getelementptr inbounds %struct.snd_ac97_bus, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %card24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card24, align 4
  %dev25 = getelementptr inbounds %struct.snd_card, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev25, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_cs46xx_codec_reset.__UNIQUE_ID_ddebug255, ptr noundef %19, ptr noundef nonnull @.str.67, i32 noundef 3) #13
  br label %do.end28

do.end28:                                         ; preds = %if.then22, %do.body10
  %20 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %num, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %21)
  %22 = icmp ugt i16 %21, 1
  br i1 %22, label %do.end.i109, label %if.end24.i112, !prof !363

do.end.i109:                                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 293, i32 noundef 9, ptr noundef null) #13
  br label %if.end56

if.end24.i112:                                    ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i110 = zext i16 %21 to i32
  %private_data.i111 = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %23 = ptrtoint ptr %private_data.i111 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %private_data.i111, align 4
  tail call fastcc void @snd_cs46xx_codec_write(ptr noundef %24, i16 noundef zeroext 94, i16 noundef zeroext 3, i32 noundef %conv.i110) #13
  br label %if.end56

do.end41:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2380, i32 noundef 9, ptr noundef nonnull @.str.51) #13
  br label %if.end56

if.end56:                                         ; preds = %do.end41, %if.end24.i112, %do.end.i109, %if.end24.i, %do.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 10737400) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %26, 100
  br label %do.body57

do.body57:                                        ; preds = %if.end75.do.body57_crit_edge, %if.end56
  %call58 = tail call zeroext i16 @snd_ac97_read(ptr noundef %ac97, i16 noundef zeroext 0) #13
  %call59 = tail call zeroext i16 @snd_ac97_read(ptr noundef %ac97, i16 noundef zeroext 124) #13
  %call60 = tail call zeroext i16 @snd_ac97_read(ptr noundef %ac97, i16 noundef zeroext 126) #13
  %call61 = tail call zeroext i16 @snd_ac97_read(ptr noundef %ac97, i16 noundef zeroext 60) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call61)
  %cmp63.not = icmp eq i16 %call61, -1
  %27 = and i16 %call61, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp66.not = icmp eq i16 %27, 0
  %or.cond = or i1 %cmp63.not, %cmp66.not
  br i1 %or.cond, label %if.end69, label %do.body57.cleanup86_crit_edge

do.body57.cleanup86_crit_edge:                    ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup86

if.end69:                                         ; preds = %do.body57
  tail call void @snd_ac97_write(ptr noundef %ac97, i16 noundef zeroext 28, i16 noundef zeroext -30203) #13
  %call70 = tail call zeroext i16 @snd_ac97_read(ptr noundef %ac97, i16 noundef zeroext 28) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30203, i16 %call70)
  %cmp72 = icmp eq i16 %call70, -30203
  br i1 %cmp72, label %if.end69.cleanup86_crit_edge, label %if.end75

if.end69.cleanup86_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup86

if.end75:                                         ; preds = %if.end69
  tail call void @msleep(i32 noundef 10) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %28
  %cmp77 = icmp sgt i32 %sub, -1
  br i1 %cmp77, label %if.end75.do.body57_crit_edge, label %do.end82

if.end75.do.body57_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body57

do.end82:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  %bus83 = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 3
  %29 = ptrtoint ptr %bus83 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bus83, align 4
  %card84 = getelementptr inbounds %struct.snd_ac97_bus, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %card84 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %card84, align 4
  %dev85 = getelementptr inbounds %struct.snd_card, ptr %32, i32 0, i32 27
  %33 = ptrtoint ptr %dev85 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev85, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.68) #16
  br label %cleanup86

cleanup86:                                        ; preds = %do.end82, %if.end69.cleanup86_crit_edge, %do.body57.cleanup86_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_cs46xx_ac97_write(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg, i16 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %num = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 11
  %0 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %2 = icmp ugt i16 %1, 1
  br i1 %2, label %do.end, label %if.end24, !prof !363

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 293, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i16 %1 to i32
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  tail call fastcc void @snd_cs46xx_codec_write(ptr noundef %4, i16 noundef zeroext %reg, i16 noundef zeroext %val, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @snd_cs46xx_ac97_read(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %num = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 11
  %0 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %2 = icmp ugt i16 %1, 1
  br i1 %2, label %do.end, label %if.end24, !prof !363

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 209, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i16 %1 to i32
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  %call = tail call fastcc zeroext i16 @snd_cs46xx_codec_read(ptr noundef %4, i16 noundef zeroext %reg, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end
  %retval.0 = phi i16 [ -1, %do.end ], [ %call, %if.end24 ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_bus(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cs46xx_detect_codec(ptr noundef %chip, i32 noundef %codec) unnamed_addr #0 align 64 {
entry:
  %ac97 = alloca %struct.snd_ac97_template, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ac97) #13
  %0 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97, i32 0, i32 1
  %1 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97, i32 0, i32 3
  %2 = getelementptr inbounds i8, ptr %ac97, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 16)
  %4 = ptrtoint ptr %ac97 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %chip, ptr %ac97, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @snd_cs46xx_mixer_free_ac97, ptr %0, align 4
  %conv = trunc i32 %codec to i16
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %1, align 4
  %amplifier_ctrl = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 19
  %7 = ptrtoint ptr %amplifier_ctrl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %amplifier_ctrl, align 4
  %cmp = icmp eq ptr %8, @amp_voyetra
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %9 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97, i32 0, i32 5
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 128, ptr %9, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %codec)
  %cmp2 = icmp eq i32 %codec, 1
  br i1 %cmp2, label %if.then4, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then4:                                         ; preds = %if.end
  tail call fastcc void @snd_cs46xx_codec_write(ptr noundef %chip, i16 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 1)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 2147480) #13
  %call = tail call fastcc zeroext i16 @snd_cs46xx_codec_read(ptr noundef %chip, i16 noundef zeroext 0, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call)
  %tobool.not = icmp sgt i16 %call, -1
  br i1 %tobool.not, label %if.then4.if.end14_crit_edge, label %do.body

if.then4.if.end14_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

do.body:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs46xx_detect_codec.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs46xx_detect_codec, %if.then11)) #13
          to label %cleanup [label %if.then11], !srcloc !362

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %card = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs46xx_detect_codec.__UNIQUE_ID_ddebug256, ptr noundef %15, ptr noundef nonnull @.str.81) #13
  br label %cleanup

if.end14:                                         ; preds = %if.then4.if.end14_crit_edge, %if.end.if.end14_crit_edge
  tail call fastcc void @snd_cs46xx_codec_write(ptr noundef %chip, i16 noundef zeroext 2, i16 noundef zeroext -32768, i32 noundef %codec)
  br label %for.body

for.body:                                         ; preds = %if.end24.for.body_crit_edge, %if.end14
  %idx.067 = phi i32 [ 0, %if.end14 ], [ %inc, %if.end24.for.body_crit_edge ]
  %call17 = tail call fastcc zeroext i16 @snd_cs46xx_codec_read(ptr noundef %chip, i16 noundef zeroext 2, i32 noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %call17)
  %cmp19 = icmp eq i16 %call17, -32768
  br i1 %cmp19, label %if.then21, label %if.end24

if.then21:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %ac97_bus = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 7
  %16 = ptrtoint ptr %ac97_bus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ac97_bus, align 4
  %arrayidx = getelementptr %struct.snd_cs46xx, ptr %chip, i32 0, i32 8, i32 %codec
  %call23 = call i32 @snd_ac97_mixer(ptr noundef %17, ptr noundef nonnull %ac97, ptr noundef %arrayidx) #13
  br label %cleanup

if.end24:                                         ; preds = %for.body
  tail call void @msleep(i32 noundef 10) #13
  %inc = add nuw nsw i32 %idx.067, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %do.body25, label %if.end24.for.body_crit_edge

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

do.body25:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs46xx_detect_codec.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs46xx_detect_codec, %if.then37)) #13
          to label %cleanup [label %if.then37], !srcloc !362

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #15
  %card38 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %18 = ptrtoint ptr %card38 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card38, align 4
  %dev39 = getelementptr inbounds %struct.snd_card, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev39, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs46xx_detect_codec.__UNIQUE_ID_ddebug257, ptr noundef %21, ptr noundef nonnull @.str.82, i32 noundef %codec) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %do.body25, %if.then21, %if.then11, %do.body
  %retval.0 = phi i32 [ %call23, %if.then21 ], [ -6, %if.then11 ], [ -6, %if.then37 ], [ -6, %do.body ], [ -6, %do.body25 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_find_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_write_cache(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_cs46xx_midi(ptr noundef %chip, i32 noundef %device) local_unnamed_addr #0 align 64 {
entry:
  %rmidi = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rmidi) #13
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %rmidi, align 4, !annotation !361
  %card = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 4
  %call = call i32 @snd_rawmidi_new(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef %device, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %rmidi) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmidi, align 4
  %name = getelementptr inbounds %struct.snd_rawmidi, ptr %4, i32 0, i32 5
  %5 = call ptr @memcpy(ptr %name, ptr @.str.11, i32 7)
  call void @snd_rawmidi_set_ops(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @snd_cs46xx_midi_output) #13
  %6 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmidi, align 4
  call void @snd_rawmidi_set_ops(ptr noundef %7, i32 noundef 1, ptr noundef nonnull @snd_cs46xx_midi_input) #13
  %8 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmidi, align 4
  %info_flags = getelementptr inbounds %struct.snd_rawmidi, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %info_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %info_flags, align 8
  %or = or i32 %11, 7
  store i32 %or, ptr %info_flags, align 8
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %9, i32 0, i32 9
  %12 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %chip, ptr %private_data, align 4
  %rmidi2 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 12
  %13 = ptrtoint ptr %rmidi2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %9, ptr %rmidi2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmidi) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_rawmidi_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_cs46xx_gameport(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1248) #17
  %gameport = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 26
  %1 = ptrtoint ptr %gameport to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %gameport, align 4
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %card = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.12) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %name1.i = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 1
  %call.i = tail call i32 @strlcpy(ptr noundef %name1.i, ptr noundef nonnull @.str.16, i32 noundef 32) #13
  %pci = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 9
  %6 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.pci_name.exit_crit_edge

if.end.pci_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %if.end.pci_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @gameport_set_phys(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.17, ptr noundef %retval.0.i.i) #13
  %12 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci, align 4
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %parent = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 21, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev3, ptr %parent, align 8
  %15 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %chip, ptr %call7.i.i.i, align 8
  %open = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 10
  %16 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @snd_cs46xx_gameport_open, ptr %open, align 8
  %read = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 7
  %17 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @snd_cs46xx_gameport_read, ptr %read, align 4
  %trigger = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %trigger to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @snd_cs46xx_gameport_trigger, ptr %trigger, align 8
  %cooked_read = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 8
  %19 = ptrtoint ptr %cooked_read to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @snd_cs46xx_gameport_cooked_read, ptr %cooked_read, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %remap_addr.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 3, i32 0, i32 0, i32 2
  %20 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 1184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -16777216) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %22 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %23, i32 1156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 16777216) #13, !srcloc !359
  tail call void @__gameport_register_port(ptr noundef nonnull %call7.i.i.i, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %pci_name.exit, %do.end
  %retval.0 = phi i32 [ 0, %pci_name.exit ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_set_phys(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_cs46xx_gameport_open(ptr nocapture noundef readnone %gameport, i32 noundef %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %mode, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %0)
  %switch.selectcmp = icmp ult i32 %0, -2
  %1 = sext i1 %switch.selectcmp to i32
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @snd_cs46xx_gameport_read(ptr nocapture noundef readonly %gameport) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gameport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gameport, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !363

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2707, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %remap_addr.i = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 2
  %2 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1152
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !365
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %conv = trunc i32 %5 to i8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  %retval.0 = phi i8 [ 0, %do.end ], [ %conv, %if.end23 ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_cs46xx_gameport_trigger(ptr nocapture noundef readonly %gameport) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gameport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gameport, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !363

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2698, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %remap_addr.i = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 2
  %2 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -16777216) #13, !srcloc !359
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_gameport_cooked_read(ptr nocapture noundef readonly %gameport, ptr nocapture noundef %axes, ptr nocapture noundef writeonly %buttons) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gameport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gameport, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !363

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2717, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end23:                                         ; preds = %entry
  %remap_addr.i = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 2
  %2 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1160
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !365
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %6 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i65 = getelementptr i8, ptr %7, i32 1164
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65) #13, !srcloc !365
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %10 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i67 = getelementptr i8, ptr %11, i32 1152
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67) #13, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %13 = xor i32 %12, -1
  %14 = lshr i32 %13, 28
  %15 = ptrtoint ptr %buttons to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %buttons, align 4
  %and26 = and i32 %5, 65535
  %16 = ptrtoint ptr %axes to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and26, ptr %axes, align 4
  %shr30 = lshr i32 %5, 16
  %arrayidx32 = getelementptr i32, ptr %axes, i32 1
  %17 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr30, ptr %arrayidx32, align 4
  %and33 = and i32 %9, 65535
  %arrayidx36 = getelementptr i32, ptr %axes, i32 2
  %18 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and33, ptr %arrayidx36, align 4
  %shr38 = lshr i32 %9, 16
  %arrayidx40 = getelementptr i32, ptr %axes, i32 3
  %19 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr38, ptr %arrayidx40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %and26)
  %cmp42 = icmp eq i32 %and26, 65535
  br i1 %cmp42, label %if.then43, label %if.end23.for.inc_crit_edge

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then43:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %axes to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %axes, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then43, %if.end23.for.inc_crit_edge
  %21 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %22)
  %cmp42.1 = icmp eq i32 %22, 65535
  br i1 %cmp42.1, label %if.then43.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.then43.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %arrayidx32, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then43.1, %for.inc.for.inc.1_crit_edge
  %24 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %25)
  %cmp42.2 = icmp eq i32 %25, 65535
  br i1 %cmp42.2, label %if.then43.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

if.then43.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %arrayidx36, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then43.2, %for.inc.1.for.inc.2_crit_edge
  %27 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %28)
  %cmp42.3 = icmp eq i32 %28, 65535
  br i1 %cmp42.3, label %if.then43.3, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then43.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %arrayidx40, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then43.3, %for.inc.2.cleanup_crit_edge, %do.end
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__gameport_register_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_cs46xx_start_dsp(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %fw.i = alloca ptr, align 4
  %fw_path.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @snd_cs46xx_reset(ptr noundef %chip)
  %pci.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 9
  br label %for.body

for.cond:                                         ; preds = %if.end
  %inc = add nuw nsw i32 %i.081, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.081 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.snd_cs46xx, ptr %chip, i32 0, i32 32, i32 %i.081
  %arrayidx1 = getelementptr [5 x ptr], ptr @module_names, i32 0, i32 %i.081
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #13
  %2 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !361
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %fw_path.i) #13
  %3 = call ptr @memset(ptr %fw_path.i, i32 255, i32 32)
  %call.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %fw_path.i, ptr noundef nonnull @.str.93, ptr noundef %1) #13
  %4 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %call2.i = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef nonnull %fw_path.i, ptr noundef %dev.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %load_firmware.exit.thread, label %if.end.i

load_firmware.exit.thread:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %fw_path.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #13
  br label %do.end

if.end.i:                                         ; preds = %for.body
  %6 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %div167.i = lshr i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %cmp3.i = icmp ult i32 %9, 8
  br i1 %cmp3.i, label %if.end.i.load_firmware.exit.thread56_crit_edge, label %if.end5.i

if.end.i.load_firmware.exit.thread56_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %load_firmware.exit.thread56

if.end5.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 36) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end5.i.load_firmware.exit.thread56_crit_edge, label %if.end8.i

if.end5.i.load_firmware.exit.thread56_crit_edge:  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %load_firmware.exit.thread56

if.end8.i:                                        ; preds = %if.end5.i
  %call9.i = call noalias ptr @kstrdup(ptr noundef %1, i32 noundef 3264) #13
  %11 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9.i, ptr %call7.i.i.i, align 8
  %tobool11.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool11.not.i, label %if.end8.i.load_firmware.exit.thread56_crit_edge, label %if.end13.i

if.end8.i.load_firmware.exit.thread56_crit_edge:  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %load_firmware.exit.thread56

if.end13.i:                                       ; preds = %if.end8.i
  %12 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fw.i, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %18 = call i32 @llvm.bswap.i32(i32 %17) #13
  %symbol_table.i = getelementptr inbounds %struct.dsp_module_desc, ptr %call7.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %symbol_table.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %symbol_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %18)
  %cmp14.i = icmp ugt i32 %18, 39
  br i1 %cmp14.i, label %if.end13.i.load_firmware.exit.thread56_crit_edge, label %if.end7.i.i.i

if.end13.i.load_firmware.exit.thread56_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %load_firmware.exit.thread56

if.end7.i.i.i:                                    ; preds = %if.end13.i
  %20 = mul nuw nsw i32 %18, 116
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #18
  %symbols.i = getelementptr inbounds %struct.dsp_module_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %symbols.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call8.i.i.i, ptr %symbols.i, align 8
  %tobool21.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool21.not.i, label %if.end7.i.i.i.load_firmware.exit.thread56_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.load_firmware.exit.thread56_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %load_firmware.exit.thread56

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp24234.not.i = icmp eq i32 %17, 0
  br i1 %cmp24234.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.preheader.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %umax.i = call i32 @llvm.umax.i32(i32 %18, i32 1) #13
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %fwlen.0236.i = phi i32 [ %add29.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %for.body.preheader.i ]
  %i.0235.i = phi i32 [ %inc40.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %add29.i = add nuw nsw i32 %fwlen.0236.i, 27
  call void @__sanitizer_cov_trace_cmp4(i32 %add29.i, i32 %div167.i)
  %cmp30.i = icmp ugt i32 %add29.i, %div167.i
  br i1 %cmp30.i, label %for.body.i.load_firmware.exit.thread56_crit_edge, label %for.inc.i

for.body.i.load_firmware.exit.thread56_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %load_firmware.exit.thread56

for.inc.i:                                        ; preds = %for.body.i
  %22 = ptrtoint ptr %symbols.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %symbols.i, align 8
  %arrayidx28.i = getelementptr %struct.dsp_symbol_entry, ptr %23, i32 %i.0235.i
  %inc33.i = add nuw nsw i32 %fwlen.0236.i, 1
  %arrayidx34.i = getelementptr i32, ptr %15, i32 %fwlen.0236.i
  %24 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx34.i, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25) #13
  %27 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx28.i, align 4
  %symbol_name.i = getelementptr %struct.dsp_symbol_entry, ptr %23, i32 %i.0235.i, i32 1
  %arrayidx36.i = getelementptr i32, ptr %15, i32 %inc33.i
  %28 = call ptr @memcpy(ptr %symbol_name.i, ptr %arrayidx36.i, i32 99)
  %add37.i = add nuw nsw i32 %fwlen.0236.i, 26
  %arrayidx39.i = getelementptr i32, ptr %15, i32 %add37.i
  %29 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx39.i, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30) #13
  %symbol_type.i = getelementptr %struct.dsp_symbol_entry, ptr %23, i32 %i.0235.i, i32 2
  %32 = ptrtoint ptr %symbol_type.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %symbol_type.i, align 4
  %inc40.i = add nuw nsw i32 %i.0235.i, 1
  %exitcond.not.i = icmp eq i32 %inc40.i, %umax.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %fwlen.0.lcssa.i = phi i32 [ 1, %for.cond.preheader.i.for.end.i_crit_edge ], [ %add29.i, %for.inc.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %fwlen.0.lcssa.i, i32 %div167.i)
  %cmp41.not.i = icmp ult i32 %fwlen.0.lcssa.i, %div167.i
  br i1 %cmp41.not.i, label %if.end43.i, label %for.end.i.load_firmware.exit.thread56_crit_edge

for.end.i.load_firmware.exit.thread56_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %load_firmware.exit.thread56

if.end43.i:                                       ; preds = %for.end.i
  %inc44.i = add nuw i32 %fwlen.0.lcssa.i, 1
  %arrayidx45.i = getelementptr i32, ptr %15, i32 %fwlen.0.lcssa.i
  %33 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx45.i, align 4
  %35 = call i32 @llvm.bswap.i32(i32 %34) #13
  %nsegments.i = getelementptr inbounds %struct.dsp_module_desc, ptr %call7.i.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %nsegments.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %nsegments.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %35)
  %cmp46.i = icmp ugt i32 %35, 10
  br i1 %cmp46.i, label %if.end43.i.load_firmware.exit.thread56_crit_edge, label %if.end7.i.i198.i

if.end43.i.load_firmware.exit.thread56_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %load_firmware.exit.thread56

if.end7.i.i198.i:                                 ; preds = %if.end43.i
  %37 = shl nuw nsw i32 %35, 4
  %call8.i.i197.i = call noalias align 128 ptr @__kmalloc(i32 noundef %37, i32 noundef 3520) #18
  %segments.i = getelementptr inbounds %struct.dsp_module_desc, ptr %call7.i.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %segments.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call8.i.i197.i, ptr %segments.i, align 4
  %tobool51.not.i = icmp eq ptr %call8.i.i197.i, null
  br i1 %tobool51.not.i, label %if.end7.i.i198.i.load_firmware.exit.thread56_crit_edge, label %for.cond54.preheader.i

if.end7.i.i198.i.load_firmware.exit.thread56_crit_edge: ; preds = %if.end7.i.i198.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %load_firmware.exit.thread56

for.cond54.preheader.i:                           ; preds = %if.end7.i.i198.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp55237.not.i = icmp eq i32 %34, 0
  br i1 %cmp55237.not.i, label %for.cond54.preheader.i.if.end_crit_edge, label %for.body56.preheader.i

for.cond54.preheader.i.if.end_crit_edge:          ; preds = %for.cond54.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body56.preheader.i:                           ; preds = %for.cond54.preheader.i
  %umax248.i = call i32 @llvm.umax.i32(i32 %35, i32 1) #13
  br label %for.body56.i

for.body56.i:                                     ; preds = %for.inc91.i.for.body56.i_crit_edge, %for.body56.preheader.i
  %fwlen.2241.i = phi i32 [ %add87.i, %for.inc91.i.for.body56.i_crit_edge ], [ %inc44.i, %for.body56.preheader.i ]
  %i.1238.i = phi i32 [ %inc92.i, %for.inc91.i.for.body56.i_crit_edge ], [ 0, %for.body56.preheader.i ]
  %39 = ptrtoint ptr %segments.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %segments.i, align 4
  %add60.i = add i32 %fwlen.2241.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add60.i, i32 %div167.i)
  %cmp61.i = icmp ugt i32 %add60.i, %div167.i
  br i1 %cmp61.i, label %for.body56.i.load_firmware.exit.thread56_crit_edge, label %if.end63.i

for.body56.i.load_firmware.exit.thread56_crit_edge: ; preds = %for.body56.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %load_firmware.exit.thread56

if.end63.i:                                       ; preds = %for.body56.i
  %arrayidx59.i = getelementptr %struct.dsp_segment_desc, ptr %40, i32 %i.1238.i
  %inc64.i = add i32 %fwlen.2241.i, 1
  %arrayidx65.i = getelementptr i32, ptr %15, i32 %fwlen.2241.i
  %41 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx65.i, align 4
  %43 = call i32 @llvm.bswap.i32(i32 %42) #13
  %44 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx59.i, align 4
  %inc66.i = add i32 %fwlen.2241.i, 2
  %arrayidx67.i = getelementptr i32, ptr %15, i32 %inc64.i
  %45 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx67.i, align 4
  %47 = call i32 @llvm.bswap.i32(i32 %46) #13
  %offset.i = getelementptr %struct.dsp_segment_desc, ptr %40, i32 %i.1238.i, i32 1
  %48 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %offset.i, align 4
  %arrayidx69.i = getelementptr i32, ptr %15, i32 %inc66.i
  %49 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx69.i, align 4
  %51 = call i32 @llvm.bswap.i32(i32 %50) #13
  %size70.i = getelementptr %struct.dsp_segment_desc, ptr %40, i32 %i.1238.i, i32 2
  %52 = ptrtoint ptr %size70.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %size70.i, align 4
  %add72.i = add i32 %51, %add60.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add72.i, i32 %div167.i)
  %cmp73.i = icmp ugt i32 %add72.i, %div167.i
  br i1 %cmp73.i, label %if.end63.i.load_firmware.exit.thread56_crit_edge, label %if.end75.i

if.end63.i.load_firmware.exit.thread56_crit_edge: ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %load_firmware.exit.thread56

if.end75.i:                                       ; preds = %if.end63.i
  %53 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %51, i32 4) #13
  %54 = extractvalue { i32, i1 } %53, 1
  br i1 %54, label %kmalloc_array.exit.thread.i, label %if.end7.i.i, !prof !363

kmalloc_array.exit.thread.i:                      ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #15
  %data78216.i = getelementptr %struct.dsp_segment_desc, ptr %40, i32 %i.1238.i, i32 3
  %55 = ptrtoint ptr %data78216.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %data78216.i, align 4
  br label %load_firmware.exit.thread56

if.end7.i.i:                                      ; preds = %if.end75.i
  %56 = extractvalue { i32, i1 } %53, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %56, i32 noundef 3264) #18
  %data78.i = getelementptr %struct.dsp_segment_desc, ptr %40, i32 %i.1238.i, i32 3
  %57 = ptrtoint ptr %data78.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call8.i.i, ptr %data78.i, align 4
  %tobool80.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool80.not.i, label %if.end7.i.i.load_firmware.exit.thread56_crit_edge, label %if.end82.i

if.end7.i.i.load_firmware.exit.thread56_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %load_firmware.exit.thread56

if.end82.i:                                       ; preds = %if.end7.i.i
  %58 = ptrtoint ptr %size70.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %size70.i, align 4
  %mul.mask.i = and i32 %59, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.mask.i)
  %cmp.not4.i.i = icmp eq i32 %mul.mask.i, 0
  br i1 %cmp.not4.i.i, label %if.end82.i.for.inc91.i_crit_edge, label %while.body.preheader.i.i

if.end82.i.for.inc91.i_crit_edge:                 ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc91.i

while.body.preheader.i.i:                         ; preds = %if.end82.i
  %arrayidx84.i = getelementptr i32, ptr %15, i32 %add60.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %_src.07.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %arrayidx84.i, %while.body.preheader.i.i ]
  %_dst.06.i.i = phi ptr [ %incdec.ptr1.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %call8.i.i, %while.body.preheader.i.i ]
  %len.addr.05.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %mul.mask.i, %while.body.preheader.i.i ]
  %dec.i.i = add nsw i32 %len.addr.05.i.i, -1
  %incdec.ptr.i.i = getelementptr i32, ptr %_src.07.i.i, i32 1
  %60 = ptrtoint ptr %_src.07.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %_src.07.i.i, align 4
  %62 = call i32 @llvm.bswap.i32(i32 %61) #13
  %incdec.ptr1.i.i = getelementptr i32, ptr %_dst.06.i.i, i32 1
  %63 = ptrtoint ptr %_dst.06.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %_dst.06.i.i, align 4
  %cmp.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.not.i.i, label %while.body.i.i.for.inc91.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

while.body.i.i.for.inc91.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc91.i

for.inc91.i:                                      ; preds = %while.body.i.i.for.inc91.i_crit_edge, %if.end82.i.for.inc91.i_crit_edge
  %64 = ptrtoint ptr %size70.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %size70.i, align 4
  %add87.i = add i32 %65, %add60.i
  %inc92.i = add nuw i32 %i.1238.i, 1
  %exitcond249.not.i = icmp eq i32 %inc92.i, %umax248.i
  br i1 %exitcond249.not.i, label %for.inc91.i.if.end_crit_edge, label %for.inc91.i.for.body56.i_crit_edge

for.inc91.i.for.body56.i_crit_edge:               ; preds = %for.inc91.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body56.i

for.inc91.i.if.end_crit_edge:                     ; preds = %for.inc91.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

load_firmware.exit.thread56:                      ; preds = %if.end7.i.i.load_firmware.exit.thread56_crit_edge, %kmalloc_array.exit.thread.i, %if.end63.i.load_firmware.exit.thread56_crit_edge, %for.body56.i.load_firmware.exit.thread56_crit_edge, %if.end7.i.i198.i.load_firmware.exit.thread56_crit_edge, %if.end43.i.load_firmware.exit.thread56_crit_edge, %for.end.i.load_firmware.exit.thread56_crit_edge, %for.body.i.load_firmware.exit.thread56_crit_edge, %if.end7.i.i.i.load_firmware.exit.thread56_crit_edge, %if.end13.i.load_firmware.exit.thread56_crit_edge, %if.end8.i.load_firmware.exit.thread56_crit_edge, %if.end5.i.load_firmware.exit.thread56_crit_edge, %if.end.i.load_firmware.exit.thread56_crit_edge
  %err.0.i = phi i32 [ -12, %kmalloc_array.exit.thread.i ], [ -22, %for.body56.i.load_firmware.exit.thread56_crit_edge ], [ -22, %if.end63.i.load_firmware.exit.thread56_crit_edge ], [ -12, %if.end7.i.i.load_firmware.exit.thread56_crit_edge ], [ -22, %for.body.i.load_firmware.exit.thread56_crit_edge ], [ -22, %if.end13.i.load_firmware.exit.thread56_crit_edge ], [ -22, %for.end.i.load_firmware.exit.thread56_crit_edge ], [ -22, %if.end43.i.load_firmware.exit.thread56_crit_edge ], [ -22, %if.end.i.load_firmware.exit.thread56_crit_edge ], [ -12, %if.end5.i.load_firmware.exit.thread56_crit_edge ], [ -12, %if.end8.i.load_firmware.exit.thread56_crit_edge ], [ -12, %if.end7.i.i.i.load_firmware.exit.thread56_crit_edge ], [ -12, %if.end7.i.i198.i.load_firmware.exit.thread56_crit_edge ]
  %module.0.i = phi ptr [ %call7.i.i.i, %kmalloc_array.exit.thread.i ], [ %call7.i.i.i, %if.end7.i.i.load_firmware.exit.thread56_crit_edge ], [ %call7.i.i.i, %if.end63.i.load_firmware.exit.thread56_crit_edge ], [ %call7.i.i.i, %for.body56.i.load_firmware.exit.thread56_crit_edge ], [ %call7.i.i.i, %for.body.i.load_firmware.exit.thread56_crit_edge ], [ %call7.i.i.i, %if.end13.i.load_firmware.exit.thread56_crit_edge ], [ %call7.i.i.i, %for.end.i.load_firmware.exit.thread56_crit_edge ], [ %call7.i.i.i, %if.end43.i.load_firmware.exit.thread56_crit_edge ], [ null, %if.end.i.load_firmware.exit.thread56_crit_edge ], [ null, %if.end5.i.load_firmware.exit.thread56_crit_edge ], [ %call7.i.i.i, %if.end8.i.load_firmware.exit.thread56_crit_edge ], [ %call7.i.i.i, %if.end7.i.i.i.load_firmware.exit.thread56_crit_edge ], [ %call7.i.i.i, %if.end7.i.i198.i.load_firmware.exit.thread56_crit_edge ]
  call fastcc void @free_module_desc(ptr noundef %module.0.i) #13
  %66 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %.sink.i58 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %.sink.i58) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %fw_path.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #13
  br label %do.end

do.end:                                           ; preds = %load_firmware.exit.thread56, %load_firmware.exit.thread
  %retval.0.i55 = phi i32 [ %call2.i, %load_firmware.exit.thread ], [ %err.0.i, %load_firmware.exit.thread56 ]
  %card = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %67 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %68, i32 0, i32 27
  %69 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.18, ptr noundef %1) #16
  br label %cleanup

if.end:                                           ; preds = %for.inc91.i.if.end_crit_edge, %for.cond54.preheader.i.if.end_crit_edge
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call7.i.i.i, ptr %arrayidx, align 4
  %72 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %.sink.i = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %.sink.i) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %fw_path.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #13
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx, align 4
  %call6 = call i32 @cs46xx_dsp_load_module(ptr noundef %chip, ptr noundef %74) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.end11, label %for.cond

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %card12 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %75 = ptrtoint ptr %card12 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %card12, align 4
  %dev13 = getelementptr inbounds %struct.snd_card, ptr %76, i32 0, i32 27
  %77 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev13, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.21, ptr noundef %1) #16
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %call16 = call i32 @cs46xx_dsp_scb_and_task_init(ptr noundef %chip) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %for.end.cleanup_crit_edge, label %if.end19

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end19:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %remap_addr.i = getelementptr %struct.snd_cs46xx, ptr %chip, i32 0, i32 3, i32 0, i32 1, i32 2
  %79 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %80, i32 100
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !365
  %82 = call i32 @llvm.bswap.i32(i32 %81) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !367
  %and = and i32 %82, 65535
  %ctl = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 5, i32 1
  %83 = ptrtoint ptr %ctl to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %and, ptr %ctl, align 4
  %and21 = and i32 %82, -65536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  call void @arm_heavy_mb() #13
  %84 = call i32 @llvm.bswap.i32(i32 %and21) #13
  %85 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %86, i32 100
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %84) #13, !srcloc !359
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %87(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %88(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %89(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %90(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %91(i32 noundef 214748000) #13
  %reg_lock.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 15
  %call10.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  call void @arm_heavy_mb() #13
  %92 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %93, i32 648
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1610612736) #13, !srcloc !359
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  call void @arm_heavy_mb() #13
  %94 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %95, i32 692
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 -1431655936) #13, !srcloc !359
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call10.i) #13
  call fastcc void @snd_cs46xx_set_capture_sample_rate(ptr noundef %chip, i32 noundef 8000)
  call fastcc void @snd_cs46xx_proc_start(ptr noundef %chip)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  call void @arm_heavy_mb() #13
  %remap_addr.i.i51 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 3, i32 0, i32 0, i32 2
  %96 = ptrtoint ptr %remap_addr.i.i51 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %remap_addr.i.i51, align 4
  %add.ptr.i.i52 = getelementptr i8, ptr %97, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i52, i32 50331648) #13, !srcloc !359
  %98 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %99, i32 196
  %100 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #13, !srcloc !365
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !367
  %101 = and i32 %100, -1072693249
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  call void @arm_heavy_mb() #13
  %102 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %103, i32 196
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %101) #13, !srcloc !359
  %104 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %105, i32 260
  %106 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i) #13, !srcloc !365
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !367
  %107 = and i32 %106, -1056964609
  %108 = or i32 %107, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  call void @arm_heavy_mb() #13
  %109 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %110, i32 260
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 %108) #13, !srcloc !359
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %for.end.cleanup_crit_edge, %do.end11, %do.end
  %retval.0 = phi i32 [ %retval.0.i55, %do.end ], [ %call6, %do.end11 ], [ 0, %if.end19 ], [ -5, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_cs46xx_reset(ptr nocapture noundef readonly %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %remap_addr.i = getelementptr %struct.snd_cs46xx, ptr %chip, i32 0, i32 3, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remap_addr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 1073741824) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %2 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remap_addr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 536870912) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 327680) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %6 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 -65536) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %8 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 17104896) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %10 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i14.1 = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.1, i32 -65536) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %12 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 33882112) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %14 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i14.2 = getelementptr i8, ptr %15, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.2, i32 -65536) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %16 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3, i32 50659328) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %18 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i14.3 = getelementptr i8, ptr %19, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.3, i32 -65536) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %20 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.4, i32 67436544) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %22 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i14.4 = getelementptr i8, ptr %23, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.4, i32 -65536) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %24 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i.5 = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.5, i32 84213760) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %26 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i14.5 = getelementptr i8, ptr %27, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.5, i32 -65536) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %28 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i.6 = getelementptr i8, ptr %29, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.6, i32 100990976) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %30 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i14.6 = getelementptr i8, ptr %31, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.6, i32 -65536) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %32 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i.7 = getelementptr i8, ptr %33, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.7, i32 117768192) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %34 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i14.7 = getelementptr i8, ptr %35, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.7, i32 -65536) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %36 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %37, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 0) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %38 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %39, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 -552992768) #13, !srcloc !359
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs46xx_dsp_load_module(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs46xx_dsp_scb_and_task_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_cs46xx_set_capture_sample_rate(ptr noundef %chip, i32 noundef %rate) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %rate, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %mul)
  %cmp = icmp ult i32 %mul, 48000
  %0 = tail call i32 @llvm.umin.i32(i32 %rate, i32 48000)
  %1 = select i1 %cmp, i32 5333, i32 %0
  %shl = shl nuw i32 %1, 16
  %div = udiv i32 %shl, 48000
  %mul4.neg = mul i32 %div, 33506432
  %sub = add i32 %mul4.neg, %shl
  %shl5 = shl i32 %sub, 7
  %shl6.neg = mul nsw i32 %div, -128
  %div7 = udiv i32 %shl5, 48000
  %add.neg = sub nsw i32 %shl6.neg, %div7
  %div8 = udiv i32 -1149239296, %1
  %mul9 = mul nsw i32 %1, -1024
  %.neg = mul i32 %mul9, %div8
  %shl12 = shl i32 %div8, 10
  %div13 = udiv i32 %.neg, %1
  %add14 = add i32 %shl12, %div13
  %mul15 = mul i32 %div13, %1
  %sub16 = sub i32 %.neg, %mul15
  %div17 = udiv i32 %sub16, 200
  %mul18.neg = mul i32 %div17, 65336
  %sub19 = add i32 %mul18.neg, %sub16
  %sub21 = add nuw nsw i32 %1, 1151999
  %div22 = udiv i32 %sub21, %1
  %reg_lock = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 15
  %call25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #13
  %shl28 = shl i32 %sub19, 16
  %and29 = and i32 %div17, 65535
  %or = or i32 %shl28, %and29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %2 = tail call i32 @llvm.bswap.i32(i32 %or) #13
  %remap_addr.i = getelementptr %struct.snd_cs46xx, ptr %chip, i32 0, i32 3, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %5 = tail call i32 @llvm.bswap.i32(i32 %add.neg) #13
  %6 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i150 = getelementptr i8, ptr %7, i32 728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150, i32 %5) #13, !srcloc !359
  %shl30 = shl i32 %div22, 18
  %or34 = or i32 %shl30, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %8 = tail call i32 @llvm.bswap.i32(i32 %or34) #13
  %9 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i153 = getelementptr i8, ptr %10, i32 736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i153, i32 %8) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %11 = tail call i32 @llvm.bswap.i32(i32 %add14) #13
  %12 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i156 = getelementptr i8, ptr %13, i32 756
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156, i32 %11) #13, !srcloc !359
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call25) #13
  %14 = and i32 %1, 1
  %spec.select = shl nuw nsw i32 1, %14
  %15 = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp40.not.1 = icmp ne i32 %15, 0
  %mul43.1 = zext i1 %cmp40.not.1 to i32
  %spec.select.1 = shl nuw nsw i32 %spec.select, %mul43.1
  %16 = and i32 %1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp40.not.2 = icmp ne i32 %16, 0
  %mul43.2 = zext i1 %cmp40.not.2 to i32
  %spec.select.2 = shl nuw nsw i32 %spec.select.1, %mul43.2
  %17 = and i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp40.not.3 = icmp ne i32 %17, 0
  %mul43.3 = zext i1 %cmp40.not.3 to i32
  %spec.select.3 = shl nuw nsw i32 %spec.select.2, %mul43.3
  %18 = and i32 %1, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp40.not.4 = icmp ne i32 %18, 0
  %mul43.4 = zext i1 %cmp40.not.4 to i32
  %spec.select.4 = shl nuw nsw i32 %spec.select.3, %mul43.4
  %19 = and i32 %1, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp40.not.5 = icmp ne i32 %19, 0
  %mul43.5 = zext i1 %cmp40.not.5 to i32
  %spec.select.5 = shl nuw nsw i32 %spec.select.4, %mul43.5
  %.lhs.trunc = trunc i32 %1 to i16
  %20 = urem i16 %.lhs.trunc, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp48.not = icmp eq i16 %20, 0
  %mul51 = mul nuw nsw i32 %spec.select.5, 3
  %spec.select146 = select i1 %cmp48.not, i32 %spec.select.5, i32 %mul51
  %.lhs.trunc176 = trunc i32 %1 to i16
  %21 = urem i16 %.lhs.trunc176, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp59.not = icmp eq i16 %21, 0
  %mul62 = mul nuw nsw i32 %spec.select146, 5
  %spec.select147 = select i1 %cmp59.not, i32 %spec.select146, i32 %mul62
  %.lhs.trunc178 = trunc i32 %1 to i16
  %22 = urem i16 %.lhs.trunc178, 25
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp59.not.1 = icmp eq i16 %22, 0
  %mul62.1 = mul nuw nsw i32 %spec.select147, 5
  %spec.select147.1 = select i1 %cmp59.not.1, i32 %spec.select147, i32 %mul62.1
  %.lhs.trunc180 = trunc i32 %1 to i16
  %23 = urem i16 %.lhs.trunc180, 125
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp59.not.2 = icmp eq i16 %23, 0
  %mul62.2 = mul nuw nsw i32 %spec.select147.1, 5
  %spec.select147.2 = select i1 %cmp59.not.2, i32 %spec.select147.1, i32 %mul62.2
  %call76 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %24 = tail call i32 @llvm.bswap.i32(i32 %spec.select147.2) #13
  %25 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i159 = getelementptr i8, ptr %26, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159, i32 %24) #13, !srcloc !359
  %or81 = or i32 %spec.select147.2, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %27 = tail call i32 @llvm.bswap.i32(i32 %or81) #13
  %28 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i162 = getelementptr i8, ptr %29, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162, i32 %27) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %30 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i165 = getelementptr i8, ptr %31, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i165, i32 -65536) #13, !srcloc !359
  %div83 = udiv i32 %shl, 24000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %32 = tail call i32 @llvm.bswap.i32(i32 %div83) #13
  %33 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i168 = getelementptr i8, ptr %34, i32 832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i168, i32 %32) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %35 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i171 = getelementptr i8, ptr %36, i32 836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i171, i32 -65536) #13, !srcloc !359
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call76) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_cs46xx_proc_start(ptr nocapture noundef readonly %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %remap_addr.i = getelementptr %struct.snd_cs46xx, ptr %chip, i32 0, i32 3, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -552992768) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %2 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remap_addr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 620756992) #13, !srcloc !359
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %cnt.017 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 10737400) #13
  %5 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %remap_addr.i, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #13, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !367
  %8 = and i32 %7, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %inc = add nuw nsw i32 %cnt.017, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 25
  %or.cond = select i1 %tobool.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body
  %9 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %remap_addr.i, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #13, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !367
  %12 = and i32 %11, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not = icmp eq i32 %12, 0
  br i1 %tobool3.not, label %for.end.if.end5_crit_edge, label %do.end

for.end.if.end5_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %card = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %13 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.99) #16
  br label %if.end5

if.end5:                                          ; preds = %do.end, %for.end.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
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
  %in_suspend = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 25
  %5 = ptrtoint ptr %in_suspend to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %in_suspend, align 4
  %ac97 = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ac97, align 4
  tail call void @snd_ac97_suspend(ptr noundef %7) #13
  %arrayidx2 = getelementptr %struct.snd_cs46xx, ptr %3, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 4
  tail call void @snd_ac97_suspend(ptr noundef %9) #13
  %remap_addr.i = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 3, i32 0, i32 0, i32 2
  %saved_regs = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 33
  %10 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 1128
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !365
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %14 = ptrtoint ptr %saved_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %saved_regs, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %15, align 4
  %17 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %18, i32 1188
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #13, !srcloc !365
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %21 = ptrtoint ptr %saved_regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %saved_regs, align 4
  %arrayidx5.1 = getelementptr i32, ptr %22, i32 1
  %23 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %20, ptr %arrayidx5.1, align 4
  %24 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %25, i32 248
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2) #13, !srcloc !365
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %28 = ptrtoint ptr %saved_regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %saved_regs, align 4
  %arrayidx5.2 = getelementptr i32, ptr %29, i32 2
  %30 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %arrayidx5.2, align 4
  %31 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %32, i32 760
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3) #13, !srcloc !365
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %35 = ptrtoint ptr %saved_regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %saved_regs, align 4
  %arrayidx5.3 = getelementptr i32, ptr %36, i32 3
  %37 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %34, ptr %arrayidx5.3, align 4
  %amplifier = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 18
  %38 = ptrtoint ptr %amplifier to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %amplifier, align 4
  %amplifier_ctrl = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 19
  %40 = ptrtoint ptr %amplifier_ctrl to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %amplifier_ctrl, align 4
  %sub = sub i32 0, %39
  tail call void %41(ptr noundef %3, i32 noundef %sub) #13
  tail call fastcc void @snd_cs46xx_hw_stop(ptr noundef %3)
  %active_ctrl = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 20
  %42 = ptrtoint ptr %active_ctrl to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %active_ctrl, align 4
  %44 = ptrtoint ptr %amplifier to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %amplifier, align 4
  %sub8 = sub i32 0, %45
  tail call void %43(ptr noundef %3, i32 noundef %sub8) #13
  %46 = ptrtoint ptr %amplifier to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %39, ptr %amplifier, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
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
  %amplifier = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %amplifier to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %amplifier, align 4
  store i32 0, ptr %amplifier, align 4
  %active_ctrl = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 20
  %6 = ptrtoint ptr %active_ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %active_ctrl, align 4
  tail call void %7(ptr noundef %3, i32 noundef 1) #13
  %call2 = tail call fastcc i32 @snd_cs46xx_chip_init(ptr noundef %3)
  tail call fastcc void @snd_cs46xx_reset(ptr noundef %3)
  %call3 = tail call i32 @cs46xx_dsp_resume(ptr noundef %3) #13
  %saved_regs = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 33
  %remap_addr.i = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 3, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %saved_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %saved_regs, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #13
  %13 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 1128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #13, !srcloc !359
  %15 = ptrtoint ptr %saved_regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %saved_regs, align 4
  %arrayidx4.1 = getelementptr i32, ptr %16, i32 1
  %17 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx4.1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #13
  %20 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %21, i32 1188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 %19) #13, !srcloc !359
  %22 = ptrtoint ptr %saved_regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %saved_regs, align 4
  %arrayidx4.2 = getelementptr i32, ptr %23, i32 2
  %24 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx4.2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #13
  %27 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %28, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 %26) #13, !srcloc !359
  %29 = ptrtoint ptr %saved_regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %saved_regs, align 4
  %arrayidx4.3 = getelementptr i32, ptr %30, i32 3
  %31 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx4.3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #13
  %34 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %35, i32 760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3, i32 %33) #13, !srcloc !359
  %ac97 = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 8
  %36 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ac97, align 4
  tail call void @snd_ac97_resume(ptr noundef %37) #13
  %arrayidx7 = getelementptr %struct.snd_cs46xx, ptr %3, i32 0, i32 8, i32 1
  %38 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx7, align 4
  tail call void @snd_ac97_resume(ptr noundef %39) #13
  %remap_addr.i42 = getelementptr %struct.snd_cs46xx, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 2
  %40 = ptrtoint ptr %remap_addr.i42 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %remap_addr.i42, align 4
  %add.ptr.i43 = getelementptr i8, ptr %41, i32 100
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43) #13, !srcloc !365
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !367
  %and = and i32 %43, 65535
  %ctl = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 5, i32 1
  %44 = ptrtoint ptr %ctl to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and, ptr %ctl, align 4
  %and9 = and i32 %43, -65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %45 = tail call i32 @llvm.bswap.i32(i32 %and9) #13
  %46 = ptrtoint ptr %remap_addr.i42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %remap_addr.i42, align 4
  %add.ptr.i46 = getelementptr i8, ptr %47, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %45) #13, !srcloc !359
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #13
  %reg_lock.i = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 15
  %call10.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %53 = ptrtoint ptr %remap_addr.i42 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %remap_addr.i42, align 4
  %add.ptr.i.i = getelementptr i8, ptr %54, i32 648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1610612736) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %55 = ptrtoint ptr %remap_addr.i42 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %remap_addr.i42, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %56, i32 692
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 -1431655936) #13, !srcloc !359
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call10.i) #13
  tail call fastcc void @snd_cs46xx_set_capture_sample_rate(ptr noundef %3, i32 noundef 8000)
  tail call fastcc void @snd_cs46xx_proc_start(ptr noundef %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %57 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i.i48 = getelementptr i8, ptr %58, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i48, i32 50331648) #13, !srcloc !359
  %59 = ptrtoint ptr %remap_addr.i42 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %remap_addr.i42, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %60, i32 196
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #13, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !367
  %62 = and i32 %61, -1072693249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %63 = ptrtoint ptr %remap_addr.i42 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %remap_addr.i42, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %64, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %62) #13, !srcloc !359
  %65 = ptrtoint ptr %remap_addr.i42 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %remap_addr.i42, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %66, i32 260
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i) #13, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !367
  %68 = and i32 %67, -1056964609
  %69 = or i32 %68, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %70 = ptrtoint ptr %remap_addr.i42 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %remap_addr.i42, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %71, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 %69) #13, !srcloc !359
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool10.not = icmp eq i32 %5, 0
  %amplifier_ctrl = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 19
  %active_ctrl.sink = select i1 %tobool10.not, ptr %active_ctrl, ptr %amplifier_ctrl
  %.sink = select i1 %tobool10.not, i32 -1, i32 1
  %72 = ptrtoint ptr %active_ctrl.sink to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %active_ctrl.sink, align 4
  tail call void %73(ptr noundef %3, i32 noundef %.sink) #13
  %74 = ptrtoint ptr %amplifier to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %5, ptr %amplifier, align 4
  %in_suspend = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 25
  %75 = ptrtoint ptr %in_suspend to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %in_suspend, align 4
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %76 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile i32 0, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_cs46xx_create(ptr noundef %card, ptr noundef %pci, i32 noundef %external_amp, i32 noundef %thinkpad) local_unnamed_addr #0 align 64 {
entry:
  %ss_card = alloca i16, align 2
  %ss_vendor = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ss_card) #13
  %2 = ptrtoint ptr %ss_card to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %ss_card, align 2, !annotation !361
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ss_vendor) #13
  %3 = ptrtoint ptr %ss_vendor to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %ss_vendor, align 2, !annotation !361
  %call = tail call i32 @pcim_enable_device(ptr noundef %pci) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  %reg_lock = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %reg_lock, ptr noundef nonnull @.str.23, ptr noundef nonnull @snd_cs46xx_create.__key, i16 noundef signext 3) #13
  %spos_mutex = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 27
  tail call void @__mutex_init(ptr noundef %spos_mutex, ptr noundef nonnull @.str.25, ptr noundef nonnull @snd_cs46xx_create.__key.24) #13
  %card5 = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %card5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %card, ptr %card5, align 4
  %pci6 = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %pci6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pci, ptr %pci6, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %1, align 4
  %call7 = tail call i32 @pci_request_regions(ptr noundef %pci, ptr noundef nonnull @.str.1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %do.body.cleanup_crit_edge, label %if.end10

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %do.body
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %7 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %resource, align 8
  %ba0_addr = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %ba0_addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %ba0_addr, align 4
  %arrayidx12 = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 1
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx12, align 8
  %ba1_addr = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %ba1_addr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %ba1_addr, align 4
  %13 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %8, label %lor.lhs.false18 [
    i32 0, label %if.end10.do.end27_crit_edge
    i32 -1, label %if.end10.do.end27_crit_edge353
  ]

if.end10.do.end27_crit_edge353:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end27

if.end10.do.end27_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end27

lor.lhs.false18:                                  ; preds = %if.end10
  %14 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %11, label %if.end31 [
    i32 0, label %lor.lhs.false18.do.end27_crit_edge
    i32 -1, label %lor.lhs.false18.do.end27_crit_edge354
  ]

lor.lhs.false18.do.end27_crit_edge354:            ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end27

lor.lhs.false18.do.end27_crit_edge:               ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end27

do.end27:                                         ; preds = %lor.lhs.false18.do.end27_crit_edge, %lor.lhs.false18.do.end27_crit_edge354, %if.end10.do.end27_crit_edge, %if.end10.do.end27_crit_edge353
  %15 = ptrtoint ptr %card5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card5, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.26, i32 noundef %8, i32 noundef %11) #16
  br label %cleanup

if.end31:                                         ; preds = %lor.lhs.false18
  %region32 = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 3
  %19 = call ptr @memcpy(ptr %region32, ptr @.str.28, i32 11)
  %base = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %8, ptr %base, align 4
  %size = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 3
  %21 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4096, ptr %size, align 4
  %data0 = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 1
  %22 = call ptr @memcpy(ptr %data0, ptr @.str.29, i32 17)
  %base40 = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %base40 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %11, ptr %base40, align 4
  %size41 = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %size41 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 12288, ptr %size41, align 4
  %data1 = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 2
  %25 = call ptr @memcpy(ptr %data1, ptr @.str.30, i32 17)
  %add47 = add i32 %11, 65536
  %base48 = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %base48 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add47, ptr %base48, align 4
  %size49 = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 2, i32 3
  %27 = ptrtoint ptr %size49 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 14336, ptr %size49, align 4
  %pmem = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 3
  %28 = call ptr @memcpy(ptr %pmem, ptr @.str.31, i32 16)
  %add55 = add i32 %11, 131072
  %base56 = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %base56 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add55, ptr %base56, align 4
  %size57 = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 3, i32 3
  %30 = ptrtoint ptr %size57 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 28672, ptr %size57, align 4
  %reg = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 4
  %31 = call ptr @memcpy(ptr %reg, ptr @.str.32, i32 15)
  %add63 = add i32 %11, 196608
  %base64 = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %base64 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add63, ptr %base64, align 4
  %size65 = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 4, i32 3
  %33 = ptrtoint ptr %size65 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 256, ptr %size65, align 4
  %call66 = call i32 @pci_read_config_word(ptr noundef %pci, i32 noundef 44, ptr noundef nonnull %ss_vendor) #13
  %call67 = call i32 @pci_read_config_word(ptr noundef %pci, i32 noundef 46, ptr noundef nonnull %ss_card) #13
  %34 = ptrtoint ptr %ss_vendor to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %ss_vendor, align 2
  %36 = zext i16 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.149)
  switch i16 %35, label %if.end31.for.end_crit_edge [
    i16 5257, label %land.lhs.true
    i16 20563, label %land.lhs.true.1
    i16 4209, label %land.lhs.true.2
    i16 5295, label %land.lhs.true.3
    i16 5761, label %land.lhs.true.4
    i16 5435, label %land.lhs.true.11
    i16 4116, label %land.lhs.true.13
  ]

if.end31.for.end_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

land.lhs.true:                                    ; preds = %if.end31
  %37 = ptrtoint ptr %ss_card to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %ss_card, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 28673, i16 %38)
  %cmp74 = icmp eq i16 %38, 28673
  br i1 %cmp74, label %land.lhs.true.do.body77_crit_edge, label %land.lhs.true.for.end_crit_edge

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

land.lhs.true.do.body77_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body77

do.body77.fold.split:                             ; preds = %land.lhs.true.11
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body77

do.body77:                                        ; preds = %land.lhs.true.15.do.body77_crit_edge, %land.lhs.true.14.do.body77_crit_edge, %land.lhs.true.13.do.body77_crit_edge, %land.lhs.true.11.do.body77_crit_edge, %land.lhs.true.10.do.body77_crit_edge, %land.lhs.true.9.do.body77_crit_edge, %land.lhs.true.8.do.body77_crit_edge, %land.lhs.true.7.do.body77_crit_edge, %land.lhs.true.6.do.body77_crit_edge, %land.lhs.true.5.do.body77_crit_edge, %land.lhs.true.4.do.body77_crit_edge, %land.lhs.true.3.do.body77_crit_edge, %land.lhs.true.2.do.body77_crit_edge, %land.lhs.true.1.do.body77_crit_edge, %do.body77.fold.split, %land.lhs.true.do.body77_crit_edge
  %cp.0301.lcssa = phi ptr [ @cards, %land.lhs.true.do.body77_crit_edge ], [ getelementptr inbounds ([17 x %struct.cs_card_type], ptr @cards, i32 0, i32 1), %land.lhs.true.1.do.body77_crit_edge ], [ getelementptr inbounds ([17 x %struct.cs_card_type], ptr @cards, i32 0, i32 2), %land.lhs.true.2.do.body77_crit_edge ], [ getelementptr inbounds ([17 x %struct.cs_card_type], ptr @cards, i32 0, i32 3), %land.lhs.true.3.do.body77_crit_edge ], [ getelementptr inbounds ([17 x %struct.cs_card_type], ptr @cards, i32 0, i32 4), %land.lhs.true.4.do.body77_crit_edge ], [ getelementptr inbounds ([17 x %struct.cs_card_type], ptr @cards, i32 0, i32 5), %land.lhs.true.5.do.body77_crit_edge ], [ getelementptr inbounds ([17 x %struct.cs_card_type], ptr @cards, i32 0, i32 6), %land.lhs.true.6.do.body77_crit_edge ], [ getelementptr inbounds ([17 x %struct.cs_card_type], ptr @cards, i32 0, i32 7), %land.lhs.true.7.do.body77_crit_edge ], [ getelementptr inbounds ([17 x %struct.cs_card_type], ptr @cards, i32 0, i32 8), %land.lhs.true.8.do.body77_crit_edge ], [ getelementptr inbounds ([17 x %struct.cs_card_type], ptr @cards, i32 0, i32 9), %land.lhs.true.9.do.body77_crit_edge ], [ getelementptr inbounds ([17 x %struct.cs_card_type], ptr @cards, i32 0, i32 10), %land.lhs.true.10.do.body77_crit_edge ], [ getelementptr inbounds ([17 x %struct.cs_card_type], ptr @cards, i32 0, i32 11), %land.lhs.true.11.do.body77_crit_edge ], [ getelementptr inbounds ([17 x %struct.cs_card_type], ptr @cards, i32 0, i32 13), %land.lhs.true.13.do.body77_crit_edge ], [ getelementptr inbounds ([17 x %struct.cs_card_type], ptr @cards, i32 0, i32 14), %land.lhs.true.14.do.body77_crit_edge ], [ getelementptr inbounds ([17 x %struct.cs_card_type], ptr @cards, i32 0, i32 15), %land.lhs.true.15.do.body77_crit_edge ], [ getelementptr inbounds ([17 x %struct.cs_card_type], ptr @cards, i32 0, i32 12), %do.body77.fold.split ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_cs46xx_create.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_cs46xx_create, %if.then82)) #13
          to label %do.end88 [label %if.then82], !srcloc !362

if.then82:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #15
  %name68.le = getelementptr inbounds %struct.cs_card_type, ptr %cp.0301.lcssa, i32 0, i32 2
  %39 = ptrtoint ptr %card5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %card5, align 4
  %dev84 = getelementptr inbounds %struct.snd_card, ptr %40, i32 0, i32 27
  %41 = ptrtoint ptr %dev84 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev84, align 8
  %43 = ptrtoint ptr %name68.le to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name68.le, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_cs46xx_create.__UNIQUE_ID_ddebug269, ptr noundef %42, ptr noundef nonnull @.str.33, ptr noundef %44) #13
  br label %do.end88

do.end88:                                         ; preds = %if.then82, %do.body77
  %amp = getelementptr inbounds %struct.cs_card_type, ptr %cp.0301.lcssa, i32 0, i32 4
  %45 = ptrtoint ptr %amp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %amp, align 4
  %amplifier_ctrl = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 19
  %47 = ptrtoint ptr %amplifier_ctrl to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %amplifier_ctrl, align 4
  %active = getelementptr inbounds %struct.cs_card_type, ptr %cp.0301.lcssa, i32 0, i32 5
  %48 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %active, align 4
  %active_ctrl = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 20
  %50 = ptrtoint ptr %active_ctrl to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %active_ctrl, align 4
  %mixer_init = getelementptr inbounds %struct.cs_card_type, ptr %cp.0301.lcssa, i32 0, i32 6
  %51 = ptrtoint ptr %mixer_init to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mixer_init, align 4
  %mixer_init89 = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 21
  %53 = ptrtoint ptr %mixer_init89 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %mixer_init89, align 4
  %init = getelementptr inbounds %struct.cs_card_type, ptr %cp.0301.lcssa, i32 0, i32 3
  %54 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %init, align 4
  %tobool90.not = icmp eq ptr %55, null
  br i1 %tobool90.not, label %do.end88.for.end_crit_edge, label %if.then91

do.end88.for.end_crit_edge:                       ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then91:                                        ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #15
  call void %55(ptr noundef %1) #13
  br label %for.end

land.lhs.true.1:                                  ; preds = %if.end31
  %56 = ptrtoint ptr %ss_card to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %ss_card, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13143, i16 %57)
  %cmp74.1 = icmp eq i16 %57, 13143
  br i1 %cmp74.1, label %land.lhs.true.1.do.body77_crit_edge, label %land.lhs.true.1.for.end_crit_edge

land.lhs.true.1.for.end_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

land.lhs.true.1.do.body77_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body77

land.lhs.true.2:                                  ; preds = %if.end31
  %58 = ptrtoint ptr %ss_card to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %ss_card, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 24579, i16 %59)
  %cmp74.2 = icmp eq i16 %59, 24579
  br i1 %cmp74.2, label %land.lhs.true.2.do.body77_crit_edge, label %land.lhs.true.2.for.end_crit_edge

land.lhs.true.2.for.end_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

land.lhs.true.2.do.body77_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body77

land.lhs.true.3:                                  ; preds = %if.end31
  %60 = ptrtoint ptr %ss_card to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %ss_card, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %61)
  %cmp74.3 = icmp eq i16 %61, 80
  br i1 %cmp74.3, label %land.lhs.true.3.do.body77_crit_edge, label %land.lhs.true.3.for.end_crit_edge

land.lhs.true.3.for.end_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

land.lhs.true.3.do.body77_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body77

land.lhs.true.4:                                  ; preds = %if.end31
  %62 = ptrtoint ptr %ss_card to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %ss_card, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %63)
  %cmp74.4 = icmp eq i16 %63, 80
  br i1 %cmp74.4, label %land.lhs.true.4.do.body77_crit_edge, label %land.lhs.true.5

land.lhs.true.4.do.body77_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body77

land.lhs.true.5:                                  ; preds = %land.lhs.true.4
  %64 = ptrtoint ptr %ss_card to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %ss_card, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 81, i16 %65)
  %cmp74.5 = icmp eq i16 %65, 81
  br i1 %cmp74.5, label %land.lhs.true.5.do.body77_crit_edge, label %land.lhs.true.6

land.lhs.true.5.do.body77_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body77

land.lhs.true.6:                                  ; preds = %land.lhs.true.5
  %66 = ptrtoint ptr %ss_card to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %ss_card, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 82, i16 %67)
  %cmp74.6 = icmp eq i16 %67, 82
  br i1 %cmp74.6, label %land.lhs.true.6.do.body77_crit_edge, label %land.lhs.true.7

land.lhs.true.6.do.body77_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body77

land.lhs.true.7:                                  ; preds = %land.lhs.true.6
  %68 = ptrtoint ptr %ss_card to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %ss_card, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 83, i16 %69)
  %cmp74.7 = icmp eq i16 %69, 83
  br i1 %cmp74.7, label %land.lhs.true.7.do.body77_crit_edge, label %land.lhs.true.8

land.lhs.true.7.do.body77_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body77

land.lhs.true.8:                                  ; preds = %land.lhs.true.7
  %70 = ptrtoint ptr %ss_card to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %ss_card, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 84, i16 %71)
  %cmp74.8 = icmp eq i16 %71, 84
  br i1 %cmp74.8, label %land.lhs.true.8.do.body77_crit_edge, label %land.lhs.true.9

land.lhs.true.8.do.body77_crit_edge:              ; preds = %land.lhs.true.8
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body77

land.lhs.true.9:                                  ; preds = %land.lhs.true.8
  %72 = ptrtoint ptr %ss_card to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %ss_card, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24560, i16 %73)
  %cmp74.9 = icmp eq i16 %73, -24560
  br i1 %cmp74.9, label %land.lhs.true.9.do.body77_crit_edge, label %land.lhs.true.10

land.lhs.true.9.do.body77_crit_edge:              ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body77

land.lhs.true.10:                                 ; preds = %land.lhs.true.9
  %74 = ptrtoint ptr %ss_card to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %ss_card, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24559, i16 %75)
  %cmp74.10 = icmp eq i16 %75, -24559
  br i1 %cmp74.10, label %land.lhs.true.10.do.body77_crit_edge, label %land.lhs.true.10.for.end_crit_edge

land.lhs.true.10.for.end_crit_edge:               ; preds = %land.lhs.true.10
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

land.lhs.true.10.do.body77_crit_edge:             ; preds = %land.lhs.true.10
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body77

land.lhs.true.11:                                 ; preds = %if.end31
  %76 = ptrtoint ptr %ss_card to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %ss_card, align 2
  %78 = zext i16 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.150)
  switch i16 %77, label %land.lhs.true.11.for.end_crit_edge [
    i16 4398, label %land.lhs.true.11.do.body77_crit_edge
    i16 4406, label %do.body77.fold.split
  ]

land.lhs.true.11.do.body77_crit_edge:             ; preds = %land.lhs.true.11
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body77

land.lhs.true.11.for.end_crit_edge:               ; preds = %land.lhs.true.11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

land.lhs.true.13:                                 ; preds = %if.end31
  %79 = ptrtoint ptr %ss_card to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %ss_card, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 306, i16 %80)
  %cmp74.13 = icmp eq i16 %80, 306
  br i1 %cmp74.13, label %land.lhs.true.13.do.body77_crit_edge, label %land.lhs.true.14

land.lhs.true.13.do.body77_crit_edge:             ; preds = %land.lhs.true.13
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body77

land.lhs.true.14:                                 ; preds = %land.lhs.true.13
  %81 = ptrtoint ptr %ss_card to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %ss_card, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 339, i16 %82)
  %cmp74.14 = icmp eq i16 %82, 339
  br i1 %cmp74.14, label %land.lhs.true.14.do.body77_crit_edge, label %land.lhs.true.15

land.lhs.true.14.do.body77_crit_edge:             ; preds = %land.lhs.true.14
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body77

land.lhs.true.15:                                 ; preds = %land.lhs.true.14
  %83 = ptrtoint ptr %ss_card to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %ss_card, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4112, i16 %84)
  %cmp74.15 = icmp eq i16 %84, 4112
  br i1 %cmp74.15, label %land.lhs.true.15.do.body77_crit_edge, label %land.lhs.true.15.for.end_crit_edge

land.lhs.true.15.for.end_crit_edge:               ; preds = %land.lhs.true.15
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

land.lhs.true.15.do.body77_crit_edge:             ; preds = %land.lhs.true.15
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body77

for.end:                                          ; preds = %land.lhs.true.15.for.end_crit_edge, %land.lhs.true.11.for.end_crit_edge, %land.lhs.true.10.for.end_crit_edge, %land.lhs.true.3.for.end_crit_edge, %land.lhs.true.2.for.end_crit_edge, %land.lhs.true.1.for.end_crit_edge, %if.then91, %do.end88.for.end_crit_edge, %land.lhs.true.for.end_crit_edge, %if.end31.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %external_amp)
  %tobool95.not = icmp eq i32 %external_amp, 0
  br i1 %tobool95.not, label %for.end.if.end103_crit_edge, label %do.end99

for.end.if.end103_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end103

do.end99:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %85 = ptrtoint ptr %card5 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %card5, align 4
  %dev101 = getelementptr inbounds %struct.snd_card, ptr %86, i32 0, i32 27
  %87 = ptrtoint ptr %dev101 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev101, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %88, ptr noundef nonnull @.str.35) #16
  %amplifier_ctrl102 = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 19
  %89 = ptrtoint ptr %amplifier_ctrl102 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @amp_voyetra, ptr %amplifier_ctrl102, align 4
  br label %if.end103

if.end103:                                        ; preds = %do.end99, %for.end.if.end103_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %thinkpad)
  %tobool104.not = icmp eq i32 %thinkpad, 0
  br i1 %tobool104.not, label %if.end103.if.end112_crit_edge, label %do.end108

if.end103.if.end112_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end112

do.end108:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #15
  %90 = ptrtoint ptr %card5 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %card5, align 4
  %dev110 = getelementptr inbounds %struct.snd_card, ptr %91, i32 0, i32 27
  %92 = ptrtoint ptr %dev110 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev110, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %93, ptr noundef nonnull @.str.39) #16
  %active_ctrl111 = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 20
  %94 = ptrtoint ptr %active_ctrl111 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @clkrun_hack, ptr %active_ctrl111, align 4
  call void @clkrun_init(ptr noundef %1)
  br label %if.end112

if.end112:                                        ; preds = %do.end108, %if.end103.if.end112_crit_edge
  %amplifier_ctrl113 = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 19
  %95 = ptrtoint ptr %amplifier_ctrl113 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %amplifier_ctrl113, align 4
  %cmp114 = icmp eq ptr %96, null
  br i1 %cmp114, label %if.then116, label %if.end112.if.end118_crit_edge

if.end112.if.end118_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end118

if.then116:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  %97 = ptrtoint ptr %amplifier_ctrl113 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @amp_none, ptr %amplifier_ctrl113, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.then116, %if.end112.if.end118_crit_edge
  %active_ctrl119 = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 20
  %98 = ptrtoint ptr %active_ctrl119 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %active_ctrl119, align 4
  %cmp120 = icmp eq ptr %99, null
  br i1 %cmp120, label %if.then122, label %if.end118.if.end124_crit_edge

if.end118.if.end124_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end124

if.then122:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #15
  %100 = ptrtoint ptr %active_ctrl119 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @amp_none, ptr %active_ctrl119, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then122, %if.end118.if.end124_crit_edge
  %101 = ptrtoint ptr %active_ctrl119 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %active_ctrl119, align 4
  call void %102(ptr noundef %1, i32 noundef 1) #13
  call void @pci_set_master(ptr noundef %pci) #13
  %dev132 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %base133 = getelementptr %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 1
  %103 = ptrtoint ptr %base133 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %base133, align 4
  %size134 = getelementptr %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 3
  %105 = ptrtoint ptr %size134 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %size134, align 4
  %call135 = call ptr @devm_ioremap(ptr noundef %dev132, i32 noundef %104, i32 noundef %106) #13
  %remap_addr = getelementptr %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 2
  %107 = ptrtoint ptr %remap_addr to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call135, ptr %remap_addr, align 4
  %cmp137 = icmp eq ptr %call135, null
  br i1 %cmp137, label %if.end124.do.end142_crit_edge, label %for.inc148

if.end124.do.end142_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end142

do.end142:                                        ; preds = %for.inc148.3.do.end142_crit_edge, %for.inc148.2.do.end142_crit_edge, %for.inc148.1.do.end142_crit_edge, %for.inc148.do.end142_crit_edge, %if.end124.do.end142_crit_edge
  %idx.0303.lcssa = phi i32 [ 0, %if.end124.do.end142_crit_edge ], [ 1, %for.inc148.do.end142_crit_edge ], [ 2, %for.inc148.1.do.end142_crit_edge ], [ 3, %for.inc148.2.do.end142_crit_edge ], [ 4, %for.inc148.3.do.end142_crit_edge ]
  %arrayidx131 = getelementptr [5 x %struct.snd_cs46xx_region], ptr %region32, i32 0, i32 %idx.0303.lcssa
  %108 = ptrtoint ptr %card5 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %card5, align 4
  %dev144 = getelementptr inbounds %struct.snd_card, ptr %109, i32 0, i32 27
  %110 = ptrtoint ptr %dev144 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev144, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.42, ptr noundef %arrayidx131) #16
  br label %cleanup

for.inc148:                                       ; preds = %if.end124
  %base133.1 = getelementptr %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 1, i32 1
  %112 = ptrtoint ptr %base133.1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %base133.1, align 4
  %size134.1 = getelementptr %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 1, i32 3
  %114 = ptrtoint ptr %size134.1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %size134.1, align 4
  %call135.1 = call ptr @devm_ioremap(ptr noundef %dev132, i32 noundef %113, i32 noundef %115) #13
  %remap_addr.1 = getelementptr %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 1, i32 2
  %116 = ptrtoint ptr %remap_addr.1 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call135.1, ptr %remap_addr.1, align 4
  %cmp137.1 = icmp eq ptr %call135.1, null
  br i1 %cmp137.1, label %for.inc148.do.end142_crit_edge, label %for.inc148.1

for.inc148.do.end142_crit_edge:                   ; preds = %for.inc148
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end142

for.inc148.1:                                     ; preds = %for.inc148
  %base133.2 = getelementptr %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 2, i32 1
  %117 = ptrtoint ptr %base133.2 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %base133.2, align 4
  %size134.2 = getelementptr %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 2, i32 3
  %119 = ptrtoint ptr %size134.2 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %size134.2, align 4
  %call135.2 = call ptr @devm_ioremap(ptr noundef %dev132, i32 noundef %118, i32 noundef %120) #13
  %remap_addr.2 = getelementptr %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 2, i32 2
  %121 = ptrtoint ptr %remap_addr.2 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call135.2, ptr %remap_addr.2, align 4
  %cmp137.2 = icmp eq ptr %call135.2, null
  br i1 %cmp137.2, label %for.inc148.1.do.end142_crit_edge, label %for.inc148.2

for.inc148.1.do.end142_crit_edge:                 ; preds = %for.inc148.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end142

for.inc148.2:                                     ; preds = %for.inc148.1
  %base133.3 = getelementptr %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 3, i32 1
  %122 = ptrtoint ptr %base133.3 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %base133.3, align 4
  %size134.3 = getelementptr %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 3, i32 3
  %124 = ptrtoint ptr %size134.3 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %size134.3, align 4
  %call135.3 = call ptr @devm_ioremap(ptr noundef %dev132, i32 noundef %123, i32 noundef %125) #13
  %remap_addr.3 = getelementptr %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 3, i32 2
  %126 = ptrtoint ptr %remap_addr.3 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call135.3, ptr %remap_addr.3, align 4
  %cmp137.3 = icmp eq ptr %call135.3, null
  br i1 %cmp137.3, label %for.inc148.2.do.end142_crit_edge, label %for.inc148.3

for.inc148.2.do.end142_crit_edge:                 ; preds = %for.inc148.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end142

for.inc148.3:                                     ; preds = %for.inc148.2
  %base133.4 = getelementptr %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 4, i32 1
  %127 = ptrtoint ptr %base133.4 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %base133.4, align 4
  %size134.4 = getelementptr %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 4, i32 3
  %129 = ptrtoint ptr %size134.4 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %size134.4, align 4
  %call135.4 = call ptr @devm_ioremap(ptr noundef %dev132, i32 noundef %128, i32 noundef %130) #13
  %remap_addr.4 = getelementptr %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 4, i32 2
  %131 = ptrtoint ptr %remap_addr.4 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %call135.4, ptr %remap_addr.4, align 4
  %cmp137.4 = icmp eq ptr %call135.4, null
  br i1 %cmp137.4, label %for.inc148.3.do.end142_crit_edge, label %for.inc148.4

for.inc148.3.do.end142_crit_edge:                 ; preds = %for.inc148.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end142

for.inc148.4:                                     ; preds = %for.inc148.3
  %irq151 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %132 = ptrtoint ptr %irq151 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %irq151, align 4
  %call.i = call i32 @devm_request_threaded_irq(ptr noundef %dev132, i32 noundef %133, ptr noundef nonnull @snd_cs46xx_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.5, ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool153.not = icmp eq i32 %call.i, 0
  br i1 %tobool153.not, label %if.end161, label %do.end157

do.end157:                                        ; preds = %for.inc148.4
  call void @__sanitizer_cov_trace_pc() #15
  %134 = ptrtoint ptr %card5 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %card5, align 4
  %dev159 = getelementptr inbounds %struct.snd_card, ptr %135, i32 0, i32 27
  %136 = ptrtoint ptr %dev159 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev159, align 8
  %138 = ptrtoint ptr %irq151 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %irq151, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.45, i32 noundef %139) #16
  br label %cleanup

if.end161:                                        ; preds = %for.inc148.4
  %140 = ptrtoint ptr %irq151 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %irq151, align 4
  %142 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %1, align 4
  %sync_irq = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 33
  %143 = ptrtoint ptr %sync_irq to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %141, ptr %sync_irq, align 4
  %private_free = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 10
  %144 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr @snd_cs46xx_free, ptr %private_free, align 4
  %call165 = call ptr @cs46xx_dsp_spos_create(ptr noundef %1) #13
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 28
  %145 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %call165, ptr %dsp_spos_instance, align 4
  %tobool167.not = icmp eq ptr %call165, null
  br i1 %tobool167.not, label %if.end161.cleanup_crit_edge, label %if.end169

if.end161.cleanup_crit_edge:                      ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end169:                                        ; preds = %if.end161
  %call170 = call fastcc i32 @snd_cs46xx_chip_init(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %cmp171 = icmp slt i32 %call170, 0
  br i1 %cmp171, label %if.end169.cleanup_crit_edge, label %if.end174

if.end169.cleanup_crit_edge:                      ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end174:                                        ; preds = %if.end169
  %proc_root.i.i = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 20
  %146 = ptrtoint ptr %proc_root.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %proc_root.i.i, align 8
  %call.i.i = call ptr @snd_info_create_card_entry(ptr noundef %card, ptr noundef %region32, ptr noundef %147) #13
  %tobool.not.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.not.i, label %if.end174.if.end.i_crit_edge, label %if.then.i

if.end174.if.end.i_crit_edge:                     ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #15
  %content.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i.i, i32 0, i32 3
  %148 = ptrtoint ptr %content.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 1, ptr %content.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i.i, i32 0, i32 7
  %149 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %1, ptr %private_data.i, align 4
  %c.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i.i, i32 0, i32 4
  %150 = ptrtoint ptr %c.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr @snd_cs46xx_proc_io_ops, ptr %c.i, align 4
  %151 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %size, align 4
  %size3.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i.i, i32 0, i32 2
  %153 = ptrtoint ptr %size3.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %size3.i, align 4
  %mode.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i.i, i32 0, i32 1
  %154 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 -32512, ptr %mode.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end174.if.end.i_crit_edge
  %155 = ptrtoint ptr %proc_root.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %proc_root.i.i, align 8
  %call.i.1.i = call ptr @snd_info_create_card_entry(ptr noundef %card, ptr noundef %data0, ptr noundef %156) #13
  %tobool.not.i.not.1.i = icmp eq ptr %call.i.1.i, null
  br i1 %tobool.not.i.not.1.i, label %if.end.i.if.end.1.i_crit_edge, label %if.then.1.i

if.end.i.if.end.1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.1.i

if.then.1.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %content.1.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i.1.i, i32 0, i32 3
  %157 = ptrtoint ptr %content.1.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 1, ptr %content.1.i, align 4
  %private_data.1.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i.1.i, i32 0, i32 7
  %158 = ptrtoint ptr %private_data.1.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %1, ptr %private_data.1.i, align 4
  %c.1.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i.1.i, i32 0, i32 4
  %159 = ptrtoint ptr %c.1.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr @snd_cs46xx_proc_io_ops, ptr %c.1.i, align 4
  %160 = ptrtoint ptr %size41 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %size41, align 4
  %size3.1.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i.1.i, i32 0, i32 2
  %162 = ptrtoint ptr %size3.1.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %size3.1.i, align 4
  %mode.1.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i.1.i, i32 0, i32 1
  %163 = ptrtoint ptr %mode.1.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 -32512, ptr %mode.1.i, align 4
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %if.end.i.if.end.1.i_crit_edge
  %164 = ptrtoint ptr %proc_root.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %proc_root.i.i, align 8
  %call.i.2.i = call ptr @snd_info_create_card_entry(ptr noundef %card, ptr noundef %data1, ptr noundef %165) #13
  %tobool.not.i.not.2.i = icmp eq ptr %call.i.2.i, null
  br i1 %tobool.not.i.not.2.i, label %if.end.1.i.if.end.2.i_crit_edge, label %if.then.2.i

if.end.1.i.if.end.2.i_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.2.i

if.then.2.i:                                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #15
  %content.2.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i.2.i, i32 0, i32 3
  %166 = ptrtoint ptr %content.2.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 1, ptr %content.2.i, align 4
  %private_data.2.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i.2.i, i32 0, i32 7
  %167 = ptrtoint ptr %private_data.2.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %1, ptr %private_data.2.i, align 4
  %c.2.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i.2.i, i32 0, i32 4
  %168 = ptrtoint ptr %c.2.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr @snd_cs46xx_proc_io_ops, ptr %c.2.i, align 4
  %169 = ptrtoint ptr %size49 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %size49, align 4
  %size3.2.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i.2.i, i32 0, i32 2
  %171 = ptrtoint ptr %size3.2.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %170, ptr %size3.2.i, align 4
  %mode.2.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i.2.i, i32 0, i32 1
  %172 = ptrtoint ptr %mode.2.i to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 -32512, ptr %mode.2.i, align 4
  br label %if.end.2.i

if.end.2.i:                                       ; preds = %if.then.2.i, %if.end.1.i.if.end.2.i_crit_edge
  %173 = ptrtoint ptr %proc_root.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %proc_root.i.i, align 8
  %call.i.3.i = call ptr @snd_info_create_card_entry(ptr noundef %card, ptr noundef %pmem, ptr noundef %174) #13
  %tobool.not.i.not.3.i = icmp eq ptr %call.i.3.i, null
  br i1 %tobool.not.i.not.3.i, label %if.end.2.i.if.end.3.i_crit_edge, label %if.then.3.i

if.end.2.i.if.end.3.i_crit_edge:                  ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.3.i

if.then.3.i:                                      ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #15
  %content.3.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i.3.i, i32 0, i32 3
  %175 = ptrtoint ptr %content.3.i to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 1, ptr %content.3.i, align 4
  %private_data.3.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i.3.i, i32 0, i32 7
  %176 = ptrtoint ptr %private_data.3.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %1, ptr %private_data.3.i, align 4
  %c.3.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i.3.i, i32 0, i32 4
  %177 = ptrtoint ptr %c.3.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr @snd_cs46xx_proc_io_ops, ptr %c.3.i, align 4
  %178 = ptrtoint ptr %size57 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %size57, align 4
  %size3.3.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i.3.i, i32 0, i32 2
  %180 = ptrtoint ptr %size3.3.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %size3.3.i, align 4
  %mode.3.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i.3.i, i32 0, i32 1
  %181 = ptrtoint ptr %mode.3.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 -32512, ptr %mode.3.i, align 4
  br label %if.end.3.i

if.end.3.i:                                       ; preds = %if.then.3.i, %if.end.2.i.if.end.3.i_crit_edge
  %182 = ptrtoint ptr %proc_root.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %proc_root.i.i, align 8
  %call.i.4.i = call ptr @snd_info_create_card_entry(ptr noundef %card, ptr noundef %reg, ptr noundef %183) #13
  %tobool.not.i.not.4.i = icmp eq ptr %call.i.4.i, null
  br i1 %tobool.not.i.not.4.i, label %if.end.3.i.snd_cs46xx_proc_init.exit_crit_edge, label %if.then.4.i

if.end.3.i.snd_cs46xx_proc_init.exit_crit_edge:   ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_cs46xx_proc_init.exit

if.then.4.i:                                      ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #15
  %content.4.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i.4.i, i32 0, i32 3
  %184 = ptrtoint ptr %content.4.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 1, ptr %content.4.i, align 4
  %private_data.4.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i.4.i, i32 0, i32 7
  %185 = ptrtoint ptr %private_data.4.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %1, ptr %private_data.4.i, align 4
  %c.4.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i.4.i, i32 0, i32 4
  %186 = ptrtoint ptr %c.4.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr @snd_cs46xx_proc_io_ops, ptr %c.4.i, align 4
  %187 = ptrtoint ptr %size65 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %size65, align 4
  %size3.4.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i.4.i, i32 0, i32 2
  %189 = ptrtoint ptr %size3.4.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %size3.4.i, align 4
  %mode.4.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i.4.i, i32 0, i32 1
  %190 = ptrtoint ptr %mode.4.i to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 -32512, ptr %mode.4.i, align 4
  br label %snd_cs46xx_proc_init.exit

snd_cs46xx_proc_init.exit:                        ; preds = %if.then.4.i, %if.end.3.i.snd_cs46xx_proc_init.exit_crit_edge
  %call4.i = call i32 @cs46xx_dsp_proc_init(ptr noundef %card, ptr noundef %1) #13
  %call5.i = call noalias ptr @devm_kmalloc(ptr noundef %dev132, i32 noundef 16, i32 noundef 3264) #13
  %saved_regs = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 33
  %191 = ptrtoint ptr %saved_regs to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %call5.i, ptr %saved_regs, align 4
  %tobool179.not = icmp eq ptr %call5.i, null
  br i1 %tobool179.not, label %snd_cs46xx_proc_init.exit.cleanup_crit_edge, label %if.end181

snd_cs46xx_proc_init.exit.cleanup_crit_edge:      ; preds = %snd_cs46xx_proc_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end181:                                        ; preds = %snd_cs46xx_proc_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  %192 = ptrtoint ptr %active_ctrl119 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %active_ctrl119, align 4
  call void %193(ptr noundef %1, i32 noundef -1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end181, %snd_cs46xx_proc_init.exit.cleanup_crit_edge, %if.end169.cleanup_crit_edge, %if.end161.cleanup_crit_edge, %do.end157, %do.end142, %do.end27, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end27 ], [ -12, %do.end142 ], [ -16, %do.end157 ], [ 0, %if.end181 ], [ %call, %entry.cleanup_crit_edge ], [ %call7, %do.body.cleanup_crit_edge ], [ -12, %if.end161.cleanup_crit_edge ], [ %call170, %if.end169.cleanup_crit_edge ], [ -12, %snd_cs46xx_proc_init.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ss_vendor) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ss_card) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amp_voyetra(ptr noundef %chip, i32 noundef %change) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %amplifier = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 18
  %0 = ptrtoint ptr %amplifier to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %amplifier, align 4
  %add = add i32 %1, %change
  store i32 %add, ptr %amplifier, align 4
  %call = tail call fastcc zeroext i16 @snd_cs46xx_codec_read(ptr noundef %chip, i16 noundef zeroext 38, i32 noundef 0)
  %conv = zext i16 %call to i32
  %2 = ptrtoint ptr %amplifier to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %amplifier, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %or = or i32 %conv, 32768
  %and = and i32 %conv, 32767
  %val.0 = select i1 %tobool.not, i32 %and, i32 %or
  call void @__sanitizer_cov_trace_cmp4(i32 %val.0, i32 %conv)
  %cmp.not = icmp eq i32 %val.0, %conv
  br i1 %cmp.not, label %entry.if.end10_crit_edge, label %if.then4

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then4:                                         ; preds = %entry
  %conv5 = trunc i32 %val.0 to i16
  tail call fastcc void @snd_cs46xx_codec_write(ptr noundef %chip, i16 noundef zeroext 38, i16 noundef zeroext %conv5, i32 noundef 0)
  %eapd_switch = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 23
  %4 = ptrtoint ptr %eapd_switch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eapd_switch, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.then4.if.end10_crit_edge, label %if.then7

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  %card = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %5, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %7, i32 noundef 1, ptr noundef %id) #13
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.then4.if.end10_crit_edge, %entry.if.end10_crit_edge
  %8 = ptrtoint ptr %amplifier to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %amplifier, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool12.not = icmp ne i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool13.not = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool12.not, i1 %tobool13.not, i1 false
  br i1 %or.cond, label %if.then14, label %if.end10.if.end16_crit_edge

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @voyetra_setup_eapd_slot(ptr noundef %chip)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end10.if.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clkrun_hack(ptr nocapture noundef %chip, i32 noundef %change) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %acpi_port = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 22
  %0 = ptrtoint ptr %acpi_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %acpi_port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %amplifier = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 18
  %2 = ptrtoint ptr %amplifier to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %amplifier, align 4
  %add = add i32 %3, %change
  store i32 %add, ptr %amplifier, align 4
  %add2 = add i32 %1, 16
  %and = and i32 %add2, 1048575
  %add3 = or i32 %and, -18874368
  %4 = inttoptr i32 %add3 to ptr
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %4) #13, !srcloc !369
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !370
  %7 = ptrtoint ptr %amplifier to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %amplifier, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool6.not = icmp eq i32 %8, 0
  %9 = and i16 %6, -8193
  %masksel = select i1 %tobool6.not, i16 8192, i16 0
  %nval.0 = or i16 %masksel, %9
  call void @__sanitizer_cov_trace_cmp2(i16 %nval.0, i16 %6)
  %cmp.not = icmp eq i16 %nval.0, %6
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !371
  tail call void @arm_heavy_mb() #13
  %10 = tail call i16 @llvm.bswap.i16(i16 %nval.0)
  %11 = ptrtoint ptr %acpi_port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %acpi_port, align 4
  %add18 = add i32 %12, 16
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %13 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %13, i16 %10) #13, !srcloc !372
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clkrun_init(ptr nocapture noundef writeonly %chip) #0 align 64 {
entry:
  %pp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pp) #13
  %0 = ptrtoint ptr %pp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %pp, align 1, !annotation !361
  %acpi_port = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 22
  %1 = ptrtoint ptr %acpi_port to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %acpi_port, align 4
  %call = tail call ptr @pci_get_device(i32 noundef 32902, i32 noundef 28947, ptr noundef null) #13
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = call i32 @pci_read_config_byte(ptr noundef nonnull %call, i32 noundef 65, ptr noundef nonnull %pp) #13
  %2 = ptrtoint ptr %pp to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pp, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %4 = ptrtoint ptr %acpi_port to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shl, ptr %acpi_port, align 4
  call void @pci_dev_put(ptr noundef nonnull %call) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pp) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @amp_none(ptr nocapture noundef %chip, i32 noundef %change) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_interrupt(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  %c = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %dev_id, i32 0, i32 28
  %0 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_spos_instance, align 4
  %remap_addr.i = getelementptr inbounds %struct.snd_cs46xx, ptr %dev_id, i32 0, i32 3, i32 0, i32 0, i32 2
  %2 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remap_addr.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #13, !srcloc !365
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %and = and i32 %5, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %6 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 50331648) #13, !srcloc !359
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i148 = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i148) #13, !srcloc !365
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %substream = getelementptr inbounds %struct.snd_cs46xx, ptr %dev_id, i32 0, i32 5, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.0161 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.0161)
  %cmp3 = icmp ult i32 %i.0161, 16
  br i1 %cmp3, label %if.then4, label %if.else30

if.then4:                                         ; preds = %for.body
  %shl = shl nuw nsw i32 1, %i.0161
  %and5 = and i32 %shl, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %if.then4.for.inc_crit_edge, label %if.then6

if.then4.for.inc_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0161)
  %cmp7 = icmp eq i32 %i.0161, 1
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then6
  %12 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %substream, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %if.then8.for.inc_crit_edge, label %if.then10

if.then8.for.inc_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %13) #13
  br label %for.inc

if.else:                                          ; preds = %if.then6
  %arrayidx = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 11, i32 %i.0161
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool14.not = icmp eq i32 %15, 0
  br i1 %tobool14.not, label %if.else.for.inc_crit_edge, label %land.lhs.true

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %if.else
  %private_data = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 11, i32 %i.0161, i32 8
  %16 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %private_data, align 4
  %tobool17.not = icmp eq ptr %17, null
  br i1 %tobool17.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true18

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true18:                                  ; preds = %land.lhs.true
  %unlinked = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 11, i32 %i.0161, i32 4
  %18 = ptrtoint ptr %unlinked to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %unlinked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool21.not = icmp eq i32 %19, 0
  br i1 %tobool21.not, label %if.then22, label %land.lhs.true18.for.inc_crit_edge

land.lhs.true18.for.inc_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then22:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #15
  %substream26 = getelementptr inbounds %struct.snd_cs46xx_pcm, ptr %17, i32 0, i32 4
  %20 = ptrtoint ptr %substream26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %substream26, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %21) #13
  br label %for.inc

if.else30:                                        ; preds = %for.body
  %sub = add nsw i32 %i.0161, -16
  %shl31 = shl nuw nsw i32 1, %sub
  %and32 = and i32 %shl31, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.else30.for.inc_crit_edge, label %if.then34

if.else30.for.inc_crit_edge:                      ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then34:                                        ; preds = %if.else30
  %arrayidx36 = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 11, i32 %i.0161
  %22 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool38.not = icmp eq i32 %23, 0
  br i1 %tobool38.not, label %if.then34.for.inc_crit_edge, label %land.lhs.true39

if.then34.for.inc_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true39:                                  ; preds = %if.then34
  %private_data42 = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 11, i32 %i.0161, i32 8
  %24 = ptrtoint ptr %private_data42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private_data42, align 4
  %tobool43.not = icmp eq ptr %25, null
  br i1 %tobool43.not, label %land.lhs.true39.for.inc_crit_edge, label %land.lhs.true44

land.lhs.true39.for.inc_crit_edge:                ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true44:                                  ; preds = %land.lhs.true39
  %unlinked47 = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 11, i32 %i.0161, i32 4
  %26 = ptrtoint ptr %unlinked47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %unlinked47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool48.not = icmp eq i32 %27, 0
  br i1 %tobool48.not, label %if.then49, label %land.lhs.true44.for.inc_crit_edge

land.lhs.true44.for.inc_crit_edge:                ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then49:                                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #15
  %substream53 = getelementptr inbounds %struct.snd_cs46xx_pcm, ptr %25, i32 0, i32 4
  %28 = ptrtoint ptr %substream53 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %substream53, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %29) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then49, %land.lhs.true44.for.inc_crit_edge, %land.lhs.true39.for.inc_crit_edge, %if.then34.for.inc_crit_edge, %if.else30.for.inc_crit_edge, %if.then22, %land.lhs.true18.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.else.for.inc_crit_edge, %if.then10, %if.then8.for.inc_crit_edge, %if.then4.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0161, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  %and57 = and i32 %5, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %for.end.if.end95_crit_edge, label %land.lhs.true59

for.end.if.end95_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95

land.lhs.true59:                                  ; preds = %for.end
  %rmidi = getelementptr inbounds %struct.snd_cs46xx, ptr %dev_id, i32 0, i32 12
  %30 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmidi, align 4
  %tobool60.not = icmp eq ptr %31, null
  br i1 %tobool60.not, label %land.lhs.true59.if.end95_crit_edge, label %if.then61

land.lhs.true59.if.end95_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95

if.then61:                                        ; preds = %land.lhs.true59
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c) #13
  %32 = ptrtoint ptr %c to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %c, align 1, !annotation !361
  %reg_lock = getelementptr inbounds %struct.snd_cs46xx, ptr %dev_id, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #13
  %33 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i150163 = getelementptr i8, ptr %34, i32 1172
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i150163) #13, !srcloc !365
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %36 = and i32 %35, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp64164 = icmp eq i32 %36, 0
  br i1 %cmp64164, label %while.body.lr.ph, label %if.then61.while.cond72.preheader_crit_edge

if.then61.while.cond72.preheader_crit_edge:       ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond72.preheader

while.body.lr.ph:                                 ; preds = %if.then61
  %midcr = getelementptr inbounds %struct.snd_cs46xx, ptr %dev_id, i32 0, i32 16
  %midi_input = getelementptr inbounds %struct.snd_cs46xx, ptr %dev_id, i32 0, i32 13
  br label %while.body

while.cond72.preheader:                           ; preds = %while.cond.backedge.while.cond72.preheader_crit_edge, %if.then61.while.cond72.preheader_crit_edge
  %37 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i154165 = getelementptr i8, ptr %38, i32 1172
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i154165) #13, !srcloc !365
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %40 = and i32 %39, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp75166 = icmp eq i32 %40, 0
  br i1 %cmp75166, label %while.body77.lr.ph, label %while.cond72.preheader.while.end93_crit_edge

while.cond72.preheader.while.end93_crit_edge:     ; preds = %while.cond72.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end93

while.body77.lr.ph:                               ; preds = %while.cond72.preheader
  %midcr78 = getelementptr inbounds %struct.snd_cs46xx, ptr %dev_id, i32 0, i32 16
  %midi_output = getelementptr inbounds %struct.snd_cs46xx, ptr %dev_id, i32 0, i32 14
  br label %while.body77

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %41 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i152 = getelementptr i8, ptr %42, i32 1180
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i152) #13, !srcloc !365
  %44 = lshr i32 %43, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %conv = trunc i32 %44 to i8
  %45 = ptrtoint ptr %c to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv, ptr %c, align 1
  %46 = ptrtoint ptr %midcr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %midcr, align 4
  %and66 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %cmp67 = icmp eq i32 %and66, 0
  br i1 %cmp67, label %while.body.while.cond.backedge_crit_edge, label %if.end70

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge

if.end70:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %48 = ptrtoint ptr %midi_input to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %midi_input, align 4
  %call71 = call i32 @snd_rawmidi_receive(ptr noundef %49, ptr noundef nonnull %c, i32 noundef 1) #13
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end70, %while.body.while.cond.backedge_crit_edge
  %50 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i150 = getelementptr i8, ptr %51, i32 1172
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i150) #13, !srcloc !365
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %53 = and i32 %52, 33554432
  %cmp64 = icmp eq i32 %53, 0
  br i1 %cmp64, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.cond72.preheader_crit_edge

while.cond.backedge.while.cond72.preheader_crit_edge: ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond72.preheader

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body77:                                     ; preds = %if.end91.while.body77_crit_edge, %while.body77.lr.ph
  %54 = ptrtoint ptr %midcr78 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %midcr78, align 4
  %and79 = and i32 %55, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %cmp80 = icmp eq i32 %and79, 0
  br i1 %cmp80, label %while.body77.while.end93_crit_edge, label %if.end83

while.body77.while.end93_crit_edge:               ; preds = %while.body77
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end93

if.end83:                                         ; preds = %while.body77
  %56 = ptrtoint ptr %midi_output to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %midi_output, align 4
  %call84 = call i32 @snd_rawmidi_transmit(ptr noundef %57, ptr noundef nonnull %c, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call84)
  %cmp85.not = icmp eq i32 %call84, 1
  br i1 %cmp85.not, label %if.end91, label %if.then87

if.then87:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  %58 = ptrtoint ptr %midcr78 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %midcr78, align 4
  %and89 = and i32 %59, -9
  store i32 %and89, ptr %midcr78, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  call void @arm_heavy_mb() #13
  %60 = call i32 @llvm.bswap.i32(i32 %and89) #13
  %61 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i156 = getelementptr i8, ptr %62, i32 1168
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156, i32 %60) #13, !srcloc !359
  br label %while.end93

if.end91:                                         ; preds = %if.end83
  %63 = ptrtoint ptr %c to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %c, align 1
  %conv92 = zext i8 %64 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  call void @arm_heavy_mb() #13
  %65 = shl nuw i32 %conv92, 24
  %66 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i158 = getelementptr i8, ptr %67, i32 1176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i158, i32 %65) #13, !srcloc !359
  %68 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i154 = getelementptr i8, ptr %69, i32 1172
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i154) #13, !srcloc !365
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %71 = and i32 %70, 16777216
  %cmp75 = icmp eq i32 %71, 0
  br i1 %cmp75, label %if.end91.while.body77_crit_edge, label %if.end91.while.end93_crit_edge

if.end91.while.end93_crit_edge:                   ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end93

if.end91.while.body77_crit_edge:                  ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body77

while.end93:                                      ; preds = %if.end91.while.end93_crit_edge, %if.then87, %while.body77.while.end93_crit_edge, %while.cond72.preheader.while.end93_crit_edge
  call void @_raw_spin_unlock(ptr noundef %reg_lock) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c) #13
  br label %if.end95

if.end95:                                         ; preds = %while.end93, %land.lhs.true59.if.end95_crit_edge, %for.end.if.end95_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  call void @arm_heavy_mb() #13
  %72 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i160 = getelementptr i8, ptr %73, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i160, i32 50331648) #13, !srcloc !359
  br label %cleanup

cleanup:                                          ; preds = %if.end95, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end95 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_cs46xx_free(ptr nocapture noundef readonly %card) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %active_ctrl = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %active_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %active_ctrl, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %3(ptr noundef %1, i32 noundef 1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %gameport.i = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %gameport.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gameport.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.snd_cs46xx_remove_gameport.exit_crit_edge, label %if.then.i

if.end.snd_cs46xx_remove_gameport.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_cs46xx_remove_gameport.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @gameport_unregister_port(ptr noundef nonnull %5) #13
  %6 = ptrtoint ptr %gameport.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %gameport.i, align 4
  br label %snd_cs46xx_remove_gameport.exit

snd_cs46xx_remove_gameport.exit:                  ; preds = %if.then.i, %if.end.snd_cs46xx_remove_gameport.exit_crit_edge
  %amplifier_ctrl = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 19
  %7 = ptrtoint ptr %amplifier_ctrl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %amplifier_ctrl, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %snd_cs46xx_remove_gameport.exit.if.end5_crit_edge, label %if.then3

snd_cs46xx_remove_gameport.exit.if.end5_crit_edge: ; preds = %snd_cs46xx_remove_gameport.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then3:                                         ; preds = %snd_cs46xx_remove_gameport.exit
  call void @__sanitizer_cov_trace_pc() #15
  %amplifier = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 18
  %9 = ptrtoint ptr %amplifier to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %amplifier, align 4
  %sub = sub i32 0, %10
  tail call void %8(ptr noundef %1, i32 noundef %sub) #13
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %snd_cs46xx_remove_gameport.exit.if.end5_crit_edge
  %call.i = tail call i32 @cs46xx_dsp_proc_done(ptr noundef %1) #13
  tail call fastcc void @snd_cs46xx_hw_stop(ptr noundef %1)
  %11 = ptrtoint ptr %active_ctrl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %active_ctrl, align 4
  %tobool7.not = icmp eq ptr %12, null
  br i1 %tobool7.not, label %if.end5.if.end12_crit_edge, label %if.then8

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %amplifier10 = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 18
  %13 = ptrtoint ptr %amplifier10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %amplifier10, align 4
  %sub11 = sub i32 0, %14
  tail call void %12(ptr noundef %1, i32 noundef %sub11) #13
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end5.if.end12_crit_edge
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 28
  %15 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dsp_spos_instance, align 4
  %tobool13.not = icmp eq ptr %16, null
  br i1 %tobool13.not, label %if.end12.if.end16_crit_edge, label %if.then14

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @cs46xx_dsp_spos_destroy(ptr noundef %1) #13
  %17 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %dsp_spos_instance, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12.if.end16_crit_edge
  %arrayidx = getelementptr %struct.snd_cs46xx, ptr %1, i32 0, i32 32, i32 0
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  tail call fastcc void @free_module_desc(ptr noundef %19)
  %arrayidx.1 = getelementptr %struct.snd_cs46xx, ptr %1, i32 0, i32 32, i32 1
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.1, align 4
  tail call fastcc void @free_module_desc(ptr noundef %21)
  %arrayidx.2 = getelementptr %struct.snd_cs46xx, ptr %1, i32 0, i32 32, i32 2
  %22 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.2, align 4
  tail call fastcc void @free_module_desc(ptr noundef %23)
  %arrayidx.3 = getelementptr %struct.snd_cs46xx, ptr %1, i32 0, i32 32, i32 3
  %24 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.3, align 4
  tail call fastcc void @free_module_desc(ptr noundef %25)
  %arrayidx.4 = getelementptr %struct.snd_cs46xx, ptr %1, i32 0, i32 32, i32 4
  %26 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.4, align 4
  tail call fastcc void @free_module_desc(ptr noundef %27)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cs46xx_dsp_spos_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_cs46xx_chip_init(ptr noundef readonly %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %remap_addr.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 3, i32 0, i32 0, i32 2
  %0 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %2 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i110 = getelementptr i8, ptr %3, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110, i32 0) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i112 = getelementptr i8, ptr %5, i32 1240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112, i32 184549376) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %6 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i114 = getelementptr i8, ptr %7, i32 1120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114, i32 0) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %8 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i116 = getelementptr i8, ptr %9, i32 1248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116, i32 0) #13, !srcloc !359
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 10737400) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %11 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i118 = getelementptr i8, ptr %12, i32 1120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118, i32 16777216) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %13 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i120 = getelementptr i8, ptr %14, i32 1248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i120, i32 16777216) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %15 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i122 = getelementptr i8, ptr %16, i32 1120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122, i32 50331648) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %17 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i124 = getelementptr i8, ptr %18, i32 1248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124, i32 50331648) #13, !srcloc !359
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %29 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i126 = getelementptr i8, ptr %30, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126, i32 33554432) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %31 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i128 = getelementptr i8, ptr %32, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 2113929216) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %33 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i130 = getelementptr i8, ptr %34, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 973078528) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %35 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i132 = getelementptr i8, ptr %36, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132, i32 134217728) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %37 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i134 = getelementptr i8, ptr %38, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134, i32 268435456) #13, !srcloc !359
  tail call void @msleep(i32 noundef 100) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %39 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i136 = getelementptr i8, ptr %40, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136, i32 805306368) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %41 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i138 = getelementptr i8, ptr %42, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138, i32 16777216) #13, !srcloc !359
  tail call fastcc void @snd_cs46xx_clear_serial_FIFOs(ptr noundef %chip)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %43 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i140 = getelementptr i8, ptr %44, i32 1064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140, i32 50331648) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %45 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i142 = getelementptr i8, ptr %46, i32 1068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142, i32 50331648) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %47 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i144 = getelementptr i8, ptr %48, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i144, i32 50331648) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %49 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i146 = getelementptr i8, ptr %50, i32 1236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i146, i32 16777216) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %51 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i148 = getelementptr i8, ptr %52, i32 1072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i148, i32 0) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %53 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i150 = getelementptr i8, ptr %54, i32 1076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150, i32 0) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %55 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i152 = getelementptr i8, ptr %56, i32 1080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i152, i32 0) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %57 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i154 = getelementptr i8, ptr %58, i32 1232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i154, i32 16777216) #13, !srcloc !359
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #13
  br label %while.body9

while.body9:                                      ; preds = %if.end.while.body9_crit_edge, %entry
  %dec8172 = phi i32 [ %dec8, %if.end.while.body9_crit_edge ], [ 149, %entry ]
  %64 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i156 = getelementptr i8, ptr %65, i32 1124
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i156) #13, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %67 = and i32 %66, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool10.not = icmp eq i32 %67, 0
  br i1 %tobool10.not, label %if.end, label %while.body9.for.body_crit_edge

while.body9.for.body_crit_edge:                   ; preds = %while.body9
  br label %for.body

if.end:                                           ; preds = %while.body9
  tail call void @msleep(i32 noundef 10) #13
  %dec8 = add nsw i32 %dec8172, -1
  %cmp.not = icmp eq i32 %dec8172, 0
  br i1 %cmp.not, label %do.end, label %if.end.while.body9_crit_edge

if.end.while.body9_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %card = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %68 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %69, i32 0, i32 27
  %70 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.128) #16
  %72 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %card, align 4
  %dev16 = getelementptr inbounds %struct.snd_card, ptr %73, i32 0, i32 27
  %74 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev16, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.131) #16
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %while.body9.for.body_crit_edge
  %count.0173 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %while.body9.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 5368700) #13
  %77 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i158 = getelementptr i8, ptr %78, i32 1252
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i158) #13, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %80 = and i32 %79, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool20.not = icmp ne i32 %80, 0
  %inc = add nuw nsw i32 %count.0173, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 150, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 150
  %or.cond = select i1 %tobool20.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body
  %81 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i160 = getelementptr i8, ptr %82, i32 1252
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i160) #13, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %84 = and i32 %83, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool25.not = icmp eq i32 %84, 0
  br i1 %tobool25.not, label %do.body27, label %for.end.if.end38_crit_edge

for.end.if.end38_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

do.body27:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_cs46xx_chip_init.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_cs46xx_chip_init, %if.then32)) #13
          to label %if.end38 [label %if.then32], !srcloc !362

if.then32:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #15
  %card33 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %85 = ptrtoint ptr %card33 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %card33, align 4
  %dev34 = getelementptr inbounds %struct.snd_card, ptr %86, i32 0, i32 27
  %87 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev34, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_cs46xx_chip_init.__UNIQUE_ID_ddebug261, ptr noundef %88, ptr noundef nonnull @.str.133) #13
  br label %if.end38

if.end38:                                         ; preds = %if.then32, %do.body27, %for.end.if.end38_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %89 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i162 = getelementptr i8, ptr %90, i32 1120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162, i32 117440512) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %91 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i164 = getelementptr i8, ptr %92, i32 1248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i164, i32 117440512) #13, !srcloc !359
  br label %while.body42

while.body42:                                     ; preds = %if.end47.while.body42_crit_edge, %if.end38
  %dec40174 = phi i32 [ 149, %if.end38 ], [ %dec40, %if.end47.while.body42_crit_edge ]
  %93 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i166 = getelementptr i8, ptr %94, i32 1140
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i166) #13, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %96 = and i32 %95, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %96)
  %cmp45 = icmp eq i32 %96, 50331648
  br i1 %cmp45, label %ok2, label %if.end47

if.end47:                                         ; preds = %while.body42
  tail call void @msleep(i32 noundef 10) #13
  %dec40 = add nsw i32 %dec40174, -1
  %cmp41.not = icmp eq i32 %dec40174, 0
  br i1 %cmp41.not, label %do.end51, label %if.end47.while.body42_crit_edge

if.end47.while.body42_crit_edge:                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body42

do.end51:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  %card52 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %97 = ptrtoint ptr %card52 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %card52, align 4
  %dev53 = getelementptr inbounds %struct.snd_card, ptr %98, i32 0, i32 27
  %99 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev53, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.135) #16
  %101 = ptrtoint ptr %card52 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %card52, align 4
  %dev58 = getelementptr inbounds %struct.snd_card, ptr %102, i32 0, i32 27
  %103 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev58, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.138) #16
  %105 = ptrtoint ptr %card52 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %card52, align 4
  %dev63 = getelementptr inbounds %struct.snd_card, ptr %106, i32 0, i32 27
  %107 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev63, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.141) #16
  %109 = ptrtoint ptr %card52 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %card52, align 4
  %dev68 = getelementptr inbounds %struct.snd_card, ptr %110, i32 0, i32 27
  %111 = ptrtoint ptr %dev68 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev68, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.144) #16
  br label %cleanup

ok2:                                              ; preds = %while.body42
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %113 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i168 = getelementptr i8, ptr %114, i32 1128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i168, i32 50331648) #13, !srcloc !359
  br label %cleanup

cleanup:                                          ; preds = %ok2, %do.end51, %do.end
  %retval.0 = phi i32 [ 0, %ok2 ], [ -5, %do.end51 ], [ -5, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_playback_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_cs46xx_playback_open.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_cs46xx_playback_open, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_cs46xx_playback_open.__UNIQUE_ID_ddebug249, ptr noundef %5, ptr noundef nonnull @.str.48) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call fastcc i32 @_cs46xx_playback_open_channel(ptr noundef %substream, i32 noundef 1)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_playback_close(ptr nocapture noundef readonly %substream) #0 align 64 {
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
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %spos_mutex = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %spos_mutex, i32 noundef 0) #13
  %pcm_channel = getelementptr inbounds %struct.snd_cs46xx_pcm, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %pcm_channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcm_channel, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @cs46xx_dsp_destroy_pcm_channel(ptr noundef %1, ptr noundef nonnull %7) #13
  %8 = ptrtoint ptr %pcm_channel to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %pcm_channel, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  tail call void @mutex_unlock(ptr noundef %spos_mutex) #13
  %substream9 = getelementptr inbounds %struct.snd_cs46xx_pcm, ptr %5, i32 0, i32 4
  %9 = ptrtoint ptr %substream9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %substream9, align 4
  tail call void @snd_dma_free_pages(ptr noundef nonnull %5) #13
  %active_ctrl = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %active_ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %active_ctrl, align 4
  tail call void %11(ptr noundef %1, i32 noundef -1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_playback_hw_params(ptr noundef %substream, ptr nocapture noundef readonly %hw_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i267 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 6
  %6 = ptrtoint ptr %arrayidx.i.i267 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i267, align 4
  %private_data3 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %8 = ptrtoint ptr %private_data3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.end, label %if.end26, !prof !363

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1093, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end26:                                         ; preds = %entry
  %spos_mutex = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %spos_mutex, i32 noundef 0) #13
  %pcm_channel.i = getelementptr inbounds %struct.snd_cs46xx_pcm, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %pcm_channel.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcm_channel.i, align 4
  %cmp.i = icmp eq ptr %11, null
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end26
  %addr.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i, align 4
  %pcm_channel_id.i = getelementptr inbounds %struct.snd_cs46xx_pcm, ptr %9, i32 0, i32 6
  %14 = ptrtoint ptr %pcm_channel_id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pcm_channel_id.i, align 4
  %call.i = tail call ptr @cs46xx_dsp_create_pcm_channel(ptr noundef %3, i32 noundef %5, ptr noundef %9, i32 noundef %13, i32 noundef %15) #13
  %16 = ptrtoint ptr %pcm_channel.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %pcm_channel.i, align 4
  %cmp3.i = icmp eq ptr %call.i, null
  br i1 %cmp3.i, label %if.then.i.if.then29_crit_edge, label %if.then.i.if.end31.sink.split_crit_edge

if.then.i.if.end31.sink.split_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.sink.split

if.then.i.if.then29_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then29

if.else.i:                                        ; preds = %if.end26
  %sample_rate8.i = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, ptr %11, i32 0, i32 3
  %17 = ptrtoint ptr %sample_rate8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sample_rate8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %5)
  %cmp9.not.i = icmp eq i32 %18, %5
  br i1 %cmp9.not.i, label %if.else.i.if.end31_crit_edge, label %if.then10.i

if.else.i.if.end31_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then10.i:                                      ; preds = %if.else.i
  %unlinked12.i = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, ptr %11, i32 0, i32 4
  %19 = ptrtoint ptr %unlinked12.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %unlinked12.i, align 4
  tail call void @cs46xx_dsp_destroy_pcm_channel(ptr noundef %3, ptr noundef nonnull %11) #13
  %addr15.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %9, i32 0, i32 2
  %21 = ptrtoint ptr %addr15.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %addr15.i, align 4
  %pcm_channel_id16.i = getelementptr inbounds %struct.snd_cs46xx_pcm, ptr %9, i32 0, i32 6
  %23 = ptrtoint ptr %pcm_channel_id16.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pcm_channel_id16.i, align 4
  %call17.i = tail call ptr @cs46xx_dsp_create_pcm_channel(ptr noundef %3, i32 noundef %5, ptr noundef %9, i32 noundef %22, i32 noundef %24) #13
  %25 = ptrtoint ptr %pcm_channel.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call17.i, ptr %pcm_channel.i, align 4
  %tobool.not.i = icmp eq ptr %call17.i, null
  br i1 %tobool.not.i, label %if.then10.i.if.then29_crit_edge, label %if.end25.i

if.then10.i.if.then29_crit_edge:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then29

if.end25.i:                                       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool26.not.i = icmp eq i32 %20, 0
  br i1 %tobool26.not.i, label %if.then27.i, label %if.end25.i.cleanup.thread.i_crit_edge

if.end25.i.cleanup.thread.i_crit_edge:            ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread.i

if.then27.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #15
  %call29.i = tail call i32 @cs46xx_dsp_pcm_link(ptr noundef %3, ptr noundef nonnull %call17.i) #13
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then27.i, %if.end25.i.cleanup.thread.i_crit_edge
  %26 = ptrtoint ptr %pcm_channel.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pcm_channel.i, align 4
  br label %if.end31.sink.split

if.then29:                                        ; preds = %if.then10.i.if.then29_crit_edge, %if.then.i.if.then29_crit_edge
  %.str.55.sink = phi ptr [ @.str.52, %if.then.i.if.then29_crit_edge ], [ @.str.55, %if.then10.i.if.then29_crit_edge ]
  %card23.i = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 10
  %28 = ptrtoint ptr %card23.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %card23.i, align 4
  %dev24.i = getelementptr inbounds %struct.snd_card, ptr %29, i32 0, i32 27
  %30 = ptrtoint ptr %dev24.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev24.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull %.str.55.sink) #16
  tail call void @mutex_unlock(ptr noundef %spos_mutex) #13
  br label %cleanup

if.end31.sink.split:                              ; preds = %cleanup.thread.i, %if.then.i.if.end31.sink.split_crit_edge
  %.sink = phi ptr [ %27, %cleanup.thread.i ], [ %call.i, %if.then.i.if.end31.sink.split_crit_edge ]
  %sample_rate32.i = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, ptr %.sink, i32 0, i32 3
  %32 = ptrtoint ptr %sample_rate32.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %5, ptr %sample_rate32.i, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end31.sink.split, %if.else.i.if.end31_crit_edge
  %33 = ptrtoint ptr %pcm_channel.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pcm_channel.i, align 4
  %tobool33.not = icmp eq ptr %34, null
  br i1 %tobool33.not, label %if.end57, label %if.end31.if.end69_crit_edge, !prof !363

if.end31.if.end69_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.end57:                                         ; preds = %if.end31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1103, i32 noundef 9, ptr noundef null) #13
  %35 = ptrtoint ptr %pcm_channel.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr = load ptr, ptr %pcm_channel.i, align 4
  %tobool66.not = icmp eq ptr %.pr, null
  br i1 %tobool66.not, label %if.then67, label %if.end57.if.end69_crit_edge

if.end57.if.end69_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then67:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef %spos_mutex) #13
  br label %cleanup

if.end69:                                         ; preds = %if.end57.if.end69_crit_edge, %if.end31.if.end69_crit_edge
  %36 = phi ptr [ %.pr, %if.end57.if.end69_crit_edge ], [ %34, %if.end31.if.end69_crit_edge ]
  %call71 = tail call i32 @cs46xx_dsp_pcm_channel_set_period(ptr noundef %3, ptr noundef nonnull %36, i32 noundef %7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %do.body76, label %if.then73

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef %spos_mutex) #13
  br label %cleanup

do.body76:                                        ; preds = %if.end69
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_cs46xx_playback_hw_params.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_cs46xx_playback_hw_params, %if.then86)) #13
          to label %do.end91 [label %if.then86], !srcloc !362

if.then86:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #15
  %card = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 10
  %37 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %38, i32 0, i32 27
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 8
  %arrayidx.i.i268 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 7
  %41 = ptrtoint ptr %arrayidx.i.i268 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i.i268, align 4
  %arrayidx.i.i269 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 10
  %43 = ptrtoint ptr %arrayidx.i.i269 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.i269, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_cs46xx_playback_hw_params.__UNIQUE_ID_ddebug248, ptr noundef %40, ptr noundef nonnull @.str.50, i32 noundef %7, i32 noundef %42, i32 noundef %44) #13
  br label %do.end91

do.end91:                                         ; preds = %if.then86, %do.body76
  %arrayidx.i.i270 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 7
  %45 = ptrtoint ptr %arrayidx.i.i270 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i.i270, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %cmp = icmp eq i32 %46, 2
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 50
  %47 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dma_area, align 4
  %area = getelementptr inbounds %struct.snd_dma_buffer, ptr %9, i32 0, i32 1
  %49 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %area, align 4
  %cmp94.not = icmp eq ptr %48, %50
  br i1 %cmp, label %if.then93, label %if.else146

if.then93:                                        ; preds = %do.end91
  br i1 %cmp94.not, label %if.then93.if.end97_crit_edge, label %if.then95

if.then93.if.end97_crit_edge:                     ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97

if.then95:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #15
  %call96 = tail call i32 @snd_pcm_lib_free_pages(ptr noundef %substream) #13
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %if.then93.if.end97_crit_edge
  %51 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %runtime1, align 4
  %tobool.not.i271 = icmp eq ptr %9, null
  %dma_buffer_p2.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %52, i32 0, i32 53
  br i1 %tobool.not.i271, label %if.else.i274, label %if.then.i273

if.then.i273:                                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %dma_buffer_p2.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %9, ptr %dma_buffer_p2.i, align 8
  %54 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %area, align 4
  %dma_area.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %52, i32 0, i32 50
  %56 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %dma_area.i, align 4
  %addr.i272 = getelementptr inbounds %struct.snd_dma_buffer, ptr %9, i32 0, i32 2
  %57 = ptrtoint ptr %addr.i272 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %addr.i272, align 4
  %dma_addr.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %52, i32 0, i32 51
  %59 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %dma_addr.i, align 8
  %bytes.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %9, i32 0, i32 3
  %60 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bytes.i, align 4
  br label %snd_pcm_set_runtime_buffer.exit

if.else.i274:                                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #15
  %62 = ptrtoint ptr %dma_buffer_p2.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %dma_buffer_p2.i, align 8
  %dma_area3.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %52, i32 0, i32 50
  %63 = ptrtoint ptr %dma_area3.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %dma_area3.i, align 4
  %dma_addr4.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %52, i32 0, i32 51
  %64 = ptrtoint ptr %dma_addr4.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %dma_addr4.i, align 8
  br label %snd_pcm_set_runtime_buffer.exit

snd_pcm_set_runtime_buffer.exit:                  ; preds = %if.else.i274, %if.then.i273
  %.sink.i = phi i32 [ 0, %if.else.i274 ], [ %61, %if.then.i273 ]
  %65 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %52, i32 0, i32 52
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %.sink.i, ptr %65, align 4
  %pcm_channel_id = getelementptr inbounds %struct.snd_cs46xx_pcm, ptr %9, i32 0, i32 6
  %67 = ptrtoint ptr %pcm_channel_id to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pcm_channel_id, align 4
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %68, label %do.end128 [
    i32 1, label %if.then100
    i32 2, label %if.then103
    i32 3, label %if.then108
    i32 5, label %if.then113
  ]

if.then100:                                       ; preds = %snd_pcm_set_runtime_buffer.exit
  call void @__sanitizer_cov_trace_pc() #15
  %ops = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 10
  %70 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @snd_cs46xx_playback_ops, ptr %ops, align 4
  br label %if.end209

if.then103:                                       ; preds = %snd_pcm_set_runtime_buffer.exit
  call void @__sanitizer_cov_trace_pc() #15
  %ops104 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 10
  %71 = ptrtoint ptr %ops104 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @snd_cs46xx_playback_rear_ops, ptr %ops104, align 4
  br label %if.end209

if.then108:                                       ; preds = %snd_pcm_set_runtime_buffer.exit
  call void @__sanitizer_cov_trace_pc() #15
  %ops109 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 10
  %72 = ptrtoint ptr %ops109 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @snd_cs46xx_playback_clfe_ops, ptr %ops109, align 4
  br label %if.end209

if.then113:                                       ; preds = %snd_pcm_set_runtime_buffer.exit
  call void @__sanitizer_cov_trace_pc() #15
  %ops114 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 10
  %73 = ptrtoint ptr %ops114 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @snd_cs46xx_playback_iec958_ops, ptr %ops114, align 4
  br label %if.end209

do.end128:                                        ; preds = %snd_pcm_set_runtime_buffer.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1137, i32 noundef 9, ptr noundef nonnull @.str.51) #13
  br label %if.end209

if.else146:                                       ; preds = %do.end91
  br i1 %cmp94.not, label %if.then151, label %if.else146.if.end152_crit_edge

if.else146.if.end152_crit_edge:                   ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152

if.then151:                                       ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #15
  %74 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %runtime1, align 4
  %dma_area3.i278 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %75, i32 0, i32 50
  %76 = call ptr @memset(ptr %dma_area3.i278, i32 0, i32 16)
  br label %if.end152

if.end152:                                        ; preds = %if.then151, %if.else146.if.end152_crit_edge
  %arrayidx.i.i283 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 10
  %77 = ptrtoint ptr %arrayidx.i.i283 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i.i283, align 4
  %call154 = tail call i32 @snd_pcm_lib_malloc_pages(ptr noundef %substream, i32 noundef %78) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %cmp155 = icmp slt i32 %call154, 0
  br i1 %cmp155, label %if.then156, label %if.end158

if.then156:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef %spos_mutex) #13
  br label %cleanup

if.end158:                                        ; preds = %if.end152
  %pcm_channel_id159 = getelementptr inbounds %struct.snd_cs46xx_pcm, ptr %9, i32 0, i32 6
  %79 = ptrtoint ptr %pcm_channel_id159 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pcm_channel_id159, align 4
  %81 = zext i32 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %80, label %do.end191 [
    i32 1, label %if.then161
    i32 2, label %if.then166
    i32 3, label %if.then171
    i32 5, label %if.then176
  ]

if.then161:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #15
  %ops162 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 10
  %82 = ptrtoint ptr %ops162 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @snd_cs46xx_playback_indirect_ops, ptr %ops162, align 4
  br label %if.end209

if.then166:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #15
  %ops167 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 10
  %83 = ptrtoint ptr %ops167 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @snd_cs46xx_playback_indirect_rear_ops, ptr %ops167, align 4
  br label %if.end209

if.then171:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #15
  %ops172 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 10
  %84 = ptrtoint ptr %ops172 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @snd_cs46xx_playback_indirect_clfe_ops, ptr %ops172, align 4
  br label %if.end209

if.then176:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #15
  %ops177 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 10
  %85 = ptrtoint ptr %ops177 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @snd_cs46xx_playback_indirect_iec958_ops, ptr %ops177, align 4
  br label %if.end209

do.end191:                                        ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1164, i32 noundef 9, ptr noundef nonnull @.str.51) #13
  br label %if.end209

if.end209:                                        ; preds = %do.end191, %if.then176, %if.then171, %if.then166, %if.then161, %do.end128, %if.then113, %if.then108, %if.then103, %if.then100
  tail call void @mutex_unlock(ptr noundef %spos_mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end209, %if.then156, %if.then73, %if.then67, %if.then29, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ -6, %if.then29 ], [ -22, %if.then73 ], [ 0, %if.end209 ], [ %call154, %if.then156 ], [ -6, %if.then67 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_playback_hw_free(ptr noundef %substream) #0 align 64 {
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
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 50
  %4 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_area, align 4
  %area = getelementptr inbounds %struct.snd_dma_buffer, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %area, align 4
  %cmp.not = icmp eq ptr %5, %7
  br i1 %cmp.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @snd_pcm_lib_free_pages(ptr noundef %substream) #13
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %8 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime1, align 4
  %dma_area3.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 50
  %10 = call ptr @memset(ptr %dma_area3.i, i32 0, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_playback_prepare(ptr nocapture noundef readonly %substream) #0 align 64 {
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
  %pcm_channel = getelementptr inbounds %struct.snd_cs46xx_pcm, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %pcm_channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcm_channel, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end26, !prof !363

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1210, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end26:                                         ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %pcm_reader_scb = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %pcm_reader_scb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcm_reader_scb, align 4
  %address = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %address, align 4
  %add = shl i32 %11, 2
  %shl = add i32 %add, 4
  %shr.i = lshr i32 %shl, 16
  %and.i = and i32 %shl, 65532
  %region.i = getelementptr inbounds %struct.snd_cs46xx, ptr %7, i32 0, i32 3
  %add.i = add nuw nsw i32 %shr.i, 1
  %remap_addr.i = getelementptr [5 x %struct.snd_cs46xx_region], ptr %region.i, i32 0, i32 %add.i, i32 2
  %12 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %and.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !367
  %15 = and i32 %14, -1072693249
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %shift = getelementptr inbounds %struct.snd_cs46xx_pcm, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %shift, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 15
  %18 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp = icmp eq i32 %19, 1
  br i1 %cmp, label %if.then28, label %if.end26.if.end30_crit_edge

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %shift, align 4
  %or = or i32 %16, 8192
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end26.if.end30_crit_edge
  %pfie.0 = phi i32 [ %or, %if.then28 ], [ %16, %if.end26.if.end30_crit_edge ]
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 12
  %21 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %format, align 4
  %call31 = tail call i32 @snd_pcm_format_width(i32 noundef %22) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call31)
  %cmp32 = icmp eq i32 %call31, 8
  br i1 %cmp32, label %if.then33, label %if.end30.if.end37_crit_edge

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %shift, align 4
  %dec35 = add i32 %24, -1
  store i32 %dec35, ptr %shift, align 4
  %or36 = or i32 %pfie.0, 4096
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.end30.if.end37_crit_edge
  %pfie.1 = phi i32 [ %or36, %if.then33 ], [ %pfie.0, %if.end30.if.end37_crit_edge ]
  %25 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %format, align 4
  %call39 = tail call i32 @snd_pcm_format_unsigned(i32 noundef %26) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  %or42 = or i32 %pfie.1, 32768
  %spec.select = select i1 %tobool40.not, i32 %pfie.1, i32 %or42
  %27 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %format, align 4
  %call45 = tail call i32 @snd_pcm_format_width(i32 noundef %28) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call45)
  %cmp46.not = icmp eq i32 %call45, 8
  br i1 %cmp46.not, label %if.end37.if.end54_crit_edge, label %if.then47

if.end37.if.end54_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

if.then47:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %format, align 4
  %call49 = tail call i32 @snd_pcm_format_big_endian(i32 noundef %30) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  %or52 = or i32 %spec.select, 16384
  %spec.select116 = select i1 %tobool50.not, i32 %spec.select, i32 %or52
  br label %if.end54

if.end54:                                         ; preds = %if.then47, %if.end37.if.end54_crit_edge
  %pfie.3 = phi i32 [ %spec.select, %if.end37.if.end54_crit_edge ], [ %spec.select116, %if.then47 ]
  %pcm_rec = getelementptr inbounds %struct.snd_cs46xx_pcm, ptr %3, i32 0, i32 3
  %31 = call ptr @memset(ptr %pcm_rec, i32 0, i32 40)
  %32 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %runtime1, align 4
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %33, i32 0, i32 18
  %34 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %buffer_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %33, i32 0, i32 21
  %36 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %37, %35
  %div1.i.i = lshr i32 %mul.i.i, 3
  %sw_buffer_size = getelementptr inbounds %struct.snd_cs46xx_pcm, ptr %3, i32 0, i32 3, i32 5
  %38 = ptrtoint ptr %sw_buffer_size to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %div1.i.i, ptr %sw_buffer_size, align 4
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 16
  %39 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %period_size, align 4
  %mul = shl i32 %40, 1
  %41 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %shift, align 4
  %shl58 = shl i32 %mul, %42
  %43 = ptrtoint ptr %pcm_rec to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %shl58, ptr %pcm_rec, align 4
  %44 = ptrtoint ptr %pcm_channel to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pcm_channel, align 4
  %pcm_reader_scb61 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %pcm_reader_scb61 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pcm_reader_scb61, align 4
  %address62 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %address62 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %address62, align 4
  %shl63 = shl i32 %49, 2
  %shr.i117 = lshr i32 %shl63, 16
  %and.i118 = and i32 %shl63, 65532
  %add.i120 = add nuw nsw i32 %shr.i117, 1
  %remap_addr.i121 = getelementptr [5 x %struct.snd_cs46xx_region], ptr %region.i, i32 0, i32 %add.i120, i32 2
  %50 = ptrtoint ptr %remap_addr.i121 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %remap_addr.i121, align 4
  %add.ptr.i122 = getelementptr i8, ptr %51, i32 %and.i118
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122) #13, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !367
  %53 = and i32 %52, 16580607
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %55 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %shift, align 4
  %shl67 = shl i32 4, %56
  %sub = add i32 %shl67, -1
  %or68 = or i32 %sub, %54
  %57 = ptrtoint ptr %pcm_channel to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pcm_channel, align 4
  %pcm_reader_scb70 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %pcm_reader_scb70 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pcm_reader_scb70, align 4
  %address71 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %address71 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %address71, align 4
  %shl72 = shl i32 %62, 2
  %shr.i123 = lshr i32 %shl72, 16
  %and.i124 = and i32 %shl72, 65532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %63 = tail call i32 @llvm.bswap.i32(i32 %or68) #13
  %add.i126 = add nuw nsw i32 %shr.i123, 1
  %remap_addr.i127 = getelementptr [5 x %struct.snd_cs46xx_region], ptr %region.i, i32 0, i32 %add.i126, i32 2
  %64 = ptrtoint ptr %remap_addr.i127 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %remap_addr.i127, align 4
  %add.ptr.i128 = getelementptr i8, ptr %65, i32 %and.i124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 %63) #13, !srcloc !359
  %66 = ptrtoint ptr %pcm_channel to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pcm_channel, align 4
  %pcm_reader_scb74 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %pcm_reader_scb74 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pcm_reader_scb74, align 4
  %address75 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %address75 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %address75, align 4
  %add76 = shl i32 %71, 2
  %shl77 = add i32 %add76, 4
  %pcm_slot = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, ptr %67, i32 0, i32 2
  %72 = ptrtoint ptr %pcm_slot to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pcm_slot, align 4
  %or79 = or i32 %73, %pfie.3
  %shr.i129 = lshr i32 %shl77, 16
  %and.i130 = and i32 %shl77, 65532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %74 = tail call i32 @llvm.bswap.i32(i32 %or79) #13
  %add.i132 = add nuw nsw i32 %shr.i129, 1
  %remap_addr.i133 = getelementptr [5 x %struct.snd_cs46xx_region], ptr %region.i, i32 0, i32 %add.i132, i32 2
  %75 = ptrtoint ptr %remap_addr.i133 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %remap_addr.i133, align 4
  %add.ptr.i134 = getelementptr i8, ptr %76, i32 %and.i130
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134, i32 %74) #13, !srcloc !359
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ 0, %if.end54 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_playback_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #0 align 64 {
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
  %pcm_channel = getelementptr inbounds %struct.snd_cs46xx_pcm, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %pcm_channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcm_channel, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.sw.bb_crit_edge
    i32 6, label %if.end.sw.bb_crit_edge45
    i32 0, label %if.end.sw.bb12_crit_edge
    i32 5, label %if.end.sw.bb12_crit_edge46
  ]

if.end.sw.bb12_crit_edge46:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb12

if.end.sw.bb12_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb12

if.end.sw.bb_crit_edge45:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge45
  %pcm_reader_scb = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, ptr %7, i32 0, i32 5
  %9 = ptrtoint ptr %pcm_reader_scb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcm_reader_scb, align 4
  %address = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %address, align 4
  %add = shl i32 %12, 2
  %shl = add i32 %add, 56
  %shr.i = lshr i32 %shl, 16
  %and.i = and i32 %shl, 65532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %region.i = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 3
  %add.i = add nuw nsw i32 %shr.i, 1
  %remap_addr.i = getelementptr [5 x %struct.snd_cs46xx_region], ptr %region.i, i32 0, i32 %add.i, i32 2
  %13 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %and.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 8388736) #13, !srcloc !359
  %15 = ptrtoint ptr %pcm_channel to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcm_channel, align 4
  %unlinked = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %unlinked to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %unlinked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool4.not = icmp eq i32 %18, 0
  br i1 %tobool4.not, label %sw.bb.if.end7_crit_edge, label %if.then5

sw.bb.if.end7_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then5:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @cs46xx_dsp_pcm_link(ptr noundef %1, ptr noundef %16) #13
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %sw.bb.if.end7_crit_edge
  %19 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %runtime, align 4
  %periods = getelementptr inbounds %struct.snd_pcm_runtime, ptr %20, i32 0, i32 17
  %21 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %periods, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp.not = icmp eq i32 %22, 2
  br i1 %cmp.not, label %if.end7.cleanup_crit_edge, label %if.then9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %call10 = tail call i32 @snd_cs46xx_playback_transfer(ptr noundef %substream)
  br label %cleanup

sw.bb12:                                          ; preds = %if.end.sw.bb12_crit_edge, %if.end.sw.bb12_crit_edge46
  %pcm_reader_scb14 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, ptr %7, i32 0, i32 5
  %23 = ptrtoint ptr %pcm_reader_scb14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcm_reader_scb14, align 4
  %address15 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %address15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %address15, align 4
  %add16 = shl i32 %26, 2
  %shl17 = add i32 %add16, 56
  %shr.i39 = lshr i32 %shl17, 16
  %and.i40 = and i32 %shl17, 65532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %region.i41 = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 3
  %add.i42 = add nuw nsw i32 %shr.i39, 1
  %remap_addr.i43 = getelementptr [5 x %struct.snd_cs46xx_region], ptr %region.i41, i32 0, i32 %add.i42, i32 2
  %27 = ptrtoint ptr %remap_addr.i43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %remap_addr.i43, align 4
  %add.ptr.i44 = getelementptr i8, ptr %28, i32 %and.i40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 -1) #13, !srcloc !359
  %29 = ptrtoint ptr %pcm_channel to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pcm_channel, align 4
  %unlinked19 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %unlinked19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %unlinked19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool20.not = icmp eq i32 %32, 0
  br i1 %tobool20.not, label %if.then21, label %sw.bb12.cleanup_crit_edge

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then21:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #15
  %call23 = tail call i32 @cs46xx_dsp_pcm_unlink(ptr noundef %1, ptr noundef %30) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %sw.bb12.cleanup_crit_edge, %if.then9, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %entry.cleanup_crit_edge ], [ 0, %sw.bb12.cleanup_crit_edge ], [ 0, %if.then21 ], [ 0, %if.then9 ], [ 0, %if.end7.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_playback_direct_pointer(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data1, align 8
  %pcm_channel = getelementptr inbounds %struct.snd_cs46xx_pcm, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %pcm_channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcm_channel, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !363

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 902, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %pcm_reader_scb = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %pcm_reader_scb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcm_reader_scb, align 4
  %address = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %address, align 4
  %add = shl i32 %11, 2
  %shl = add i32 %add, 8
  %shr.i = lshr i32 %shl, 16
  %and.i = and i32 %shl, 65532
  %region.i = getelementptr inbounds %struct.snd_cs46xx, ptr %7, i32 0, i32 3
  %add.i = add nuw nsw i32 %shr.i, 1
  %remap_addr.i = getelementptr [5 x %struct.snd_cs46xx_region], ptr %region.i, i32 0, i32 %add.i, i32 2
  %12 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %and.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !365
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !367
  %addr = getelementptr inbounds %struct.snd_dma_buffer, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr, align 4
  %sub = sub i32 %15, %17
  %shift = getelementptr inbounds %struct.snd_cs46xx_pcm, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %shift, align 4
  %shr = lshr i32 %sub, %19
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ %shr, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_cs46xx_playback_open_channel(ptr noundef %substream, i32 noundef %pcm_channel_id) unnamed_addr #0 align 64 {
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 92) #17
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %pci = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %call.i = tail call i32 @snd_dma_alloc_dir_pages(i32 noundef 2, ptr noundef %dev, i32 noundef 0, i32 noundef 4096, ptr noundef nonnull %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp slt i32 %call.i, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %7 = call ptr @memcpy(ptr %hw, ptr @snd_cs46xx_playback, i32 64)
  %private_data6 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %8 = ptrtoint ptr %private_data6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %private_data6, align 8
  %private_free = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 45
  %9 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @snd_cs46xx_pcm_free_substream, ptr %private_free, align 4
  %substream7 = getelementptr inbounds %struct.snd_cs46xx_pcm, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %substream7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %substream, ptr %substream7, align 8
  %spos_mutex = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %spos_mutex, i32 noundef 0) #13
  %pcm_channel = getelementptr inbounds %struct.snd_cs46xx_pcm, ptr %call7.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %pcm_channel to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %pcm_channel, align 4
  %pcm_channel_id8 = getelementptr inbounds %struct.snd_cs46xx_pcm, ptr %call7.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %pcm_channel_id8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %pcm_channel_id, ptr %pcm_channel_id8, align 8
  %call9 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 14, ptr noundef nonnull @hw_constraints_period_sizes) #13
  tail call void @mutex_unlock(ptr noundef %spos_mutex) #13
  %accept_valid = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 24
  %13 = ptrtoint ptr %accept_valid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %accept_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end5.if.end14_crit_edge, label %if.then11

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %runtime1, align 4
  %hw13 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 46
  %17 = ptrtoint ptr %hw13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hw13, align 8
  %or = or i32 %18, 2
  store i32 %or, ptr %hw13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end5.if.end14_crit_edge
  %active_ctrl = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 20
  %19 = ptrtoint ptr %active_ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %active_ctrl, align 4
  tail call void %20(ptr noundef %1, i32 noundef 1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then4 ], [ 0, %if.end14 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_cs46xx_pcm_free_substream(ptr nocapture noundef readonly %runtime) #0 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dma_alloc_dir_pages(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cs46xx_dsp_destroy_pcm_channel(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dma_free_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs46xx_dsp_pcm_channel_set_period(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_lib_free_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_lib_malloc_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cs46xx_dsp_create_pcm_channel(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs46xx_dsp_pcm_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_playback_indirect_pointer(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data1, align 8
  %pcm_channel = getelementptr inbounds %struct.snd_cs46xx_pcm, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %pcm_channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcm_channel, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !363

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 921, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end24:                                         ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %pcm_reader_scb = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %pcm_reader_scb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcm_reader_scb, align 4
  %address = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %address, align 4
  %add = shl i32 %11, 2
  %shl = add i32 %add, 8
  %shr.i = lshr i32 %shl, 16
  %and.i = and i32 %shl, 65532
  %region.i = getelementptr inbounds %struct.snd_cs46xx, ptr %7, i32 0, i32 3
  %add.i = add nuw nsw i32 %shr.i, 1
  %remap_addr.i = getelementptr [5 x %struct.snd_cs46xx_region], ptr %region.i, i32 0, i32 %add.i, i32 2
  %12 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %and.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !365
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !367
  %addr = getelementptr inbounds %struct.snd_dma_buffer, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr, align 4
  %sub = sub i32 %15, %17
  %hw_io.i = getelementptr inbounds %struct.snd_cs46xx_pcm, ptr %3, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %hw_io.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hw_io.i, align 4
  %sub.i = sub i32 %sub, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end24.if.end.i_crit_edge

if.end24.if.end.i_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  %pcm_rec = getelementptr inbounds %struct.snd_cs46xx_pcm, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %pcm_rec to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pcm_rec, align 4
  %add.i36 = add i32 %21, %sub.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end24.if.end.i_crit_edge
  %bytes.0.i = phi i32 [ %add.i36, %if.then.i ], [ %sub.i, %if.end24.if.end.i_crit_edge ]
  %22 = ptrtoint ptr %hw_io.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub, ptr %hw_io.i, align 4
  %hw_ready.i = getelementptr inbounds %struct.snd_cs46xx_pcm, ptr %3, i32 0, i32 3, i32 4
  %23 = ptrtoint ptr %hw_ready.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hw_ready.i, align 4
  %sub2.i = sub i32 %24, %bytes.0.i
  store i32 %sub2.i, ptr %hw_ready.i, align 4
  %sw_io.i = getelementptr inbounds %struct.snd_cs46xx_pcm, ptr %3, i32 0, i32 3, i32 7
  %25 = ptrtoint ptr %sw_io.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sw_io.i, align 4
  %add3.i = add i32 %26, %bytes.0.i
  store i32 %add3.i, ptr %sw_io.i, align 4
  %sw_buffer_size.i = getelementptr inbounds %struct.snd_cs46xx_pcm, ptr %3, i32 0, i32 3, i32 5
  %27 = ptrtoint ptr %sw_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sw_buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i, i32 %28)
  %cmp5.not.i = icmp ult i32 %add3.i, %28
  br i1 %cmp5.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then6.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub9.i = sub i32 %add3.i, %28
  %29 = ptrtoint ptr %sw_io.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub9.i, ptr %sw_io.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then6.i, %if.end.i.if.end10.i_crit_edge
  %ops.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 10
  %30 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i, align 4
  %ack.i = getelementptr inbounds %struct.snd_pcm_ops, ptr %31, i32 0, i32 15
  %32 = ptrtoint ptr %ack.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ack.i, align 4
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %if.end10.i.snd_pcm_indirect_playback_pointer.exit_crit_edge, label %if.then11.i

if.end10.i.snd_pcm_indirect_playback_pointer.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_pcm_indirect_playback_pointer.exit

if.then11.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 %33(ptr noundef %substream) #13
  br label %snd_pcm_indirect_playback_pointer.exit

snd_pcm_indirect_playback_pointer.exit:           ; preds = %if.then11.i, %if.end10.i.snd_pcm_indirect_playback_pointer.exit_crit_edge
  %34 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %runtime, align 4
  %36 = ptrtoint ptr %sw_io.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sw_io.i, align 4
  %mul.i.i = shl i32 %37, 3
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %35, i32 0, i32 21
  %38 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %frame_bits.i.i, align 8
  %div.i.i = udiv i32 %mul.i.i, %39
  br label %cleanup

cleanup:                                          ; preds = %snd_pcm_indirect_playback_pointer.exit, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ %div.i.i, %snd_pcm_indirect_playback_pointer.exit ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_playback_transfer(ptr nocapture noundef readonly %substream) #8 align 64 {
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
  %pcm_rec = getelementptr inbounds %struct.snd_cs46xx_pcm, ptr %3, i32 0, i32 3
  %control.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 38
  %4 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %control.i, align 8
  %appl_ptr2.i = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %appl_ptr2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %appl_ptr2.i, align 4
  %appl_ptr3.i = getelementptr inbounds %struct.snd_cs46xx_pcm, ptr %3, i32 0, i32 3, i32 9
  %8 = ptrtoint ptr %appl_ptr3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %appl_ptr3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %tobool.not.i = icmp eq i32 %7, %9
  br i1 %tobool.not.i, label %entry.if.end12.i_crit_edge, label %if.then.i

entry.if.end12.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_pcm_indirect_playback_transfer.exit

if.end9.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %12 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %13, %spec.select.i
  %div1.i.i = lshr i32 %mul.i.i, 3
  %sw_ready.i = getelementptr inbounds %struct.snd_cs46xx_pcm, ptr %3, i32 0, i32 3, i32 8
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
  %hw_queue_size.i = getelementptr inbounds %struct.snd_cs46xx_pcm, ptr %3, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %hw_queue_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hw_queue_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool13.not.i = icmp eq i32 %18, 0
  br i1 %tobool13.not.i, label %cond.false.i, label %if.end12.i.cond.end.i_crit_edge

if.end12.i.cond.end.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %pcm_rec to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pcm_rec, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end12.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %20, %cond.false.i ], [ %18, %if.end12.i.cond.end.i_crit_edge ]
  %sw_ready16.i = getelementptr inbounds %struct.snd_cs46xx_pcm, ptr %3, i32 0, i32 3, i32 8
  %hw_ready.i = getelementptr inbounds %struct.snd_cs46xx_pcm, ptr %3, i32 0, i32 3, i32 4
  %21 = ptrtoint ptr %hw_ready.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hw_ready.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %22)
  %cmp156.i = icmp sgt i32 %cond.i, %22
  br i1 %cmp156.i, label %land.rhs.lr.ph.i, label %cond.end.i.snd_pcm_indirect_playback_transfer.exit_crit_edge

cond.end.i.snd_pcm_indirect_playback_transfer.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_pcm_indirect_playback_transfer.exit

land.rhs.lr.ph.i:                                 ; preds = %cond.end.i
  %hw_data.i = getelementptr inbounds %struct.snd_cs46xx_pcm, ptr %3, i32 0, i32 3, i32 2
  %sw_buffer_size.i = getelementptr inbounds %struct.snd_cs46xx_pcm, ptr %3, i32 0, i32 3, i32 5
  %sw_data.i = getelementptr inbounds %struct.snd_cs46xx_pcm, ptr %3, i32 0, i32 3, i32 6
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_pcm_indirect_playback_transfer.exit

while.body.i:                                     ; preds = %land.rhs.i
  %26 = ptrtoint ptr %pcm_rec to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pcm_rec, align 4
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
  %34 = tail call i32 @llvm.smin.i32(i32 %24, i32 %sub22.i) #13
  %35 = tail call i32 @llvm.umin.i32(i32 %sub19.i, i32 %34) #13
  %36 = tail call i32 @llvm.umin.i32(i32 %sub20.i, i32 %35) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool34.not.i = icmp eq i32 %36, 0
  br i1 %tobool34.not.i, label %while.body.i.snd_pcm_indirect_playback_transfer.exit_crit_edge, label %cleanup.i

while.body.i.snd_pcm_indirect_playback_transfer.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_pcm_indirect_playback_transfer.exit

cleanup.i:                                        ; preds = %while.body.i
  %37 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %runtime1, align 4
  %private_data.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %38, i32 0, i32 44
  %39 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %private_data.i.i, align 8
  %area.i.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %area.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %area.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 %29
  %dma_area.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %38, i32 0, i32 50
  %43 = ptrtoint ptr %dma_area.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dma_area.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %44, i32 %33
  %45 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %add.ptr2.i.i, i32 %36)
  %46 = ptrtoint ptr %hw_data.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %hw_data.i, align 4
  %add38.i = add i32 %47, %36
  %48 = ptrtoint ptr %pcm_rec to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pcm_rec, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add38.i, i32 %49)
  %cmp41.i = icmp eq i32 %add38.i, %49
  %spec.store.select.i = select i1 %cmp41.i, i32 0, i32 %add38.i
  %50 = ptrtoint ptr %hw_data.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %spec.store.select.i, ptr %hw_data.i, align 4
  %51 = ptrtoint ptr %sw_data.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sw_data.i, align 4
  %add46.i = add i32 %52, %36
  %53 = ptrtoint ptr %sw_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sw_buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add46.i, i32 %54)
  %cmp49.i = icmp eq i32 %add46.i, %54
  %spec.store.select3.i = select i1 %cmp49.i, i32 0, i32 %add46.i
  %55 = ptrtoint ptr %sw_data.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %spec.store.select3.i, ptr %sw_data.i, align 4
  %56 = ptrtoint ptr %hw_ready.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %hw_ready.i, align 4
  %add54.i = add i32 %57, %36
  store i32 %add54.i, ptr %hw_ready.i, align 4
  %58 = ptrtoint ptr %sw_ready16.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sw_ready16.i, align 4
  %sub56.i = sub i32 %59, %36
  store i32 %sub56.i, ptr %sw_ready16.i, align 4
  %cmp15.i = icmp sgt i32 %cond.i, %add54.i
  br i1 %cmp15.i, label %cleanup.i.land.rhs.i_crit_edge, label %cleanup.i.snd_pcm_indirect_playback_transfer.exit_crit_edge

cleanup.i.snd_pcm_indirect_playback_transfer.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_pcm_indirect_playback_transfer.exit

cleanup.i.land.rhs.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i

snd_pcm_indirect_playback_transfer.exit:          ; preds = %cleanup.i.snd_pcm_indirect_playback_transfer.exit_crit_edge, %while.body.i.snd_pcm_indirect_playback_transfer.exit_crit_edge, %land.rhs.i.snd_pcm_indirect_playback_transfer.exit_crit_edge, %cond.end.i.snd_pcm_indirect_playback_transfer.exit_crit_edge, %if.then.i.snd_pcm_indirect_playback_transfer.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.then.i.snd_pcm_indirect_playback_transfer.exit_crit_edge ], [ 0, %cond.end.i.snd_pcm_indirect_playback_transfer.exit_crit_edge ], [ 0, %cleanup.i.snd_pcm_indirect_playback_transfer.exit_crit_edge ], [ 0, %while.body.i.snd_pcm_indirect_playback_transfer.exit_crit_edge ], [ 0, %land.rhs.i.snd_pcm_indirect_playback_transfer.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_playback_open_rear(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_cs46xx_playback_open_rear.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_cs46xx_playback_open_rear, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_cs46xx_playback_open_rear.__UNIQUE_ID_ddebug250, ptr noundef %5, ptr noundef nonnull @.str.58) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call fastcc i32 @_cs46xx_playback_open_channel(ptr noundef %substream, i32 noundef 2)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_playback_open_clfe(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_cs46xx_playback_open_clfe.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_cs46xx_playback_open_clfe, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_cs46xx_playback_open_clfe.__UNIQUE_ID_ddebug251, ptr noundef %5, ptr noundef nonnull @.str.60) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call fastcc i32 @_cs46xx_playback_open_channel(ptr noundef %substream, i32 noundef 3)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_playback_open_iec958(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_cs46xx_playback_open_iec958.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_cs46xx_playback_open_iec958, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %card = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_cs46xx_playback_open_iec958.__UNIQUE_ID_ddebug252, ptr noundef %5, ptr noundef nonnull @.str.62) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %spos_mutex = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %spos_mutex, i32 noundef 0) #13
  %call3 = tail call i32 @cs46xx_iec958_pre_open(ptr noundef %1) #13
  tail call void @mutex_unlock(ptr noundef %spos_mutex) #13
  %call5 = tail call fastcc i32 @_cs46xx_playback_open_channel(ptr noundef %substream, i32 noundef 5)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_playback_close_iec958(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_cs46xx_playback_close_iec958.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_cs46xx_playback_close_iec958, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %card = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_cs46xx_playback_close_iec958.__UNIQUE_ID_ddebug253, ptr noundef %5, ptr noundef nonnull @.str.64) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %8 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime1.i, align 4
  %private_data2.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 44
  %10 = ptrtoint ptr %private_data2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data2.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %do.end.snd_cs46xx_playback_close.exit_crit_edge, label %if.end.i

do.end.snd_cs46xx_playback_close.exit_crit_edge:  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_cs46xx_playback_close.exit

if.end.i:                                         ; preds = %do.end
  %spos_mutex.i = getelementptr inbounds %struct.snd_cs46xx, ptr %7, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %spos_mutex.i, i32 noundef 0) #13
  %pcm_channel.i = getelementptr inbounds %struct.snd_cs46xx_pcm, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %pcm_channel.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcm_channel.i, align 4
  %tobool3.not.i = icmp eq ptr %13, null
  br i1 %tobool3.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then4.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @cs46xx_dsp_destroy_pcm_channel(ptr noundef %7, ptr noundef nonnull %13) #13
  %14 = ptrtoint ptr %pcm_channel.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %pcm_channel.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.end.i.if.end7.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %spos_mutex.i) #13
  %substream9.i = getelementptr inbounds %struct.snd_cs46xx_pcm, ptr %11, i32 0, i32 4
  %15 = ptrtoint ptr %substream9.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %substream9.i, align 4
  tail call void @snd_dma_free_pages(ptr noundef nonnull %11) #13
  %active_ctrl.i = getelementptr inbounds %struct.snd_cs46xx, ptr %7, i32 0, i32 20
  %16 = ptrtoint ptr %active_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %active_ctrl.i, align 4
  tail call void %17(ptr noundef %7, i32 noundef -1) #13
  br label %snd_cs46xx_playback_close.exit

snd_cs46xx_playback_close.exit:                   ; preds = %if.end7.i, %do.end.snd_cs46xx_playback_close.exit_crit_edge
  %retval.0.i10 = phi i32 [ 0, %if.end7.i ], [ -6, %do.end.snd_cs46xx_playback_close.exit_crit_edge ]
  %spos_mutex = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %spos_mutex, i32 noundef 0) #13
  %call4 = tail call i32 @cs46xx_iec958_post_close(ptr noundef %1) #13
  tail call void @mutex_unlock(ptr noundef %spos_mutex) #13
  ret i32 %retval.0.i10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs46xx_iec958_pre_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs46xx_iec958_post_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_unsigned(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_big_endian(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs46xx_dsp_pcm_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_capture_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pci = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %capt = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 5
  %call.i = tail call i32 @snd_dma_alloc_dir_pages(i32 noundef 2, ptr noundef %dev, i32 noundef 0, i32 noundef 4096, ptr noundef %capt) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %substream2 = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 5, i32 4
  %4 = ptrtoint ptr %substream2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %substream2, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %5 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %runtime, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 46
  %7 = call ptr @memcpy(ptr %hw, ptr @snd_cs46xx_capture, i32 64)
  %accept_valid = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 24
  %8 = ptrtoint ptr %accept_valid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %accept_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime, align 4
  %hw5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 46
  %12 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw5, align 8
  %or = or i32 %13, 2
  store i32 %or, ptr %hw5, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %active_ctrl = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 20
  %14 = ptrtoint ptr %active_ctrl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %active_ctrl, align 4
  tail call void %15(ptr noundef %1, i32 noundef 1) #13
  %16 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %runtime, align 4
  %call8 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %17, i32 noundef 0, i32 noundef 14, ptr noundef nonnull @hw_constraints_period_sizes) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_capture_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %capt = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 5
  %substream1 = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 5, i32 4
  %2 = ptrtoint ptr %substream1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %substream1, align 4
  tail call void @snd_dma_free_pages(ptr noundef %capt) #13
  %active_ctrl = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 20
  %3 = ptrtoint ptr %active_ctrl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %active_ctrl, align 4
  tail call void %4(ptr noundef %1, i32 noundef -1) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_capture_hw_params(ptr noundef %substream, ptr nocapture noundef readonly %hw_params) #0 align 64 {
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
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 6
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %call2 = tail call i32 @cs46xx_dsp_pcm_ostream_set_period(ptr noundef %1, i32 noundef %5) #13
  %periods = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 17
  %6 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %periods, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 50
  %8 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_area, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %capt = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 5
  %area = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 5, i32 0, i32 1
  %10 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %area, align 4
  %cmp3.not = icmp eq ptr %9, %11
  br i1 %cmp3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = tail call i32 @snd_pcm_lib_free_pages(ptr noundef %substream) #13
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %12 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %runtime1, align 4
  %tobool.not.i = icmp eq ptr %capt, null
  %dma_buffer_p2.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 53
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %dma_buffer_p2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %capt, ptr %dma_buffer_p2.i, align 8
  %15 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %area, align 4
  %dma_area.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 50
  %17 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %dma_area.i, align 4
  %addr.i = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 5, i32 0, i32 2
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i, align 4
  %dma_addr.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 51
  %20 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %dma_addr.i, align 8
  %bytes.i = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 5, i32 0, i32 3
  %21 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bytes.i, align 4
  br label %snd_pcm_set_runtime_buffer.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %dma_buffer_p2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %dma_buffer_p2.i, align 8
  %dma_area3.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 50
  %24 = ptrtoint ptr %dma_area3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %dma_area3.i, align 4
  %dma_addr4.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 51
  %25 = ptrtoint ptr %dma_addr4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %dma_addr4.i, align 8
  br label %snd_pcm_set_runtime_buffer.exit

snd_pcm_set_runtime_buffer.exit:                  ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i32 [ 0, %if.else.i ], [ %22, %if.then.i ]
  %26 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 52
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink.i, ptr %26, align 4
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  %area11 = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 5, i32 0, i32 1
  %28 = ptrtoint ptr %area11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %area11, align 4
  %cmp12 = icmp eq ptr %9, %29
  br i1 %cmp12, label %if.then13, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %runtime1, align 4
  %dma_area3.i40 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %31, i32 0, i32 50
  %32 = call ptr @memset(ptr %dma_area3.i40, i32 0, i32 16)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.else.if.end14_crit_edge
  %arrayidx.i.i44 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 10
  %33 = ptrtoint ptr %arrayidx.i.i44 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i44, align 4
  %call16 = tail call i32 @snd_pcm_lib_malloc_pages(ptr noundef %substream, i32 noundef %34) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end14.cleanup_crit_edge, label %if.end14.cleanup.sink.split_crit_edge

if.end14.cleanup.sink.split_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end14.cleanup.sink.split_crit_edge, %snd_pcm_set_runtime_buffer.exit
  %snd_cs46xx_capture_ops.sink = phi ptr [ @snd_cs46xx_capture_ops, %snd_pcm_set_runtime_buffer.exit ], [ @snd_cs46xx_capture_indirect_ops, %if.end14.cleanup.sink.split_crit_edge ]
  %ops = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 10
  %35 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %snd_cs46xx_capture_ops.sink, ptr %ops, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end14.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_capture_hw_free(ptr noundef %substream) #0 align 64 {
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
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 50
  %4 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_area, align 4
  %area = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 5, i32 0, i32 1
  %6 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %area, align 4
  %cmp.not = icmp eq ptr %5, %7
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @snd_pcm_lib_free_pages(ptr noundef %substream) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime1, align 4
  %dma_area3.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 50
  %10 = call ptr @memset(ptr %dma_area3.i, i32 0, i32 16)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_capture_prepare(ptr nocapture noundef readonly %substream) #0 align 64 {
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
  %addr = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 5, i32 0, i32 2
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #13
  %remap_addr.i = getelementptr %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #13, !srcloc !359
  %shift = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 5, i32 2
  %9 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %shift, align 4
  %pcm_rec = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 5, i32 3
  %10 = call ptr @memset(ptr %pcm_rec, i32 0, i32 40)
  %11 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %runtime1, align 4
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %12, i32 0, i32 18
  %13 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buffer_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %12, i32 0, i32 21
  %15 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %16, %14
  %div1.i.i = lshr i32 %mul.i.i, 3
  %sw_buffer_size = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 5, i32 3, i32 5
  %17 = ptrtoint ptr %sw_buffer_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div1.i.i, ptr %sw_buffer_size, align 4
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %18 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %period_size, align 4
  %mul = shl i32 %19, 3
  %20 = ptrtoint ptr %pcm_rec to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul, ptr %pcm_rec, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %21 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rate, align 4
  tail call fastcc void @snd_cs46xx_set_capture_sample_rate(ptr noundef %1, i32 noundef %22)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_capture_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #13
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge23
    i32 0, label %entry.sw.bb1_crit_edge
    i32 5, label %entry.sw.bb1_crit_edge24
  ]

entry.sw.bb1_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb1

entry.sw.bb_crit_edge23:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge23
  %remap_addr.i = getelementptr %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 100
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !367
  %6 = and i32 %5, 65535
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %ctl = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctl, align 4
  %or = or i32 %9, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %10 = tail call i32 @llvm.bswap.i32(i32 %or) #13
  %11 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %12, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %10) #13, !srcloc !359
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge24
  %remap_addr.i18 = getelementptr %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %remap_addr.i18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %remap_addr.i18, align 4
  %add.ptr.i19 = getelementptr i8, ptr %14, i32 100
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #13, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !367
  %16 = and i32 %15, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %17 = ptrtoint ptr %remap_addr.i18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %remap_addr.i18, align 4
  %add.ptr.i22 = getelementptr i8, ptr %18, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %16) #13, !srcloc !359
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %result.0 = phi i32 [ 0, %sw.bb1 ], [ 0, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #13
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_capture_direct_pointer(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %remap_addr.i = getelementptr %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 268
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !365
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !367
  %addr = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 5, i32 0, i32 2
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr, align 4
  %sub = sub i32 %5, %7
  %shift = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %shift, align 4
  %shr = lshr i32 %sub, %9
  ret i32 %shr
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs46xx_dsp_pcm_ostream_set_period(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_capture_indirect_pointer(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %remap_addr.i = getelementptr %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 268
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !365
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !367
  %addr = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 5, i32 0, i32 2
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr, align 4
  %sub = sub i32 %5, %7
  %pcm_rec = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 5, i32 3
  %hw_io.i = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 5, i32 3, i32 3
  %8 = ptrtoint ptr %hw_io.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hw_io.i, align 4
  %sub.i = sub i32 %sub, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %pcm_rec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pcm_rec, align 4
  %add.i = add i32 %11, %sub.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %bytes.0.i = phi i32 [ %add.i, %if.then.i ], [ %sub.i, %entry.if.end.i_crit_edge ]
  %12 = ptrtoint ptr %hw_io.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %hw_io.i, align 4
  %hw_ready.i = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 5, i32 3, i32 4
  %13 = ptrtoint ptr %hw_ready.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hw_ready.i, align 4
  %add2.i = add i32 %14, %bytes.0.i
  store i32 %add2.i, ptr %hw_ready.i, align 4
  %hw_queue_size.i = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 5, i32 3, i32 1
  %15 = ptrtoint ptr %hw_queue_size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hw_queue_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %cond.false.i, label %if.end.i.cond.end.i_crit_edge

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %pcm_rec to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pcm_rec, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %18, %cond.false.i ], [ %16, %if.end.i.cond.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i, i32 %cond.i)
  %cmp6.i = icmp sgt i32 %add2.i, %cond.i
  br i1 %cmp6.i, label %cond.end.i.snd_pcm_indirect_capture_pointer.exit_crit_edge, label %if.end8.i

cond.end.i.snd_pcm_indirect_capture_pointer.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_pcm_indirect_capture_pointer.exit

if.end8.i:                                        ; preds = %cond.end.i
  %sw_io.i = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 5, i32 3, i32 7
  %19 = ptrtoint ptr %sw_io.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sw_io.i, align 4
  %add9.i = add i32 %20, %bytes.0.i
  store i32 %add9.i, ptr %sw_io.i, align 4
  %sw_buffer_size.i = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 5, i32 3, i32 5
  %21 = ptrtoint ptr %sw_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sw_buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add9.i, i32 %22)
  %cmp11.not.i = icmp ult i32 %add9.i, %22
  br i1 %cmp11.not.i, label %if.end8.i.if.end16.i_crit_edge, label %if.then12.i

if.end8.i.if.end16.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub15.i = sub i32 %add9.i, %22
  %23 = ptrtoint ptr %sw_io.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub15.i, ptr %sw_io.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then12.i, %if.end8.i.if.end16.i_crit_edge
  %ops.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 10
  %24 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i, align 4
  %ack.i = getelementptr inbounds %struct.snd_pcm_ops, ptr %25, i32 0, i32 15
  %26 = ptrtoint ptr %ack.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ack.i, align 4
  %tobool17.not.i = icmp eq ptr %27, null
  br i1 %tobool17.not.i, label %if.end16.i.if.end21.i_crit_edge, label %if.then18.i

if.end16.i.if.end21.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.i

if.then18.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 %27(ptr noundef %substream) #13
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then18.i, %if.end16.i.if.end21.i_crit_edge
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %28 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %runtime.i, align 4
  %30 = ptrtoint ptr %sw_io.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sw_io.i, align 4
  %mul.i.i = shl i32 %31, 3
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %29, i32 0, i32 21
  %32 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %frame_bits.i.i, align 8
  %div.i.i = udiv i32 %mul.i.i, %33
  br label %snd_pcm_indirect_capture_pointer.exit

snd_pcm_indirect_capture_pointer.exit:            ; preds = %if.end21.i, %cond.end.i.snd_pcm_indirect_capture_pointer.exit_crit_edge
  %retval.0.i = phi i32 [ %div.i.i, %if.end21.i ], [ -1, %cond.end.i.snd_pcm_indirect_capture_pointer.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_capture_transfer(ptr nocapture noundef readonly %substream) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pcm_rec = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 5, i32 3
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1.i, align 4
  %control.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 38
  %4 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %control.i, align 8
  %appl_ptr2.i = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %appl_ptr2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %appl_ptr2.i, align 4
  %appl_ptr3.i = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 5, i32 3, i32 9
  %8 = ptrtoint ptr %appl_ptr3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %appl_ptr3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %tobool.not.i = icmp eq i32 %7, %9
  br i1 %tobool.not.i, label %entry.if.end12.i_crit_edge, label %if.then.i

entry.if.end12.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.i

if.then.i:                                        ; preds = %entry
  %sub.i = sub i32 %7, %9
  %boundary.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 33
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
  br i1 %cmp7.i, label %if.then.i.snd_pcm_indirect_capture_transfer.exit_crit_edge, label %if.end9.i

if.then.i.snd_pcm_indirect_capture_transfer.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_pcm_indirect_capture_transfer.exit

if.end9.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %12 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %13, %spec.select.i
  %div1.i.i = lshr i32 %mul.i.i, 3
  %sw_ready.i = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 5, i32 3, i32 8
  %14 = ptrtoint ptr %sw_ready.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sw_ready.i, align 4
  %sub10.i = sub i32 %15, %div1.i.i
  store i32 %sub10.i, ptr %sw_ready.i, align 4
  %16 = ptrtoint ptr %appl_ptr3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %7, ptr %appl_ptr3.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end9.i, %entry.if.end12.i_crit_edge
  %sw_ready14.i = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 5, i32 3, i32 8
  %hw_ready.i = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 5, i32 3, i32 4
  %17 = ptrtoint ptr %hw_ready.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hw_ready.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp136.i = icmp sgt i32 %18, 0
  br i1 %cmp136.i, label %land.rhs.lr.ph.i, label %if.end12.i.snd_pcm_indirect_capture_transfer.exit_crit_edge

if.end12.i.snd_pcm_indirect_capture_transfer.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_pcm_indirect_capture_transfer.exit

land.rhs.lr.ph.i:                                 ; preds = %if.end12.i
  %sw_buffer_size.i = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 5, i32 3, i32 5
  %hw_data.i = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 5, i32 3, i32 2
  %sw_data.i = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 5, i32 3, i32 6
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %cleanup.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %19 = phi i32 [ %18, %land.rhs.lr.ph.i ], [ %sub53.i, %cleanup.i.land.rhs.i_crit_edge ]
  %20 = ptrtoint ptr %sw_ready14.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sw_ready14.i, align 4
  %22 = ptrtoint ptr %sw_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sw_buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %21)
  %cmp15.i = icmp sgt i32 %23, %21
  br i1 %cmp15.i, label %while.body.i, label %land.rhs.i.snd_pcm_indirect_capture_transfer.exit_crit_edge

land.rhs.i.snd_pcm_indirect_capture_transfer.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_pcm_indirect_capture_transfer.exit

while.body.i:                                     ; preds = %land.rhs.i
  %24 = ptrtoint ptr %pcm_rec to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pcm_rec, align 4
  %26 = ptrtoint ptr %hw_data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hw_data.i, align 4
  %sub16.i = sub i32 %25, %27
  %28 = ptrtoint ptr %sw_data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sw_data.i, align 4
  %sub18.i = sub i32 %23, %29
  %sub21.i = sub i32 %23, %21
  %30 = tail call i32 @llvm.smin.i32(i32 %19, i32 %sub21.i) #13
  %31 = tail call i32 @llvm.umin.i32(i32 %sub16.i, i32 %30) #13
  %32 = tail call i32 @llvm.umin.i32(i32 %sub18.i, i32 %31) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool33.not.i = icmp eq i32 %32, 0
  br i1 %tobool33.not.i, label %while.body.i.snd_pcm_indirect_capture_transfer.exit_crit_edge, label %cleanup.i

while.body.i.snd_pcm_indirect_capture_transfer.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_pcm_indirect_capture_transfer.exit

cleanup.i:                                        ; preds = %while.body.i
  %33 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %private_data, align 4
  %35 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %runtime1.i, align 4
  %dma_area.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %36, i32 0, i32 50
  %37 = ptrtoint ptr %dma_area.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dma_area.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 %29
  %area.i.i = getelementptr inbounds %struct.snd_cs46xx, ptr %34, i32 0, i32 5, i32 0, i32 1
  %39 = ptrtoint ptr %area.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %area.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %40, i32 %27
  %41 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %add.ptr2.i.i, i32 %32)
  %42 = ptrtoint ptr %hw_data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hw_data.i, align 4
  %add37.i = add i32 %43, %32
  %44 = ptrtoint ptr %pcm_rec to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pcm_rec, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add37.i, i32 %45)
  %cmp40.i = icmp eq i32 %add37.i, %45
  %spec.store.select.i = select i1 %cmp40.i, i32 0, i32 %add37.i
  %46 = ptrtoint ptr %hw_data.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %spec.store.select.i, ptr %hw_data.i, align 4
  %47 = ptrtoint ptr %sw_data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sw_data.i, align 4
  %add45.i = add i32 %48, %32
  %49 = ptrtoint ptr %sw_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sw_buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add45.i, i32 %50)
  %cmp48.i = icmp eq i32 %add45.i, %50
  %spec.store.select3.i = select i1 %cmp48.i, i32 0, i32 %add45.i
  %51 = ptrtoint ptr %sw_data.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %spec.store.select3.i, ptr %sw_data.i, align 4
  %52 = ptrtoint ptr %hw_ready.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hw_ready.i, align 4
  %sub53.i = sub i32 %53, %32
  store i32 %sub53.i, ptr %hw_ready.i, align 4
  %54 = ptrtoint ptr %sw_ready14.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sw_ready14.i, align 4
  %add55.i = add i32 %55, %32
  store i32 %add55.i, ptr %sw_ready14.i, align 4
  %cmp13.i = icmp sgt i32 %sub53.i, 0
  br i1 %cmp13.i, label %cleanup.i.land.rhs.i_crit_edge, label %cleanup.i.snd_pcm_indirect_capture_transfer.exit_crit_edge

cleanup.i.snd_pcm_indirect_capture_transfer.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_pcm_indirect_capture_transfer.exit

cleanup.i.land.rhs.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i

snd_pcm_indirect_capture_transfer.exit:           ; preds = %cleanup.i.snd_pcm_indirect_capture_transfer.exit_crit_edge, %while.body.i.snd_pcm_indirect_capture_transfer.exit_crit_edge, %land.rhs.i.snd_pcm_indirect_capture_transfer.exit_crit_edge, %if.end12.i.snd_pcm_indirect_capture_transfer.exit_crit_edge, %if.then.i.snd_pcm_indirect_capture_transfer.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.then.i.snd_pcm_indirect_capture_transfer.exit_crit_edge ], [ 0, %if.end12.i.snd_pcm_indirect_capture_transfer.exit_crit_edge ], [ 0, %cleanup.i.snd_pcm_indirect_capture_transfer.exit_crit_edge ], [ 0, %while.body.i.snd_pcm_indirect_capture_transfer.exit_crit_edge ], [ 0, %land.rhs.i.snd_pcm_indirect_capture_transfer.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @snd_ac97_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_cs46xx_codec_write(ptr noundef %chip, i16 noundef zeroext %reg, i16 noundef zeroext %val, i32 noundef %codec_index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %codec_index)
  %0 = icmp ugt i32 %codec_index, 1
  br i1 %0, label %do.end, label %if.end22, !prof !363

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 226, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end22:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %codec_index)
  %cmp.not = icmp eq i32 %codec_index, 0
  %active_ctrl = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 20
  %1 = ptrtoint ptr %active_ctrl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %active_ctrl, align 4
  tail call void %2(ptr noundef %chip, i32 noundef 1) #13
  %conv = zext i16 %reg to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %3 = tail call i32 @llvm.bswap.i32(i32 %conv) #13
  %remap_addr.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 3, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 1132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #13, !srcloc !359
  %conv23 = zext i16 %val to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %6 = tail call i32 @llvm.bswap.i32(i32 %conv23) #13
  %7 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %8, i32 1136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %6) #13, !srcloc !359
  %9 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i61 = getelementptr i8, ptr %10, i32 1120
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61) #13, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13
  tail call void @arm_heavy_mb() #13
  %12 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i63 = getelementptr i8, ptr %13, i32 1120
  br i1 %cmp.not, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 117440512) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %14 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i65 = getelementptr i8, ptr %15, i32 1120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 251658240) #13, !srcloc !359
  br label %for.body.preheader

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 1325400064) #13, !srcloc !359
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.else, %if.then26
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %count.070, 1
  %exitcond.not = icmp eq i32 %inc, 4000
  br i1 %exitcond.not, label %do.end36, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %count.070 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 2147480) #13
  %17 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i69 = getelementptr i8, ptr %18, i32 1120
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69) #13, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %20 = and i32 %19, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool31.not = icmp eq i32 %20, 0
  br i1 %tobool31.not, label %for.body.end_crit_edge, label %for.cond

for.body.end_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

do.end36:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  %card = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %21 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.69, i32 noundef %codec_index, i32 noundef %conv, i32 noundef %conv23) #16
  br label %end

end:                                              ; preds = %do.end36, %for.body.end_crit_edge
  %25 = ptrtoint ptr %active_ctrl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %active_ctrl, align 4
  tail call void %26(ptr noundef %chip, i32 noundef -1) #13
  br label %cleanup

cleanup:                                          ; preds = %end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @snd_cs46xx_codec_read(ptr noundef %chip, i16 noundef zeroext %reg, i32 noundef %codec_index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %codec_index)
  %cmp.not = icmp eq i32 %codec_index, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %codec_index)
  %0 = icmp ugt i32 %codec_index, 1
  br i1 %0, label %do.end, label %if.end23, !prof !363

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 83, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end23:                                         ; preds = %entry
  %active_ctrl = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 20
  %1 = ptrtoint ptr %active_ctrl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %active_ctrl, align 4
  tail call void %2(ptr noundef %chip, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %codec_index)
  %cmp24 = icmp eq i32 %codec_index, 1
  %spec.select124 = select i1 %cmp24, i32 128, i32 0
  %add = or i32 %spec.select124, 1148
  %remap_addr.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 3, i32 0, i32 0, i32 2
  %3 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 %add
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %6 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i126 = getelementptr i8, ptr %7, i32 1120
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i126) #13, !srcloc !365
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %and = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp29 = icmp eq i32 %and, 0
  br i1 %cmp29, label %do.end34, label %if.end23.if.end44_crit_edge

if.end23.if.end44_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

do.end34:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %conv28 = and i32 %9, 65535
  %card = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.71, i32 noundef %conv28) #16
  %and37 = and i32 %9, 65529
  %or = or i32 %and37, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %14 = tail call i32 @llvm.bswap.i32(i32 %or) #13
  %15 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i128 = getelementptr i8, ptr %16, i32 1120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 %14) #13, !srcloc !359
  tail call void @msleep(i32 noundef 50) #13
  %add38 = or i32 %spec.select124, 1120
  %17 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i130 = getelementptr i8, ptr %18, i32 %add38
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i130) #13, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %20 = and i32 %19, -100728832
  %21 = or i32 %20, 100663296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %22 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i132 = getelementptr i8, ptr %23, i32 1120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132, i32 %21) #13, !srcloc !359
  br label %if.end44

if.end44:                                         ; preds = %do.end34, %if.end23.if.end44_crit_edge
  %conv45 = zext i16 %reg to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %24 = tail call i32 @llvm.bswap.i32(i32 %conv45) #13
  %25 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i134 = getelementptr i8, ptr %26, i32 1132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134, i32 %24) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %27 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i136 = getelementptr i8, ptr %28, i32 1136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136, i32 0) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13
  tail call void @arm_heavy_mb() #13
  %29 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i138 = getelementptr i8, ptr %30, i32 1120
  br i1 %cmp.not, label %if.then48, label %if.else

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138, i32 385875968) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %31 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i140 = getelementptr i8, ptr %32, i32 1120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140, i32 520093696) #13, !srcloc !359
  br label %for.body.preheader

if.else:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138, i32 1593835520) #13, !srcloc !359
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.else, %if.then48
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %count.0149, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %do.end59, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %count.0149 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 2147480) #13
  %34 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i144 = getelementptr i8, ptr %35, i32 1120
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i144) #13, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %37 = and i32 %36, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool54.not = icmp eq i32 %37, 0
  br i1 %tobool54.not, label %for.cond63.preheader, label %for.cond

for.cond63.preheader:                             ; preds = %for.body
  %add67 = or i32 %spec.select124, 1124
  br label %for.body66

do.end59:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  %card60 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %38 = ptrtoint ptr %card60 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %card60, align 4
  %dev61 = getelementptr inbounds %struct.snd_card, ptr %39, i32 0, i32 27
  %40 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev61, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.75, i32 noundef %conv45) #16
  br label %end

for.body66:                                       ; preds = %if.end72.for.body66_crit_edge, %for.cond63.preheader
  %count.1150 = phi i32 [ 0, %for.cond63.preheader ], [ %inc74, %if.end72.for.body66_crit_edge ]
  %42 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i146 = getelementptr i8, ptr %43, i32 %add67
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i146) #13, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %45 = and i32 %44, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool70.not = icmp eq i32 %45, 0
  br i1 %tobool70.not, label %if.end72, label %ok2

if.end72:                                         ; preds = %for.body66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 2147480) #13
  %inc74 = add nuw nsw i32 %count.1150, 1
  %exitcond151.not = icmp eq i32 %inc74, 100
  br i1 %exitcond151.not, label %do.end78, label %if.end72.for.body66_crit_edge

if.end72.for.body66_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body66

do.end78:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  %card79 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %47 = ptrtoint ptr %card79 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %card79, align 4
  %dev80 = getelementptr inbounds %struct.snd_card, ptr %48, i32 0, i32 27
  %49 = ptrtoint ptr %dev80 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev80, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.78, i32 noundef %codec_index, i32 noundef %conv45) #16
  br label %end

ok2:                                              ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #15
  %51 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i148 = getelementptr i8, ptr %52, i32 %add
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i148) #13, !srcloc !365
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %conv84 = trunc i32 %54 to i16
  br label %end

end:                                              ; preds = %ok2, %do.end78, %do.end59
  %result.0 = phi i16 [ %conv84, %ok2 ], [ -1, %do.end78 ], [ -1, %do.end59 ]
  %55 = ptrtoint ptr %active_ctrl to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %active_ctrl, align 4
  tail call void %56(ptr noundef %chip, i32 noundef -1) #13
  br label %cleanup

cleanup:                                          ; preds = %end, %do.end
  %retval.0 = phi i16 [ -1, %do.end ], [ %result.0, %end ]
  ret i16 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_cs46xx_mixer_free_ac97(ptr noundef readonly %ac97) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ac971 = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ac971 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ac971, align 4
  %cmp.not = icmp eq ptr %3, %ac97
  br i1 %cmp.not, label %if.then29, label %land.rhs

land.rhs:                                         ; preds = %entry
  %arrayidx3 = getelementptr %struct.snd_cs46xx, ptr %1, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3, align 4
  %cmp4.not = icmp eq ptr %5, %ac97
  br i1 %cmp4.not, label %if.else, label %do.end, !prof !357

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1859, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.then29:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %ac971 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ac971, align 4
  %eapd_switch = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 23
  %7 = ptrtoint ptr %eapd_switch to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %eapd_switch, align 4
  br label %cleanup

if.else:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then29, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_mixer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_cs46xx_vol_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #9 align 64 {
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
  store i32 32767, ptr %max, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_cs46xx_vol_dac_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsp_spos_instance, align 4
  %dac_volume_left = getelementptr inbounds %struct.dsp_spos_instance, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %dac_volume_left to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dac_volume_left, align 2
  %conv = zext i16 %5 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %value, align 8
  %7 = load ptr, ptr %dsp_spos_instance, align 4
  %dac_volume_right = getelementptr inbounds %struct.dsp_spos_instance, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %dac_volume_right to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dac_volume_right, align 4
  %conv2 = zext i16 %9 to i32
  %arrayidx4 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv2, ptr %arrayidx4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_vol_dac_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsp_spos_instance, align 4
  %dac_volume_right = getelementptr inbounds %struct.dsp_spos_instance, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dac_volume_right to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dac_volume_right, align 4
  %conv = zext i16 %5 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp.not = icmp eq i32 %7, %conv
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %dac_volume_left = getelementptr inbounds %struct.dsp_spos_instance, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %dac_volume_left to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dac_volume_left, align 2
  %conv3 = zext i16 %9 to i32
  %arrayidx5 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv3)
  %cmp6.not = icmp eq i32 %11, %conv3
  br i1 %cmp6.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %conv10 = trunc i32 %7 to i16
  %arrayidx12 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx12, align 4
  %conv13 = trunc i32 %13 to i16
  %call = tail call i32 @cs46xx_dsp_set_dac_volume(ptr noundef %1, i16 noundef zeroext %conv10, i16 noundef zeroext %conv13) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %change.0 = phi i32 [ 1, %if.then ], [ 0, %lor.lhs.false.if.end_crit_edge ]
  ret i32 %change.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_vol_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
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
  %shr.i = lshr i32 %3, 16
  %and.i = and i32 %3, 65535
  %region.i = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 3
  %add.i = add nuw nsw i32 %shr.i, 1
  %remap_addr.i = getelementptr [5 x %struct.snd_cs46xx_region], ptr %region.i, i32 0, i32 %add.i, i32 2
  %4 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %and.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !365
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !367
  %8 = xor i32 %7, -1
  %sub = lshr i32 %8, 16
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub, ptr %value, align 8
  %and = and i32 %7, 65535
  %sub1 = xor i32 %and, 65535
  %arrayidx3 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub1, ptr %arrayidx3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_vol_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
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
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  %.neg = mul i32 %5, -65536
  %shl = add i32 %.neg, -65536
  %arrayidx2 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  %sub3 = sub i32 65535, %7
  %or = or i32 %shl, %sub3
  %shr.i = lshr i32 %3, 16
  %and.i = and i32 %3, 65535
  %region.i = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 3
  %add.i = add nuw nsw i32 %shr.i, 1
  %remap_addr.i = getelementptr [5 x %struct.snd_cs46xx_region], ptr %region.i, i32 0, i32 %add.i, i32 2
  %8 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %and.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !365
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !367
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %or)
  %cmp = icmp ne i32 %11, %or
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #13
  %13 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %14, i32 %and.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %12) #13, !srcloc !359
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_cs46xx_adc_capture_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsp_spos_instance, align 4
  %adc_input = getelementptr inbounds %struct.dsp_spos_instance, ptr %3, i32 0, i32 37
  %4 = ptrtoint ptr %adc_input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adc_input, align 4
  %cmp.not = icmp ne ptr %5, null
  %spec.select = zext i1 %cmp.not to i32
  %6 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.select, ptr %6, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_adc_capture_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsp_spos_instance, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %adc_input6 = getelementptr inbounds %struct.dsp_spos_instance, ptr %3, i32 0, i32 37
  %6 = ptrtoint ptr %adc_input6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adc_input6, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %land.lhs.true5, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool7.not, label %if.then, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @cs46xx_dsp_enable_adc_capture(ptr noundef %1) #13
  br label %if.end10

land.lhs.true5:                                   ; preds = %entry
  br i1 %tobool7.not, label %land.lhs.true5.if.end10_crit_edge, label %if.then8

land.lhs.true5.if.end10_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then8:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  %call9 = tail call i32 @cs46xx_dsp_disable_adc_capture(ptr noundef %1) #13
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %land.lhs.true5.if.end10_crit_edge, %if.then, %land.lhs.true.if.end10_crit_edge
  %change.0 = phi i32 [ 1, %if.then8 ], [ 0, %land.lhs.true5.if.end10_crit_edge ], [ 1, %if.then ], [ 0, %land.lhs.true.if.end10_crit_edge ]
  ret i32 %change.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_cs46xx_pcm_capture_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsp_spos_instance, align 4
  %pcm_input = getelementptr inbounds %struct.dsp_spos_instance, ptr %3, i32 0, i32 36
  %4 = ptrtoint ptr %pcm_input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcm_input, align 4
  %cmp.not = icmp ne ptr %5, null
  %spec.select = zext i1 %cmp.not to i32
  %6 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.select, ptr %6, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_pcm_capture_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsp_spos_instance, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %pcm_input6 = getelementptr inbounds %struct.dsp_spos_instance, ptr %3, i32 0, i32 36
  %6 = ptrtoint ptr %pcm_input6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcm_input6, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %land.lhs.true5, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool7.not, label %if.then, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @cs46xx_dsp_enable_pcm_capture(ptr noundef %1) #13
  br label %if.end10

land.lhs.true5:                                   ; preds = %entry
  br i1 %tobool7.not, label %land.lhs.true5.if.end10_crit_edge, label %if.then8

land.lhs.true5.if.end10_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then8:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  %call9 = tail call i32 @cs46xx_dsp_disable_pcm_capture(ptr noundef %1) #13
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %land.lhs.true5.if.end10_crit_edge, %if.then, %land.lhs.true.if.end10_crit_edge
  %change.0 = phi i32 [ 1, %if.then8 ], [ 0, %land.lhs.true5.if.end10_crit_edge ], [ 1, %if.then ], [ 0, %land.lhs.true.if.end10_crit_edge ]
  ret i32 %change.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_cs46xx_iec958_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #10 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dsp_spos_instance, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %spdif_status_out = getelementptr inbounds %struct.dsp_spos_instance, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %spdif_status_out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %spdif_status_out, align 4
  %and = and i32 %7, 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %spdif_status_in = getelementptr inbounds %struct.dsp_spos_instance, ptr %5, i32 0, i32 24
  %8 = ptrtoint ptr %spdif_status_in to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %spdif_status_in, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ %and, %if.then ], [ %9, %if.else ]
  %10 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %10, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_iec958_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
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
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %3, label %do.end [
    i32 2, label %sw.bb
    i32 1, label %sw.bb14
  ]

sw.bb:                                            ; preds = %entry
  %spos_mutex = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %spos_mutex, i32 noundef 0) #13
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 28
  %5 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dsp_spos_instance, align 4
  %spdif_status_out = getelementptr inbounds %struct.dsp_spos_instance, ptr %6, i32 0, i32 23
  %7 = ptrtoint ptr %spdif_status_out to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %spdif_status_out, align 4
  %and = and i32 %8, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp ne i32 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool.not, i1 %tobool1.not, i1 false
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @cs46xx_dsp_enable_spdif_out(ptr noundef %1) #13
  br label %if.end9

if.else:                                          ; preds = %sw.bb
  %tobool1.not.not = xor i1 %tobool1.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not = icmp eq i32 %10, 0
  %or.cond74 = select i1 %tobool1.not.not, i1 %tobool6.not, i1 false
  br i1 %or.cond74, label %if.then7, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %call8 = tail call i32 @cs46xx_dsp_disable_spdif_out(ptr noundef %1) #13
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.else.if.end9_crit_edge, %if.then
  %11 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dsp_spos_instance, align 4
  %spdif_status_out11 = getelementptr inbounds %struct.dsp_spos_instance, ptr %12, i32 0, i32 23
  %13 = ptrtoint ptr %spdif_status_out11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %spdif_status_out11, align 4
  %and12 = and i32 %14, 1
  %15 = xor i32 %and12, %and
  tail call void @mutex_unlock(ptr noundef %spos_mutex) #13
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %dsp_spos_instance15 = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 28
  %16 = ptrtoint ptr %dsp_spos_instance15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dsp_spos_instance15, align 4
  %spdif_status_in = getelementptr inbounds %struct.dsp_spos_instance, ptr %17, i32 0, i32 24
  %18 = ptrtoint ptr %spdif_status_in to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %spdif_status_in, align 4
  %value16 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %20 = ptrtoint ptr %value16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %value16, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool18.not = icmp ne i32 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool20.not = icmp eq i32 %19, 0
  %or.cond73 = select i1 %tobool18.not, i1 %tobool20.not, i1 false
  br i1 %or.cond73, label %if.then21, label %if.else23

if.then21:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #15
  %call22 = tail call i32 @cs46xx_dsp_enable_spdif_in(ptr noundef %1) #13
  br label %if.end32

if.else23:                                        ; preds = %sw.bb14
  %tobool20.not.not = xor i1 %tobool20.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool28.not = icmp eq i32 %21, 0
  %or.cond75 = select i1 %tobool20.not.not, i1 %tobool28.not, i1 false
  br i1 %or.cond75, label %if.then29, label %if.else23.if.end32_crit_edge

if.else23.if.end32_crit_edge:                     ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then29:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #15
  %call30 = tail call i32 @cs46xx_dsp_disable_spdif_in(ptr noundef %1) #13
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.else23.if.end32_crit_edge, %if.then21
  %22 = ptrtoint ptr %dsp_spos_instance15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dsp_spos_instance15, align 4
  %spdif_status_in34 = getelementptr inbounds %struct.dsp_spos_instance, ptr %23, i32 0, i32 24
  %24 = ptrtoint ptr %spdif_status_in34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %spdif_status_in34, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %25)
  %cmp35 = icmp ne i32 %19, %25
  %conv36 = zext i1 %cmp35 to i32
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2008, i32 noundef 9, ptr noundef nonnull @.str.51) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end32, %if.end9
  %res.0 = phi i32 [ -22, %do.end ], [ %conv36, %if.end32 ], [ %15, %if.end9 ]
  ret i32 %res.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_cs46xx_spdif_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #9 align 64 {
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
define internal i32 @snd_cs46xx_spdif_default_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsp_spos_instance, align 4
  %spos_mutex = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %spos_mutex, i32 noundef 0) #13
  %spdif_csuv_default = getelementptr inbounds %struct.dsp_spos_instance, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %spdif_csuv_default to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %spdif_csuv_default, align 4
  %shr = lshr i32 %5, 24
  %conv = trunc i32 %shr to i8
  %rev.i = tail call i8 @llvm.bitreverse.i8(i8 %conv) #13
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %rev.i, ptr %value, align 8
  %7 = ptrtoint ptr %spdif_csuv_default to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %spdif_csuv_default, align 4
  %shr2 = lshr i32 %8, 16
  %conv4 = trunc i32 %shr2 to i8
  %rev.i27 = tail call i8 @llvm.bitreverse.i8(i8 %conv4) #13
  %arrayidx8 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %rev.i27, ptr %arrayidx8, align 1
  %arrayidx11 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx11, align 2
  %11 = ptrtoint ptr %spdif_csuv_default to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %spdif_csuv_default, align 4
  %conv14 = trunc i32 %12 to i8
  %rev.i28 = tail call i8 @llvm.bitreverse.i8(i8 %conv14) #13
  %arrayidx18 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %rev.i28, ptr %arrayidx18, align 1
  tail call void @mutex_unlock(ptr noundef %spos_mutex) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_spdif_default_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsp_spos_instance, align 4
  %spos_mutex = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %spos_mutex, i32 noundef 0) #13
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %value, align 8
  %rev.i = tail call i8 @llvm.bitreverse.i8(i8 %5) #13
  %conv = zext i8 %rev.i to i32
  %shl = shl nuw i32 %conv, 24
  %arrayidx3 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3, align 2
  %rev.i28 = tail call i8 @llvm.bitreverse.i8(i8 %7) #13
  %conv5 = zext i8 %rev.i28 to i32
  %shl6 = shl nuw nsw i32 %conv5, 16
  %or = or i32 %shl6, %shl
  %arrayidx9 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx9, align 1
  %rev.i29 = tail call i8 @llvm.bitreverse.i8(i8 %9) #13
  %conv11 = zext i8 %rev.i29 to i32
  %or12 = or i32 %or, %conv11
  %or14 = or i32 %or12, 12288
  %spdif_csuv_default = getelementptr inbounds %struct.dsp_spos_instance, ptr %3, i32 0, i32 27
  %10 = ptrtoint ptr %spdif_csuv_default to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %spdif_csuv_default, align 4
  store i32 %or14, ptr %spdif_csuv_default, align 4
  %spdif_status_out = getelementptr inbounds %struct.dsp_spos_instance, ptr %3, i32 0, i32 23
  %12 = ptrtoint ptr %spdif_status_out to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %spdif_status_out, align 4
  %and = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call17 = tail call i32 @cs46xx_poke_via_dsp(ptr noundef %1, i32 noundef 32910, i32 noundef %or14) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %or14)
  %cmp = icmp ne i32 %11, %or14
  %conv15 = zext i1 %cmp to i32
  tail call void @mutex_unlock(ptr noundef %spos_mutex) #13
  ret i32 %conv15
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_cs46xx_spdif_mask_get(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %ucontrol) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value, align 8
  %arrayidx3 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %1 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %arrayidx3, align 1
  %arrayidx6 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx6, align 2
  %arrayidx9 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %3 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %arrayidx9, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_spdif_stream_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsp_spos_instance, align 4
  %spos_mutex = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %spos_mutex, i32 noundef 0) #13
  %spdif_csuv_stream = getelementptr inbounds %struct.dsp_spos_instance, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %spdif_csuv_stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %spdif_csuv_stream, align 4
  %shr = lshr i32 %5, 24
  %conv = trunc i32 %shr to i8
  %rev.i = tail call i8 @llvm.bitreverse.i8(i8 %conv) #13
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %rev.i, ptr %value, align 8
  %7 = ptrtoint ptr %spdif_csuv_stream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %spdif_csuv_stream, align 4
  %shr2 = lshr i32 %8, 16
  %conv4 = trunc i32 %shr2 to i8
  %rev.i27 = tail call i8 @llvm.bitreverse.i8(i8 %conv4) #13
  %arrayidx8 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %rev.i27, ptr %arrayidx8, align 1
  %arrayidx11 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx11, align 2
  %11 = ptrtoint ptr %spdif_csuv_stream to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %spdif_csuv_stream, align 4
  %conv14 = trunc i32 %12 to i8
  %rev.i28 = tail call i8 @llvm.bitreverse.i8(i8 %conv14) #13
  %arrayidx18 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %rev.i28, ptr %arrayidx18, align 1
  tail call void @mutex_unlock(ptr noundef %spos_mutex) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_spdif_stream_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsp_spos_instance, align 4
  %spos_mutex = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %spos_mutex, i32 noundef 0) #13
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %value, align 8
  %rev.i = tail call i8 @llvm.bitreverse.i8(i8 %5) #13
  %conv = zext i8 %rev.i to i32
  %shl = shl nuw i32 %conv, 24
  %arrayidx3 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3, align 1
  %rev.i28 = tail call i8 @llvm.bitreverse.i8(i8 %7) #13
  %conv5 = zext i8 %rev.i28 to i32
  %shl6 = shl nuw nsw i32 %conv5, 16
  %or = or i32 %shl6, %shl
  %arrayidx9 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx9, align 1
  %rev.i29 = tail call i8 @llvm.bitreverse.i8(i8 %9) #13
  %conv11 = zext i8 %rev.i29 to i32
  %or12 = or i32 %or, %conv11
  %or14 = or i32 %or12, 12288
  %spdif_csuv_stream = getelementptr inbounds %struct.dsp_spos_instance, ptr %3, i32 0, i32 28
  %10 = ptrtoint ptr %spdif_csuv_stream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %spdif_csuv_stream, align 4
  store i32 %or14, ptr %spdif_csuv_stream, align 4
  %spdif_status_out = getelementptr inbounds %struct.dsp_spos_instance, ptr %3, i32 0, i32 23
  %12 = ptrtoint ptr %spdif_status_out to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %spdif_status_out, align 4
  %and = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call17 = tail call i32 @cs46xx_poke_via_dsp(ptr noundef %1, i32 noundef 32910, i32 noundef %or14) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %or14)
  %cmp = icmp ne i32 %11, %or14
  %conv15 = zext i1 %cmp to i32
  tail call void @mutex_unlock(ptr noundef %spos_mutex) #13
  ret i32 %conv15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs46xx_dsp_set_dac_volume(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs46xx_dsp_enable_adc_capture(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs46xx_dsp_disable_adc_capture(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs46xx_dsp_enable_pcm_capture(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs46xx_dsp_disable_pcm_capture(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs46xx_dsp_enable_spdif_out(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs46xx_dsp_disable_spdif_out(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs46xx_dsp_enable_spdif_in(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs46xx_dsp_disable_spdif_in(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs46xx_poke_via_dsp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_front_dup_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ac97 = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ac97, align 4
  %call = tail call zeroext i16 @snd_ac97_read(ptr noundef %3, i16 noundef zeroext 94) #13
  %4 = lshr i16 %call, 9
  %.lobit = and i16 %4, 1
  %5 = xor i16 %.lobit, 1
  %6 = zext i16 %5 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_front_dup_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ac97 = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ac97, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %conv = select i1 %tobool.not, i16 512, i16 0
  %call = tail call i32 @snd_ac97_update_bits(ptr noundef %3, i16 noundef zeroext 94, i16 noundef zeroext 512, i16 noundef zeroext %conv) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_update_bits(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_midi_output_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %active_ctrl = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %active_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %active_ctrl, align 4
  tail call void %5(ptr noundef %3, i32 noundef 1) #13
  %reg_lock = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #13
  %uartm = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 17
  %6 = ptrtoint ptr %uartm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %uartm, align 4
  %or = or i32 %7, 1
  store i32 %or, ptr %uartm, align 4
  %midcr = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 16
  %8 = ptrtoint ptr %midcr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %midcr, align 4
  %or1 = or i32 %9, 1
  store i32 %or1, ptr %midcr, align 4
  %midi_output = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 14
  %10 = ptrtoint ptr %midi_output to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %substream, ptr %midi_output, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13
  tail call void @arm_heavy_mb() #13
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %remap_addr.i.i = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 3, i32 0, i32 0, i32 2
  %11 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 1168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 536870912) #13, !srcloc !359
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 21474800) #13
  %14 = ptrtoint ptr %midcr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %midcr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #13
  %17 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %18, i32 1168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %16) #13, !srcloc !359
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %19 = tail call i32 @llvm.bswap.i32(i32 %or1) #13
  %remap_addr.i = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 3, i32 0, i32 0, i32 2
  %20 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 1168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %19) #13, !srcloc !359
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_midi_output_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #13
  %midcr = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %midcr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %midcr, align 4
  %and = and i32 %5, -10
  store i32 %and, ptr %midcr, align 4
  %midi_output = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %midi_output to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %midi_output, align 4
  %uartm = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 17
  %7 = ptrtoint ptr %uartm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %uartm, align 4
  %and1 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13
  tail call void @arm_heavy_mb() #13
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %remap_addr.i.i = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 3, i32 0, i32 0, i32 2
  %9 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 1168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 536870912) #13, !srcloc !359
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 21474800) #13
  %12 = ptrtoint ptr %midcr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %midcr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #13
  %15 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %16, i32 1168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %14) #13, !srcloc !359
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %17 = tail call i32 @llvm.bswap.i32(i32 %and) #13
  %remap_addr.i = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 3, i32 0, i32 0, i32 2
  %18 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 1168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %17) #13, !srcloc !359
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = ptrtoint ptr %uartm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %uartm, align 4
  %and4 = and i32 %21, -2
  store i32 %and4, ptr %uartm, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #13
  %active_ctrl = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 20
  %22 = ptrtoint ptr %active_ctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %active_ctrl, align 4
  tail call void %23(ptr noundef %3, i32 noundef -1) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_cs46xx_midi_output_trigger(ptr noundef %substream, i32 noundef %up) #0 align 64 {
entry:
  %byte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte) #13
  %4 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %byte, align 1, !annotation !361
  %reg_lock = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 15
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool.not = icmp eq i32 %up, 0
  %midcr26 = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 16
  %5 = ptrtoint ptr %midcr26 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %midcr26, align 4
  %and27 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool.not, label %if.else25, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool28.not, label %land.rhs.preheader, label %if.then.if.end34_crit_edge

if.then.if.end34_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

land.rhs.preheader:                               ; preds = %if.then
  %or = or i32 %6, 8
  %7 = ptrtoint ptr %midcr26 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or, ptr %midcr26, align 4
  %remap_addr.i = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 3, i32 0, i32 0, i32 2
  br label %land.rhs

land.rhs:                                         ; preds = %if.end.land.rhs_crit_edge, %land.rhs.preheader
  %8 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 1172
  %10 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !365
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp14 = icmp eq i32 %11, 0
  br i1 %cmp14, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %call16 = call i32 @snd_rawmidi_transmit(ptr noundef %substream, ptr noundef nonnull %byte, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 1
  br i1 %cmp17.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %midcr26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %midcr26, align 4
  %and21 = and i32 %13, -9
  store i32 %and21, ptr %midcr26, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %byte to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %byte, align 1
  %conv22 = zext i8 %15 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  call void @arm_heavy_mb() #13
  %16 = shl nuw i32 %conv22, 24
  %17 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %18, i32 1176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %16) #13, !srcloc !359
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then19
  %19 = ptrtoint ptr %midcr26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %midcr26, align 4
  %and10 = and i32 %20, 8
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end.while.end_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %21 = ptrtoint ptr %midcr26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %midcr26, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  call void @arm_heavy_mb() #13
  %23 = call i32 @llvm.bswap.i32(i32 %22) #13
  %24 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %25, i32 1168
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 %23) #13, !srcloc !359
  br label %if.end34

if.else25:                                        ; preds = %entry
  br i1 %tobool28.not, label %if.else25.if.end34_crit_edge, label %if.then29

if.else25.if.end34_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then29:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #15
  %and31 = and i32 %6, -9
  %26 = ptrtoint ptr %midcr26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and31, ptr %midcr26, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %27 = tail call i32 @llvm.bswap.i32(i32 %and31) #13
  %remap_addr.i54 = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 3, i32 0, i32 0, i32 2
  %28 = ptrtoint ptr %remap_addr.i54 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %remap_addr.i54, align 4
  %add.ptr.i55 = getelementptr i8, ptr %29, i32 1168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 %27) #13, !srcloc !359
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %if.else25.if.end34_crit_edge, %while.end, %if.then.if.end34_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call2) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_midi_input_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %active_ctrl = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %active_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %active_ctrl, align 4
  tail call void %5(ptr noundef %3, i32 noundef 1) #13
  %reg_lock = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #13
  %uartm = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 17
  %6 = ptrtoint ptr %uartm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %uartm, align 4
  %or = or i32 %7, 2
  store i32 %or, ptr %uartm, align 4
  %midcr = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 16
  %8 = ptrtoint ptr %midcr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %midcr, align 4
  %or1 = or i32 %9, 2
  store i32 %or1, ptr %midcr, align 4
  %midi_input = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 13
  %10 = ptrtoint ptr %midi_input to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %substream, ptr %midi_input, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13
  tail call void @arm_heavy_mb() #13
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %remap_addr.i.i = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 3, i32 0, i32 0, i32 2
  %11 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 1168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 536870912) #13, !srcloc !359
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 21474800) #13
  %14 = ptrtoint ptr %midcr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %midcr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #13
  %17 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %18, i32 1168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %16) #13, !srcloc !359
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %19 = tail call i32 @llvm.bswap.i32(i32 %or1) #13
  %remap_addr.i = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 3, i32 0, i32 0, i32 2
  %20 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 1168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %19) #13, !srcloc !359
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_midi_input_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #13
  %midcr = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %midcr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %midcr, align 4
  %and = and i32 %5, -7
  store i32 %and, ptr %midcr, align 4
  %midi_input = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %midi_input to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %midi_input, align 4
  %uartm = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 17
  %7 = ptrtoint ptr %uartm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %uartm, align 4
  %and1 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13
  tail call void @arm_heavy_mb() #13
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %remap_addr.i.i = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 3, i32 0, i32 0, i32 2
  %9 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 1168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 536870912) #13, !srcloc !359
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 21474800) #13
  %12 = ptrtoint ptr %midcr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %midcr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #13
  %15 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %16, i32 1168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %14) #13, !srcloc !359
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %17 = tail call i32 @llvm.bswap.i32(i32 %and) #13
  %remap_addr.i = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 3, i32 0, i32 0, i32 2
  %18 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 1168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %17) #13, !srcloc !359
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = ptrtoint ptr %uartm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %uartm, align 4
  %and4 = and i32 %21, -3
  store i32 %and4, ptr %uartm, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #13
  %active_ctrl = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 20
  %22 = ptrtoint ptr %active_ctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %active_ctrl, align 4
  tail call void %23(ptr noundef %3, i32 noundef -1) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_cs46xx_midi_input_trigger(ptr nocapture noundef readonly %substream, i32 noundef %up) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 15
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool.not = icmp eq i32 %up, 0
  %midcr10 = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %midcr10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %midcr10, align 4
  %and11 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool12.not, label %if.then7, label %if.then.if.end18_crit_edge

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %or = or i32 %5, 4
  %6 = ptrtoint ptr %midcr10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %midcr10, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %7 = tail call i32 @llvm.bswap.i32(i32 %or) #13
  %remap_addr.i = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 3, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 1168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #13, !srcloc !359
  br label %if.end18

if.else:                                          ; preds = %entry
  br i1 %tobool12.not, label %if.else.if.end18_crit_edge, label %if.then13

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %and15 = and i32 %5, -5
  %10 = ptrtoint ptr %midcr10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and15, ptr %midcr10, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %11 = tail call i32 @llvm.bswap.i32(i32 %and15) #13
  %remap_addr.i29 = getelementptr inbounds %struct.snd_cs46xx, ptr %3, i32 0, i32 3, i32 0, i32 0, i32 2
  %12 = ptrtoint ptr %remap_addr.i29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %remap_addr.i29, align 4
  %add.ptr.i30 = getelementptr i8, ptr %13, i32 1168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %11) #13, !srcloc !359
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.else.if.end18_crit_edge, %if.then7, %if.then.if.end18_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call2) #13
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_module_desc(ptr noundef %module) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %module, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %module, align 4
  tail call void @kfree(ptr noundef %1) #13
  %symbols = getelementptr inbounds %struct.dsp_module_desc, ptr %module, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %symbols to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %symbols, align 4
  tail call void @kfree(ptr noundef %3) #13
  %segments = getelementptr inbounds %struct.dsp_module_desc, ptr %module, i32 0, i32 3
  %4 = ptrtoint ptr %segments to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %segments, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %for.cond.preheader

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

for.cond.preheader:                               ; preds = %if.end
  %nsegments = getelementptr inbounds %struct.dsp_module_desc, ptr %module, i32 0, i32 2
  %6 = ptrtoint ptr %nsegments to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nsegments, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp15 = icmp sgt i32 %7, 0
  br i1 %cmp15, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.016 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %8 = ptrtoint ptr %segments to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %segments, align 4
  %data = getelementptr %struct.dsp_segment_desc, ptr %9, i32 %i.016, i32 3
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  tail call void @kfree(ptr noundef %11) #13
  %inc = add nuw nsw i32 %i.016, 1
  %12 = ptrtoint ptr %nsegments to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nsegments, align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %14 = ptrtoint ptr %segments to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %segments, align 4
  tail call void @kfree(ptr noundef %15) #13
  br label %if.end5

if.end5:                                          ; preds = %for.end, %if.end.if.end5_crit_edge
  tail call void @kfree(ptr noundef nonnull %module) #13
  br label %return

return:                                           ; preds = %if.end5, %entry.return_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_cs46xx_hw_stop(ptr nocapture noundef readonly %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %remap_addr.i = getelementptr %struct.snd_cs46xx, ptr %chip, i32 0, i32 3, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 196
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !367
  %3 = and i32 %2, -1072693249
  %4 = or i32 %3, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %5 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %6, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %4) #13, !srcloc !359
  %7 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %8, i32 260
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35) #13, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !367
  %10 = and i32 %9, -1056964609
  %11 = or i32 %10, 285212672
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %12 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %13, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 %11) #13, !srcloc !359
  %14 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %15, i32 676
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41) #13, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !367
  %17 = and i32 %16, -65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %18 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %19, i32 676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 %17) #13, !srcloc !359
  %20 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %21, i32 100
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #13, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !367
  %23 = and i32 %22, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %24 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %25, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %23) #13, !srcloc !359
  tail call fastcc void @snd_cs46xx_reset(ptr noundef %chip)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %remap_addr.i.i = getelementptr %struct.snd_cs46xx, ptr %chip, i32 0, i32 3, i32 0, i32 4, i32 2
  %26 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %remap_addr.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 0) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %remap_addr.i51 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 3, i32 0, i32 0, i32 2
  %28 = ptrtoint ptr %remap_addr.i51 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %remap_addr.i51, align 4
  %add.ptr.i52 = getelementptr i8, ptr %29, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 0) #13, !srcloc !359
  %30 = ptrtoint ptr %remap_addr.i51 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %remap_addr.i51, align 4
  %add.ptr.i54 = getelementptr i8, ptr %31, i32 1024
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54) #13, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %33 = and i32 %32, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %34 = ptrtoint ptr %remap_addr.i51 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %remap_addr.i51, align 4
  %add.ptr.i56 = getelementptr i8, ptr %35, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %33) #13, !srcloc !359
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs46xx_dsp_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @voyetra_mixer_init(ptr nocapture noundef readonly %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @voyetra_mixer_init.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@voyetra_mixer_init, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %card = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @voyetra_mixer_init.__UNIQUE_ID_ddebug267, ptr noundef %3, ptr noundef nonnull @.str.113) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %remap_addr.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 3, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 1212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %6 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %7, i32 1216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 16777216) #13, !srcloc !359
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amp_hercules(ptr nocapture noundef %chip, i32 noundef %change) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %amplifier = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 18
  %0 = ptrtoint ptr %amplifier to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %amplifier, align 4
  %remap_addr.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 3, i32 0, i32 0, i32 2
  %2 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1212
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !365
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %6 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i55 = getelementptr i8, ptr %7, i32 1216
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55) #13, !srcloc !365
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %10 = ptrtoint ptr %amplifier to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %amplifier, align 4
  %add = add i32 %11, %change
  store i32 %add, ptr %amplifier, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not = icmp ne i32 %add, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool4.not = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool.not, i1 %tobool4.not, i1 false
  br i1 %or.cond, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amp_hercules.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amp_hercules, %if.then9)) #13
          to label %do.end [label %if.then9], !srcloc !362

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %card = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @amp_hercules.__UNIQUE_ID_ddebug265, ptr noundef %15, ptr noundef nonnull @.str.115) #13
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %or = or i32 %5, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %16 = tail call i32 @llvm.bswap.i32(i32 %or) #13
  %17 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i57 = getelementptr i8, ptr %18, i32 1212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 %16) #13, !srcloc !359
  %or10 = or i32 %9, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %19 = tail call i32 @llvm.bswap.i32(i32 %or10) #13
  %20 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %21, i32 1216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %19) #13, !srcloc !359
  br label %if.end36

if.else:                                          ; preds = %entry
  %tobool4.not.not = xor i1 %tobool4.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool14.not = icmp eq i32 %add, 0
  %or.cond66 = select i1 %tobool4.not.not, i1 %tobool14.not, i1 false
  br i1 %or.cond66, label %do.body16, label %if.else.if.end36_crit_edge

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

do.body16:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amp_hercules.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amp_hercules, %if.then28)) #13
          to label %do.end33 [label %if.then28], !srcloc !362

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #15
  %card29 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %22 = ptrtoint ptr %card29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card29, align 4
  %dev30 = getelementptr inbounds %struct.snd_card, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev30, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @amp_hercules.__UNIQUE_ID_ddebug266, ptr noundef %25, ptr noundef nonnull @.str.116) #13
  br label %do.end33

do.end33:                                         ; preds = %if.then28, %do.body16
  %and = and i32 %5, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %26 = tail call i32 @llvm.bswap.i32(i32 %and) #13
  %27 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i61 = getelementptr i8, ptr %28, i32 1212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %26) #13, !srcloc !359
  %and34 = and i32 %9, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %29 = tail call i32 @llvm.bswap.i32(i32 %and34) #13
  %30 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i63 = getelementptr i8, ptr %31, i32 1216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 %29) #13, !srcloc !359
  br label %if.end36

if.end36:                                         ; preds = %do.end33, %if.else.if.end36_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hercules_mixer_init(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %remap_addr.i.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 3, i32 0, i32 0, i32 2
  %2 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 1212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %5, i32 1216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 16777216) #13, !srcloc !359
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hercules_mixer_init.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hercules_mixer_init, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card1, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hercules_mixer_init.__UNIQUE_ID_ddebug268, ptr noundef %9, ptr noundef nonnull @.str.118) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %in_suspend = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 25
  %10 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %in_suspend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not = icmp eq i32 %11, 0
  br i1 %tobool5.not, label %for.body, label %do.end.cleanup17_crit_edge

do.end.cleanup17_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup17

for.body:                                         ; preds = %do.end
  %call8 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_hercules_controls, ptr noundef %chip) #13
  %call9 = tail call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.end14, label %for.body.cleanup17_crit_edge

for.body.cleanup17_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup17

do.end14:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %dev15 = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 27
  %12 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev15, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.119, i32 noundef %call9) #16
  br label %cleanup17

cleanup17:                                        ; preds = %do.end14, %for.body.cleanup17_crit_edge, %do.end.cleanup17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_herc_spdif_select_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %remap_addr.i = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 2
  %2 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1212
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %5 = lshr i32 %4, 24
  %.lobit = and i32 %5, 1
  %6 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.lobit, ptr %6, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_herc_spdif_select_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %remap_addr.i = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 2
  %2 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1212
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !365
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %6 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %7, i32 1216
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15) #13, !srcloc !365
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %or = or i32 %5, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #13
  %13 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %14, i32 1212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %12) #13, !srcloc !359
  %or2 = or i32 %9, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %15 = tail call i32 @llvm.bswap.i32(i32 %or2) #13
  %16 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %17, i32 1216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %15) #13, !srcloc !359
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %and = and i32 %5, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %18 = tail call i32 @llvm.bswap.i32(i32 %and) #13
  %19 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %20, i32 1212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %18) #13, !srcloc !359
  %and3 = and i32 %9, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %21 = tail call i32 @llvm.bswap.i32(i32 %and3) #13
  %22 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %23, i32 1216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %21) #13, !srcloc !359
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %24 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %25, i32 1212
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25) #13, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %26)
  %cmp = icmp ne i32 %4, %26
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @voyetra_setup_eapd_slot(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @voyetra_setup_eapd_slot.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@voyetra_setup_eapd_slot, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %card = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @voyetra_setup_eapd_slot.__UNIQUE_ID_ddebug262, ptr noundef %3, ptr noundef nonnull @.str.122) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %remap_addr.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 3, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 1024
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !365
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %and = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then6, label %do.end.if.end7_crit_edge

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %or = or i32 %7, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #13
  %9 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %10, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %8) #13, !srcloc !359
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.end.if.end7_crit_edge
  %nr_ac97_codecs = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 6
  %11 = ptrtoint ptr %nr_ac97_codecs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_ac97_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.not = icmp eq i32 %12, 2
  br i1 %cmp.not, label %if.end14, label %do.end11

do.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %card12 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %13 = ptrtoint ptr %card12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card12, align 4
  %dev13 = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev13, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.123) #16
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %call15 = tail call fastcc zeroext i16 @snd_cs46xx_codec_read(ptr noundef %chip, i16 noundef zeroext 62, i32 noundef 1)
  %17 = and i16 %call15, -257
  tail call fastcc void @snd_cs46xx_codec_write(ptr noundef %chip, i16 noundef zeroext 62, i16 noundef zeroext %17, i32 noundef 1)
  %call18 = tail call fastcc zeroext i16 @snd_cs46xx_codec_read(ptr noundef %chip, i16 noundef zeroext 76, i32 noundef 1)
  %18 = and i16 %call18, 639
  tail call fastcc void @snd_cs46xx_codec_write(ptr noundef %chip, i16 noundef zeroext 76, i16 noundef zeroext %18, i32 noundef 1)
  %call22 = tail call fastcc zeroext i16 @snd_cs46xx_codec_read(ptr noundef %chip, i16 noundef zeroext 78, i32 noundef 1)
  %19 = and i16 %call22, 639
  tail call fastcc void @snd_cs46xx_codec_write(ptr noundef %chip, i16 noundef zeroext 78, i16 noundef zeroext %19, i32 noundef 1)
  %20 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %21, i32 1128
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #13, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %23 = or i32 %22, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %24 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %25, i32 1128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %23) #13, !srcloc !359
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end14
  %i.030.i = phi i32 [ 0, %if.end14 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %26 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 1088
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %29 = and i32 %28, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %for.body.i.for.body_crit_edge, label %if.end.i

for.body.i.for.body_crit_edge:                    ; preds = %for.body.i
  br label %for.body

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %.val.i = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %.val.i(i32 noundef 214748000) #13
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 50
  br i1 %exitcond.not.i, label %do.body31, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

do.body31:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %card.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %30 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %31, i32 0, i32 27
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.126) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @voyetra_setup_eapd_slot.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@voyetra_setup_eapd_slot, %if.then43)) #13
          to label %cleanup [label %if.then43], !srcloc !362

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %card.i, align 4
  %dev45 = getelementptr inbounds %struct.snd_card, ptr %35, i32 0, i32 27
  %36 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev45, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @voyetra_setup_eapd_slot.__UNIQUE_ID_ddebug263, ptr noundef %37, ptr noundef nonnull @.str.124) #13
  br label %cleanup

for.body:                                         ; preds = %if.end73.for.body_crit_edge, %for.body.i.for.body_crit_edge
  %idx.063 = phi i32 [ %inc, %if.end73.for.body_crit_edge ], [ 144, %for.body.i.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %38 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %39, i32 1104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 1572864) #13, !srcloc !359
  br label %for.body.i20

for.body.i20:                                     ; preds = %for.inc.i.for.body.i20_crit_edge, %for.body
  %i.030.i17 = phi i32 [ 0, %for.body ], [ %inc.i22, %for.inc.i.for.body.i20_crit_edge ]
  %40 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i.i18 = getelementptr i8, ptr %41, i32 1088
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i18) #13, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %43 = and i32 %42, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i19 = icmp eq i32 %43, 0
  br i1 %tobool.not.i19, label %if.end73, label %for.body.i20.while.body.i_crit_edge

for.body.i20.while.body.i_crit_edge:              ; preds = %for.body.i20
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %for.body.i20.while.body.i_crit_edge
  %__ms.029.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 200, %for.body.i20.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %__ms.029.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #13
  %tobool12.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool12.not.i, label %for.inc.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

for.inc.i:                                        ; preds = %while.body.i
  %inc.i22 = add nuw nsw i32 %i.030.i17, 1
  %exitcond.not.i23 = icmp eq i32 %inc.i22, 50
  br i1 %exitcond.not.i23, label %do.body55, label %for.inc.i.for.body.i20_crit_edge

for.inc.i.for.body.i20_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i20

do.body55:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  %card.i25 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %45 = ptrtoint ptr %card.i25 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %card.i25, align 4
  %dev.i26 = getelementptr inbounds %struct.snd_card, ptr %46, i32 0, i32 27
  %47 = ptrtoint ptr %dev.i26 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i26, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.126) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @voyetra_setup_eapd_slot.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@voyetra_setup_eapd_slot, %if.then67)) #13
          to label %cleanup [label %if.then67], !srcloc !362

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #15
  %49 = ptrtoint ptr %card.i25 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %card.i25, align 4
  %dev69 = getelementptr inbounds %struct.snd_card, ptr %50, i32 0, i32 27
  %51 = ptrtoint ptr %dev69 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev69, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @voyetra_setup_eapd_slot.__UNIQUE_ID_ddebug264, ptr noundef %52, ptr noundef nonnull @.str.125, i32 noundef %idx.063) #13
  br label %cleanup

if.end73:                                         ; preds = %for.body.i20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %53 = tail call i32 @llvm.bswap.i32(i32 %idx.063) #13
  %54 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %55, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %53) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %56 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %57, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 33554432) #13, !srcloc !359
  %inc = add nuw nsw i32 %idx.063, 1
  %exitcond.not = icmp eq i32 %inc, 160
  br i1 %exitcond.not, label %if.end73.for.body.i38_crit_edge, label %if.end73.for.body_crit_edge

if.end73.for.body_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end73.for.body.i38_crit_edge:                  ; preds = %if.end73
  br label %for.body.i38

for.body.i38:                                     ; preds = %for.inc.i46.for.body.i38_crit_edge, %if.end73.for.body.i38_crit_edge
  %i.030.i35 = phi i32 [ %inc.i44, %for.inc.i46.for.body.i38_crit_edge ], [ 0, %if.end73.for.body.i38_crit_edge ]
  %58 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i.i36 = getelementptr i8, ptr %59, i32 1088
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i36) #13, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %61 = and i32 %60, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i37 = icmp eq i32 %61, 0
  br i1 %tobool.not.i37, label %for.body.i38.cs46xx_wait_for_fifo.exit52_crit_edge, label %for.body.i38.while.body.i43_crit_edge

for.body.i38.while.body.i43_crit_edge:            ; preds = %for.body.i38
  br label %while.body.i43

for.body.i38.cs46xx_wait_for_fifo.exit52_crit_edge: ; preds = %for.body.i38
  call void @__sanitizer_cov_trace_pc() #15
  br label %cs46xx_wait_for_fifo.exit52

while.body.i43:                                   ; preds = %while.body.i43.while.body.i43_crit_edge, %for.body.i38.while.body.i43_crit_edge
  %__ms.029.i40 = phi i32 [ %dec.i41, %while.body.i43.while.body.i43_crit_edge ], [ 200, %for.body.i38.while.body.i43_crit_edge ]
  %dec.i41 = add nsw i32 %__ms.029.i40, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748000) #13
  %tobool12.not.i42 = icmp eq i32 %dec.i41, 0
  br i1 %tobool12.not.i42, label %for.inc.i46, label %while.body.i43.while.body.i43_crit_edge

while.body.i43.while.body.i43_crit_edge:          ; preds = %while.body.i43
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i43

for.inc.i46:                                      ; preds = %while.body.i43
  %inc.i44 = add nuw nsw i32 %i.030.i35, 1
  %exitcond.not.i45 = icmp eq i32 %inc.i44, 50
  br i1 %exitcond.not.i45, label %do.end.i50, label %for.inc.i46.for.body.i38_crit_edge

for.inc.i46.for.body.i38_crit_edge:               ; preds = %for.inc.i46
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i38

do.end.i50:                                       ; preds = %for.inc.i46
  call void @__sanitizer_cov_trace_pc() #15
  %card.i48 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %63 = ptrtoint ptr %card.i48 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %card.i48, align 4
  %dev.i49 = getelementptr inbounds %struct.snd_card, ptr %64, i32 0, i32 27
  %65 = ptrtoint ptr %dev.i49 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i49, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.126) #16
  br label %cs46xx_wait_for_fifo.exit52

cs46xx_wait_for_fifo.exit52:                      ; preds = %do.end.i50, %for.body.i38.cs46xx_wait_for_fifo.exit52_crit_edge
  br i1 %tobool5.not, label %if.then76, label %cs46xx_wait_for_fifo.exit52.cleanup_crit_edge

cs46xx_wait_for_fifo.exit52.cleanup_crit_edge:    ; preds = %cs46xx_wait_for_fifo.exit52
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then76:                                        ; preds = %cs46xx_wait_for_fifo.exit52
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %67 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i54 = getelementptr i8, ptr %68, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 %6) #13, !srcloc !359
  br label %cleanup

cleanup:                                          ; preds = %if.then76, %cs46xx_wait_for_fifo.exit52.cleanup_crit_edge, %if.then67, %do.body55, %if.then43, %do.body31, %do.end11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_receive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cs46xx_dsp_spos_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_unregister_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs46xx_dsp_proc_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_cs46xx_clear_serial_FIFOs(ptr nocapture noundef readonly %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %remap_addr.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 3, i32 0, i32 0, i32 2
  %0 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1024
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !365
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %or = or i32 %3, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #13
  %5 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i34 = getelementptr i8, ptr %6, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %4) #13, !srcloc !359
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %7 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %8, i32 1104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 0) #13, !srcloc !359
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.end14.for.body.i.preheader_crit_edge, %if.end
  %idx.050 = phi i32 [ 0, %if.end ], [ %inc, %if.end14.for.body.i.preheader_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.030.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %9 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 1088
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %12 = and i32 %11, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.end14, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %.val.i = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %.val.i(i32 noundef 214748000) #13
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 50
  br i1 %exitcond.not.i, label %do.body, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

do.body:                                          ; preds = %if.end.i
  %card.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %13 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.126) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_cs46xx_clear_serial_FIFOs.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_cs46xx_clear_serial_FIFOs, %if.then9)) #13
          to label %do.end [label %if.then9], !srcloc !362

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card.i, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %18, i32 0, i32 27
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_cs46xx_clear_serial_FIFOs.__UNIQUE_ID_ddebug247, ptr noundef %20, ptr noundef nonnull @.str.125, i32 noundef %idx.050) #13
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  br i1 %tobool.not, label %if.then12, label %do.end.if.end17_crit_edge

do.end.if.end17_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %21 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %22, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 %2) #13, !srcloc !359
  br label %if.then16

if.end14:                                         ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %23 = tail call i32 @llvm.bswap.i32(i32 %idx.050) #13
  %24 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %25, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 %23) #13, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %26 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i43 = getelementptr i8, ptr %27, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 33554432) #13, !srcloc !359
  %inc = add nuw nsw i32 %idx.050, 1
  %exitcond.not = icmp eq i32 %inc, 255
  br i1 %exitcond.not, label %for.end, label %if.end14.for.body.i.preheader_crit_edge

if.end14.for.body.i.preheader_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.preheader

for.end:                                          ; preds = %if.end14
  br i1 %tobool.not, label %for.end.if.then16_crit_edge, label %for.end.if.end17_crit_edge

for.end.if.end17_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

for.end.if.then16_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then16

if.then16:                                        ; preds = %for.end.if.then16_crit_edge, %if.then12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %28 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %29, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %2) #13, !srcloc !359
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %for.end.if.end17_crit_edge, %do.end.if.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs46xx_dsp_proc_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_info_create_card_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs46xx_io_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readnone %file_private_data, ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, i64 noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %remap_addr = getelementptr inbounds %struct.snd_cs46xx_region, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remap_addr, align 4
  %idx.ext = trunc i64 %pos to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %idx.ext
  %call = tail call i32 @copy_to_user_fromio(ptr noundef %buf, ptr noundef %add.ptr, i32 noundef %count) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %count. = select i1 %tobool.not, i32 %count, i32 -14
  ret i32 %count.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_to_user_fromio(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.bitreverse.i8(i8) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 171)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 171)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !29, !30, !32, !34, !35, !37, !39, !40, !41, !42, !43, !44, !46, !48, !50, !51, !52, !53, !55, !56, !57, !59, !61, !62, !64, !65, !67, !68, !69, !70, !72, !74, !76, !78, !80, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !104, !105, !106, !108, !110, !112, !114, !115, !116, !118, !120, !121, !122, !123, !125, !126, !127, !129, !131, !133, !134, !135, !137, !139, !140, !141, !143, !145, !146, !147, !149, !150, !151, !153, !155, !157, !159, !161, !163, !165, !166, !167, !169, !170, !172, !173, !174, !176, !177, !178, !179, !181, !182, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !245, !246, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !276, !277, !279, !280, !281, !283, !284, !286, !287, !288, !290, !291, !292, !294, !296, !298, !299, !300, !302, !303, !304, !306, !307, !309, !310, !312, !313, !314, !315, !317, !318, !319, !320, !322, !323, !324, !326, !327, !329, !330, !331, !333, !334, !335, !337, !338, !339, !341, !342, !343, !345, !346}
!llvm.module.flags = !{!348, !349, !350, !351, !352, !353, !354, !355}
!llvm.ident = !{!356}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 313, i32 6}
!2 = !{ptr @__UNIQUE_ID_firmware242, !3, !"__UNIQUE_ID_firmware242", i1 false, i1 false}
!3 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 345, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware243, !5, !"__UNIQUE_ID_firmware243", i1 false, i1 false}
!5 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 346, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware244, !7, !"__UNIQUE_ID_firmware244", i1 false, i1 false}
!7 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 347, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware245, !9, !"__UNIQUE_ID_firmware245", i1 false, i1 false}
!9 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 348, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware246, !11, !"__UNIQUE_ID_firmware246", i1 false, i1 false}
!11 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 349, i32 1}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 1752, i32 32}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 1780, i32 32}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 1805, i32 32}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 1830, i32 32}
!20 = !{ptr @snd_cs46xx_mixer.ops, !21, !"ops", i1 false, i1 false}
!21 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 2455, i32 39}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 2465, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @snd_cs46xx_mixer.__UNIQUE_ID_ddebug258, !23, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 2475, i32 2}
!29 = !{ptr @snd_cs46xx_mixer.__UNIQUE_ID_ddebug259, !28, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 2495, i32 18}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 2511, i32 3}
!34 = !{ptr @snd_cs46xx_mixer.__UNIQUE_ID_ddebug260, !33, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 2675, i32 36}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 2755, i32 3}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @snd_cs46xx_gameport._entry, !38, !"_entry", i1 false, i1 false}
!43 = !{ptr @snd_cs46xx_gameport._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 2760, i32 24}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 2761, i32 24}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3203, i32 4}
!50 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @snd_cs46xx_start_dsp._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @snd_cs46xx_start_dsp._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3209, i32 4}
!55 = !{ptr @snd_cs46xx_start_dsp._entry.20, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @snd_cs46xx_start_dsp._entry_ptr.22, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @snd_cs46xx_pm, !58, !"snd_cs46xx_pm", i1 false, i1 false}
!58 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3815, i32 1}
!59 = !{ptr @snd_cs46xx_create.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3837, i32 2}
!61 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @snd_cs46xx_create.__key.24, !63, !"__key", i1 false, i1 false}
!63 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3839, i32 2}
!64 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3852, i32 3}
!67 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @snd_cs46xx_create._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @snd_cs46xx_create._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3859, i32 23}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3864, i32 23}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3869, i32 23}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3874, i32 23}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3879, i32 23}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3889, i32 4}
!82 = !{ptr @snd_cs46xx_create.__UNIQUE_ID_ddebug269, !81, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3903, i32 3}
!85 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @snd_cs46xx_create._entry.34, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @snd_cs46xx_create._entry_ptr.37, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3909, i32 3}
!90 = !{ptr @snd_cs46xx_create._entry.38, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @snd_cs46xx_create._entry_ptr.40, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3929, i32 4}
!94 = !{ptr @snd_cs46xx_create._entry.41, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @snd_cs46xx_create._entry_ptr.43, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3937, i32 3}
!98 = !{ptr @snd_cs46xx_create._entry.44, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @snd_cs46xx_create._entry_ptr.46, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @snd_cs46xx_playback_ops, !101, !"snd_cs46xx_playback_ops", i1 false, i1 false}
!101 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 1699, i32 33}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 1521, i32 2}
!104 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @snd_cs46xx_playback_open.__UNIQUE_ID_ddebug249, !103, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!106 = !{ptr @snd_cs46xx_playback, !107, !"snd_cs46xx_playback", i1 false, i1 false}
!107 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 1416, i32 38}
!108 = !{ptr @hw_constraints_period_sizes, !109, !"hw_constraints_period_sizes", i1 false, i1 false}
!109 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 1464, i32 48}
!110 = !{ptr @period_sizes, !111, !"period_sizes", i1 false, i1 false}
!111 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 1462, i32 27}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 1115, i32 2}
!114 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @snd_cs46xx_playback_hw_params.__UNIQUE_ID_ddebug248, !113, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!116 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 1137, i32 4}
!118 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 1050, i32 4}
!120 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @_cs46xx_adjust_sample_rate._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @_cs46xx_adjust_sample_rate._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 1065, i32 4}
!125 = !{ptr @_cs46xx_adjust_sample_rate._entry.54, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @_cs46xx_adjust_sample_rate._entry_ptr.56, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @snd_cs46xx_playback_indirect_ops, !128, !"snd_cs46xx_playback_indirect_ops", i1 false, i1 false}
!128 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 1709, i32 33}
!129 = !{ptr @snd_cs46xx_playback_indirect_rear_ops, !130, !"snd_cs46xx_playback_indirect_rear_ops", i1 false, i1 false}
!130 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 1644, i32 33}
!131 = !{ptr @.str.57, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 1528, i32 2}
!133 = !{ptr @.str.58, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @snd_cs46xx_playback_open_rear.__UNIQUE_ID_ddebug250, !132, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!135 = !{ptr @snd_cs46xx_playback_indirect_clfe_ops, !136, !"snd_cs46xx_playback_indirect_clfe_ops", i1 false, i1 false}
!136 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 1665, i32 33}
!137 = !{ptr @.str.59, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 1534, i32 2}
!139 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @snd_cs46xx_playback_open_clfe.__UNIQUE_ID_ddebug251, !138, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!141 = !{ptr @snd_cs46xx_playback_indirect_iec958_ops, !142, !"snd_cs46xx_playback_indirect_iec958_ops", i1 false, i1 false}
!142 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 1686, i32 33}
!143 = !{ptr @.str.61, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 1542, i32 2}
!145 = !{ptr @.str.62, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @snd_cs46xx_playback_open_iec958.__UNIQUE_ID_ddebug252, !144, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!147 = !{ptr @.str.63, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 1558, i32 2}
!149 = !{ptr @.str.64, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @snd_cs46xx_playback_close_iec958.__UNIQUE_ID_ddebug253, !148, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!151 = !{ptr @snd_cs46xx_capture_ops, !152, !"snd_cs46xx_capture_ops", i1 false, i1 false}
!152 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 1720, i32 33}
!153 = !{ptr @snd_cs46xx_capture, !154, !"snd_cs46xx_capture", i1 false, i1 false}
!154 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 1439, i32 38}
!155 = !{ptr @snd_cs46xx_capture_indirect_ops, !156, !"snd_cs46xx_capture_indirect_ops", i1 false, i1 false}
!156 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 1730, i32 33}
!157 = !{ptr @snd_cs46xx_playback_rear_ops, !158, !"snd_cs46xx_playback_rear_ops", i1 false, i1 false}
!158 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 1634, i32 33}
!159 = !{ptr @snd_cs46xx_playback_clfe_ops, !160, !"snd_cs46xx_playback_clfe_ops", i1 false, i1 false}
!160 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 1655, i32 33}
!161 = !{ptr @snd_cs46xx_playback_iec958_ops, !162, !"snd_cs46xx_playback_iec958_ops", i1 false, i1 false}
!162 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 1676, i32 33}
!163 = !{ptr @.str.65, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 2374, i32 3}
!165 = !{ptr @.str.66, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @snd_cs46xx_codec_reset.__UNIQUE_ID_ddebug254, !164, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!167 = !{ptr @.str.67, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 2377, i32 3}
!169 = !{ptr @snd_cs46xx_codec_reset.__UNIQUE_ID_ddebug255, !168, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!170 = !{ptr @.str.68, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 2410, i32 2}
!172 = !{ptr @snd_cs46xx_codec_reset._entry, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @snd_cs46xx_codec_reset._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.69, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 278, i32 2}
!176 = !{ptr @.str.70, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @snd_cs46xx_codec_write._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @snd_cs46xx_codec_write._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.71, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 104, i32 3}
!181 = !{ptr @.str.72, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.73, !180, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @snd_cs46xx_codec_read._entry, !180, !"_entry", i1 false, i1 false}
!184 = !{ptr @snd_cs46xx_codec_read._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.75, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 156, i32 2}
!187 = !{ptr @snd_cs46xx_codec_read._entry.74, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @snd_cs46xx_codec_read._entry_ptr.76, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.78, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 176, i32 2}
!191 = !{ptr @snd_cs46xx_codec_read._entry.77, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @snd_cs46xx_codec_read._entry_ptr.79, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.80, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 2431, i32 4}
!195 = !{ptr @.str.81, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @cs46xx_detect_codec.__UNIQUE_ID_ddebug256, !194, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!197 = !{ptr @.str.82, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 2445, i32 2}
!199 = !{ptr @cs46xx_detect_codec.__UNIQUE_ID_ddebug257, !198, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!200 = !{ptr @.str.83, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 2230, i32 10}
!202 = !{ptr @.str.84, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 2244, i32 10}
!204 = !{ptr @.str.85, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 2257, i32 10}
!206 = !{ptr @.str.86, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 2264, i32 10}
!208 = !{ptr @.str.87, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 2271, i32 10}
!210 = !{ptr @.str.88, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 2279, i32 10}
!212 = !{ptr @.str.89, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 2298, i32 11}
!214 = !{ptr @.str.90, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 2305, i32 11}
!216 = !{ptr @.str.91, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 2312, i32 11}
!218 = !{ptr @snd_cs46xx_controls, !219, !"snd_cs46xx_controls", i1 false, i1 false}
!219 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 2227, i32 38}
!220 = !{ptr @.str.92, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 2344, i32 10}
!222 = !{ptr @snd_cs46xx_front_dup_ctl, !223, !"snd_cs46xx_front_dup_ctl", i1 false, i1 false}
!223 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 2342, i32 38}
!224 = !{ptr @snd_cs46xx_midi_output, !225, !"snd_cs46xx_midi_output", i1 false, i1 false}
!225 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 2656, i32 37}
!226 = !{ptr @snd_cs46xx_midi_input, !227, !"snd_cs46xx_midi_input", i1 false, i1 false}
!227 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 2663, i32 37}
!228 = !{ptr @.str.93, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 393, i32 19}
!230 = !{ptr @.str.94, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 342, i32 2}
!232 = !{ptr @.str.95, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 342, i32 13}
!234 = !{ptr @.str.96, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 342, i32 25}
!236 = !{ptr @.str.97, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 342, i32 37}
!238 = !{ptr @.str.98, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 342, i32 51}
!240 = !{ptr @module_names, !241, !"module_names", i1 false, i1 false}
!241 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 341, i32 20}
!242 = !{ptr @.str.99, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 690, i32 3}
!244 = !{ptr @.str.100, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @snd_cs46xx_proc_start._entry, !243, !"_entry", i1 false, i1 false}
!246 = !{ptr @snd_cs46xx_proc_start._entry_ptr, !243, !"_entry_ptr", i1 false, i1 false}
!247 = distinct !{null, !248, !"saved_regs", i1 false, i1 false}
!248 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3713, i32 27}
!249 = !{ptr @.str.101, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3603, i32 11}
!251 = !{ptr @.str.102, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3609, i32 11}
!253 = !{ptr @.str.103, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3616, i32 11}
!255 = !{ptr @.str.104, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3623, i32 11}
!257 = !{ptr @.str.105, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3667, i32 11}
!259 = !{ptr @.str.106, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3672, i32 11}
!261 = !{ptr @.str.107, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3678, i32 11}
!263 = !{ptr @.str.108, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3683, i32 11}
!265 = !{ptr @.str.109, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3689, i32 11}
!267 = !{ptr @.str.110, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3696, i32 11}
!269 = !{ptr @.str.111, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3703, i32 11}
!271 = !{ptr @cards, !272, !"cards", i1 false, i1 false}
!272 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3599, i32 28}
!273 = !{ptr @.str.112, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3465, i32 2}
!275 = !{ptr @.str.113, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @voyetra_mixer_init.__UNIQUE_ID_ddebug267, !274, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!277 = !{ptr @.str.114, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3450, i32 3}
!279 = !{ptr @.str.115, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @amp_hercules.__UNIQUE_ID_ddebug265, !278, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!281 = !{ptr @.str.116, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3457, i32 3}
!283 = !{ptr @amp_hercules.__UNIQUE_ID_ddebug266, !282, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!284 = !{ptr @.str.117, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3483, i32 2}
!286 = !{ptr @.str.118, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @hercules_mixer_init.__UNIQUE_ID_ddebug268, !285, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!288 = !{ptr @.str.119, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3495, i32 4}
!290 = !{ptr @hercules_mixer_init._entry, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @hercules_mixer_init._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.120, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 2356, i32 10}
!294 = !{ptr @snd_hercules_controls, !295, !"snd_hercules_controls", i1 false, i1 false}
!295 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 2353, i32 38}
!296 = !{ptr @.str.121, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3278, i32 2}
!298 = !{ptr @.str.122, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @voyetra_setup_eapd_slot.__UNIQUE_ID_ddebug262, !297, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!300 = !{ptr @.str.123, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3296, i32 3}
!302 = !{ptr @voyetra_setup_eapd_slot._entry, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @voyetra_setup_eapd_slot._entry_ptr, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.124, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3338, i32 3}
!306 = !{ptr @voyetra_setup_eapd_slot.__UNIQUE_ID_ddebug263, !305, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!307 = !{ptr @.str.125, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3359, i32 4}
!309 = !{ptr @voyetra_setup_eapd_slot.__UNIQUE_ID_ddebug264, !308, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!310 = !{ptr @.str.126, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 602, i32 3}
!312 = !{ptr @.str.127, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @cs46xx_wait_for_fifo._entry, !311, !"_entry", i1 false, i1 false}
!314 = !{ptr @cs46xx_wait_for_fifo._entry_ptr, !311, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.128, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3068, i32 2}
!317 = !{ptr @.str.129, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @snd_cs46xx_chip_init._entry, !316, !"_entry", i1 false, i1 false}
!319 = !{ptr @snd_cs46xx_chip_init._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.131, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3070, i32 2}
!322 = !{ptr @snd_cs46xx_chip_init._entry.130, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @snd_cs46xx_chip_init._entry_ptr.132, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.133, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3089, i32 4}
!326 = !{ptr @snd_cs46xx_chip_init.__UNIQUE_ID_ddebug261, !325, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!327 = !{ptr @.str.135, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3128, i32 2}
!329 = !{ptr @snd_cs46xx_chip_init._entry.134, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @snd_cs46xx_chip_init._entry_ptr.136, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.138, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3129, i32 2}
!333 = !{ptr @snd_cs46xx_chip_init._entry.137, !332, !"_entry", i1 false, i1 false}
!334 = !{ptr @snd_cs46xx_chip_init._entry_ptr.139, !332, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.141, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3131, i32 2}
!337 = !{ptr @snd_cs46xx_chip_init._entry.140, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @snd_cs46xx_chip_init._entry_ptr.142, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.144, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 3133, i32 2}
!341 = !{ptr @snd_cs46xx_chip_init._entry.143, !340, !"_entry", i1 false, i1 false}
!342 = !{ptr @snd_cs46xx_chip_init._entry_ptr.145, !340, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.146, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 640, i32 4}
!345 = !{ptr @snd_cs46xx_clear_serial_FIFOs.__UNIQUE_ID_ddebug247, !344, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!346 = !{ptr @snd_cs46xx_proc_io_ops, !347, !"snd_cs46xx_proc_io_ops", i1 false, i1 false}
!347 = !{!"../sound/pci/cs46xx/cs46xx_lib.c", i32 2807, i32 40}
!348 = !{i32 1, !"wchar_size", i32 2}
!349 = !{i32 1, !"min_enum_size", i32 4}
!350 = !{i32 8, !"branch-target-enforcement", i32 0}
!351 = !{i32 8, !"sign-return-address", i32 0}
!352 = !{i32 8, !"sign-return-address-all", i32 0}
!353 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!354 = !{i32 7, !"uwtable", i32 1}
!355 = !{i32 7, !"frame-pointer", i32 2}
!356 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!357 = !{!"branch_weights", i32 2000, i32 1}
!358 = !{i64 2154990482}
!359 = !{i64 5094110}
!360 = !{i64 2154997274}
!361 = !{!"auto-init"}
!362 = !{i64 2148863143, i64 2148863148, i64 2148863161, i64 2148863205, i64 2148863239, i64 2148863260}
!363 = !{!"branch_weights", i32 1, i32 2000}
!364 = !{i64 2154969142}
!365 = !{i64 5094528}
!366 = !{i64 2154970092}
!367 = !{i64 2154968735}
!368 = !{i64 2154967770}
!369 = !{i64 5093690}
!370 = !{i64 2155110875}
!371 = !{i64 2155111135}
!372 = !{i64 5093490}
