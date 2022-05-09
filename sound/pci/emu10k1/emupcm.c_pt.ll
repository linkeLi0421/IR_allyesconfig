; ModuleID = '/llk/IR_all_yes/sound/pci/emu10k1/emupcm.c_pt.bc'
source_filename = "../sound/pci/emu10k1/emupcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.87, i32 }
%union.anon.87 = type { ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_emu10k1 = type { i32, i32, i8, ptr, i32, i32, i32, i16, i32, i32, i32, i32, i8, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.snd_dma_device, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, [3 x i32], i32, [4 x [2 x i8]], %struct.snd_emu10k1_fx8010, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, [64 x %struct.snd_emu10k1_voice], [4 x %struct.snd_emu10k1_voice], %struct.snd_emu10k1_voice, i32, i32, i32, %struct.snd_emu1010, [32 x %struct.snd_emu10k1_pcm_mixer], [16 x %struct.snd_emu10k1_pcm_mixer], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi, [2 x i32], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_emu10k1_fx8010 = type { i16, i16, i16, i16, i32, %struct.snd_dma_buffer, i32, [128 x i8], i32, i32, %struct.list_head, %struct.mutex, [8 x %struct.snd_emu10k1_fx8010_pcm], %struct.spinlock, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.snd_emu_chip_details = type { i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.86, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.86 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
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
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_emu10k1_memblk = type { %struct.snd_util_memblk, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head }
%struct.snd_util_memblk = type { i32, i32, %struct.list_head }
%struct.snd_pcm_mmap_status = type { i32, i32, [4 x i8], i32, [0 x i8], %struct.__kernel_timespec, i32, i32, %struct.__kernel_timespec }
%struct.__kernel_timespec = type { i64, i64 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_pcm_mmap_control = type { [4 x i8], i32, [4 x i8], [4 x i8], i32, [0 x i8] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.77, [64 x i8] }
%union.anon.77 = type { %struct.anon.80, [40 x i8] }
%struct.anon.80 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.81, [128 x i8] }
%union.anon.81 = type { %union.anon.83 }
%union.anon.83 = type { [64 x i64] }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"emu10k1\00", [24 x i8] zeroinitializer }, align 32
@snd_emu10k1_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_emu10k1_playback_open, ptr @snd_emu10k1_playback_close, ptr null, ptr @snd_emu10k1_playback_hw_params, ptr @snd_emu10k1_playback_hw_free, ptr @snd_emu10k1_playback_prepare, ptr @snd_emu10k1_playback_trigger, ptr null, ptr @snd_emu10k1_playback_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_emu10k1_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_emu10k1_capture_open, ptr @snd_emu10k1_capture_close, ptr null, ptr null, ptr null, ptr @snd_emu10k1_capture_prepare, ptr @snd_emu10k1_capture_trigger, ptr null, ptr @snd_emu10k1_capture_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ADC Capture/Standard PCM Playback\00", [62 x i8] zeroinitializer }, align 32
@snd_emu10k1_efx_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_emu10k1_efx_playback_open, ptr @snd_emu10k1_efx_playback_close, ptr null, ptr @snd_emu10k1_playback_hw_params, ptr @snd_emu10k1_efx_playback_hw_free, ptr @snd_emu10k1_efx_playback_prepare, ptr @snd_emu10k1_efx_playback_trigger, ptr null, ptr @snd_emu10k1_efx_playback_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Multichannel Playback\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"emu10k1 mic\00", [20 x i8] zeroinitializer }, align 32
@snd_emu10k1_capture_mic_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_emu10k1_capture_mic_open, ptr @snd_emu10k1_capture_mic_close, ptr null, ptr null, ptr null, ptr @snd_emu10k1_capture_prepare, ptr @snd_emu10k1_capture_trigger, ptr null, ptr @snd_emu10k1_capture_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Mic Capture\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"emu10k1 efx\00", [20 x i8] zeroinitializer }, align 32
@snd_emu10k1_fx8010_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_emu10k1_fx8010_playback_open, ptr @snd_emu10k1_fx8010_playback_close, ptr null, ptr null, ptr @snd_emu10k1_fx8010_playback_hw_free, ptr @snd_emu10k1_fx8010_playback_prepare, ptr @snd_emu10k1_fx8010_playback_trigger, ptr null, ptr @snd_emu10k1_fx8010_playback_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_emu10k1_fx8010_playback_transfer }, [32 x i8] zeroinitializer }, align 32
@snd_emu10k1_capture_efx_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_emu10k1_capture_efx_open, ptr @snd_emu10k1_capture_efx_close, ptr null, ptr null, ptr null, ptr @snd_emu10k1_capture_prepare, ptr @snd_emu10k1_capture_trigger, ptr null, ptr @snd_emu10k1_capture_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Multichannel Capture/PT Playback\00", [63 x i8] zeroinitializer }, align 32
@snd_emu10k1_pcm_efx_voices_mask = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.12, i32 0, i32 0, i32 0, ptr @snd_emu10k1_pcm_efx_voices_mask_info, ptr @snd_emu10k1_pcm_efx_voices_mask_get, ptr @snd_emu10k1_pcm_efx_voices_mask_put, %union.anon.87 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_emu10k1_playback = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 852227, i64 6, i32 1073743870, i32 4000, i32 96000, i32 1, i32 2, i32 131072, i32 64, i32 131072, i32 1, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@snd_emu10k1_capture = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 327939, i64 4, i32 254, i32 8000, i32 48000, i32 1, i32 2, i32 65536, i32 384, i32 65536, i32 2, i32 2, i32 0 }, [32 x i8] zeroinitializer }, align 32
@hw_constraints_capture_period_sizes = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @capture_period_sizes, i32 31, i32 0 }, [20 x i8] zeroinitializer }, align 32
@hw_constraints_capture_rates = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @capture_rates, i32 8, i32 0 }, [20 x i8] zeroinitializer }, align 32
@capture_period_sizes = internal constant { [31 x i32], [36 x i8] } { [31 x i32] [i32 384, i32 448, i32 512, i32 640, i32 768, i32 896, i32 1024, i32 1280, i32 1536, i32 1792, i32 2048, i32 2560, i32 3072, i32 3584, i32 4096, i32 5120, i32 6144, i32 7168, i32 8192, i32 10240, i32 12288, i32 14336, i32 16384, i32 20480, i32 24576, i32 28672, i32 32768, i32 40960, i32 49152, i32 57344, i32 65536], [36 x i8] zeroinitializer }, align 32
@capture_rates = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 8000, i32 11025, i32 16000, i32 22050, i32 24000, i32 32000, i32 44100, i32 48000], [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/pci/emu10k1/emupcm.c\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUG?\0A\00", [26 x i8] zeroinitializer }, align 32
@snd_emu10k1_capture_trigger.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.7, ptr @.str.11, i8 0, i8 -52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snd_emu10k1\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"snd_emu10k1_capture_trigger\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cr_val=0x%x, cr_val2=0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@snd_emu10k1_efx_playback = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 852483, i64 4, i32 128, i32 48000, i32 48000, i32 16, i32 16, i32 65536, i32 64, i32 65536, i32 2, i32 2, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_emu10k1_fx8010_playback = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 786721, i64 6, i32 128, i32 48000, i32 48000, i32 1, i32 1, i32 131072, i32 1024, i32 131072, i32 2, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_emu10k1_capture_efx = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 327939, i64 4, i32 7872, i32 44100, i32 192000, i32 8, i32 8, i32 65536, i32 384, i32 65536, i32 2, i32 2, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Captured FX8010 Outputs\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.14 = internal global [11 x i64] [i64 9, i64 32, i64 8000, i64 11025, i64 12000, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.15 = internal global [10 x i64] [i64 8, i64 32, i64 8000, i64 11025, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 5, i64 6]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.19 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.20 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.22 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1387, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant [25 x i8] c"snd_emu10k1_playback_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1352, i32 33 }
@___asan_gen_.29 = private unnamed_addr constant [24 x i8] c"snd_emu10k1_capture_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1362, i32 33 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1398, i32 20 }
@___asan_gen_.35 = private unnamed_addr constant [29 x i8] c"snd_emu10k1_efx_playback_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1371, i32 33 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1430, i32 20 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1455, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant [28 x i8] c"snd_emu10k1_capture_mic_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1442, i32 33 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1464, i32 20 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1784, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant [32 x i8] c"snd_emu10k1_fx8010_playback_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1768, i32 33 }
@___asan_gen_.56 = private unnamed_addr constant [28 x i8] c"snd_emu10k1_capture_efx_ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1536, i32 33 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1794, i32 20 }
@___asan_gen_.62 = private unnamed_addr constant [32 x i8] c"snd_emu10k1_pcm_efx_voices_mask\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1528, i32 38 }
@___asan_gen_.65 = private unnamed_addr constant [21 x i8] c"snd_emu10k1_playback\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 961, i32 38 }
@___asan_gen_.68 = private unnamed_addr constant [20 x i8] c"snd_emu10k1_capture\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 985, i32 38 }
@___asan_gen_.71 = private unnamed_addr constant [36 x i8] c"hw_constraints_capture_period_sizes\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 165, i32 48 }
@___asan_gen_.74 = private unnamed_addr constant [29 x i8] c"hw_constraints_capture_rates\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 175, i32 48 }
@___asan_gen_.77 = private unnamed_addr constant [21 x i8] c"capture_period_sizes\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 154, i32 27 }
@___asan_gen_.80 = private unnamed_addr constant [14 x i8] c"capture_rates\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 171, i32 27 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 607, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 815, i32 5 }
@___asan_gen_.98 = private unnamed_addr constant [25 x i8] c"snd_emu10k1_efx_playback\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 554, i32 38 }
@___asan_gen_.101 = private unnamed_addr constant [28 x i8] c"snd_emu10k1_fx8010_playback\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1718, i32 38 }
@___asan_gen_.104 = private unnamed_addr constant [24 x i8] c"snd_emu10k1_capture_efx\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1005, i32 38 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.108 = private constant [30 x i8] c"../sound/pci/emu10k1/emupcm.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1530, i32 10 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @.str, ptr @snd_emu10k1_playback_ops, ptr @snd_emu10k1_capture_ops, ptr @.str.1, ptr @snd_emu10k1_efx_playback_ops, ptr @.str.2, ptr @.str.3, ptr @snd_emu10k1_capture_mic_ops, ptr @.str.4, ptr @.str.5, ptr @snd_emu10k1_fx8010_playback_ops, ptr @snd_emu10k1_capture_efx_ops, ptr @.str.6, ptr @snd_emu10k1_pcm_efx_voices_mask, ptr @snd_emu10k1_playback, ptr @snd_emu10k1_capture, ptr @hw_constraints_capture_period_sizes, ptr @hw_constraints_capture_rates, ptr @capture_period_sizes, ptr @capture_rates, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @snd_emu10k1_efx_playback, ptr @snd_emu10k1_fx8010_playback, ptr @snd_emu10k1_capture_efx, ptr @.str.12], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_efx_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_capture_mic_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_fx8010_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_capture_efx_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_pcm_efx_voices_mask to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_playback to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_capture to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_constraints_capture_period_sizes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_constraints_capture_rates to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_period_sizes to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_rates to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_efx_playback to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_fx8010_playback to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_capture_efx to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emu10k1_pcm(ptr noundef %emu, i32 noundef %device) local_unnamed_addr #0 align 64 {
entry:
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #7
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !65
  %card = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 32
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 4
  %call = call i32 @snd_pcm_new(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef %device, i32 noundef 32, i32 noundef 1, ptr noundef nonnull %pcm) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcm, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %emu, ptr %private_data, align 8
  call void @snd_pcm_set_ops(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @snd_emu10k1_playback_ops) #7
  %6 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %7, i32 noundef 1, ptr noundef nonnull @snd_emu10k1_capture_ops) #7
  %8 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcm, align 4
  %info_flags = getelementptr inbounds %struct.snd_pcm, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %info_flags, align 8
  %dev_subclass = getelementptr inbounds %struct.snd_pcm, ptr %9, i32 0, i32 5
  %11 = ptrtoint ptr %dev_subclass to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %dev_subclass, align 2
  %name = getelementptr inbounds %struct.snd_pcm, ptr %9, i32 0, i32 7
  %12 = call ptr @memcpy(ptr %name, ptr @.str.1, i32 34)
  %pcm2 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 33
  %13 = ptrtoint ptr %pcm2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %9, ptr %pcm2, align 4
  %substream3 = getelementptr inbounds %struct.snd_pcm, ptr %9, i32 0, i32 8, i32 0, i32 4
  %14 = ptrtoint ptr %substream3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %substream.028 = load ptr, ptr %substream3, align 4
  %tobool.not29 = icmp eq ptr %substream.028, null
  br i1 %tobool.not29, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %pci = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 31
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %substream.030 = phi ptr [ %substream.028, %for.body.lr.ph ], [ %substream.0, %for.body.for.body_crit_edge ]
  %15 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  call void @snd_pcm_lib_preallocate_pages(ptr noundef nonnull %substream.030, i32 noundef 2, ptr noundef %dev, i32 noundef 65536, i32 noundef 65536) #7
  %next = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.030, i32 0, i32 15
  %17 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %17)
  %substream.0 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %substream.0, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %18 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pcm, align 4
  %substream6 = getelementptr %struct.snd_pcm, ptr %19, i32 0, i32 8, i32 1, i32 4
  %20 = ptrtoint ptr %substream6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %substream.131 = load ptr, ptr %substream6, align 4
  %tobool8.not32 = icmp eq ptr %substream.131, null
  br i1 %tobool8.not32, label %for.end.cleanup_crit_edge, label %for.body9.lr.ph

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body9.lr.ph:                                  ; preds = %for.end
  %pci10 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 31
  br label %for.body9

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.body9.lr.ph
  %substream.133 = phi ptr [ %substream.131, %for.body9.lr.ph ], [ %substream.1, %for.body9.for.body9_crit_edge ]
  %21 = ptrtoint ptr %pci10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci10, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %call12 = call i32 @snd_pcm_set_managed_buffer(ptr noundef nonnull %substream.133, i32 noundef 2, ptr noundef %dev11, i32 noundef 65536, i32 noundef 65536) #7
  %next14 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.133, i32 0, i32 15
  %23 = ptrtoint ptr %next14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %substream.1 = load ptr, ptr %next14, align 4
  %tobool8.not = icmp eq ptr %substream.1, null
  br i1 %tobool8.not, label %for.body9.cleanup_crit_edge, label %for.body9.for.body9_crit_edge

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body9

for.body9.cleanup_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body9.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.body9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_lib_preallocate_pages(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emu10k1_pcm_multi(ptr noundef %emu, i32 noundef %device) local_unnamed_addr #0 align 64 {
entry:
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #7
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !65
  %card = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 32
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 4
  %call = call i32 @snd_pcm_new(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef %device, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %pcm) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcm, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %emu, ptr %private_data, align 8
  call void @snd_pcm_set_ops(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @snd_emu10k1_efx_playback_ops) #7
  %6 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcm, align 4
  %info_flags = getelementptr inbounds %struct.snd_pcm, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %info_flags, align 8
  %dev_subclass = getelementptr inbounds %struct.snd_pcm, ptr %7, i32 0, i32 5
  %9 = ptrtoint ptr %dev_subclass to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %dev_subclass, align 2
  %name = getelementptr inbounds %struct.snd_pcm, ptr %7, i32 0, i32 7
  %10 = call ptr @memcpy(ptr %name, ptr @.str.2, i32 22)
  %pcm_multi = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 36
  %11 = ptrtoint ptr %pcm_multi to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %7, ptr %pcm_multi, align 4
  %substream2 = getelementptr inbounds %struct.snd_pcm, ptr %7, i32 0, i32 8, i32 0, i32 4
  %12 = ptrtoint ptr %substream2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %substream.011 = load ptr, ptr %substream2, align 4
  %tobool.not12 = icmp eq ptr %substream.011, null
  br i1 %tobool.not12, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %pci = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 31
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %substream.013 = phi ptr [ %substream.011, %for.body.lr.ph ], [ %substream.0, %for.body.for.body_crit_edge ]
  %13 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  call void @snd_pcm_lib_preallocate_pages(ptr noundef nonnull %substream.013, i32 noundef 2, ptr noundef %dev, i32 noundef 65536, i32 noundef 65536) #7
  %next = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.013, i32 0, i32 15
  %15 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %15)
  %substream.0 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %substream.0, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emu10k1_pcm_mic(ptr noundef %emu, i32 noundef %device) local_unnamed_addr #0 align 64 {
entry:
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #7
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !65
  %card = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 32
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 4
  %call = call i32 @snd_pcm_new(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %device, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %pcm) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcm, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %emu, ptr %private_data, align 8
  call void @snd_pcm_set_ops(ptr noundef %4, i32 noundef 1, ptr noundef nonnull @snd_emu10k1_capture_mic_ops) #7
  %6 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcm, align 4
  %info_flags = getelementptr inbounds %struct.snd_pcm, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %info_flags, align 8
  %name = getelementptr inbounds %struct.snd_pcm, ptr %7, i32 0, i32 7
  %9 = call ptr @memcpy(ptr %name, ptr @.str.4, i32 12)
  %pcm_mic = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 34
  %10 = ptrtoint ptr %pcm_mic to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %pcm_mic, align 4
  %pci = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 31
  %11 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %call2 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %7, i32 noundef 2, ptr noundef %dev, i32 noundef 65536, i32 noundef 65536) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emu10k1_pcm_efx(ptr noundef %emu, i32 noundef %device) local_unnamed_addr #0 align 64 {
entry:
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #7
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !65
  %card = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 32
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 4
  %call = call i32 @snd_pcm_new(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %device, i32 noundef 8, i32 noundef 1, ptr noundef nonnull %pcm) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcm, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %emu, ptr %private_data, align 8
  call void @snd_pcm_set_ops(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @snd_emu10k1_fx8010_playback_ops) #7
  %6 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %7, i32 noundef 1, ptr noundef nonnull @snd_emu10k1_capture_efx_ops) #7
  %8 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcm, align 4
  %info_flags = getelementptr inbounds %struct.snd_pcm, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %info_flags, align 8
  %name = getelementptr inbounds %struct.snd_pcm, ptr %9, i32 0, i32 7
  %11 = call ptr @memcpy(ptr %name, ptr @.str.6, i32 33)
  %pcm_efx = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 35
  %12 = ptrtoint ptr %pcm_efx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %pcm_efx, align 4
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 4
  %13 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  %efx_voices_mask11 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 74
  br i1 %tobool.not, label %if.else10, label %if.then2

if.then2:                                         ; preds = %if.end
  %15 = ptrtoint ptr %efx_voices_mask11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %efx_voices_mask11, align 4
  %card_capabilities = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 3
  %16 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card_capabilities, align 4
  %emu_model = getelementptr inbounds %struct.snd_emu_chip_details, ptr %17, i32 0, i32 15
  %18 = ptrtoint ptr %emu_model to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %emu_model, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool3.not = icmp eq i8 %19, 0
  %arrayidx8 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 74, i32 1
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %arrayidx8, align 4
  br label %if.end15

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 65535, ptr %arrayidx8, align 4
  br label %if.end15

if.else10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %efx_voices_mask11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -65536, ptr %efx_voices_mask11, align 4
  %arrayidx14 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 74, i32 1
  %23 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx14, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else10, %if.else, %if.then4
  %call16 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_emu10k1_pcm_efx_voices_mask, ptr noundef %emu) #7
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %device20 = getelementptr inbounds %struct.snd_kcontrol, ptr %call16, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %device20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %device, ptr %device20, align 4
  %25 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %card, align 4
  %call22 = call i32 @snd_ctl_add(ptr noundef %26, ptr noundef nonnull %call16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end19.cleanup_crit_edge, label %if.end25

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pcm, align 4
  %pci = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 31
  %29 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %call26 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %28, i32 noundef 2, ptr noundef %dev, i32 noundef 65536, i32 noundef 65536) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end19.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end15.cleanup_crit_edge ], [ %call22, %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_playback_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 132) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %call7.i.i, align 8
  %type = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %type, align 4
  %substream3 = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %substream3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %substream, ptr %substream3, align 8
  %private_data4 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %8 = ptrtoint ptr %private_data4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %private_data4, align 8
  %private_free = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 45
  %9 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @snd_emu10k1_pcm_free_substream, ptr %private_free, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %10 = call ptr @memcpy(ptr %hw, ptr @snd_emu10k1_playback, i32 64)
  %call5 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %3, i32 noundef 15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 18, i32 noundef 256, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %card_capabilities = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card_capabilities, align 4
  %emu_model = getelementptr inbounds %struct.snd_emu_chip_details, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %emu_model to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %emu_model, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %if.end12.if.else_crit_edge, label %land.lhs.true

if.end12.if.else_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %if.end12
  %internal_clock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 52, i32 4
  %15 = ptrtoint ptr %internal_clock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %internal_clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp13 = icmp eq i32 %16, 0
  br i1 %cmp13, label %land.lhs.true.if.end16_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end12.if.else_crit_edge
  br label %if.end16

if.end16:                                         ; preds = %if.else, %land.lhs.true.if.end16_crit_edge
  %sample_rate.0 = phi i32 [ 48000, %if.else ], [ 44100, %land.lhs.true.if.end16_crit_edge ]
  %call17 = tail call i32 @snd_pcm_hw_rule_noresample(ptr noundef %3, i32 noundef %sample_rate.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %17 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %number, align 4
  %arrayidx = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 53, i32 %18
  %arrayidx26 = getelementptr [3 x [8 x i8]], ptr %arrayidx, i32 0, i32 2, i32 0
  %19 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx26, align 1
  %arrayidx29 = getelementptr [3 x [8 x i8]], ptr %arrayidx, i32 0, i32 1, i32 0
  %20 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx29, align 1
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx, align 1
  %arrayidx26.1 = getelementptr [3 x [8 x i8]], ptr %arrayidx, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %arrayidx26.1, align 1
  %arrayidx29.1 = getelementptr [3 x [8 x i8]], ptr %arrayidx, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %arrayidx29.1, align 1
  %arrayidx32.1 = getelementptr [8 x i8], ptr %arrayidx, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx32.1 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %arrayidx32.1, align 1
  %arrayidx26.2 = getelementptr [3 x [8 x i8]], ptr %arrayidx, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %arrayidx26.2, align 1
  %arrayidx29.2 = getelementptr [3 x [8 x i8]], ptr %arrayidx, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 2, ptr %arrayidx29.2, align 1
  %arrayidx32.2 = getelementptr [8 x i8], ptr %arrayidx, i32 0, i32 2
  %27 = ptrtoint ptr %arrayidx32.2 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 2, ptr %arrayidx32.2, align 1
  %arrayidx26.3 = getelementptr [3 x [8 x i8]], ptr %arrayidx, i32 0, i32 2, i32 3
  %28 = ptrtoint ptr %arrayidx26.3 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 3, ptr %arrayidx26.3, align 1
  %arrayidx29.3 = getelementptr [3 x [8 x i8]], ptr %arrayidx, i32 0, i32 1, i32 3
  %29 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 3, ptr %arrayidx29.3, align 1
  %arrayidx32.3 = getelementptr [8 x i8], ptr %arrayidx, i32 0, i32 3
  %30 = ptrtoint ptr %arrayidx32.3 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 3, ptr %arrayidx32.3, align 1
  %send_volume = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 53, i32 %18, i32 1
  %31 = call ptr @memset(ptr %send_volume, i32 0, i32 24)
  %arrayidx35 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 53, i32 %18, i32 1, i32 2, i32 1
  %32 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %arrayidx35, align 1
  %arrayidx37 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 53, i32 %18, i32 1, i32 1
  %33 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %arrayidx37, align 4
  %arrayidx41 = getelementptr [8 x i8], ptr %send_volume, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %arrayidx41, align 1
  %35 = ptrtoint ptr %send_volume to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -1, ptr %send_volume, align 4
  %attn = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 53, i32 %18, i32 2
  %arrayidx45 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 53, i32 %18, i32 2, i32 2
  %36 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -1, ptr %arrayidx45, align 4
  %arrayidx47 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 53, i32 %18, i32 2, i32 1
  %37 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -1, ptr %arrayidx47, align 2
  %38 = ptrtoint ptr %attn to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 -1, ptr %attn, align 4
  %epcm50 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 53, i32 %18, i32 3
  %39 = ptrtoint ptr %epcm50 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i.i, ptr %epcm50, align 4
  %40 = load i32, ptr %number, align 4
  tail call fastcc void @snd_emu10k1_pcm_mixer_notify(ptr noundef %1, i32 noundef %40, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then20, %if.then11, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then7 ], [ %call9, %if.then11 ], [ %call17, %if.then20 ], [ 0, %if.end21 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_playback_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %number, align 4
  %epcm = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 53, i32 %3, i32 3
  %4 = ptrtoint ptr %epcm to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %epcm, align 4
  %5 = load i32, ptr %number, align 4
  tail call fastcc void @snd_emu10k1_pcm_mixer_notify(ptr noundef %1, i32 noundef %5, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_playback_hw_params(ptr noundef %substream, ptr nocapture noundef readonly %hw_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %voices1.i = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3
  %arrayidx.i = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %cmp.not.i = icmp ne ptr %9, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp2.i = icmp slt i32 %7, 2
  %or.cond.i = and i1 %cmp2.i, %cmp.not.i
  br i1 %or.cond.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @snd_emu10k1_voice_free(ptr noundef %11, ptr noundef nonnull %9) #7
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7145.i = icmp sgt i32 %7, 0
  br i1 %cmp7145.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.0146.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %arrayidx9.i = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 %i.0146.i
  %13 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx9.i, align 4
  %cmp10.i = icmp eq ptr %14, null
  br i1 %cmp10.i, label %for.body.i.for.end.i_crit_edge, label %for.inc.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.0146.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end.i.for.end.i_crit_edge ], [ %i.0146.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %7)
  %cmp13.i = icmp eq i32 %i.0.lcssa.i, %7
  br i1 %cmp13.i, label %for.end.i.if.end_crit_edge, label %for.end.i.for.body18.i_crit_edge

for.end.i.for.body18.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body18.i

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body18.i:                                     ; preds = %for.inc29.i.for.body18.i_crit_edge, %for.end.i.for.body18.i_crit_edge
  %i.1148.i = phi i32 [ %inc30.i, %for.inc29.i.for.body18.i_crit_edge ], [ 0, %for.end.i.for.body18.i_crit_edge ]
  %arrayidx20.i = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 %i.1148.i
  %15 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx20.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %for.body18.i.for.inc29.i_crit_edge, label %if.then21.i

for.body18.i.for.inc29.i_crit_edge:               ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc29.i

if.then21.i:                                      ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 4
  %call25.i = tail call i32 @snd_emu10k1_voice_free(ptr noundef %18, ptr noundef nonnull %16) #7
  %19 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx20.i, align 4
  br label %for.inc29.i

for.inc29.i:                                      ; preds = %if.then21.i, %for.body18.i.for.inc29.i_crit_edge
  %inc30.i = add nuw nsw i32 %i.1148.i, 1
  %exitcond153.not.i = icmp eq i32 %inc30.i, 16
  br i1 %exitcond153.not.i, label %for.end31.i, label %for.inc29.i.for.body18.i_crit_edge

for.inc29.i.for.body18.i_crit_edge:               ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body18.i

for.end31.i:                                      ; preds = %for.inc29.i
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %type.i = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 1
  %22 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp33.i = icmp eq i32 %23, 0
  %cond.i = zext i1 %cmp33.i to i32
  %call36.i = tail call i32 @snd_emu10k1_voice_alloc(ptr noundef %21, i32 noundef %cond.i, i32 noundef %7, ptr noundef %voices1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp37.i = icmp slt i32 %call36.i, 0
  br i1 %cmp37.i, label %for.end31.i.cleanup36_crit_edge, label %if.end39.i

for.end31.i.cleanup36_crit_edge:                  ; preds = %for.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup36

if.end39.i:                                       ; preds = %for.end31.i
  %24 = ptrtoint ptr %voices1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %voices1.i, align 4
  %epcm42.i = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %epcm42.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %5, ptr %epcm42.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp43.i = icmp sgt i32 %7, 1
  br i1 %cmp43.i, label %if.end39.i.for.body47.i_crit_edge, label %if.end39.i.if.end61.i_crit_edge

if.end39.i.if.end61.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61.i

if.end39.i.for.body47.i_crit_edge:                ; preds = %if.end39.i
  br label %for.body47.i

for.body47.i:                                     ; preds = %for.body47.i.for.body47.i_crit_edge, %if.end39.i.for.body47.i_crit_edge
  %i.2150.i = phi i32 [ %inc59.i, %for.body47.i.for.body47.i_crit_edge ], [ 1, %if.end39.i.for.body47.i_crit_edge ]
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %5, align 4
  %29 = ptrtoint ptr %voices1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %voices1.i, align 4
  %number.i = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %number.i, align 4
  %add.i = add i32 %32, %i.2150.i
  %arrayidx52.i = getelementptr %struct.snd_emu10k1, ptr %28, i32 0, i32 46, i32 %add.i
  %arrayidx54.i = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 %i.2150.i
  %33 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %arrayidx52.i, ptr %arrayidx54.i, align 4
  %epcm57.i = getelementptr %struct.snd_emu10k1, ptr %28, i32 0, i32 46, i32 %add.i, i32 4
  %34 = ptrtoint ptr %epcm57.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %5, ptr %epcm57.i, align 4
  %inc59.i = add nuw nsw i32 %i.2150.i, 1
  %exitcond154.not.i = icmp eq i32 %inc59.i, %7
  br i1 %exitcond154.not.i, label %for.body47.i.if.end61.i_crit_edge, label %for.body47.i.for.body47.i_crit_edge

for.body47.i.for.body47.i_crit_edge:              ; preds = %for.body47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body47.i

for.body47.i.if.end61.i_crit_edge:                ; preds = %for.body47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61.i

if.end61.i:                                       ; preds = %for.body47.i.if.end61.i_crit_edge, %if.end39.i.if.end61.i_crit_edge
  %extra.i = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 4
  %35 = ptrtoint ptr %extra.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %extra.i, align 4
  %cmp62.i = icmp eq ptr %36, null
  br i1 %cmp62.i, label %if.then63.i, label %if.end61.i.if.end_crit_edge

if.end61.i.if.end_crit_edge:                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then63.i:                                      ; preds = %if.end61.i
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %5, align 4
  %39 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp66.i = icmp eq i32 %40, 0
  %cond67.i = zext i1 %cmp66.i to i32
  %call69.i = tail call i32 @snd_emu10k1_voice_alloc(ptr noundef %38, i32 noundef %cond67.i, i32 noundef 1, ptr noundef %extra.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %cmp70.i = icmp slt i32 %call69.i, 0
  br i1 %cmp70.i, label %for.cond72.preheader.i, label %if.end84.i

for.cond72.preheader.i:                           ; preds = %if.then63.i
  br i1 %cmp7145.i, label %for.cond72.preheader.i.for.body74.i_crit_edge, label %for.cond72.preheader.i.cleanup36_crit_edge

for.cond72.preheader.i.cleanup36_crit_edge:       ; preds = %for.cond72.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup36

for.cond72.preheader.i.for.body74.i_crit_edge:    ; preds = %for.cond72.preheader.i
  br label %for.body74.i

for.body74.i:                                     ; preds = %for.body74.i.for.body74.i_crit_edge, %for.cond72.preheader.i.for.body74.i_crit_edge
  %i.3152.i = phi i32 [ %inc82.i, %for.body74.i.for.body74.i_crit_edge ], [ 0, %for.cond72.preheader.i.for.body74.i_crit_edge ]
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %5, align 4
  %arrayidx77.i = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 %i.3152.i
  %43 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx77.i, align 4
  %call78.i = tail call i32 @snd_emu10k1_voice_free(ptr noundef %42, ptr noundef %44) #7
  %45 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %arrayidx77.i, align 4
  %inc82.i = add nuw nsw i32 %i.3152.i, 1
  %exitcond155.not.i = icmp eq i32 %inc82.i, %7
  br i1 %exitcond155.not.i, label %for.body74.i.cleanup36_crit_edge, label %for.body74.i.for.body74.i_crit_edge

for.body74.i.for.body74.i_crit_edge:              ; preds = %for.body74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body74.i

for.body74.i.cleanup36_crit_edge:                 ; preds = %for.body74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup36

if.end84.i:                                       ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %extra.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %extra.i, align 4
  %epcm86.i = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %epcm86.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %5, ptr %epcm86.i, align 4
  %49 = load ptr, ptr %extra.i, align 4
  %interrupt.i = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %interrupt.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @snd_emu10k1_pcm_interrupt, ptr %interrupt.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end84.i, %if.end61.i.if.end_crit_edge, %for.end.i.if.end_crit_edge, %for.inc.i.if.end_crit_edge
  %arrayidx.i.i66 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 10
  %51 = ptrtoint ptr %arrayidx.i.i66 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.i66, align 4
  %iommu_workaround = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 12
  %53 = ptrtoint ptr %iommu_workaround to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %iommu_workaround, align 4, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not = icmp eq i8 %54, 0
  %add = add i32 %52, 4096
  %spec.select = select i1 %tobool.not, i32 %52, i32 %add
  %call7 = tail call i32 @snd_pcm_lib_malloc_pages(ptr noundef %substream, i32 noundef %spec.select) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end.cleanup36_crit_edge, label %if.end10

if.end.cleanup36_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup36

if.end10:                                         ; preds = %if.end
  %55 = ptrtoint ptr %iommu_workaround to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %iommu_workaround, align 4, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool12.not = icmp eq i8 %56, 0
  br i1 %tobool12.not, label %if.end10.if.end16_crit_edge, label %land.lhs.true

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end10
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 52
  %57 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dma_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %58)
  %cmp13 = icmp ugt i32 %58, 4095
  br i1 %cmp13, label %if.then14, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add i32 %58, -4096
  %59 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %sub, ptr %dma_bytes, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %land.lhs.true.if.end16_crit_edge, %if.end10.if.end16_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp17.not = icmp eq i32 %call7, 0
  br i1 %cmp17.not, label %if.end16.cleanup36_crit_edge, label %if.then18

if.end16.cleanup36_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup36

if.then18:                                        ; preds = %if.end16
  %memblk = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 7
  %60 = ptrtoint ptr %memblk to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %memblk, align 4
  %cmp19.not = icmp eq ptr %61, null
  br i1 %cmp19.not, label %if.then18.if.end23_crit_edge, label %if.then20

if.then18.if.end23_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then20:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = tail call i32 @snd_emu10k1_free_pages(ptr noundef %1, ptr noundef nonnull %61) #7
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.then18.if.end23_crit_edge
  %call24 = tail call ptr @snd_emu10k1_alloc_pages(ptr noundef %1, ptr noundef %substream) #7
  %62 = ptrtoint ptr %memblk to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call24, ptr %memblk, align 4
  %start_addr = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 8
  %63 = ptrtoint ptr %start_addr to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %start_addr, align 4
  %tobool27.not = icmp eq ptr %call24, null
  br i1 %tobool27.not, label %if.end23.cleanup36_crit_edge, label %if.end29

if.end23.cleanup36_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup36

if.end29:                                         ; preds = %if.end23
  %mapped_page = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %call24, i32 0, i32 4
  %64 = ptrtoint ptr %mapped_page to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mapped_page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp31 = icmp slt i32 %65, 0
  br i1 %cmp31, label %if.end29.cleanup36_crit_edge, label %if.end33

if.end29.cleanup36_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup36

if.end33:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl i32 %65, 12
  %66 = ptrtoint ptr %start_addr to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %shl, ptr %start_addr, align 4
  br label %cleanup36

cleanup36:                                        ; preds = %if.end33, %if.end29.cleanup36_crit_edge, %if.end23.cleanup36_crit_edge, %if.end16.cleanup36_crit_edge, %if.end.cleanup36_crit_edge, %for.body74.i.cleanup36_crit_edge, %for.cond72.preheader.i.cleanup36_crit_edge, %for.end31.i.cleanup36_crit_edge
  %retval.1 = phi i32 [ %call7, %if.end.cleanup36_crit_edge ], [ -12, %if.end29.cleanup36_crit_edge ], [ -12, %if.end23.cleanup36_crit_edge ], [ 0, %if.end33 ], [ 0, %if.end16.cleanup36_crit_edge ], [ %call69.i, %for.cond72.preheader.i.cleanup36_crit_edge ], [ %call36.i, %for.end31.i.cleanup36_crit_edge ], [ %call69.i, %for.body74.i.cleanup36_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_playback_hw_free(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %extra = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %extra, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %call = tail call i32 @snd_emu10k1_voice_free(ptr noundef %9, ptr noundef nonnull %7) #7
  %10 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %extra, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %voices = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3
  %arrayidx = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %if.end8.if.end17_crit_edge, label %if.then10

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 4
  %call14 = tail call i32 @snd_emu10k1_voice_free(ptr noundef %14, ptr noundef nonnull %12) #7
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then10, %if.end8.if.end17_crit_edge
  %16 = ptrtoint ptr %voices to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %voices, align 4
  %tobool20.not = icmp eq ptr %17, null
  br i1 %tobool20.not, label %if.end17.if.end28_crit_edge, label %if.then21

if.end17.if.end28_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %5, align 4
  %call25 = tail call i32 @snd_emu10k1_voice_free(ptr noundef %19, ptr noundef nonnull %17) #7
  %20 = ptrtoint ptr %voices to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %voices, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then21, %if.end17.if.end28_crit_edge
  %memblk = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 7
  %21 = ptrtoint ptr %memblk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %memblk, align 4
  %tobool29.not = icmp eq ptr %22, null
  br i1 %tobool29.not, label %if.end28.if.end34_crit_edge, label %if.then30

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %call32 = tail call i32 @snd_emu10k1_free_pages(ptr noundef %1, ptr noundef nonnull %22) #7
  %23 = ptrtoint ptr %memblk to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %memblk, align 4
  %start_addr = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 8
  %24 = ptrtoint ptr %start_addr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %start_addr, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.end28.if.end34_crit_edge
  %call35 = tail call i32 @snd_pcm_lib_free_pages(ptr noundef %substream) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_playback_prepare(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %start_addr3 = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %start_addr3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %start_addr3, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %8 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %10 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %11, %9
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %12 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp = icmp eq i32 %13, 2
  %shr = zext i1 %cmp to i32
  %start_addr.0 = lshr i32 %7, %shr
  %end_addr.0.v = select i1 %cmp, i32 4, i32 3
  %end_addr.0 = lshr i32 %mul.i.i, %end_addr.0.v
  %add = add i32 %end_addr.0, %start_addr.0
  %extra = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 4
  %14 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %extra, align 4
  tail call fastcc void @snd_emu10k1_pcm_init_voice(ptr noundef %1, i32 noundef 1, i32 noundef 1, ptr noundef %15, i32 noundef %start_addr.0, i32 noundef %add, ptr noundef null)
  %16 = ptrtoint ptr %start_addr3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %start_addr3, align 4
  %18 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %runtime1, align 4
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %19, i32 0, i32 18
  %20 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %buffer_size.i, align 4
  %frame_bits.i.i44 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %19, i32 0, i32 21
  %22 = ptrtoint ptr %frame_bits.i.i44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %frame_bits.i.i44, align 8
  %mul.i.i45 = mul i32 %23, %21
  %div1.i.i46 = lshr i32 %mul.i.i45, 3
  %add8 = add i32 %div1.i.i46, %17
  %voices = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3
  %24 = ptrtoint ptr %voices to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %voices, align 4
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %26 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %number, align 4
  %arrayidx9 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 53, i32 %27
  tail call fastcc void @snd_emu10k1_pcm_init_voice(ptr noundef %1, i32 noundef 1, i32 noundef 0, ptr noundef %25, i32 noundef %17, i32 noundef %add8, ptr noundef %arrayidx9)
  %arrayidx11 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx11, align 4
  %tobool.not = icmp eq ptr %29, null
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %if.then12

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %number, align 4
  %arrayidx17 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 53, i32 %31
  tail call fastcc void @snd_emu10k1_pcm_init_voice(ptr noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %29, i32 noundef %17, i32 noundef %add8, ptr noundef %arrayidx17)
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %entry.if.end18_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_playback_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %reg_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 41
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #7
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 5, label %entry.sw.bb15_crit_edge
    i32 3, label %entry.sw.bb15_crit_edge57
    i32 0, label %entry.sw.bb15_crit_edge58
    i32 4, label %if.then
    i32 6, label %entry.if.end_crit_edge
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.sw.bb15_crit_edge58:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb15

entry.sw.bb15_crit_edge57:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb15

entry.sw.bb15_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb15

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %extra = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 4
  %7 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %extra, align 4
  tail call fastcc void @snd_emu10k1_playback_invalidate_cache(ptr noundef %1, i32 noundef 1, ptr noundef %8)
  %voices = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %voices to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %voices, align 4
  tail call fastcc void @snd_emu10k1_playback_invalidate_cache(ptr noundef %1, i32 noundef 0, ptr noundef %10)
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %status.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 37
  %11 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %status.i, align 4
  %hw_ptr.i = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %hw_ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hw_ptr.i, align 4
  %hw_ptr_interrupt.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 6
  %15 = ptrtoint ptr %hw_ptr_interrupt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hw_ptr_interrupt.i, align 8
  %sub.i = sub i32 %14, %16
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %17 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %period_size.i, align 4
  %rem.i = urem i32 %sub.i, %18
  %extra.i = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 4
  %19 = ptrtoint ptr %extra.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %extra.i, align 4
  %number.i = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %number.i, align 4
  %call.i = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %1, i32 noundef 8, i32 noundef %22) #7
  %and.i = and i32 %call.i, -16777216
  %ccca_start_addr.i = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 9
  %23 = ptrtoint ptr %ccca_start_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ccca_start_addr.i, align 4
  %add.i = add i32 %24, %rem.i
  %or.i = or i32 %add.i, %and.i
  %25 = ptrtoint ptr %extra.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %extra.i, align 4
  %number2.i = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %number2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %number2.i, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 8, i32 noundef %28, i32 noundef %or.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb, %entry.if.end_crit_edge
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %29 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %number, align 4
  %arrayidx4 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 53, i32 %30
  %voices5 = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3
  %31 = ptrtoint ptr %voices5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %voices5, align 4
  tail call fastcc void @snd_emu10k1_playback_prepare_voice(ptr noundef %1, ptr noundef %32, i32 noundef 1, i32 noundef 0, ptr noundef %arrayidx4)
  %arrayidx8 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx8, align 4
  tail call fastcc void @snd_emu10k1_playback_prepare_voice(ptr noundef %1, ptr noundef %34, i32 noundef 0, i32 noundef 0, ptr noundef %arrayidx4)
  %extra9 = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 4
  %35 = ptrtoint ptr %extra9 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %extra9, align 4
  %cmp.i = icmp eq ptr %36, null
  br i1 %cmp.i, label %if.end.snd_emu10k1_playback_prepare_voice.exit_crit_edge, label %if.end.i

if.end.snd_emu10k1_playback_prepare_voice.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_emu10k1_playback_prepare_voice.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %number.i56 = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %number.i56 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %number.i56, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 25, i32 noundef %38, i32 noundef 0) #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 3, i32 noundef %38, i32 noundef 65535) #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 2, i32 noundef %38, i32 noundef 65535) #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 18, i32 noundef %38, i32 noundef 32639) #7
  tail call void @snd_emu10k1_voice_clear_loop_stop(ptr noundef %1, i32 noundef %38) #7
  br label %snd_emu10k1_playback_prepare_voice.exit

snd_emu10k1_playback_prepare_voice.exit:          ; preds = %if.end.i, %if.end.snd_emu10k1_playback_prepare_voice.exit_crit_edge
  %39 = ptrtoint ptr %voices5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %voices5, align 4
  tail call fastcc void @snd_emu10k1_playback_trigger_voice(ptr noundef %1, ptr noundef %40, i32 noundef 1, i32 noundef 0)
  %41 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx8, align 4
  tail call fastcc void @snd_emu10k1_playback_trigger_voice(ptr noundef %1, ptr noundef %42, i32 noundef 0, i32 noundef 0)
  %43 = ptrtoint ptr %extra9 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %extra9, align 4
  tail call fastcc void @snd_emu10k1_playback_trigger_voice(ptr noundef %1, ptr noundef %44, i32 noundef 1, i32 noundef 1)
  %running = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 5
  %45 = ptrtoint ptr %running to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 1, ptr %running, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry.sw.bb15_crit_edge, %entry.sw.bb15_crit_edge57, %entry.sw.bb15_crit_edge58
  %running16 = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 5
  %46 = ptrtoint ptr %running16 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %running16, align 4
  %voices17 = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3
  %47 = ptrtoint ptr %voices17 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %voices17, align 4
  tail call fastcc void @snd_emu10k1_playback_stop_voice(ptr noundef %1, ptr noundef %48)
  %arrayidx20 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 1
  %49 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx20, align 4
  tail call fastcc void @snd_emu10k1_playback_stop_voice(ptr noundef %1, ptr noundef %50)
  %extra21 = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 4
  %51 = ptrtoint ptr %extra21 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %extra21, align 4
  tail call fastcc void @snd_emu10k1_playback_stop_voice(ptr noundef %1, ptr noundef %52)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %snd_emu10k1_playback_prepare_voice.exit, %entry.sw.epilog_crit_edge
  %result.0 = phi i32 [ 0, %sw.bb15 ], [ 0, %snd_emu10k1_playback_prepare_voice.exit ], [ -22, %entry.sw.epilog_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #7
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_playback_pointer(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data2, align 8
  %running = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %running to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %voices = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %voices to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %voices, align 4
  %number = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %number, align 4
  %call = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %7, i32 noundef 8, i32 noundef %11) #7
  %and = and i32 %call, 16777215
  %ccca_start_addr = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %3, i32 0, i32 9
  %12 = ptrtoint ptr %ccca_start_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ccca_start_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %13)
  %cmp = icmp ult i32 %and, %13
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 18
  %14 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buffer_size, align 4
  %sub = sub i32 %and, %13
  %add = add i32 %sub, %15
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub6 = sub i32 %and, %13
  %buffer_size7 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 18
  %16 = ptrtoint ptr %buffer_size7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buffer_size7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub6, i32 %17)
  %cmp8.not = icmp ult i32 %sub6, %17
  %sub11 = select i1 %cmp8.not, i32 0, i32 %17
  %spec.select = sub i32 %sub6, %sub11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %add, %if.then3 ], [ %spec.select, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_emu10k1_pcm_free_substream(ptr nocapture noundef readonly %runtime) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 44
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_rule_noresample(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_emu10k1_pcm_mixer_notify(ptr nocapture noundef readonly %emu, i32 noundef %idx, i32 noundef %activate) unnamed_addr #0 align 64 {
entry:
  %id.i24 = alloca %struct.snd_ctl_elem_id, align 4
  %id.i10 = alloca %struct.snd_ctl_elem_id, align 4
  %id.i = alloca %struct.snd_ctl_elem_id, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctl_send_routing = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 55
  %0 = ptrtoint ptr %ctl_send_routing to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctl_send_routing, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %id.i) #7
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.snd_emu10k1_pcm_mixer_notify1.exit_crit_edge, label %if.end.i

entry.snd_emu10k1_pcm_mixer_notify1.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_emu10k1_pcm_mixer_notify1.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %activate)
  %tobool1.not.i = icmp eq i32 %activate, 0
  %access5.i = getelementptr %struct.snd_kcontrol, ptr %1, i32 0, i32 10, i32 %idx, i32 1
  %2 = ptrtoint ptr %access5.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %access5.i, align 4
  %and.i = and i32 %3, -257
  %masksel.i = select i1 %tobool1.not.i, i32 256, i32 0
  %or.sink.i = or i32 %and.i, %masksel.i
  store i32 %or.sink.i, ptr %access5.i, align 4
  %card.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 32
  %4 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card.i, align 4
  %id.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %1, i32 0, i32 1
  %6 = call ptr @memcpy(ptr %id.i, ptr %id.i.i, i32 64)
  %index.i.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i, i32 0, i32 5
  %7 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i.i, align 4
  %add.i.i = add i32 %8, %idx
  store i32 %add.i.i, ptr %index.i.i, align 4
  %9 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id.i, align 4
  %add1.i.i = add i32 %10, %idx
  store i32 %add1.i.i, ptr %id.i, align 4
  call void @snd_ctl_notify(ptr noundef %5, i32 noundef 3, ptr noundef nonnull %id.i) #7
  br label %snd_emu10k1_pcm_mixer_notify1.exit

snd_emu10k1_pcm_mixer_notify1.exit:               ; preds = %if.end.i, %entry.snd_emu10k1_pcm_mixer_notify1.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %id.i) #7
  %ctl_send_volume = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 56
  %11 = ptrtoint ptr %ctl_send_volume to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctl_send_volume, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %id.i10) #7
  %tobool.not.i11 = icmp eq ptr %12, null
  br i1 %tobool.not.i11, label %snd_emu10k1_pcm_mixer_notify1.exit.snd_emu10k1_pcm_mixer_notify1.exit23_crit_edge, label %if.end.i22

snd_emu10k1_pcm_mixer_notify1.exit.snd_emu10k1_pcm_mixer_notify1.exit23_crit_edge: ; preds = %snd_emu10k1_pcm_mixer_notify1.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_emu10k1_pcm_mixer_notify1.exit23

if.end.i22:                                       ; preds = %snd_emu10k1_pcm_mixer_notify1.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %activate)
  %tobool1.not.i12 = icmp eq i32 %activate, 0
  %access5.i13 = getelementptr %struct.snd_kcontrol, ptr %12, i32 0, i32 10, i32 %idx, i32 1
  %13 = ptrtoint ptr %access5.i13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %access5.i13, align 4
  %and.i14 = and i32 %14, -257
  %masksel.i15 = select i1 %tobool1.not.i12, i32 256, i32 0
  %or.sink.i16 = or i32 %and.i14, %masksel.i15
  store i32 %or.sink.i16, ptr %access5.i13, align 4
  %card.i17 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 32
  %15 = ptrtoint ptr %card.i17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card.i17, align 4
  %id.i.i18 = getelementptr inbounds %struct.snd_kcontrol, ptr %12, i32 0, i32 1
  %17 = call ptr @memcpy(ptr %id.i10, ptr %id.i.i18, i32 64)
  %index.i.i19 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i10, i32 0, i32 5
  %18 = ptrtoint ptr %index.i.i19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i.i19, align 4
  %add.i.i20 = add i32 %19, %idx
  store i32 %add.i.i20, ptr %index.i.i19, align 4
  %20 = ptrtoint ptr %id.i10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id.i10, align 4
  %add1.i.i21 = add i32 %21, %idx
  store i32 %add1.i.i21, ptr %id.i10, align 4
  call void @snd_ctl_notify(ptr noundef %16, i32 noundef 3, ptr noundef nonnull %id.i10) #7
  br label %snd_emu10k1_pcm_mixer_notify1.exit23

snd_emu10k1_pcm_mixer_notify1.exit23:             ; preds = %if.end.i22, %snd_emu10k1_pcm_mixer_notify1.exit.snd_emu10k1_pcm_mixer_notify1.exit23_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %id.i10) #7
  %ctl_attn = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 57
  %22 = ptrtoint ptr %ctl_attn to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctl_attn, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %id.i24) #7
  %tobool.not.i25 = icmp eq ptr %23, null
  br i1 %tobool.not.i25, label %snd_emu10k1_pcm_mixer_notify1.exit23.snd_emu10k1_pcm_mixer_notify1.exit37_crit_edge, label %if.end.i36

snd_emu10k1_pcm_mixer_notify1.exit23.snd_emu10k1_pcm_mixer_notify1.exit37_crit_edge: ; preds = %snd_emu10k1_pcm_mixer_notify1.exit23
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_emu10k1_pcm_mixer_notify1.exit37

if.end.i36:                                       ; preds = %snd_emu10k1_pcm_mixer_notify1.exit23
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %activate)
  %tobool1.not.i26 = icmp eq i32 %activate, 0
  %access5.i27 = getelementptr %struct.snd_kcontrol, ptr %23, i32 0, i32 10, i32 %idx, i32 1
  %24 = ptrtoint ptr %access5.i27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %access5.i27, align 4
  %and.i28 = and i32 %25, -257
  %masksel.i29 = select i1 %tobool1.not.i26, i32 256, i32 0
  %or.sink.i30 = or i32 %and.i28, %masksel.i29
  store i32 %or.sink.i30, ptr %access5.i27, align 4
  %card.i31 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 32
  %26 = ptrtoint ptr %card.i31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card.i31, align 4
  %id.i.i32 = getelementptr inbounds %struct.snd_kcontrol, ptr %23, i32 0, i32 1
  %28 = call ptr @memcpy(ptr %id.i24, ptr %id.i.i32, i32 64)
  %index.i.i33 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i24, i32 0, i32 5
  %29 = ptrtoint ptr %index.i.i33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %index.i.i33, align 4
  %add.i.i34 = add i32 %30, %idx
  store i32 %add.i.i34, ptr %index.i.i33, align 4
  %31 = ptrtoint ptr %id.i24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id.i24, align 4
  %add1.i.i35 = add i32 %32, %idx
  store i32 %add1.i.i35, ptr %id.i24, align 4
  call void @snd_ctl_notify(ptr noundef %27, i32 noundef 3, ptr noundef nonnull %id.i24) #7
  br label %snd_emu10k1_pcm_mixer_notify1.exit37

snd_emu10k1_pcm_mixer_notify1.exit37:             ; preds = %if.end.i36, %snd_emu10k1_pcm_mixer_notify1.exit23.snd_emu10k1_pcm_mixer_notify1.exit37_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %id.i24) #7
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_lib_malloc_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_free_pages(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_emu10k1_alloc_pages(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_voice_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_voice_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_emu10k1_pcm_interrupt(ptr nocapture noundef readnone %emu, ptr nocapture noundef readonly %voice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %epcm1 = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %voice, i32 0, i32 4
  %0 = ptrtoint ptr %epcm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %epcm1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %substream = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substream, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_lib_free_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_emu10k1_pcm_init_voice(ptr noundef %emu, i32 noundef %master, i32 noundef %extra, ptr nocapture noundef readonly %evoice, i32 noundef %start_addr, i32 noundef %end_addr, ptr nocapture noundef readonly %mix) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %epcm = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %evoice, i32 0, i32 4
  %0 = ptrtoint ptr %epcm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %epcm, align 4
  %substream1 = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substream1, align 4
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime2, align 4
  %number = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %evoice, i32 0, i32 1
  %6 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 15
  %8 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp eq i32 %9, 2
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 12
  %10 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %format, align 4
  %call = tail call i32 @snd_pcm_format_width(i32 noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call)
  %cmp3 = icmp eq i32 %call, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extra)
  %tobool.not = icmp eq i32 %extra, 0
  %12 = select i1 %tobool.not, i1 %cmp, i1 false
  %shr6 = zext i1 %12 to i32
  %end_addr.addr.0 = lshr i32 %end_addr, %shr6
  %start_addr.addr.0 = lshr i32 %start_addr, %shr6
  %shr10 = zext i1 %cmp3 to i32
  %end_addr.addr.1 = lshr i32 %end_addr.addr.0, %shr10
  %start_addr.addr.1 = lshr i32 %start_addr.addr.0, %shr10
  %reg_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 41
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #7
  br i1 %tobool.not, label %if.else, label %entry.if.end36_crit_edge

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %master)
  %tobool27.not = icmp eq i32 %master, 0
  %cond = select i1 %tobool27.not, i32 2, i32 1
  %cond28 = select i1 %cmp, i32 %cond, i32 0
  %arrayidx31 = getelementptr [3 x [8 x i8]], ptr %mix, i32 0, i32 %cond28
  %13 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %13)
  %send_routing.sroa.0.0.copyload = load i8, ptr %arrayidx31, align 4
  %send_routing.sroa.8.0.arrayidx32.sroa_idx = getelementptr inbounds i8, ptr %arrayidx31, i32 1
  %14 = ptrtoint ptr %send_routing.sroa.8.0.arrayidx32.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %14)
  %send_routing.sroa.8.0.copyload = load i8, ptr %send_routing.sroa.8.0.arrayidx32.sroa_idx, align 1
  %send_routing.sroa.12.0.arrayidx32.sroa_idx = getelementptr inbounds i8, ptr %arrayidx31, i32 2
  %15 = ptrtoint ptr %send_routing.sroa.12.0.arrayidx32.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %15)
  %send_routing.sroa.12.0.copyload = load i8, ptr %send_routing.sroa.12.0.arrayidx32.sroa_idx, align 2
  %send_routing.sroa.16.0.arrayidx32.sroa_idx = getelementptr inbounds i8, ptr %arrayidx31, i32 3
  %16 = ptrtoint ptr %send_routing.sroa.16.0.arrayidx32.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %16)
  %send_routing.sroa.16.0.copyload = load i8, ptr %send_routing.sroa.16.0.arrayidx32.sroa_idx, align 1
  %send_routing.sroa.20.0.arrayidx32.sroa_idx = getelementptr inbounds i8, ptr %arrayidx31, i32 4
  %17 = ptrtoint ptr %send_routing.sroa.20.0.arrayidx32.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %17)
  %send_routing.sroa.20.0.copyload = load i8, ptr %send_routing.sroa.20.0.arrayidx32.sroa_idx, align 4
  %send_routing.sroa.22.0.arrayidx32.sroa_idx = getelementptr inbounds i8, ptr %arrayidx31, i32 5
  %18 = ptrtoint ptr %send_routing.sroa.22.0.arrayidx32.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %18)
  %send_routing.sroa.22.0.copyload = load i8, ptr %send_routing.sroa.22.0.arrayidx32.sroa_idx, align 1
  %send_routing.sroa.24.0.arrayidx32.sroa_idx = getelementptr inbounds i8, ptr %arrayidx31, i32 6
  %19 = ptrtoint ptr %send_routing.sroa.24.0.arrayidx32.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %19)
  %send_routing.sroa.24.0.copyload = load i8, ptr %send_routing.sroa.24.0.arrayidx32.sroa_idx, align 2
  %send_routing.sroa.26.0.arrayidx32.sroa_idx = getelementptr inbounds i8, ptr %arrayidx31, i32 7
  %20 = ptrtoint ptr %send_routing.sroa.26.0.arrayidx32.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %20)
  %send_routing.sroa.26.0.copyload = load i8, ptr %send_routing.sroa.26.0.arrayidx32.sroa_idx, align 1
  %arrayidx34 = getelementptr %struct.snd_emu10k1_pcm_mixer, ptr %mix, i32 0, i32 1, i32 %cond28
  %21 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %21)
  %send_amount.sroa.0.0.copyload = load i8, ptr %arrayidx34, align 4
  %send_amount.sroa.6.0.arrayidx35.sroa_idx = getelementptr inbounds i8, ptr %arrayidx34, i32 1
  %22 = ptrtoint ptr %send_amount.sroa.6.0.arrayidx35.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %22)
  %send_amount.sroa.6.0.copyload = load i8, ptr %send_amount.sroa.6.0.arrayidx35.sroa_idx, align 1
  %send_amount.sroa.8.0.arrayidx35.sroa_idx = getelementptr inbounds i8, ptr %arrayidx34, i32 2
  %23 = ptrtoint ptr %send_amount.sroa.8.0.arrayidx35.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %23)
  %send_amount.sroa.8.0.copyload = load i8, ptr %send_amount.sroa.8.0.arrayidx35.sroa_idx, align 2
  %send_amount.sroa.10.0.arrayidx35.sroa_idx = getelementptr inbounds i8, ptr %arrayidx34, i32 3
  %24 = ptrtoint ptr %send_amount.sroa.10.0.arrayidx35.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %24)
  %send_amount.sroa.10.0.copyload = load i8, ptr %send_amount.sroa.10.0.arrayidx35.sroa_idx, align 1
  %send_amount.sroa.12.0.arrayidx35.sroa_idx = getelementptr inbounds i8, ptr %arrayidx34, i32 4
  %25 = ptrtoint ptr %send_amount.sroa.12.0.arrayidx35.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %25)
  %send_amount.sroa.12.0.copyload = load i8, ptr %send_amount.sroa.12.0.arrayidx35.sroa_idx, align 4
  %send_amount.sroa.14.0.arrayidx35.sroa_idx = getelementptr inbounds i8, ptr %arrayidx34, i32 5
  %26 = ptrtoint ptr %send_amount.sroa.14.0.arrayidx35.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %26)
  %send_amount.sroa.14.0.copyload = load i8, ptr %send_amount.sroa.14.0.arrayidx35.sroa_idx, align 1
  %send_amount.sroa.16.0.arrayidx35.sroa_idx = getelementptr inbounds i8, ptr %arrayidx34, i32 6
  %27 = ptrtoint ptr %send_amount.sroa.16.0.arrayidx35.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %27)
  %send_amount.sroa.16.0.copyload = load i8, ptr %send_amount.sroa.16.0.arrayidx35.sroa_idx, align 2
  %send_amount.sroa.18.0.arrayidx35.sroa_idx = getelementptr inbounds i8, ptr %arrayidx34, i32 7
  %28 = ptrtoint ptr %send_amount.sroa.18.0.arrayidx35.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %28)
  %send_amount.sroa.18.0.copyload = load i8, ptr %send_amount.sroa.18.0.arrayidx35.sroa_idx, align 1
  %phi.cast = zext i8 %send_routing.sroa.0.0.copyload to i32
  %phi.cast269 = zext i8 %send_routing.sroa.8.0.copyload to i32
  %phi.cast270 = zext i8 %send_routing.sroa.12.0.copyload to i32
  %phi.cast271 = zext i8 %send_routing.sroa.16.0.copyload to i32
  %phi.cast272 = zext i8 %send_amount.sroa.0.0.copyload to i32
  %phi.bo = shl nuw nsw i32 %phi.cast272, 8
  %phi.cast273 = zext i8 %send_amount.sroa.6.0.copyload to i32
  %phi.cast274 = zext i8 %send_amount.sroa.10.0.copyload to i32
  %phi.bo275 = shl nuw i32 %phi.cast274, 24
  %phi.cast276 = zext i8 %send_amount.sroa.8.0.copyload to i32
  %phi.bo277 = shl nuw i32 %phi.cast276, 24
  %phi.cast278 = zext i8 %send_routing.sroa.20.0.copyload to i32
  %phi.cast279 = zext i8 %send_routing.sroa.22.0.copyload to i32
  %phi.bo280 = shl nuw nsw i32 %phi.cast279, 8
  %phi.cast281 = zext i8 %send_routing.sroa.24.0.copyload to i32
  %phi.bo282 = shl nuw nsw i32 %phi.cast281, 16
  %phi.cast283 = zext i8 %send_routing.sroa.26.0.copyload to i32
  %phi.bo284 = shl nuw i32 %phi.cast283, 24
  %phi.cast285 = zext i8 %send_amount.sroa.12.0.copyload to i32
  %phi.bo286 = shl nuw i32 %phi.cast285, 24
  %phi.cast287 = zext i8 %send_amount.sroa.14.0.copyload to i32
  %phi.bo288 = shl nuw nsw i32 %phi.cast287, 16
  %phi.cast289 = zext i8 %send_amount.sroa.16.0.copyload to i32
  %phi.bo290 = shl nuw nsw i32 %phi.cast289, 8
  %phi.cast291 = zext i8 %send_amount.sroa.18.0.copyload to i32
  br label %if.end36

if.end36:                                         ; preds = %if.else, %entry.if.end36_crit_edge
  %send_amount.sroa.0.0 = phi i32 [ %phi.bo, %if.else ], [ 0, %entry.if.end36_crit_edge ]
  %send_amount.sroa.6.0 = phi i32 [ %phi.cast273, %if.else ], [ 0, %entry.if.end36_crit_edge ]
  %send_amount.sroa.8.0 = phi i32 [ %phi.bo277, %if.else ], [ 0, %entry.if.end36_crit_edge ]
  %send_amount.sroa.10.0 = phi i32 [ %phi.bo275, %if.else ], [ 0, %entry.if.end36_crit_edge ]
  %send_amount.sroa.12.0 = phi i32 [ %phi.bo286, %if.else ], [ 0, %entry.if.end36_crit_edge ]
  %send_amount.sroa.14.0 = phi i32 [ %phi.bo288, %if.else ], [ 0, %entry.if.end36_crit_edge ]
  %send_amount.sroa.16.0 = phi i32 [ %phi.bo290, %if.else ], [ 0, %entry.if.end36_crit_edge ]
  %send_amount.sroa.18.0 = phi i32 [ %phi.cast291, %if.else ], [ 0, %entry.if.end36_crit_edge ]
  %send_routing.sroa.0.0 = phi i32 [ %phi.cast, %if.else ], [ 0, %entry.if.end36_crit_edge ]
  %send_routing.sroa.8.0 = phi i32 [ %phi.cast269, %if.else ], [ 1, %entry.if.end36_crit_edge ]
  %send_routing.sroa.12.0 = phi i32 [ %phi.cast270, %if.else ], [ 2, %entry.if.end36_crit_edge ]
  %send_routing.sroa.16.0 = phi i32 [ %phi.cast271, %if.else ], [ 3, %entry.if.end36_crit_edge ]
  %send_routing.sroa.20.0 = phi i32 [ %phi.cast278, %if.else ], [ 0, %entry.if.end36_crit_edge ]
  %send_routing.sroa.22.0 = phi i32 [ %phi.bo280, %if.else ], [ 0, %entry.if.end36_crit_edge ]
  %send_routing.sroa.24.0 = phi i32 [ %phi.bo282, %if.else ], [ 0, %entry.if.end36_crit_edge ]
  %send_routing.sroa.26.0 = phi i32 [ %phi.bo284, %if.else ], [ 0, %entry.if.end36_crit_edge ]
  %cond.i = select i1 %cmp, i32 24, i32 26
  %cond3.i = select i1 %cmp, i32 48, i32 52
  %retval.0.i = select i1 %cmp3, i32 %cond.i, i32 %cond3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %master)
  %tobool38.not = icmp eq i32 %master, 0
  br i1 %tobool38.not, label %if.end36.if.end54_crit_edge, label %if.then39

if.end36.if.end54_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then39:                                        ; preds = %if.end36
  %add = add i32 %start_addr.addr.1, %retval.0.i
  %29 = ptrtoint ptr %epcm to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %epcm, align 4
  %ccca_start_addr = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %ccca_start_addr to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add, ptr %ccca_start_addr, align 4
  br i1 %tobool.not, label %if.end46, label %if.end46.thread

if.end46.thread:                                  ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  %delay_pcm_irq = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 13
  %32 = ptrtoint ptr %delay_pcm_irq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %delay_pcm_irq, align 4
  %add44 = add i32 %end_addr.addr.1, %retval.0.i
  %add45 = add i32 %add44, %33
  br label %if.else52

if.end46:                                         ; preds = %if.then39
  br i1 %cmp, label %if.then50, label %if.end46.if.else52_crit_edge

if.end46.if.else52_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else52

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 0, i32 noundef %7, i32 noundef 32768) #7
  %add51 = add i32 %7, 1
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 0, i32 noundef %add51, i32 noundef 32768) #7
  br label %if.end54

if.else52:                                        ; preds = %if.end46.if.else52_crit_edge, %if.end46.thread
  %start_addr.addr.2316 = phi i32 [ %add, %if.end46.thread ], [ %start_addr.addr.1, %if.end46.if.else52_crit_edge ]
  %end_addr.addr.2315 = phi i32 [ %add45, %if.end46.thread ], [ %end_addr.addr.1, %if.end46.if.else52_crit_edge ]
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 0, i32 noundef %7, i32 noundef 0) #7
  br label %if.end54

if.end54:                                         ; preds = %if.else52, %if.then50, %if.end36.if.end54_crit_edge
  %end_addr.addr.3 = phi i32 [ %end_addr.addr.2315, %if.else52 ], [ %end_addr.addr.1, %if.then50 ], [ %end_addr.addr.1, %if.end36.if.end54_crit_edge ]
  %start_addr.addr.3 = phi i32 [ %start_addr.addr.2316, %if.else52 ], [ %start_addr.addr.1, %if.then50 ], [ %start_addr.addr.1, %if.end36.if.end54_crit_edge ]
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 4
  %34 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool55.not = icmp eq i32 %35, 0
  br i1 %tobool55.not, label %if.else97, label %if.then56

if.then56:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl nuw nsw i32 %send_routing.sroa.8.0, 8
  %or = or i32 %shl, %send_routing.sroa.0.0
  %shl63 = shl nuw nsw i32 %send_routing.sroa.12.0, 16
  %or64 = or i32 %or, %shl63
  %shl67 = shl nuw i32 %send_routing.sroa.16.0, 24
  %or68 = or i32 %or64, %shl67
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 126, i32 noundef %7, i32 noundef %or68) #7
  %or74 = or i32 %send_routing.sroa.22.0, %send_routing.sroa.20.0
  %or78 = or i32 %or74, %send_routing.sroa.24.0
  %or82 = or i32 %or78, %send_routing.sroa.26.0
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 124, i32 noundef %7, i32 noundef %or82) #7
  %or89 = or i32 %send_amount.sroa.14.0, %send_amount.sroa.12.0
  %or93 = or i32 %or89, %send_amount.sroa.16.0
  %or96 = or i32 %or93, %send_amount.sroa.18.0
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 125, i32 noundef %7, i32 noundef %or96) #7
  br label %if.end113

if.else97:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %36 = shl i32 %send_routing.sroa.16.0, 28
  %37 = shl nuw i32 %send_routing.sroa.12.0, 24
  %38 = shl nuw nsw i32 %send_routing.sroa.8.0, 20
  %39 = shl nuw nsw i32 %send_routing.sroa.0.0, 16
  %40 = or i32 %38, %39
  %41 = or i32 %40, %37
  %shl112 = or i32 %41, %36
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 11, i32 noundef %7, i32 noundef %shl112) #7
  br label %if.end113

if.end113:                                        ; preds = %if.else97, %if.then56
  %or119 = or i32 %send_amount.sroa.6.0, %send_amount.sroa.0.0
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 1, i32 noundef %7, i32 noundef %or119) #7
  %or123 = or i32 %end_addr.addr.3, %send_amount.sroa.10.0
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 7, i32 noundef %7, i32 noundef %or123) #7
  br i1 %tobool.not, label %if.end113.cond.end128_crit_edge, label %cond.true125

if.end113.cond.end128_crit_edge:                  ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end128

cond.true125:                                     ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  %delay_pcm_irq126 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 13
  %42 = ptrtoint ptr %delay_pcm_irq126 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %delay_pcm_irq126, align 4
  br label %cond.end128

cond.end128:                                      ; preds = %cond.true125, %if.end113.cond.end128_crit_edge
  %cond129 = phi i32 [ %43, %cond.true125 ], [ 0, %if.end113.cond.end128_crit_edge ]
  %add130 = add i32 %cond129, %start_addr.addr.3
  %or134 = or i32 %add130, %send_amount.sroa.8.0
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 6, i32 noundef %7, i32 noundef %or134) #7
  %card_capabilities = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 3
  %44 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %card_capabilities, align 4
  %emu_model = getelementptr inbounds %struct.snd_emu_chip_details, ptr %45, i32 0, i32 15
  %46 = ptrtoint ptr %emu_model to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %emu_model, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool135.not = icmp eq i8 %47, 0
  br i1 %tobool135.not, label %if.end139, label %if.end139.thread

if.end139:                                        ; preds = %cond.end128
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 14
  %48 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rate, align 4
  %shl.i = shl i32 %49, 8
  %div.i = udiv i32 %shl.i, 375
  %shr.i = lshr i32 %div.i, 1
  %and.i = and i32 %div.i, 1
  %add.i = add nuw nsw i32 %shr.i, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add.i)
  %cmp.i296 = icmp eq i32 %add.i, 16384
  br i1 %tobool.not, label %if.else147, label %if.then141

if.end139.thread:                                 ; preds = %cond.end128
  br i1 %tobool.not, label %if.end139.thread.emu10k1_select_interprom.exit311_crit_edge, label %if.end139.thread.if.end154_crit_edge

if.end139.thread.if.end154_crit_edge:             ; preds = %if.end139.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end154

if.end139.thread.emu10k1_select_interprom.exit311_crit_edge: ; preds = %if.end139.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %emu10k1_select_interprom.exit311

if.then141:                                       ; preds = %if.end139
  br i1 %cmp.i296, label %if.then141.if.end154_crit_edge, label %if.else.i

if.then141.if.end154_crit_edge:                   ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end154

if.else.i:                                        ; preds = %if.then141
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add.i)
  %cmp1.i = icmp ult i32 %add.i, 16384
  br i1 %cmp1.i, label %if.else.i.if.end154_crit_edge, label %if.else3.i

if.else.i.if.end154_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end154

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %add.i)
  %cmp4.i = icmp ugt i32 %add.i, 32767
  br i1 %cmp4.i, label %if.else3.i.if.end154_crit_edge, label %if.else6.i

if.else3.i.if.end154_crit_edge:                   ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end154

if.else6.i:                                       ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 29012, i32 %add.i)
  %cmp7.i = icmp ugt i32 %add.i, 29012
  br i1 %cmp7.i, label %if.else6.i.if.end154_crit_edge, label %if.else9.i

if.else6.i.if.end154_crit_edge:                   ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end154

if.else9.i:                                       ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 27553, i32 %add.i)
  %cmp10.i = icmp ugt i32 %add.i, 27553
  br i1 %cmp10.i, label %if.else9.i.if.end154_crit_edge, label %if.else12.i

if.else9.i.if.end154_crit_edge:                   ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end154

if.else12.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 23169, i32 %add.i)
  %cmp13.i = icmp ugt i32 %add.i, 23169
  br i1 %cmp13.i, label %if.else12.i.if.end154_crit_edge, label %if.else15.i

if.else12.i.if.end154_crit_edge:                  ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end154

if.else15.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 19483, i32 %add.i)
  %cmp16.i = icmp ugt i32 %add.i, 19483
  %..i = select i1 %cmp16.i, i32 100663296, i32 67108864
  br label %if.end154

if.else147:                                       ; preds = %if.end139
  br i1 %cmp.i296, label %if.else147.emu10k1_select_interprom.exit311_crit_edge, label %if.else.i298

if.else147.emu10k1_select_interprom.exit311_crit_edge: ; preds = %if.else147
  call void @__sanitizer_cov_trace_pc() #9
  br label %emu10k1_select_interprom.exit311

if.else.i298:                                     ; preds = %if.else147
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add.i)
  %cmp1.i297 = icmp ult i32 %add.i, 16384
  br i1 %cmp1.i297, label %if.else.i298.emu10k1_select_interprom.exit311_crit_edge, label %if.else3.i300

if.else.i298.emu10k1_select_interprom.exit311_crit_edge: ; preds = %if.else.i298
  call void @__sanitizer_cov_trace_pc() #9
  br label %emu10k1_select_interprom.exit311

if.else3.i300:                                    ; preds = %if.else.i298
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %add.i)
  %cmp4.i299 = icmp ugt i32 %add.i, 32767
  br i1 %cmp4.i299, label %if.else3.i300.emu10k1_select_interprom.exit311_crit_edge, label %if.else6.i302

if.else3.i300.emu10k1_select_interprom.exit311_crit_edge: ; preds = %if.else3.i300
  call void @__sanitizer_cov_trace_pc() #9
  br label %emu10k1_select_interprom.exit311

if.else6.i302:                                    ; preds = %if.else3.i300
  call void @__sanitizer_cov_trace_const_cmp4(i32 29012, i32 %add.i)
  %cmp7.i301 = icmp ugt i32 %add.i, 29012
  br i1 %cmp7.i301, label %if.else6.i302.emu10k1_select_interprom.exit311_crit_edge, label %if.else9.i304

if.else6.i302.emu10k1_select_interprom.exit311_crit_edge: ; preds = %if.else6.i302
  call void @__sanitizer_cov_trace_pc() #9
  br label %emu10k1_select_interprom.exit311

if.else9.i304:                                    ; preds = %if.else6.i302
  call void @__sanitizer_cov_trace_const_cmp4(i32 27553, i32 %add.i)
  %cmp10.i303 = icmp ugt i32 %add.i, 27553
  br i1 %cmp10.i303, label %if.else9.i304.emu10k1_select_interprom.exit311_crit_edge, label %if.else12.i306

if.else9.i304.emu10k1_select_interprom.exit311_crit_edge: ; preds = %if.else9.i304
  call void @__sanitizer_cov_trace_pc() #9
  br label %emu10k1_select_interprom.exit311

if.else12.i306:                                   ; preds = %if.else9.i304
  call void @__sanitizer_cov_trace_const_cmp4(i32 23169, i32 %add.i)
  %cmp13.i305 = icmp ugt i32 %add.i, 23169
  br i1 %cmp13.i305, label %if.else12.i306.emu10k1_select_interprom.exit311_crit_edge, label %if.else15.i309

if.else12.i306.emu10k1_select_interprom.exit311_crit_edge: ; preds = %if.else12.i306
  call void @__sanitizer_cov_trace_pc() #9
  br label %emu10k1_select_interprom.exit311

if.else15.i309:                                   ; preds = %if.else12.i306
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 19483, i32 %add.i)
  %cmp16.i307 = icmp ugt i32 %add.i, 19483
  %..i308 = select i1 %cmp16.i307, i32 100663296, i32 67108864
  br label %emu10k1_select_interprom.exit311

emu10k1_select_interprom.exit311:                 ; preds = %if.else15.i309, %if.else12.i306.emu10k1_select_interprom.exit311_crit_edge, %if.else9.i304.emu10k1_select_interprom.exit311_crit_edge, %if.else6.i302.emu10k1_select_interprom.exit311_crit_edge, %if.else3.i300.emu10k1_select_interprom.exit311_crit_edge, %if.else.i298.emu10k1_select_interprom.exit311_crit_edge, %if.else147.emu10k1_select_interprom.exit311_crit_edge, %if.end139.thread.emu10k1_select_interprom.exit311_crit_edge
  %retval.0.i310 = phi i32 [ 0, %if.else147.emu10k1_select_interprom.exit311_crit_edge ], [ 33554432, %if.else.i298.emu10k1_select_interprom.exit311_crit_edge ], [ 0, %if.else3.i300.emu10k1_select_interprom.exit311_crit_edge ], [ 201326592, %if.else6.i302.emu10k1_select_interprom.exit311_crit_edge ], [ 167772160, %if.else9.i304.emu10k1_select_interprom.exit311_crit_edge ], [ 134217728, %if.else12.i306.emu10k1_select_interprom.exit311_crit_edge ], [ %..i308, %if.else15.i309 ], [ 0, %if.end139.thread.emu10k1_select_interprom.exit311_crit_edge ]
  %add148325 = add i32 %start_addr.addr.3, %retval.0.i
  br label %if.end154

if.end154:                                        ; preds = %emu10k1_select_interprom.exit311, %if.else15.i, %if.else12.i.if.end154_crit_edge, %if.else9.i.if.end154_crit_edge, %if.else6.i.if.end154_crit_edge, %if.else3.i.if.end154_crit_edge, %if.else.i.if.end154_crit_edge, %if.then141.if.end154_crit_edge, %if.end139.thread.if.end154_crit_edge
  %add148325.sink = phi i32 [ %add148325, %emu10k1_select_interprom.exit311 ], [ %start_addr.addr.3, %if.end139.thread.if.end154_crit_edge ], [ %start_addr.addr.3, %if.then141.if.end154_crit_edge ], [ %start_addr.addr.3, %if.else.i.if.end154_crit_edge ], [ %start_addr.addr.3, %if.else3.i.if.end154_crit_edge ], [ %start_addr.addr.3, %if.else6.i.if.end154_crit_edge ], [ %start_addr.addr.3, %if.else9.i.if.end154_crit_edge ], [ %start_addr.addr.3, %if.else12.i.if.end154_crit_edge ], [ %start_addr.addr.3, %if.else15.i ]
  %retval.0.i310.sink = phi i32 [ %retval.0.i310, %emu10k1_select_interprom.exit311 ], [ 0, %if.end139.thread.if.end154_crit_edge ], [ 0, %if.then141.if.end154_crit_edge ], [ 33554432, %if.else.i.if.end154_crit_edge ], [ 0, %if.else3.i.if.end154_crit_edge ], [ 201326592, %if.else6.i.if.end154_crit_edge ], [ 167772160, %if.else9.i.if.end154_crit_edge ], [ 134217728, %if.else12.i.if.end154_crit_edge ], [ %..i, %if.else15.i ]
  %cond152 = select i1 %cmp3, i32 0, i32 16777216
  %or150 = or i32 %add148325.sink, %cond152
  %or153 = or i32 %or150, %retval.0.i310.sink
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 8, i32 noundef %7, i32 noundef %or153) #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 5, i32 noundef %7, i32 noundef 0) #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 4, i32 noundef %7, i32 noundef 0) #7
  %addr = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 15, i32 2
  %50 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr, align 4
  %address_mode = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 10
  %52 = ptrtoint ptr %address_mode to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %address_mode, align 4
  %shl156 = shl i32 %51, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool158.not = icmp eq i32 %53, 0
  %cond159 = select i1 %tobool158.not, i32 4095, i32 8191
  %or160 = or i32 %cond159, %shl156
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 12, i32 noundef %7, i32 noundef %or160) #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 13, i32 noundef %7, i32 noundef %or160) #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 2, i32 noundef %7, i32 noundef 65535) #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 3, i32 noundef %7, i32 noundef 65535) #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 21, i32 noundef %7, i32 noundef 0) #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 22, i32 noundef %7, i32 noundef 127) #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 19, i32 noundef %7, i32 noundef 32768) #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 23, i32 noundef %7, i32 noundef 32768) #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 27, i32 noundef %7, i32 noundef 0) #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 28, i32 noundef %7, i32 noundef 0) #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 29, i32 noundef %7, i32 noundef 0) #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 20, i32 noundef %7, i32 noundef 32768) #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 17, i32 noundef %7, i32 noundef 32639) #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 16, i32 noundef %7, i32 noundef 0) #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 134217754, i32 noundef %7, i32 noundef 127) #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 134742042, i32 noundef %7, i32 noundef 0) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call17) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emu10k1_ptr_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_emu10k1_playback_invalidate_cache(ptr noundef %emu, i32 noundef %extra, ptr noundef readonly %evoice) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %evoice, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %epcm = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %evoice, i32 0, i32 4
  %0 = ptrtoint ptr %epcm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %epcm, align 4
  %substream = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substream, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime1, align 4
  %number = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %evoice, i32 0, i32 1
  %6 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extra)
  %tobool.not = icmp eq i32 %extra, 0
  br i1 %tobool.not, label %land.rhs, label %if.end.land.end_crit_edge

if.end.land.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 15
  %8 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp2 = icmp eq i32 %9, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.land.end_crit_edge
  %10 = phi i1 [ false, %if.end.land.end_crit_edge ], [ %cmp2, %land.rhs ]
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 12
  %11 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %format, align 4
  %call = tail call i32 @snd_pcm_format_width(i32 noundef %12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call)
  %cmp3 = icmp eq i32 %call, 16
  %cond = select i1 %cmp3, i32 0, i32 -2139062144
  %spec.select = select i1 %10, i32 24, i32 26
  %spec.select71 = select i1 %10, i32 48, i32 52
  %retval.0.i = select i1 %cmp3, i32 %spec.select, i32 %spec.select71
  %sub = sub nuw nsw i32 32, %spec.select
  %add = sub nuw nsw i32 65, %retval.0.i
  %shr = lshr i32 %add, 1
  %cond9 = select i1 %cmp3, i32 %sub, i32 %shr
  %13 = tail call i32 @llvm.umin.i32(i32 %cond9, i32 16)
  %add20 = add i32 %7, 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %land.end
  %i.070 = phi i32 [ 0, %land.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %add16 = add nuw nsw i32 %i.070, 32
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef %add16, i32 noundef %7, i32 noundef %cond) #7
  br i1 %10, label %if.then18, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then18:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef %add16, i32 noundef %add20, i32 noundef %cond) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then18, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.070, 1
  %exitcond.not = icmp eq i32 %inc, %13
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 119078921, i32 noundef %7, i32 noundef 0) #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 101711881, i32 noundef %7, i32 noundef 64) #7
  br i1 %10, label %if.then23, label %for.end.cleanup.sink.split_crit_edge

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then23:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %add24 = add i32 %7, 1
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 119078921, i32 noundef %add24, i32 noundef 0) #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 101711881, i32 noundef %add24, i32 noundef 64) #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 119078921, i32 noundef %7, i32 noundef %retval.0.i) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then23, %for.end.cleanup.sink.split_crit_edge
  %add24.sink = phi i32 [ %add24, %if.then23 ], [ %7, %for.end.cleanup.sink.split_crit_edge ]
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 119078921, i32 noundef %add24.sink, i32 noundef %retval.0.i) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_emu10k1_playback_prepare_voice(ptr noundef %emu, ptr noundef readonly %evoice, i32 noundef %master, i32 noundef %extra, ptr noundef readonly %mix) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %evoice, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %number = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %evoice, i32 0, i32 1
  %0 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %number, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extra)
  %tobool.not = icmp eq i32 %extra, 0
  %cond = select i1 %tobool.not, i32 255, i32 0
  %cmp7.not = icmp eq ptr %mix, null
  br i1 %cmp7.not, label %if.end.cond.end11_crit_edge, label %cond.true8

if.end.cond.end11_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end11

cond.true8:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %epcm = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %evoice, i32 0, i32 4
  %2 = ptrtoint ptr %epcm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %epcm, align 4
  %substream1 = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %substream1, align 4
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime2, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp3 = icmp eq i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %master)
  %tobool4.not = icmp eq i32 %master, 0
  %cond5 = select i1 %tobool4.not, i32 2, i32 1
  %cond6 = select i1 %cmp3, i32 %cond5, i32 0
  %arrayidx = getelementptr %struct.snd_emu10k1_pcm_mixer, ptr %mix, i32 0, i32 2, i32 %cond6
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %11 to i32
  %shl = shl nuw i32 %conv, 16
  %phi.bo = or i32 %shl, 65535
  br label %cond.end11

cond.end11:                                       ; preds = %cond.true8, %if.end.cond.end11_crit_edge
  %cond12 = phi i32 [ %phi.bo, %cond.true8 ], [ 65535, %if.end.cond.end11_crit_edge ]
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 25, i32 noundef %1, i32 noundef %cond) #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 3, i32 noundef %1, i32 noundef %cond12) #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 2, i32 noundef %1, i32 noundef %cond12) #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 18, i32 noundef %1, i32 noundef 32639) #7
  tail call void @snd_emu10k1_voice_clear_loop_stop(ptr noundef %emu, i32 noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.end11, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_emu10k1_playback_trigger_voice(ptr noundef %emu, ptr noundef readonly %evoice, i32 noundef %master, i32 noundef %extra) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %evoice, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %epcm = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %evoice, i32 0, i32 4
  %0 = ptrtoint ptr %epcm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %epcm, align 4
  %substream1 = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substream1, align 4
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime2, align 4
  %number = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %evoice, i32 0, i32 1
  %6 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 14
  %8 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate, align 4
  %call = tail call i32 @snd_emu10k1_rate_to_pitch(i32 noundef %9) #7
  %shr = lshr i32 %call, 8
  %card_capabilities = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 3
  %10 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card_capabilities, align 4
  %emu_model = getelementptr inbounds %struct.snd_emu_chip_details, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %emu_model to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %emu_model, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.else, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rate, align 4
  %shl.i = shl i32 %15, 8
  %div.i = udiv i32 %shl.i, 375
  %shr.i = lshr i32 %div.i, 1
  %and.i = and i32 %div.i, 1
  %add.i = add nuw nsw i32 %shr.i, %and.i
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.end.if.end6_crit_edge
  %pitch_target.0 = phi i32 [ %add.i, %if.else ], [ 16384, %if.end.if.end6_crit_edge ]
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 269484033, i32 noundef %7, i32 noundef %pitch_target.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %master)
  %tobool7.not = icmp eq i32 %master, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %if.end6.if.then10_crit_edge

if.end6.if.then10_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.end6
  %16 = ptrtoint ptr %epcm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %epcm, align 4
  %type = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp9 = icmp eq i32 %19, 1
  br i1 %cmp9, label %lor.lhs.false.if.then10_crit_edge, label %lor.lhs.false.if.end11_crit_edge

lor.lhs.false.if.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %if.end6.if.then10_crit_edge
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 269484032, i32 noundef %7, i32 noundef %pitch_target.0) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %lor.lhs.false.if.end11_crit_edge
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 24, i32 noundef %7, i32 noundef %shr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extra)
  %tobool12.not = icmp eq i32 %extra, 0
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %if.then13

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @snd_emu10k1_voice_intr_enable(ptr noundef %emu, i32 noundef %7) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_emu10k1_playback_stop_voice(ptr noundef %emu, ptr noundef readonly %evoice) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %evoice, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %number = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %evoice, i32 0, i32 1
  %0 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %number, align 4
  tail call void @snd_emu10k1_voice_intr_disable(ptr noundef %emu, i32 noundef %1) #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 269484033, i32 noundef %1, i32 noundef 0) #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 269484032, i32 noundef %1, i32 noundef 0) #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 25, i32 noundef %1, i32 noundef 65535) #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 3, i32 noundef %1, i32 noundef 65535) #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 2, i32 noundef %1, i32 noundef 65535) #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 24, i32 noundef %1, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_ptr_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emu10k1_voice_clear_loop_stop(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_rate_to_pitch(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emu10k1_voice_intr_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emu10k1_voice_intr_disable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_capture_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 132) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %call7.i.i, align 8
  %type = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %type, align 4
  %substream3 = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %substream3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %substream, ptr %substream3, align 8
  %capture_ipr = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %call7.i.i, i32 0, i32 10
  %8 = ptrtoint ptr %capture_ipr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 49152, ptr %capture_ipr, align 8
  %capture_inte = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %call7.i.i, i32 0, i32 11
  %9 = ptrtoint ptr %capture_inte to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 64, ptr %capture_inte, align 4
  %capture_ba_reg = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %call7.i.i, i32 0, i32 12
  %10 = ptrtoint ptr %capture_ba_reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 70, ptr %capture_ba_reg, align 8
  %capture_bs_reg = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %call7.i.i, i32 0, i32 13
  %11 = ptrtoint ptr %capture_bs_reg to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 74, ptr %capture_bs_reg, align 4
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  %cond = select i1 %tobool.not, i32 100, i32 99
  %capture_idx_reg = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %call7.i.i, i32 0, i32 14
  %14 = ptrtoint ptr %capture_idx_reg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond, ptr %capture_idx_reg, align 8
  %private_data4 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %15 = ptrtoint ptr %private_data4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %private_data4, align 8
  %private_free = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 45
  %16 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @snd_emu10k1_pcm_free_substream, ptr %private_free, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %17 = call ptr @memcpy(ptr %hw, ptr @snd_emu10k1_capture, i32 64)
  %capture_interrupt = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 62
  %18 = ptrtoint ptr %capture_interrupt to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @snd_emu10k1_pcm_ac97adc_interrupt, ptr %capture_interrupt, align 4
  %pcm_capture_substream = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 67
  %19 = ptrtoint ptr %pcm_capture_substream to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %substream, ptr %pcm_capture_substream, align 4
  %call5 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 14, ptr noundef nonnull @hw_constraints_capture_period_sizes) #7
  %call6 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @hw_constraints_capture_rates) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_emu10k1_capture_close(ptr nocapture noundef readonly %substream) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %capture_interrupt = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 62
  %2 = ptrtoint ptr %capture_interrupt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %capture_interrupt, align 4
  %pcm_capture_substream = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 67
  %3 = ptrtoint ptr %pcm_capture_substream to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %pcm_capture_substream, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_capture_prepare(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %capture_bs_reg = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %capture_bs_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %capture_bs_reg, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef %7, i32 noundef 0, i32 noundef 0) #7
  %type = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %9, label %entry.sw.epilog_crit_edge [
    i32 2, label %entry.sw.epilog.sink.split_crit_edge
    i32 4, label %sw.bb3
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %sw.bb3.sw.epilog.sink.split_crit_edge, label %if.then

sw.bb3.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.then:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 116, i32 noundef 0, i32 noundef 0) #7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.then, %sw.bb3.sw.epilog.sink.split_crit_edge, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 117, %if.then ], [ 66, %entry.sw.epilog.sink.split_crit_edge ], [ 67, %sw.bb3.sw.epilog.sink.split_crit_edge ]
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef %.sink, i32 noundef 0, i32 noundef 0) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %capture_ba_reg = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 12
  %13 = ptrtoint ptr %capture_ba_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %capture_ba_reg, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %15 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_addr, align 8
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef %14, i32 noundef 0, i32 noundef %16) #7
  %17 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %runtime1, align 4
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %18, i32 0, i32 18
  %19 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buffer_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %18, i32 0, i32 21
  %21 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %22, %20
  %div1.i.i = lshr i32 %mul.i.i, 3
  %capture_bufsize = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 18
  %23 = ptrtoint ptr %capture_bufsize to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div1.i.i, ptr %capture_bufsize, align 4
  %capture_bs_val = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 17
  %24 = ptrtoint ptr %capture_bs_val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %capture_bs_val, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.epilog
  %idx.094 = phi i32 [ 0, %sw.epilog ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [31 x i32], ptr @capture_period_sizes, i32 0, i32 %idx.094
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %div1.i.i)
  %cmp5 = icmp eq i32 %26, %div1.i.i
  br i1 %cmp5, label %for.body.if.end31.sink.split_crit_edge, label %for.inc

for.body.if.end31.sink.split_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.sink.split

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %idx.094, 1
  %exitcond.not = icmp eq i32 %inc, 31
  br i1 %exitcond.not, label %for.endthread-pre-split, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.endthread-pre-split:                          ; preds = %for.inc
  %27 = ptrtoint ptr %capture_bs_val to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr = load i32, ptr %capture_bs_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %phi.cmp = icmp eq i32 %.pr, 0
  br i1 %phi.cmp, label %do.end, label %for.endthread-pre-split.if.end31_crit_edge

for.endthread-pre-split.if.end31_crit_edge:       ; preds = %for.endthread-pre-split
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

do.end:                                           ; preds = %for.endthread-pre-split
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 607, i32 noundef 9, ptr noundef nonnull @.str.8) #7
  %28 = ptrtoint ptr %capture_bs_val to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %capture_bs_val, align 4
  br label %if.end31.sink.split

if.end31.sink.split:                              ; preds = %do.end, %for.body.if.end31.sink.split_crit_edge
  %idx.094.lcssa.sink = phi i32 [ %29, %do.end ], [ %idx.094, %for.body.if.end31.sink.split_crit_edge ]
  %add = add i32 %idx.094.lcssa.sink, 1
  %30 = ptrtoint ptr %capture_bs_val to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add, ptr %capture_bs_val, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end31.sink.split, %for.endthread-pre-split.if.end31_crit_edge
  %31 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp33 = icmp eq i32 %32, 2
  br i1 %cmp33, label %if.then34, label %if.end31.if.end52_crit_edge

if.end31.if.end52_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then34:                                        ; preds = %if.end31
  %audigy35 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %audigy35 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %audigy35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool36.not = icmp eq i32 %34, 0
  %cond = select i1 %tobool36.not, i32 8, i32 16
  %capture_cr_val = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 15
  %35 = ptrtoint ptr %capture_cr_val to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %cond, ptr %capture_cr_val, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %36 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp37 = icmp ugt i32 %37, 1
  br i1 %cmp37, label %if.then38, label %if.then34.if.end43_crit_edge

if.then34.if.end43_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then38:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %audigy35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %audigy35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool40.not = icmp eq i32 %39, 0
  %cond41 = select i1 %tobool40.not, i32 16, i32 32
  %or = or i32 %cond41, %cond
  %40 = ptrtoint ptr %capture_cr_val to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or, ptr %capture_cr_val, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then38, %if.then34.if.end43_crit_edge
  %41 = ptrtoint ptr %audigy35 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %audigy35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool45.not = icmp eq i32 %42, 0
  %rate47 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %43 = ptrtoint ptr %rate47 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rate47, align 4
  br i1 %tobool45.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end43
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %44, label %do.end.i [
    i32 8000, label %cond.true.cond.end_crit_edge
    i32 11025, label %sw.bb1.i
    i32 12000, label %sw.bb2.i
    i32 16000, label %sw.bb3.i
    i32 22050, label %sw.bb4.i
    i32 24000, label %sw.bb5.i
    i32 32000, label %sw.bb6.i
    i32 44100, label %sw.bb7.i
    i32 48000, label %sw.bb8.i
  ]

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

sw.bb1.i:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

sw.bb2.i:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

sw.bb3.i:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

sw.bb4.i:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

sw.bb5.i:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

sw.bb6.i:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

sw.bb7.i:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

sw.bb8.i:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

do.end.i:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 211, i32 noundef 9, ptr noundef nonnull @.str.8) #7
  br label %cond.end

cond.false:                                       ; preds = %if.end43
  %46 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %44, label %do.end.i91 [
    i32 8000, label %cond.false.cond.end_crit_edge
    i32 11025, label %sw.bb1.i84
    i32 16000, label %sw.bb2.i85
    i32 22050, label %sw.bb3.i86
    i32 24000, label %sw.bb4.i87
    i32 32000, label %sw.bb5.i88
    i32 44100, label %sw.bb6.i89
    i32 48000, label %sw.bb7.i90
  ]

cond.false.cond.end_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

sw.bb1.i84:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

sw.bb2.i85:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

sw.bb3.i86:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

sw.bb4.i87:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

sw.bb5.i88:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

sw.bb6.i89:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

sw.bb7.i90:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

do.end.i91:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 193, i32 noundef 9, ptr noundef nonnull @.str.8) #7
  br label %cond.end

cond.end:                                         ; preds = %do.end.i91, %sw.bb7.i90, %sw.bb6.i89, %sw.bb5.i88, %sw.bb4.i87, %sw.bb3.i86, %sw.bb2.i85, %sw.bb1.i84, %cond.false.cond.end_crit_edge, %do.end.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %cond.true.cond.end_crit_edge
  %cond49 = phi i32 [ 8, %do.end.i ], [ 0, %sw.bb8.i ], [ 1, %sw.bb7.i ], [ 2, %sw.bb6.i ], [ 3, %sw.bb5.i ], [ 4, %sw.bb4.i ], [ 5, %sw.bb3.i ], [ 6, %sw.bb2.i ], [ 7, %sw.bb1.i ], [ 8, %cond.true.cond.end_crit_edge ], [ 7, %do.end.i91 ], [ 0, %sw.bb7.i90 ], [ 1, %sw.bb6.i89 ], [ 2, %sw.bb5.i88 ], [ 3, %sw.bb4.i87 ], [ 4, %sw.bb3.i86 ], [ 5, %sw.bb2.i85 ], [ 6, %sw.bb1.i84 ], [ 7, %cond.false.cond.end_crit_edge ]
  %47 = ptrtoint ptr %capture_cr_val to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %capture_cr_val, align 4
  %or51 = or i32 %48, %cond49
  store i32 %or51, ptr %capture_cr_val, align 4
  br label %if.end52

if.end52:                                         ; preds = %cond.end, %if.end31.if.end52_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_capture_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %reg_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 41
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #7
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %cmd, label %entry.sw.epilog43_crit_edge [
    i32 1, label %entry.do.body_crit_edge
    i32 6, label %entry.do.body_crit_edge82
    i32 0, label %entry.sw.bb19_crit_edge
    i32 5, label %entry.sw.bb19_crit_edge83
  ]

entry.sw.bb19_crit_edge83:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb19

entry.sw.bb19_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb19

entry.do.body_crit_edge82:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.sw.epilog43_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog43

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  tail call void @arm_heavy_mb() #7
  %capture_ipr = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 10
  %7 = ptrtoint ptr %capture_ipr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %capture_ipr, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port, align 4
  %add = add i32 %11, 8
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %12 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %12, i32 %9) #7, !srcloc !68
  %capture_inte = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 11
  %13 = ptrtoint ptr %capture_inte to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %capture_inte, align 4
  tail call void @snd_emu10k1_intr_enable(ptr noundef %1, i32 noundef %14) #7
  %type = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %16, label %do.body.sw.epilog_crit_edge [
    i32 2, label %sw.bb4
    i32 4, label %sw.bb5
  ]

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %capture_cr_val = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 15
  %18 = ptrtoint ptr %capture_cr_val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %capture_cr_val, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 66, i32 noundef 0, i32 noundef %19) #7
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.body
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  %capture_cr_val17 = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 15
  %22 = ptrtoint ptr %capture_cr_val17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %capture_cr_val17, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 116, i32 noundef 0, i32 noundef %23) #7
  %capture_cr_val2 = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 16
  %24 = ptrtoint ptr %capture_cr_val2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %capture_cr_val2, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 117, i32 noundef 0, i32 noundef %25) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_emu10k1_capture_trigger.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_emu10k1_capture_trigger, %if.then12)) #7
          to label %sw.epilog [label %if.then12], !srcloc !69

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %card = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 32
  %26 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %27, i32 0, i32 27
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 8
  %30 = ptrtoint ptr %capture_cr_val17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %capture_cr_val17, align 4
  %32 = ptrtoint ptr %capture_cr_val2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %capture_cr_val2, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_emu10k1_capture_trigger.__UNIQUE_ID_ddebug242, ptr noundef %29, ptr noundef nonnull @.str.11, i32 noundef %31, i32 noundef %33) #7
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 67, i32 noundef 0, i32 noundef %23) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.then12, %if.then, %sw.bb4, %do.body.sw.epilog_crit_edge
  %capture_bs_reg = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 13
  %34 = ptrtoint ptr %capture_bs_reg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %capture_bs_reg, align 4
  %capture_bs_val = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 17
  %36 = ptrtoint ptr %capture_bs_val to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %capture_bs_val, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef %35, i32 noundef 0, i32 noundef %37) #7
  %running = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 5
  %38 = ptrtoint ptr %running to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %running, align 4
  %first_ptr = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 6
  %39 = ptrtoint ptr %first_ptr to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %first_ptr, align 2
  br label %sw.epilog43

sw.bb19:                                          ; preds = %entry.sw.bb19_crit_edge, %entry.sw.bb19_crit_edge83
  %running20 = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 5
  %40 = ptrtoint ptr %running20 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %running20, align 4
  %capture_inte21 = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 11
  %41 = ptrtoint ptr %capture_inte21 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %capture_inte21, align 4
  tail call void @snd_emu10k1_intr_disable(ptr noundef %1, i32 noundef %42) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %capture_ipr25 = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 10
  %43 = ptrtoint ptr %capture_ipr25 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %capture_ipr25, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %port26 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 1
  %46 = ptrtoint ptr %port26 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port26, align 4
  %add27 = add i32 %47, 8
  %and28 = and i32 %add27, 1048575
  %add29 = or i32 %and28, -18874368
  %48 = inttoptr i32 %add29 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %48, i32 %45) #7, !srcloc !68
  %capture_bs_reg31 = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 13
  %49 = ptrtoint ptr %capture_bs_reg31 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %capture_bs_reg31, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef %50, i32 noundef 0, i32 noundef 0) #7
  %type32 = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 1
  %51 = ptrtoint ptr %type32 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %type32, align 4
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %52, label %sw.bb19.sw.epilog43_crit_edge [
    i32 2, label %sw.bb33
    i32 4, label %sw.bb34
  ]

sw.bb19.sw.epilog43_crit_edge:                    ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog43

sw.bb33:                                          ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 66, i32 noundef 0, i32 noundef 0) #7
  br label %sw.epilog43

sw.bb34:                                          ; preds = %sw.bb19
  %audigy35 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 4
  %54 = ptrtoint ptr %audigy35 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %audigy35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool36.not = icmp eq i32 %55, 0
  br i1 %tobool36.not, label %if.else38, label %if.then37

if.then37:                                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 116, i32 noundef 0, i32 noundef 0) #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 117, i32 noundef 0, i32 noundef 0) #7
  br label %sw.epilog43

if.else38:                                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 67, i32 noundef 0, i32 noundef 0) #7
  br label %sw.epilog43

sw.epilog43:                                      ; preds = %if.else38, %if.then37, %sw.bb33, %sw.bb19.sw.epilog43_crit_edge, %sw.epilog, %entry.sw.epilog43_crit_edge
  %result.0 = phi i32 [ 0, %sw.bb19.sw.epilog43_crit_edge ], [ 0, %if.then37 ], [ 0, %if.else38 ], [ 0, %sw.bb33 ], [ 0, %sw.epilog ], [ -22, %entry.sw.epilog43_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #7
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_capture_pointer(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %first_ptr = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %first_ptr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %first_ptr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool3.not = icmp eq i16 %9, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 10737400) #7
  %11 = ptrtoint ptr %first_ptr to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %first_ptr, align 2
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %capture_idx_reg = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 14
  %12 = ptrtoint ptr %capture_idx_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %capture_idx_reg, align 4
  %call = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %1, i32 noundef %13, i32 noundef 0) #7
  %and = shl i32 %call, 3
  %mul.i = and i32 %and, 524280
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %14 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %15
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div.i, %if.end6 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_emu10k1_pcm_ac97adc_interrupt(ptr nocapture noundef readonly %emu, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm_capture_substream = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 67
  %0 = ptrtoint ptr %pcm_capture_substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm_capture_substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emu10k1_intr_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emu10k1_intr_disable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_efx_playback_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 132) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %call7.i.i, align 8
  %type = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %type, align 4
  %substream3 = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %substream3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %substream, ptr %substream3, align 8
  %pcm_playback_efx_substream = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 70
  %8 = ptrtoint ptr %pcm_playback_efx_substream to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %substream, ptr %pcm_playback_efx_substream, align 4
  %private_data4 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %9 = ptrtoint ptr %private_data4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %private_data4, align 8
  %private_free = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 45
  %10 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @snd_emu10k1_pcm_free_substream, ptr %private_free, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %11 = call ptr @memcpy(ptr %hw, ptr @snd_emu10k1_efx_playback, i32 64)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.038 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 54, i32 %i.038
  %conv = trunc i32 %i.038 to i8
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %arrayidx, align 4
  %send_volume = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 54, i32 %i.038, i32 1
  %13 = call ptr @memset(ptr %send_volume, i32 0, i32 24)
  %14 = ptrtoint ptr %send_volume to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %send_volume, align 4
  %attn = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 54, i32 %i.038, i32 2
  %15 = ptrtoint ptr %attn to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %attn, align 4
  %epcm12 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 54, i32 %i.038, i32 3
  %16 = ptrtoint ptr %epcm12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %epcm12, align 4
  tail call fastcc void @snd_emu10k1_pcm_efx_mixer_notify(ptr noundef %1, i32 noundef %i.038, i32 noundef 1)
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_efx_playback_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %epcm = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 54, i32 0, i32 3
  %2 = ptrtoint ptr %epcm to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %epcm, align 4
  tail call fastcc void @snd_emu10k1_pcm_efx_mixer_notify(ptr noundef %1, i32 noundef 0, i32 noundef 0)
  %epcm.1 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 54, i32 1, i32 3
  %3 = ptrtoint ptr %epcm.1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %epcm.1, align 4
  tail call fastcc void @snd_emu10k1_pcm_efx_mixer_notify(ptr noundef %1, i32 noundef 1, i32 noundef 0)
  %epcm.2 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 54, i32 2, i32 3
  %4 = ptrtoint ptr %epcm.2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %epcm.2, align 4
  tail call fastcc void @snd_emu10k1_pcm_efx_mixer_notify(ptr noundef %1, i32 noundef 2, i32 noundef 0)
  %epcm.3 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 54, i32 3, i32 3
  %5 = ptrtoint ptr %epcm.3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %epcm.3, align 4
  tail call fastcc void @snd_emu10k1_pcm_efx_mixer_notify(ptr noundef %1, i32 noundef 3, i32 noundef 0)
  %epcm.4 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 54, i32 4, i32 3
  %6 = ptrtoint ptr %epcm.4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %epcm.4, align 4
  tail call fastcc void @snd_emu10k1_pcm_efx_mixer_notify(ptr noundef %1, i32 noundef 4, i32 noundef 0)
  %epcm.5 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 54, i32 5, i32 3
  %7 = ptrtoint ptr %epcm.5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %epcm.5, align 4
  tail call fastcc void @snd_emu10k1_pcm_efx_mixer_notify(ptr noundef %1, i32 noundef 5, i32 noundef 0)
  %epcm.6 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 54, i32 6, i32 3
  %8 = ptrtoint ptr %epcm.6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %epcm.6, align 4
  tail call fastcc void @snd_emu10k1_pcm_efx_mixer_notify(ptr noundef %1, i32 noundef 6, i32 noundef 0)
  %epcm.7 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 54, i32 7, i32 3
  %9 = ptrtoint ptr %epcm.7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %epcm.7, align 4
  tail call fastcc void @snd_emu10k1_pcm_efx_mixer_notify(ptr noundef %1, i32 noundef 7, i32 noundef 0)
  %epcm.8 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 54, i32 8, i32 3
  %10 = ptrtoint ptr %epcm.8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %epcm.8, align 4
  tail call fastcc void @snd_emu10k1_pcm_efx_mixer_notify(ptr noundef %1, i32 noundef 8, i32 noundef 0)
  %epcm.9 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 54, i32 9, i32 3
  %11 = ptrtoint ptr %epcm.9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %epcm.9, align 4
  tail call fastcc void @snd_emu10k1_pcm_efx_mixer_notify(ptr noundef %1, i32 noundef 9, i32 noundef 0)
  %epcm.10 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 54, i32 10, i32 3
  %12 = ptrtoint ptr %epcm.10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %epcm.10, align 4
  tail call fastcc void @snd_emu10k1_pcm_efx_mixer_notify(ptr noundef %1, i32 noundef 10, i32 noundef 0)
  %epcm.11 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 54, i32 11, i32 3
  %13 = ptrtoint ptr %epcm.11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %epcm.11, align 4
  tail call fastcc void @snd_emu10k1_pcm_efx_mixer_notify(ptr noundef %1, i32 noundef 11, i32 noundef 0)
  %epcm.12 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 54, i32 12, i32 3
  %14 = ptrtoint ptr %epcm.12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %epcm.12, align 4
  tail call fastcc void @snd_emu10k1_pcm_efx_mixer_notify(ptr noundef %1, i32 noundef 12, i32 noundef 0)
  %epcm.13 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 54, i32 13, i32 3
  %15 = ptrtoint ptr %epcm.13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %epcm.13, align 4
  tail call fastcc void @snd_emu10k1_pcm_efx_mixer_notify(ptr noundef %1, i32 noundef 13, i32 noundef 0)
  %epcm.14 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 54, i32 14, i32 3
  %16 = ptrtoint ptr %epcm.14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %epcm.14, align 4
  tail call fastcc void @snd_emu10k1_pcm_efx_mixer_notify(ptr noundef %1, i32 noundef 14, i32 noundef 0)
  %epcm.15 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 54, i32 15, i32 3
  %17 = ptrtoint ptr %epcm.15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %epcm.15, align 4
  tail call fastcc void @snd_emu10k1_pcm_efx_mixer_notify(ptr noundef %1, i32 noundef 15, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_efx_playback_hw_free(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %extra = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %extra, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.for.body.preheader_crit_edge, label %if.then4

if.end.for.body.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %call = tail call i32 @snd_emu10k1_voice_free(ptr noundef %9, ptr noundef nonnull %7) #7
  %10 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %extra, align 4
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then4, %if.end.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.050 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 %i.050
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %if.then11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 4
  %call15 = tail call i32 @snd_emu10k1_voice_free(ptr noundef %14, ptr noundef nonnull %12) #7
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %memblk = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 7
  %16 = ptrtoint ptr %memblk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %memblk, align 4
  %tobool19.not = icmp eq ptr %17, null
  br i1 %tobool19.not, label %for.end.if.end24_crit_edge, label %if.then20

for.end.if.end24_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then20:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = tail call i32 @snd_emu10k1_free_pages(ptr noundef %1, ptr noundef nonnull %17) #7
  %18 = ptrtoint ptr %memblk to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %memblk, align 4
  %start_addr = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 8
  %19 = ptrtoint ptr %start_addr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %start_addr, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %for.end.if.end24_crit_edge
  %call25 = tail call i32 @snd_pcm_lib_free_pages(ptr noundef %substream) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_efx_playback_prepare(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %start_addr3 = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %start_addr3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %start_addr3, align 4
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %8 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buffer_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %10 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %11, %9
  %div1.i.i = lshr i32 %mul.i.i, 8
  %div41 = lshr i32 %mul.i.i, 7
  %extra = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %extra, align 4
  %add6 = add i32 %div1.i.i, %7
  tail call fastcc void @snd_emu10k1_pcm_init_voice(ptr noundef %1, i32 noundef 1, i32 noundef 1, ptr noundef %13, i32 noundef %7, i32 noundef %add6, ptr noundef null)
  %voices = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %voices to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %voices, align 4
  %add7 = add i32 %div41, %7
  %efx_pcm_mixer = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 54
  tail call fastcc void @snd_emu10k1_pcm_init_voice(ptr noundef %1, i32 noundef 1, i32 noundef 0, ptr noundef %15, i32 noundef %7, i32 noundef %add7, ptr noundef %efx_pcm_mixer)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.044 = phi i32 [ 1, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %start_addr.043 = phi i32 [ %add7, %entry ], [ %add12, %for.body.for.body_crit_edge ]
  %arrayidx11 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 %i.044
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx11, align 4
  %add12 = add i32 %start_addr.043, %div41
  %arrayidx14 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 54, i32 %i.044
  tail call fastcc void @snd_emu10k1_pcm_init_voice(ptr noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef %17, i32 noundef %start_addr.043, i32 noundef %add12, ptr noundef %arrayidx14)
  %inc = add nuw nsw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_efx_playback_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %reg_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 41
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #7
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %for.body.preheader
    i32 4, label %entry.sw.bb3_crit_edge
    i32 6, label %entry.sw.bb3_crit_edge83
    i32 5, label %entry.sw.bb29_crit_edge
    i32 0, label %entry.sw.bb29_crit_edge84
    i32 3, label %entry.sw.bb29_crit_edge85
  ]

entry.sw.bb29_crit_edge85:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb29

entry.sw.bb29_crit_edge84:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb29

entry.sw.bb29_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb29

entry.sw.bb3_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  tail call fastcc void @snd_emu10k1_playback_invalidate_cache(ptr noundef %1, i32 noundef 0, ptr noundef %8)
  %arrayidx.1 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.1, align 4
  tail call fastcc void @snd_emu10k1_playback_invalidate_cache(ptr noundef %1, i32 noundef 0, ptr noundef %10)
  %arrayidx.2 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.2, align 4
  tail call fastcc void @snd_emu10k1_playback_invalidate_cache(ptr noundef %1, i32 noundef 0, ptr noundef %12)
  %arrayidx.3 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.3, align 4
  tail call fastcc void @snd_emu10k1_playback_invalidate_cache(ptr noundef %1, i32 noundef 0, ptr noundef %14)
  %arrayidx.4 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 4
  %15 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.4, align 4
  tail call fastcc void @snd_emu10k1_playback_invalidate_cache(ptr noundef %1, i32 noundef 0, ptr noundef %16)
  %arrayidx.5 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 5
  %17 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.5, align 4
  tail call fastcc void @snd_emu10k1_playback_invalidate_cache(ptr noundef %1, i32 noundef 0, ptr noundef %18)
  %arrayidx.6 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 6
  %19 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.6, align 4
  tail call fastcc void @snd_emu10k1_playback_invalidate_cache(ptr noundef %1, i32 noundef 0, ptr noundef %20)
  %arrayidx.7 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 7
  %21 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.7, align 4
  tail call fastcc void @snd_emu10k1_playback_invalidate_cache(ptr noundef %1, i32 noundef 0, ptr noundef %22)
  %arrayidx.8 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 8
  %23 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.8, align 4
  tail call fastcc void @snd_emu10k1_playback_invalidate_cache(ptr noundef %1, i32 noundef 0, ptr noundef %24)
  %arrayidx.9 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 9
  %25 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.9, align 4
  tail call fastcc void @snd_emu10k1_playback_invalidate_cache(ptr noundef %1, i32 noundef 0, ptr noundef %26)
  %arrayidx.10 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 10
  %27 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.10, align 4
  tail call fastcc void @snd_emu10k1_playback_invalidate_cache(ptr noundef %1, i32 noundef 0, ptr noundef %28)
  %arrayidx.11 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 11
  %29 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.11, align 4
  tail call fastcc void @snd_emu10k1_playback_invalidate_cache(ptr noundef %1, i32 noundef 0, ptr noundef %30)
  %arrayidx.12 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 12
  %31 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.12, align 4
  tail call fastcc void @snd_emu10k1_playback_invalidate_cache(ptr noundef %1, i32 noundef 0, ptr noundef %32)
  %arrayidx.13 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 13
  %33 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.13, align 4
  tail call fastcc void @snd_emu10k1_playback_invalidate_cache(ptr noundef %1, i32 noundef 0, ptr noundef %34)
  %arrayidx.14 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 14
  %35 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.14, align 4
  tail call fastcc void @snd_emu10k1_playback_invalidate_cache(ptr noundef %1, i32 noundef 0, ptr noundef %36)
  %arrayidx.15 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 15
  %37 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.15, align 4
  tail call fastcc void @snd_emu10k1_playback_invalidate_cache(ptr noundef %1, i32 noundef 0, ptr noundef %38)
  %extra = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 4
  %39 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %extra, align 4
  tail call fastcc void @snd_emu10k1_playback_invalidate_cache(ptr noundef %1, i32 noundef 1, ptr noundef %40)
  br label %sw.bb3

sw.bb3:                                           ; preds = %for.body.preheader, %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge83
  %extra4 = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 4
  %41 = ptrtoint ptr %extra4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %extra4, align 4
  %cmp.i = icmp eq ptr %42, null
  br i1 %cmp.i, label %sw.bb3.snd_emu10k1_playback_prepare_voice.exit_crit_edge, label %if.end.i

sw.bb3.snd_emu10k1_playback_prepare_voice.exit_crit_edge: ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_emu10k1_playback_prepare_voice.exit

if.end.i:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  %number.i = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %number.i, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 25, i32 noundef %44, i32 noundef 0) #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 3, i32 noundef %44, i32 noundef 65535) #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 2, i32 noundef %44, i32 noundef 65535) #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 18, i32 noundef %44, i32 noundef 32639) #7
  tail call void @snd_emu10k1_voice_clear_loop_stop(ptr noundef %1, i32 noundef %44) #7
  br label %snd_emu10k1_playback_prepare_voice.exit

snd_emu10k1_playback_prepare_voice.exit:          ; preds = %if.end.i, %sw.bb3.snd_emu10k1_playback_prepare_voice.exit_crit_edge
  %voices5 = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3
  %45 = ptrtoint ptr %voices5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %voices5, align 4
  %efx_pcm_mixer = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 54
  tail call fastcc void @snd_emu10k1_playback_prepare_voice(ptr noundef %1, ptr noundef %46, i32 noundef 0, i32 noundef 0, ptr noundef %efx_pcm_mixer)
  br label %for.body10

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %snd_emu10k1_playback_prepare_voice.exit
  %i.180 = phi i32 [ 1, %snd_emu10k1_playback_prepare_voice.exit ], [ %inc16, %for.body10.for.body10_crit_edge ]
  %arrayidx12 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 %i.180
  %47 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx12, align 4
  %arrayidx14 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 54, i32 %i.180
  tail call fastcc void @snd_emu10k1_playback_prepare_voice(ptr noundef %1, ptr noundef %48, i32 noundef 0, i32 noundef 0, ptr noundef %arrayidx14)
  %inc16 = add nuw nsw i32 %i.180, 1
  %exitcond.not = icmp eq i32 %inc16, 16
  br i1 %exitcond.not, label %for.end17, label %for.body10.for.body10_crit_edge

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10

for.end17:                                        ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %voices5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %voices5, align 4
  tail call fastcc void @snd_emu10k1_playback_trigger_voice(ptr noundef %1, ptr noundef %50, i32 noundef 0, i32 noundef 0)
  %51 = ptrtoint ptr %extra4 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %extra4, align 4
  tail call fastcc void @snd_emu10k1_playback_trigger_voice(ptr noundef %1, ptr noundef %52, i32 noundef 1, i32 noundef 1)
  %arrayidx25 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 1
  %53 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx25, align 4
  tail call fastcc void @snd_emu10k1_playback_trigger_voice(ptr noundef %1, ptr noundef %54, i32 noundef 0, i32 noundef 0)
  %arrayidx25.1 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 2
  %55 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx25.1, align 4
  tail call fastcc void @snd_emu10k1_playback_trigger_voice(ptr noundef %1, ptr noundef %56, i32 noundef 0, i32 noundef 0)
  %arrayidx25.2 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 3
  %57 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx25.2, align 4
  tail call fastcc void @snd_emu10k1_playback_trigger_voice(ptr noundef %1, ptr noundef %58, i32 noundef 0, i32 noundef 0)
  %arrayidx25.3 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 4
  %59 = ptrtoint ptr %arrayidx25.3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx25.3, align 4
  tail call fastcc void @snd_emu10k1_playback_trigger_voice(ptr noundef %1, ptr noundef %60, i32 noundef 0, i32 noundef 0)
  %arrayidx25.4 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 5
  %61 = ptrtoint ptr %arrayidx25.4 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx25.4, align 4
  tail call fastcc void @snd_emu10k1_playback_trigger_voice(ptr noundef %1, ptr noundef %62, i32 noundef 0, i32 noundef 0)
  %arrayidx25.5 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 6
  %63 = ptrtoint ptr %arrayidx25.5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx25.5, align 4
  tail call fastcc void @snd_emu10k1_playback_trigger_voice(ptr noundef %1, ptr noundef %64, i32 noundef 0, i32 noundef 0)
  %arrayidx25.6 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 7
  %65 = ptrtoint ptr %arrayidx25.6 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx25.6, align 4
  tail call fastcc void @snd_emu10k1_playback_trigger_voice(ptr noundef %1, ptr noundef %66, i32 noundef 0, i32 noundef 0)
  %arrayidx25.7 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 8
  %67 = ptrtoint ptr %arrayidx25.7 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx25.7, align 4
  tail call fastcc void @snd_emu10k1_playback_trigger_voice(ptr noundef %1, ptr noundef %68, i32 noundef 0, i32 noundef 0)
  %arrayidx25.8 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 9
  %69 = ptrtoint ptr %arrayidx25.8 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx25.8, align 4
  tail call fastcc void @snd_emu10k1_playback_trigger_voice(ptr noundef %1, ptr noundef %70, i32 noundef 0, i32 noundef 0)
  %arrayidx25.9 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 10
  %71 = ptrtoint ptr %arrayidx25.9 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx25.9, align 4
  tail call fastcc void @snd_emu10k1_playback_trigger_voice(ptr noundef %1, ptr noundef %72, i32 noundef 0, i32 noundef 0)
  %arrayidx25.10 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 11
  %73 = ptrtoint ptr %arrayidx25.10 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx25.10, align 4
  tail call fastcc void @snd_emu10k1_playback_trigger_voice(ptr noundef %1, ptr noundef %74, i32 noundef 0, i32 noundef 0)
  %arrayidx25.11 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 12
  %75 = ptrtoint ptr %arrayidx25.11 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx25.11, align 4
  tail call fastcc void @snd_emu10k1_playback_trigger_voice(ptr noundef %1, ptr noundef %76, i32 noundef 0, i32 noundef 0)
  %arrayidx25.12 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 13
  %77 = ptrtoint ptr %arrayidx25.12 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx25.12, align 4
  tail call fastcc void @snd_emu10k1_playback_trigger_voice(ptr noundef %1, ptr noundef %78, i32 noundef 0, i32 noundef 0)
  %arrayidx25.13 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 14
  %79 = ptrtoint ptr %arrayidx25.13 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx25.13, align 4
  tail call fastcc void @snd_emu10k1_playback_trigger_voice(ptr noundef %1, ptr noundef %80, i32 noundef 0, i32 noundef 0)
  %arrayidx25.14 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 15
  %81 = ptrtoint ptr %arrayidx25.14 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx25.14, align 4
  tail call fastcc void @snd_emu10k1_playback_trigger_voice(ptr noundef %1, ptr noundef %82, i32 noundef 0, i32 noundef 0)
  %running = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 5
  %83 = ptrtoint ptr %running to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 1, ptr %running, align 4
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry.sw.bb29_crit_edge, %entry.sw.bb29_crit_edge84, %entry.sw.bb29_crit_edge85
  %running30 = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 5
  %84 = ptrtoint ptr %running30 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 0, ptr %running30, align 4
  %arrayidx35 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 0
  %85 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx35, align 4
  tail call fastcc void @snd_emu10k1_playback_stop_voice(ptr noundef %1, ptr noundef %86)
  %arrayidx35.1 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 1
  %87 = ptrtoint ptr %arrayidx35.1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx35.1, align 4
  tail call fastcc void @snd_emu10k1_playback_stop_voice(ptr noundef %1, ptr noundef %88)
  %arrayidx35.2 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 2
  %89 = ptrtoint ptr %arrayidx35.2 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx35.2, align 4
  tail call fastcc void @snd_emu10k1_playback_stop_voice(ptr noundef %1, ptr noundef %90)
  %arrayidx35.3 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 3
  %91 = ptrtoint ptr %arrayidx35.3 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx35.3, align 4
  tail call fastcc void @snd_emu10k1_playback_stop_voice(ptr noundef %1, ptr noundef %92)
  %arrayidx35.4 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 4
  %93 = ptrtoint ptr %arrayidx35.4 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx35.4, align 4
  tail call fastcc void @snd_emu10k1_playback_stop_voice(ptr noundef %1, ptr noundef %94)
  %arrayidx35.5 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 5
  %95 = ptrtoint ptr %arrayidx35.5 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx35.5, align 4
  tail call fastcc void @snd_emu10k1_playback_stop_voice(ptr noundef %1, ptr noundef %96)
  %arrayidx35.6 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 6
  %97 = ptrtoint ptr %arrayidx35.6 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx35.6, align 4
  tail call fastcc void @snd_emu10k1_playback_stop_voice(ptr noundef %1, ptr noundef %98)
  %arrayidx35.7 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 7
  %99 = ptrtoint ptr %arrayidx35.7 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx35.7, align 4
  tail call fastcc void @snd_emu10k1_playback_stop_voice(ptr noundef %1, ptr noundef %100)
  %arrayidx35.8 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 8
  %101 = ptrtoint ptr %arrayidx35.8 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx35.8, align 4
  tail call fastcc void @snd_emu10k1_playback_stop_voice(ptr noundef %1, ptr noundef %102)
  %arrayidx35.9 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 9
  %103 = ptrtoint ptr %arrayidx35.9 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx35.9, align 4
  tail call fastcc void @snd_emu10k1_playback_stop_voice(ptr noundef %1, ptr noundef %104)
  %arrayidx35.10 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 10
  %105 = ptrtoint ptr %arrayidx35.10 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx35.10, align 4
  tail call fastcc void @snd_emu10k1_playback_stop_voice(ptr noundef %1, ptr noundef %106)
  %arrayidx35.11 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 11
  %107 = ptrtoint ptr %arrayidx35.11 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx35.11, align 4
  tail call fastcc void @snd_emu10k1_playback_stop_voice(ptr noundef %1, ptr noundef %108)
  %arrayidx35.12 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 12
  %109 = ptrtoint ptr %arrayidx35.12 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx35.12, align 4
  tail call fastcc void @snd_emu10k1_playback_stop_voice(ptr noundef %1, ptr noundef %110)
  %arrayidx35.13 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 13
  %111 = ptrtoint ptr %arrayidx35.13 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx35.13, align 4
  tail call fastcc void @snd_emu10k1_playback_stop_voice(ptr noundef %1, ptr noundef %112)
  %arrayidx35.14 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 14
  %113 = ptrtoint ptr %arrayidx35.14 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx35.14, align 4
  tail call fastcc void @snd_emu10k1_playback_stop_voice(ptr noundef %1, ptr noundef %114)
  %arrayidx35.15 = getelementptr %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 3, i32 15
  %115 = ptrtoint ptr %arrayidx35.15 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx35.15, align 4
  tail call fastcc void @snd_emu10k1_playback_stop_voice(ptr noundef %1, ptr noundef %116)
  %extra39 = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %5, i32 0, i32 4
  %117 = ptrtoint ptr %extra39 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %extra39, align 4
  tail call fastcc void @snd_emu10k1_playback_stop_voice(ptr noundef %1, ptr noundef %118)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb29, %for.end17, %entry.sw.epilog_crit_edge
  %result.0 = phi i32 [ 0, %sw.bb29 ], [ 0, %for.end17 ], [ -22, %entry.sw.epilog_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #7
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_efx_playback_pointer(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data2, align 8
  %running = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %running to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %voices = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %voices to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %voices, align 4
  %number = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %number, align 4
  %call = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %7, i32 noundef 8, i32 noundef %11) #7
  %and = and i32 %call, 16777215
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 18
  %12 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buffer_size, align 4
  %add = add i32 %and, %13
  %ccca_start_addr = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %3, i32 0, i32 9
  %14 = ptrtoint ptr %ccca_start_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ccca_start_addr, align 4
  %sub = sub i32 %add, %15
  %rem = urem i32 %sub, %13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rem, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_emu10k1_pcm_efx_mixer_notify(ptr nocapture noundef readonly %emu, i32 noundef %idx, i32 noundef %activate) unnamed_addr #0 align 64 {
entry:
  %id.i24 = alloca %struct.snd_ctl_elem_id, align 4
  %id.i10 = alloca %struct.snd_ctl_elem_id, align 4
  %id.i = alloca %struct.snd_ctl_elem_id, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctl_efx_send_routing = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 58
  %0 = ptrtoint ptr %ctl_efx_send_routing to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctl_efx_send_routing, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %id.i) #7
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.snd_emu10k1_pcm_mixer_notify1.exit_crit_edge, label %if.end.i

entry.snd_emu10k1_pcm_mixer_notify1.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_emu10k1_pcm_mixer_notify1.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %activate)
  %tobool1.not.i = icmp eq i32 %activate, 0
  %access5.i = getelementptr %struct.snd_kcontrol, ptr %1, i32 0, i32 10, i32 %idx, i32 1
  %2 = ptrtoint ptr %access5.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %access5.i, align 4
  %and.i = and i32 %3, -257
  %masksel.i = select i1 %tobool1.not.i, i32 256, i32 0
  %or.sink.i = or i32 %and.i, %masksel.i
  store i32 %or.sink.i, ptr %access5.i, align 4
  %card.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 32
  %4 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card.i, align 4
  %id.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %1, i32 0, i32 1
  %6 = call ptr @memcpy(ptr %id.i, ptr %id.i.i, i32 64)
  %index.i.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i, i32 0, i32 5
  %7 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i.i, align 4
  %add.i.i = add i32 %8, %idx
  store i32 %add.i.i, ptr %index.i.i, align 4
  %9 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id.i, align 4
  %add1.i.i = add i32 %10, %idx
  store i32 %add1.i.i, ptr %id.i, align 4
  call void @snd_ctl_notify(ptr noundef %5, i32 noundef 3, ptr noundef nonnull %id.i) #7
  br label %snd_emu10k1_pcm_mixer_notify1.exit

snd_emu10k1_pcm_mixer_notify1.exit:               ; preds = %if.end.i, %entry.snd_emu10k1_pcm_mixer_notify1.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %id.i) #7
  %ctl_efx_send_volume = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 59
  %11 = ptrtoint ptr %ctl_efx_send_volume to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctl_efx_send_volume, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %id.i10) #7
  %tobool.not.i11 = icmp eq ptr %12, null
  br i1 %tobool.not.i11, label %snd_emu10k1_pcm_mixer_notify1.exit.snd_emu10k1_pcm_mixer_notify1.exit23_crit_edge, label %if.end.i22

snd_emu10k1_pcm_mixer_notify1.exit.snd_emu10k1_pcm_mixer_notify1.exit23_crit_edge: ; preds = %snd_emu10k1_pcm_mixer_notify1.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_emu10k1_pcm_mixer_notify1.exit23

if.end.i22:                                       ; preds = %snd_emu10k1_pcm_mixer_notify1.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %activate)
  %tobool1.not.i12 = icmp eq i32 %activate, 0
  %access5.i13 = getelementptr %struct.snd_kcontrol, ptr %12, i32 0, i32 10, i32 %idx, i32 1
  %13 = ptrtoint ptr %access5.i13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %access5.i13, align 4
  %and.i14 = and i32 %14, -257
  %masksel.i15 = select i1 %tobool1.not.i12, i32 256, i32 0
  %or.sink.i16 = or i32 %and.i14, %masksel.i15
  store i32 %or.sink.i16, ptr %access5.i13, align 4
  %card.i17 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 32
  %15 = ptrtoint ptr %card.i17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card.i17, align 4
  %id.i.i18 = getelementptr inbounds %struct.snd_kcontrol, ptr %12, i32 0, i32 1
  %17 = call ptr @memcpy(ptr %id.i10, ptr %id.i.i18, i32 64)
  %index.i.i19 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i10, i32 0, i32 5
  %18 = ptrtoint ptr %index.i.i19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i.i19, align 4
  %add.i.i20 = add i32 %19, %idx
  store i32 %add.i.i20, ptr %index.i.i19, align 4
  %20 = ptrtoint ptr %id.i10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id.i10, align 4
  %add1.i.i21 = add i32 %21, %idx
  store i32 %add1.i.i21, ptr %id.i10, align 4
  call void @snd_ctl_notify(ptr noundef %16, i32 noundef 3, ptr noundef nonnull %id.i10) #7
  br label %snd_emu10k1_pcm_mixer_notify1.exit23

snd_emu10k1_pcm_mixer_notify1.exit23:             ; preds = %if.end.i22, %snd_emu10k1_pcm_mixer_notify1.exit.snd_emu10k1_pcm_mixer_notify1.exit23_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %id.i10) #7
  %ctl_efx_attn = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 60
  %22 = ptrtoint ptr %ctl_efx_attn to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctl_efx_attn, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %id.i24) #7
  %tobool.not.i25 = icmp eq ptr %23, null
  br i1 %tobool.not.i25, label %snd_emu10k1_pcm_mixer_notify1.exit23.snd_emu10k1_pcm_mixer_notify1.exit37_crit_edge, label %if.end.i36

snd_emu10k1_pcm_mixer_notify1.exit23.snd_emu10k1_pcm_mixer_notify1.exit37_crit_edge: ; preds = %snd_emu10k1_pcm_mixer_notify1.exit23
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_emu10k1_pcm_mixer_notify1.exit37

if.end.i36:                                       ; preds = %snd_emu10k1_pcm_mixer_notify1.exit23
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %activate)
  %tobool1.not.i26 = icmp eq i32 %activate, 0
  %access5.i27 = getelementptr %struct.snd_kcontrol, ptr %23, i32 0, i32 10, i32 %idx, i32 1
  %24 = ptrtoint ptr %access5.i27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %access5.i27, align 4
  %and.i28 = and i32 %25, -257
  %masksel.i29 = select i1 %tobool1.not.i26, i32 256, i32 0
  %or.sink.i30 = or i32 %and.i28, %masksel.i29
  store i32 %or.sink.i30, ptr %access5.i27, align 4
  %card.i31 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 32
  %26 = ptrtoint ptr %card.i31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card.i31, align 4
  %id.i.i32 = getelementptr inbounds %struct.snd_kcontrol, ptr %23, i32 0, i32 1
  %28 = call ptr @memcpy(ptr %id.i24, ptr %id.i.i32, i32 64)
  %index.i.i33 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i24, i32 0, i32 5
  %29 = ptrtoint ptr %index.i.i33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %index.i.i33, align 4
  %add.i.i34 = add i32 %30, %idx
  store i32 %add.i.i34, ptr %index.i.i33, align 4
  %31 = ptrtoint ptr %id.i24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id.i24, align 4
  %add1.i.i35 = add i32 %32, %idx
  store i32 %add1.i.i35, ptr %id.i24, align 4
  call void @snd_ctl_notify(ptr noundef %27, i32 noundef 3, ptr noundef nonnull %id.i24) #7
  br label %snd_emu10k1_pcm_mixer_notify1.exit37

snd_emu10k1_pcm_mixer_notify1.exit37:             ; preds = %if.end.i36, %snd_emu10k1_pcm_mixer_notify1.exit23.snd_emu10k1_pcm_mixer_notify1.exit37_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %id.i24) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_capture_mic_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 132) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %call7.i.i, align 8
  %type = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %type, align 4
  %substream3 = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %substream3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %substream, ptr %substream3, align 8
  %capture_ipr = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %call7.i.i, i32 0, i32 10
  %8 = ptrtoint ptr %capture_ipr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 196608, ptr %capture_ipr, align 8
  %capture_inte = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %call7.i.i, i32 0, i32 11
  %9 = ptrtoint ptr %capture_inte to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 128, ptr %capture_inte, align 4
  %capture_ba_reg = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %call7.i.i, i32 0, i32 12
  %10 = ptrtoint ptr %capture_ba_reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 69, ptr %capture_ba_reg, align 8
  %capture_bs_reg = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %call7.i.i, i32 0, i32 13
  %11 = ptrtoint ptr %capture_bs_reg to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 73, ptr %capture_bs_reg, align 4
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  %cond = select i1 %tobool.not, i32 99, i32 100
  %capture_idx_reg = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %call7.i.i, i32 0, i32 14
  %14 = ptrtoint ptr %capture_idx_reg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond, ptr %capture_idx_reg, align 8
  %15 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %runtime1, align 4
  %private_data5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 44
  %17 = ptrtoint ptr %private_data5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %private_data5, align 8
  %18 = load ptr, ptr %runtime1, align 4
  %private_free = getelementptr inbounds %struct.snd_pcm_runtime, ptr %18, i32 0, i32 45
  %19 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @snd_emu10k1_pcm_free_substream, ptr %private_free, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %20 = call ptr @memcpy(ptr %hw, ptr @snd_emu10k1_capture, i32 64)
  %rates = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 2
  %21 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %rates, align 8
  %rate_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 4
  %22 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8000, ptr %rate_max, align 8
  %rate_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 3
  %23 = ptrtoint ptr %rate_min to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 8000, ptr %rate_min, align 4
  %channels_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 5
  %24 = ptrtoint ptr %channels_min to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %channels_min, align 4
  %capture_mic_interrupt = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 63
  %25 = ptrtoint ptr %capture_mic_interrupt to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @snd_emu10k1_pcm_ac97mic_interrupt, ptr %capture_mic_interrupt, align 4
  %pcm_capture_mic_substream = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 68
  %26 = ptrtoint ptr %pcm_capture_mic_substream to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %substream, ptr %pcm_capture_mic_substream, align 4
  %call11 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 14, ptr noundef nonnull @hw_constraints_capture_period_sizes) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_emu10k1_capture_mic_close(ptr nocapture noundef readonly %substream) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %capture_interrupt = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 62
  %2 = ptrtoint ptr %capture_interrupt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %capture_interrupt, align 4
  %pcm_capture_mic_substream = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 68
  %3 = ptrtoint ptr %pcm_capture_mic_substream to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %pcm_capture_mic_substream, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_emu10k1_pcm_ac97mic_interrupt(ptr nocapture noundef readonly %emu, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm_capture_mic_substream = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 68
  %0 = ptrtoint ptr %pcm_capture_mic_substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm_capture_mic_substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_fx8010_playback_open(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %arrayidx = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %5
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %6 = call ptr @memcpy(ptr %hw, ptr @snd_emu10k1_fx8010_playback, i32 64)
  %channels = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %5, i32 1
  %7 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channels, align 4
  %channels_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 6
  %9 = ptrtoint ptr %channels_max to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %channels_max, align 8
  %channels_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 5
  %10 = ptrtoint ptr %channels_min to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %channels_min, align 4
  %buffer_size = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %5, i32 3
  %11 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buffer_size, align 4
  %mul = and i32 %12, 2147483647
  %period_bytes_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 9
  %13 = ptrtoint ptr %period_bytes_max to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul, ptr %period_bytes_max, align 4
  %reg_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 41
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #7
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %cmp = icmp sgt i8 %bf.load, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set = or i8 %bf.load, 64
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %bf.set, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_fx8010_playback_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %number, align 4
  %arrayidx = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %3
  %reg_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 41
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #7
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %arrayidx, align 4
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_fx8010_playback_hw_free(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %number, align 4
  %channels = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %3, i32 1
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp8.not = icmp eq i32 %5, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx2 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %3, i32 10, i32 %i.09
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2, align 1
  %conv = zext i8 %7 to i32
  %add = add nuw nsw i32 %conv, 896
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 0) #7
  %inc = add nuw i32 %i.09, 1
  %8 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channels, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_fx8010_playback_prepare(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %pcm_rec = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %5, i32 11
  %6 = getelementptr inbounds i8, ptr %pcm_rec, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 36)
  %buffer_size = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %5, i32 3
  %8 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buffer_size, align 4
  %mul = shl i32 %9, 1
  %10 = ptrtoint ptr %pcm_rec to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul, ptr %pcm_rec, align 4
  %11 = load ptr, ptr %runtime1, align 4
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
  %sw_buffer_size = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %5, i32 11, i32 5
  %16 = ptrtoint ptr %sw_buffer_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div1.i.i, ptr %sw_buffer_size, align 4
  %div70 = lshr i32 %9, 1
  %sub6 = add nsw i32 %div70, -15
  %tram_pos = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %5, i32 12
  %17 = ptrtoint ptr %tram_pos to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub6, ptr %tram_pos, align 4
  %tram_shift = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %5, i32 13
  %18 = ptrtoint ptr %tram_shift to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %tram_shift, align 4
  %gpr_base = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 29
  %19 = ptrtoint ptr %gpr_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gpr_base, align 4
  %gpr_running = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %5, i32 9
  %21 = ptrtoint ptr %gpr_running to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %gpr_running, align 2
  %conv = zext i16 %22 to i32
  %add = add i32 %20, %conv
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 0) #7
  %23 = ptrtoint ptr %gpr_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %gpr_base, align 4
  %gpr_trigger = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %5, i32 8
  %25 = ptrtoint ptr %gpr_trigger to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %gpr_trigger, align 4
  %conv8 = zext i16 %26 to i32
  %add9 = add i32 %24, %conv8
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef %add9, i32 noundef 0, i32 noundef 0) #7
  %27 = ptrtoint ptr %gpr_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %gpr_base, align 4
  %gpr_size = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %5, i32 4
  %29 = ptrtoint ptr %gpr_size to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %gpr_size, align 4
  %conv11 = zext i16 %30 to i32
  %add12 = add i32 %28, %conv11
  %buffer_size13 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %31 = ptrtoint ptr %buffer_size13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buffer_size13, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef %add12, i32 noundef 0, i32 noundef %32) #7
  %33 = ptrtoint ptr %gpr_base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %gpr_base, align 4
  %gpr_ptr = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %5, i32 5
  %35 = ptrtoint ptr %gpr_ptr to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %gpr_ptr, align 2
  %conv15 = zext i16 %36 to i32
  %add16 = add i32 %34, %conv15
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef %add16, i32 noundef 0, i32 noundef 0) #7
  %37 = ptrtoint ptr %gpr_base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %gpr_base, align 4
  %gpr_count = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %5, i32 6
  %39 = ptrtoint ptr %gpr_count to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %gpr_count, align 4
  %conv18 = zext i16 %40 to i32
  %add19 = add i32 %38, %conv18
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %41 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %period_size, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef %add19, i32 noundef 0, i32 noundef %42) #7
  %43 = ptrtoint ptr %gpr_base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %gpr_base, align 4
  %gpr_tmpcount = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %5, i32 7
  %45 = ptrtoint ptr %gpr_tmpcount to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %gpr_tmpcount, align 2
  %conv21 = zext i16 %46 to i32
  %add22 = add i32 %44, %conv21
  %47 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %period_size, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef %add22, i32 noundef 0, i32 noundef %48) #7
  %channels = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %5, i32 1
  %49 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp71.not = icmp eq i32 %50, 0
  br i1 %cmp71.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %51 = phi i32 [ %57, %for.body.for.body_crit_edge ], [ %50, %entry.for.body_crit_edge ]
  %i.072 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx25 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %5, i32 10, i32 %i.072
  %52 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %53 to i32
  %add27 = add nuw nsw i32 %conv26, 896
  %54 = ptrtoint ptr %buffer_size13 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %buffer_size13, align 4
  %div30 = udiv i32 %55, %51
  %mul31 = mul i32 %div30, %i.072
  %add32 = add i32 %mul31, 5242880
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef %add27, i32 noundef 0, i32 noundef %add32) #7
  %inc = add nuw i32 %i.072, 1
  %56 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %channels, align 4
  %cmp = icmp ult i32 %inc, %57
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_fx8010_playback_trigger(ptr noundef %substream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %number, align 4
  %reg_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 41
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #7
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %cmd, label %entry.__err_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge34
    i32 6, label %entry.sw.bb_crit_edge35
    i32 0, label %entry.sw.bb5_crit_edge
    i32 3, label %entry.sw.bb5_crit_edge36
    i32 5, label %entry.sw.bb5_crit_edge37
  ]

entry.sw.bb5_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

entry.sw.bb5_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

entry.sw.bb_crit_edge35:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge34:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.__err_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__err

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge34, %entry.sw.bb_crit_edge35
  %gpr_running = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %3, i32 9
  %5 = ptrtoint ptr %gpr_running to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %gpr_running, align 2
  %conv = trunc i16 %6 to i8
  %irq = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %3, i32 14
  %call = tail call i32 @snd_emu10k1_fx8010_register_irq_handler(ptr noundef %1, ptr noundef nonnull @snd_emu10k1_fx8010_playback_irq, i8 noundef zeroext %conv, ptr noundef %substream, ptr noundef %irq) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %sw.bb.__err_crit_edge, label %if.end

sw.bb.__err_crit_edge:                            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %__err

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @snd_emu10k1_fx8010_playback_transfer(ptr noundef %substream)
  %gpr_base = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 29
  %7 = ptrtoint ptr %gpr_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gpr_base, align 4
  %gpr_trigger = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %3, i32 8
  %9 = ptrtoint ptr %gpr_trigger to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %gpr_trigger, align 4
  %conv4 = zext i16 %10 to i32
  %add = add i32 %8, %conv4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 1) #7
  br label %__err

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge36, %entry.sw.bb5_crit_edge37
  %irq6 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %3, i32 14
  %call7 = tail call i32 @snd_emu10k1_fx8010_unregister_irq_handler(ptr noundef %1, ptr noundef %irq6) #7
  %gpr_base8 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 29
  %11 = ptrtoint ptr %gpr_base8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gpr_base8, align 4
  %gpr_trigger9 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %3, i32 8
  %13 = ptrtoint ptr %gpr_trigger9 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %gpr_trigger9, align 4
  %conv10 = zext i16 %14 to i32
  %add11 = add i32 %12, %conv10
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef %add11, i32 noundef 0, i32 noundef 0) #7
  %buffer_size = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %3, i32 3
  %15 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buffer_size, align 4
  %div33 = lshr i32 %16, 1
  %sub12 = add nsw i32 %div33, -15
  %tram_pos = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %3, i32 12
  %17 = ptrtoint ptr %tram_pos to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub12, ptr %tram_pos, align 4
  %tram_shift = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %3, i32 13
  %18 = ptrtoint ptr %tram_shift to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %tram_shift, align 4
  br label %__err

__err:                                            ; preds = %sw.bb5, %if.end, %sw.bb.__err_crit_edge, %entry.__err_crit_edge
  %result.0 = phi i32 [ 0, %sw.bb5 ], [ %call, %sw.bb.__err_crit_edge ], [ %call, %if.end ], [ -22, %entry.__err_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #7
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_fx8010_playback_pointer(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %number, align 4
  %gpr_base = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 29
  %4 = ptrtoint ptr %gpr_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpr_base, align 4
  %gpr_trigger = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %3, i32 8
  %6 = ptrtoint ptr %gpr_trigger to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %gpr_trigger, align 4
  %conv = zext i16 %7 to i32
  %add = add i32 %5, %conv
  %call = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %1, i32 noundef %add, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %gpr_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpr_base, align 4
  %gpr_ptr = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %3, i32 5
  %10 = ptrtoint ptr %gpr_ptr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %gpr_ptr, align 2
  %conv3 = zext i16 %11 to i32
  %add4 = add i32 %9, %conv3
  %call5 = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %1, i32 noundef %add4, i32 noundef 0) #7
  %shl = shl i32 %call5, 2
  %hw_io.i = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %3, i32 11, i32 3
  %12 = ptrtoint ptr %hw_io.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw_io.i, align 4
  %sub.i = sub i32 %shl, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pcm_rec = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %3, i32 11
  %14 = ptrtoint ptr %pcm_rec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pcm_rec, align 4
  %add.i = add i32 %15, %sub.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %bytes.0.i = phi i32 [ %add.i, %if.then.i ], [ %sub.i, %if.end.if.end.i_crit_edge ]
  %16 = ptrtoint ptr %hw_io.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shl, ptr %hw_io.i, align 4
  %hw_ready.i = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %3, i32 11, i32 4
  %17 = ptrtoint ptr %hw_ready.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hw_ready.i, align 4
  %sub2.i = sub i32 %18, %bytes.0.i
  store i32 %sub2.i, ptr %hw_ready.i, align 4
  %sw_io.i = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %3, i32 11, i32 7
  %19 = ptrtoint ptr %sw_io.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sw_io.i, align 4
  %add3.i = add i32 %20, %bytes.0.i
  store i32 %add3.i, ptr %sw_io.i, align 4
  %sw_buffer_size.i = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %3, i32 11, i32 5
  %21 = ptrtoint ptr %sw_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sw_buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i, i32 %22)
  %cmp5.not.i = icmp ult i32 %add3.i, %22
  br i1 %cmp5.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then6.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i = sub i32 %add3.i, %22
  %23 = ptrtoint ptr %sw_io.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub9.i, ptr %sw_io.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then6.i, %if.end.i.if.end10.i_crit_edge
  %ops.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 10
  %24 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i, align 4
  %ack.i = getelementptr inbounds %struct.snd_pcm_ops, ptr %25, i32 0, i32 15
  %26 = ptrtoint ptr %ack.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ack.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.end10.i.snd_pcm_indirect_playback_pointer.exit_crit_edge, label %if.then11.i

if.end10.i.snd_pcm_indirect_playback_pointer.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_pcm_indirect_playback_pointer.exit

if.then11.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %27(ptr noundef %substream) #7
  br label %snd_pcm_indirect_playback_pointer.exit

snd_pcm_indirect_playback_pointer.exit:           ; preds = %if.then11.i, %if.end10.i.snd_pcm_indirect_playback_pointer.exit_crit_edge
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
  br label %cleanup

cleanup:                                          ; preds = %snd_pcm_indirect_playback_pointer.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div.i.i, %snd_pcm_indirect_playback_pointer.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_fx8010_playback_transfer(ptr nocapture noundef readonly %substream) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %number, align 4
  %pcm_rec = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %3, i32 11
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %4 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime1.i, align 4
  %control.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 38
  %6 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %control.i, align 8
  %appl_ptr2.i = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %appl_ptr2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %appl_ptr2.i, align 4
  %appl_ptr3.i = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %3, i32 11, i32 9
  %10 = ptrtoint ptr %appl_ptr3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %appl_ptr3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %tobool.not.i = icmp eq i32 %9, %11
  br i1 %tobool.not.i, label %entry.if.end12.i_crit_edge, label %if.then.i

entry.if.end12.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.then.i:                                        ; preds = %entry
  %sub.i = sub i32 %9, %11
  %boundary.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 33
  %12 = ptrtoint ptr %boundary.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %boundary.i, align 8
  %div1.i = lshr i32 %13, 1
  %sub4.i = sub nsw i32 0, %div1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub4.i)
  %cmp.i = icmp slt i32 %sub.i, %sub4.i
  %add.i = select i1 %cmp.i, i32 %13, i32 0
  %spec.select.i = add i32 %add.i, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp7.i = icmp slt i32 %spec.select.i, 0
  br i1 %cmp7.i, label %if.then.i.snd_pcm_indirect_playback_transfer.exit_crit_edge, label %if.end9.i

if.then.i.snd_pcm_indirect_playback_transfer.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_pcm_indirect_playback_transfer.exit

if.end9.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 21
  %14 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %15, %spec.select.i
  %div1.i.i = lshr i32 %mul.i.i, 3
  %sw_ready.i = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %3, i32 11, i32 8
  %16 = ptrtoint ptr %sw_ready.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sw_ready.i, align 4
  %add10.i = add i32 %div1.i.i, %17
  store i32 %add10.i, ptr %sw_ready.i, align 4
  %18 = ptrtoint ptr %appl_ptr3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %9, ptr %appl_ptr3.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end9.i, %entry.if.end12.i_crit_edge
  %hw_queue_size.i = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %3, i32 11, i32 1
  %19 = ptrtoint ptr %hw_queue_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hw_queue_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool13.not.i = icmp eq i32 %20, 0
  br i1 %tobool13.not.i, label %cond.false.i, label %if.end12.i.cond.end.i_crit_edge

if.end12.i.cond.end.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %pcm_rec to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pcm_rec, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end12.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %22, %cond.false.i ], [ %20, %if.end12.i.cond.end.i_crit_edge ]
  %sw_ready16.i = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %3, i32 11, i32 8
  %hw_ready.i = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %3, i32 11, i32 4
  %23 = ptrtoint ptr %hw_ready.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hw_ready.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %24)
  %cmp159.i = icmp sgt i32 %cond.i, %24
  br i1 %cmp159.i, label %land.rhs.lr.ph.i, label %cond.end.i.snd_pcm_indirect_playback_transfer.exit_crit_edge

cond.end.i.snd_pcm_indirect_playback_transfer.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_pcm_indirect_playback_transfer.exit

land.rhs.lr.ph.i:                                 ; preds = %cond.end.i
  %hw_data.i = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %3, i32 11, i32 2
  %sw_buffer_size.i = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %3, i32 11, i32 5
  %sw_data.i = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 12, i32 %3, i32 11, i32 6
  %25 = ptrtoint ptr %sw_ready16.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr.i = load i32, ptr %sw_ready16.i, align 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %cleanup.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %26 = phi i32 [ %.pr.i, %land.rhs.lr.ph.i ], [ %sub56.i, %cleanup.i.land.rhs.i_crit_edge ]
  %27 = phi i32 [ %24, %land.rhs.lr.ph.i ], [ %add54.i, %cleanup.i.land.rhs.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp17.i = icmp sgt i32 %26, 0
  br i1 %cmp17.i, label %while.body.i, label %land.rhs.i.snd_pcm_indirect_playback_transfer.exit_crit_edge

land.rhs.i.snd_pcm_indirect_playback_transfer.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_pcm_indirect_playback_transfer.exit

while.body.i:                                     ; preds = %land.rhs.i
  %28 = ptrtoint ptr %pcm_rec to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pcm_rec, align 4
  %30 = ptrtoint ptr %hw_data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hw_data.i, align 4
  %sub19.i = sub i32 %29, %31
  %32 = ptrtoint ptr %sw_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sw_buffer_size.i, align 4
  %34 = ptrtoint ptr %sw_data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sw_data.i, align 4
  %sub20.i = sub i32 %33, %35
  %sub22.i = sub i32 %cond.i, %27
  %36 = tail call i32 @llvm.smin.i32(i32 %26, i32 %sub22.i) #7
  %37 = tail call i32 @llvm.umin.i32(i32 %sub19.i, i32 %36) #7
  %38 = tail call i32 @llvm.umin.i32(i32 %sub20.i, i32 %37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool34.not.i = icmp eq i32 %38, 0
  br i1 %tobool34.not.i, label %while.body.i.snd_pcm_indirect_playback_transfer.exit_crit_edge, label %if.end36.i

while.body.i.snd_pcm_indirect_playback_transfer.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_pcm_indirect_playback_transfer.exit

if.end36.i:                                       ; preds = %while.body.i
  %39 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %private_data, align 4
  %41 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %number, align 4
  %buffer_size.i.i = getelementptr %struct.snd_emu10k1, ptr %40, i32 0, i32 28, i32 12, i32 %42, i32 3
  %43 = ptrtoint ptr %buffer_size.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %buffer_size.i.i, align 4
  %45 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %runtime1.i, align 4
  %dma_area.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %46, i32 0, i32 50
  %47 = ptrtoint ptr %dma_area.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dma_area.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %48, i32 %35
  %shr.i.i = lshr i32 %38, 2
  %tram_pos2.i.i = getelementptr %struct.snd_emu10k1, ptr %40, i32 0, i32 28, i32 12, i32 %42, i32 12
  %49 = ptrtoint ptr %tram_pos2.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tram_pos2.i.i, align 4
  %tram_shift3.i.i = getelementptr %struct.snd_emu10k1, ptr %40, i32 0, i32 28, i32 12, i32 %42, i32 13
  %51 = ptrtoint ptr %tram_shift3.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tram_shift3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %shr.i.i)
  %cmp88.i.i = icmp ult i32 %50, %shr.i.i
  br i1 %cmp88.i.i, label %while.body.lr.ph.i.i, label %entry.while.end_crit_edge.i.i

entry.while.end_crit_edge.i.i:                    ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  %.pre.i.i = lshr i32 %44, 1
  br label %while.end.i.i

while.body.lr.ph.i.i:                             ; preds = %if.end36.i
  %area.i.i = getelementptr inbounds %struct.snd_emu10k1, ptr %40, i32 0, i32 28, i32 5, i32 1
  %div57.i.i = lshr i32 %44, 1
  %sub13.i.i = add nsw i32 %div57.i.i, -1
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %snd_emu10k1_fx8010_playback_tram_poke1.exit.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %tram_shift.093.i.i = phi i32 [ %52, %while.body.lr.ph.i.i ], [ %inc.i.i, %snd_emu10k1_fx8010_playback_tram_poke1.exit.i.i.while.body.i.i_crit_edge ]
  %tram_pos.092.i.i = phi i32 [ %50, %while.body.lr.ph.i.i ], [ %sub13.i.i, %snd_emu10k1_fx8010_playback_tram_poke1.exit.i.i.while.body.i.i_crit_edge ]
  %frames.091.i.i = phi i32 [ %shr.i.i, %while.body.lr.ph.i.i ], [ %sub.i.i, %snd_emu10k1_fx8010_playback_tram_poke1.exit.i.i.while.body.i.i_crit_edge ]
  %src.089.i.i = phi ptr [ %add.ptr.i.i, %while.body.lr.ph.i.i ], [ %add.ptr11.i.i, %snd_emu10k1_fx8010_playback_tram_poke1.exit.i.i.while.body.i.i_crit_edge ]
  %add.i.i = add nuw i32 %tram_pos.092.i.i, 1
  %53 = ptrtoint ptr %area.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %area.i.i, align 4
  %add.ptr5.i.i = getelementptr i16, ptr %54, i32 %tram_pos.092.i.i
  %add.ptr10.i.i = getelementptr i16, ptr %add.ptr5.i.i, i32 %div57.i.i
  %and.i.i.i = and i32 %tram_shift.093.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %while.body.i.i.while.body.i.i.i_crit_edge, label %while.body.i.i.while.body7.i.i.i_crit_edge

while.body.i.i.while.body7.i.i.i_crit_edge:       ; preds = %while.body.i.i
  br label %while.body7.i.i.i

while.body.i.i.while.body.i.i.i_crit_edge:        ; preds = %while.body.i.i
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %while.body.i.i.while.body.i.i.i_crit_edge
  %dst_left.addr.029.i.i.i = phi ptr [ %incdec.ptr1.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %add.ptr5.i.i, %while.body.i.i.while.body.i.i.i_crit_edge ]
  %count.addr.028.i.i.i = phi i32 [ %dec.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %add.i.i, %while.body.i.i.while.body.i.i.i_crit_edge ]
  %src.addr.027.i.i.i = phi ptr [ %incdec.ptr2.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %src.089.i.i, %while.body.i.i.while.body.i.i.i_crit_edge ]
  %dst_right.addr.026.i.i.i = phi ptr [ %incdec.ptr3.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %add.ptr10.i.i, %while.body.i.i.while.body.i.i.i_crit_edge ]
  %dec.i.i.i = add i32 %count.addr.028.i.i.i, -1
  %incdec.ptr.i.i.i = getelementptr i16, ptr %src.addr.027.i.i.i, i32 1
  %55 = ptrtoint ptr %src.addr.027.i.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %src.addr.027.i.i.i, align 2
  %incdec.ptr1.i.i.i = getelementptr i16, ptr %dst_left.addr.029.i.i.i, i32 -1
  %57 = ptrtoint ptr %dst_left.addr.029.i.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %dst_left.addr.029.i.i.i, align 2
  %incdec.ptr2.i.i.i = getelementptr i16, ptr %src.addr.027.i.i.i, i32 2
  %58 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %incdec.ptr.i.i.i, align 2
  %incdec.ptr3.i.i.i = getelementptr i16, ptr %dst_right.addr.026.i.i.i, i32 -1
  %60 = ptrtoint ptr %dst_right.addr.026.i.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %dst_right.addr.026.i.i.i, align 2
  %tobool.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %while.body.i.i.i.snd_emu10k1_fx8010_playback_tram_poke1.exit.i.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i.i

while.body.i.i.i.snd_emu10k1_fx8010_playback_tram_poke1.exit.i.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_emu10k1_fx8010_playback_tram_poke1.exit.i.i

while.body7.i.i.i:                                ; preds = %while.body7.i.i.i.while.body7.i.i.i_crit_edge, %while.body.i.i.while.body7.i.i.i_crit_edge
  %dst_left.addr.124.i.i.i = phi ptr [ %incdec.ptr11.i.i.i, %while.body7.i.i.i.while.body7.i.i.i_crit_edge ], [ %add.ptr5.i.i, %while.body.i.i.while.body7.i.i.i_crit_edge ]
  %count.addr.123.i.i.i = phi i32 [ %dec5.i.i.i, %while.body7.i.i.i.while.body7.i.i.i_crit_edge ], [ %add.i.i, %while.body.i.i.while.body7.i.i.i_crit_edge ]
  %src.addr.122.i.i.i = phi ptr [ %incdec.ptr10.i.i.i, %while.body7.i.i.i.while.body7.i.i.i_crit_edge ], [ %src.089.i.i, %while.body.i.i.while.body7.i.i.i_crit_edge ]
  %dst_right.addr.121.i.i.i = phi ptr [ %incdec.ptr9.i.i.i, %while.body7.i.i.i.while.body7.i.i.i_crit_edge ], [ %add.ptr10.i.i, %while.body.i.i.while.body7.i.i.i_crit_edge ]
  %dec5.i.i.i = add i32 %count.addr.123.i.i.i, -1
  %incdec.ptr8.i.i.i = getelementptr i16, ptr %src.addr.122.i.i.i, i32 1
  %61 = ptrtoint ptr %src.addr.122.i.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %src.addr.122.i.i.i, align 2
  %incdec.ptr9.i.i.i = getelementptr i16, ptr %dst_right.addr.121.i.i.i, i32 -1
  %63 = ptrtoint ptr %dst_right.addr.121.i.i.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %dst_right.addr.121.i.i.i, align 2
  %incdec.ptr10.i.i.i = getelementptr i16, ptr %src.addr.122.i.i.i, i32 2
  %64 = ptrtoint ptr %incdec.ptr8.i.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %incdec.ptr8.i.i.i, align 2
  %incdec.ptr11.i.i.i = getelementptr i16, ptr %dst_left.addr.124.i.i.i, i32 -1
  %66 = ptrtoint ptr %dst_left.addr.124.i.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %dst_left.addr.124.i.i.i, align 2
  %tobool6.not.i.i.i = icmp eq i32 %dec5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %while.body7.i.i.i.snd_emu10k1_fx8010_playback_tram_poke1.exit.i.i_crit_edge, label %while.body7.i.i.i.while.body7.i.i.i_crit_edge

while.body7.i.i.i.while.body7.i.i.i_crit_edge:    ; preds = %while.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body7.i.i.i

while.body7.i.i.i.snd_emu10k1_fx8010_playback_tram_poke1.exit.i.i_crit_edge: ; preds = %while.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_emu10k1_fx8010_playback_tram_poke1.exit.i.i

snd_emu10k1_fx8010_playback_tram_poke1.exit.i.i:  ; preds = %while.body7.i.i.i.snd_emu10k1_fx8010_playback_tram_poke1.exit.i.i_crit_edge, %while.body.i.i.i.snd_emu10k1_fx8010_playback_tram_poke1.exit.i.i_crit_edge
  %mul.i4.i = shl i32 %add.i.i, 1
  %add.ptr11.i.i = getelementptr i16, ptr %src.089.i.i, i32 %mul.i4.i
  %sub.i.i = sub i32 %frames.091.i.i, %add.i.i
  %inc.i.i = add i32 %tram_shift.093.i.i, 1
  %cmp.i.i = icmp ult i32 %sub13.i.i, %sub.i.i
  br i1 %cmp.i.i, label %snd_emu10k1_fx8010_playback_tram_poke1.exit.i.i.while.body.i.i_crit_edge, label %snd_emu10k1_fx8010_playback_tram_poke1.exit.i.i.while.end.i.i_crit_edge

snd_emu10k1_fx8010_playback_tram_poke1.exit.i.i.while.end.i.i_crit_edge: ; preds = %snd_emu10k1_fx8010_playback_tram_poke1.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i

snd_emu10k1_fx8010_playback_tram_poke1.exit.i.i.while.body.i.i_crit_edge: ; preds = %snd_emu10k1_fx8010_playback_tram_poke1.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %snd_emu10k1_fx8010_playback_tram_poke1.exit.i.i.while.end.i.i_crit_edge, %entry.while.end_crit_edge.i.i
  %div2256.pre-phi.i.i = phi i32 [ %.pre.i.i, %entry.while.end_crit_edge.i.i ], [ %div57.i.i, %snd_emu10k1_fx8010_playback_tram_poke1.exit.i.i.while.end.i.i_crit_edge ]
  %src.0.lcssa.i.i = phi ptr [ %add.ptr.i.i, %entry.while.end_crit_edge.i.i ], [ %add.ptr11.i.i, %snd_emu10k1_fx8010_playback_tram_poke1.exit.i.i.while.end.i.i_crit_edge ]
  %frames.0.lcssa.i.i = phi i32 [ %shr.i.i, %entry.while.end_crit_edge.i.i ], [ %sub.i.i, %snd_emu10k1_fx8010_playback_tram_poke1.exit.i.i.while.end.i.i_crit_edge ]
  %tram_pos.0.lcssa.i.i = phi i32 [ %50, %entry.while.end_crit_edge.i.i ], [ %sub13.i.i, %snd_emu10k1_fx8010_playback_tram_poke1.exit.i.i.while.end.i.i_crit_edge ]
  %tram_shift.0.lcssa.i.i = phi i32 [ %52, %entry.while.end_crit_edge.i.i ], [ %inc.i.i, %snd_emu10k1_fx8010_playback_tram_poke1.exit.i.i.while.end.i.i_crit_edge ]
  %area16.i.i = getelementptr inbounds %struct.snd_emu10k1, ptr %40, i32 0, i32 28, i32 5, i32 1
  %67 = ptrtoint ptr %area16.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %area16.i.i, align 4
  %add.ptr17.i.i = getelementptr i16, ptr %68, i32 %tram_pos.0.lcssa.i.i
  %add.ptr23.i.i = getelementptr i16, ptr %add.ptr17.i.i, i32 %div2256.pre-phi.i.i
  %and.i58.i.i = and i32 %tram_shift.0.lcssa.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i58.i.i)
  %cmp.i59.i.i = icmp eq i32 %and.i58.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frames.0.lcssa.i.i)
  %tobool.not25.i60.i.i = icmp eq i32 %frames.0.lcssa.i.i, 0
  br i1 %cmp.i59.i.i, label %while.cond.preheader.i62.i.i, label %while.cond4.preheader.i61.i.i

while.cond4.preheader.i61.i.i:                    ; preds = %while.end.i.i
  br i1 %tobool.not25.i60.i.i, label %while.cond4.preheader.i61.i.i.cleanup.i_crit_edge, label %while.cond4.preheader.i61.i.i.while.body7.i84.i.i_crit_edge

while.cond4.preheader.i61.i.i.while.body7.i84.i.i_crit_edge: ; preds = %while.cond4.preheader.i61.i.i
  br label %while.body7.i84.i.i

while.cond4.preheader.i61.i.i.cleanup.i_crit_edge: ; preds = %while.cond4.preheader.i61.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

while.cond.preheader.i62.i.i:                     ; preds = %while.end.i.i
  br i1 %tobool.not25.i60.i.i, label %while.cond.preheader.i62.i.i.cleanup.i_crit_edge, label %while.cond.preheader.i62.i.i.while.body.i73.i.i_crit_edge

while.cond.preheader.i62.i.i.while.body.i73.i.i_crit_edge: ; preds = %while.cond.preheader.i62.i.i
  br label %while.body.i73.i.i

while.cond.preheader.i62.i.i.cleanup.i_crit_edge: ; preds = %while.cond.preheader.i62.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

while.body.i73.i.i:                               ; preds = %while.body.i73.i.i.while.body.i73.i.i_crit_edge, %while.cond.preheader.i62.i.i.while.body.i73.i.i_crit_edge
  %dst_left.addr.029.i63.i.i = phi ptr [ %incdec.ptr1.i69.i.i, %while.body.i73.i.i.while.body.i73.i.i_crit_edge ], [ %add.ptr17.i.i, %while.cond.preheader.i62.i.i.while.body.i73.i.i_crit_edge ]
  %count.addr.028.i64.i.i = phi i32 [ %dec.i67.i.i, %while.body.i73.i.i.while.body.i73.i.i_crit_edge ], [ %frames.0.lcssa.i.i, %while.cond.preheader.i62.i.i.while.body.i73.i.i_crit_edge ]
  %src.addr.027.i65.i.i = phi ptr [ %incdec.ptr2.i70.i.i, %while.body.i73.i.i.while.body.i73.i.i_crit_edge ], [ %src.0.lcssa.i.i, %while.cond.preheader.i62.i.i.while.body.i73.i.i_crit_edge ]
  %dst_right.addr.026.i66.i.i = phi ptr [ %incdec.ptr3.i71.i.i, %while.body.i73.i.i.while.body.i73.i.i_crit_edge ], [ %add.ptr23.i.i, %while.cond.preheader.i62.i.i.while.body.i73.i.i_crit_edge ]
  %dec.i67.i.i = add i32 %count.addr.028.i64.i.i, -1
  %incdec.ptr.i68.i.i = getelementptr i16, ptr %src.addr.027.i65.i.i, i32 1
  %69 = ptrtoint ptr %src.addr.027.i65.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %src.addr.027.i65.i.i, align 2
  %incdec.ptr1.i69.i.i = getelementptr i16, ptr %dst_left.addr.029.i63.i.i, i32 -1
  %71 = ptrtoint ptr %dst_left.addr.029.i63.i.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %dst_left.addr.029.i63.i.i, align 2
  %incdec.ptr2.i70.i.i = getelementptr i16, ptr %src.addr.027.i65.i.i, i32 2
  %72 = ptrtoint ptr %incdec.ptr.i68.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %incdec.ptr.i68.i.i, align 2
  %incdec.ptr3.i71.i.i = getelementptr i16, ptr %dst_right.addr.026.i66.i.i, i32 -1
  %74 = ptrtoint ptr %dst_right.addr.026.i66.i.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %dst_right.addr.026.i66.i.i, align 2
  %tobool.not.i72.i.i = icmp eq i32 %dec.i67.i.i, 0
  br i1 %tobool.not.i72.i.i, label %while.body.i73.i.i.cleanup.i_crit_edge, label %while.body.i73.i.i.while.body.i73.i.i_crit_edge

while.body.i73.i.i.while.body.i73.i.i_crit_edge:  ; preds = %while.body.i73.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i73.i.i

while.body.i73.i.i.cleanup.i_crit_edge:           ; preds = %while.body.i73.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

while.body7.i84.i.i:                              ; preds = %while.body7.i84.i.i.while.body7.i84.i.i_crit_edge, %while.cond4.preheader.i61.i.i.while.body7.i84.i.i_crit_edge
  %dst_left.addr.124.i74.i.i = phi ptr [ %incdec.ptr11.i82.i.i, %while.body7.i84.i.i.while.body7.i84.i.i_crit_edge ], [ %add.ptr17.i.i, %while.cond4.preheader.i61.i.i.while.body7.i84.i.i_crit_edge ]
  %count.addr.123.i75.i.i = phi i32 [ %dec5.i78.i.i, %while.body7.i84.i.i.while.body7.i84.i.i_crit_edge ], [ %frames.0.lcssa.i.i, %while.cond4.preheader.i61.i.i.while.body7.i84.i.i_crit_edge ]
  %src.addr.122.i76.i.i = phi ptr [ %incdec.ptr10.i81.i.i, %while.body7.i84.i.i.while.body7.i84.i.i_crit_edge ], [ %src.0.lcssa.i.i, %while.cond4.preheader.i61.i.i.while.body7.i84.i.i_crit_edge ]
  %dst_right.addr.121.i77.i.i = phi ptr [ %incdec.ptr9.i80.i.i, %while.body7.i84.i.i.while.body7.i84.i.i_crit_edge ], [ %add.ptr23.i.i, %while.cond4.preheader.i61.i.i.while.body7.i84.i.i_crit_edge ]
  %dec5.i78.i.i = add i32 %count.addr.123.i75.i.i, -1
  %incdec.ptr8.i79.i.i = getelementptr i16, ptr %src.addr.122.i76.i.i, i32 1
  %75 = ptrtoint ptr %src.addr.122.i76.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %src.addr.122.i76.i.i, align 2
  %incdec.ptr9.i80.i.i = getelementptr i16, ptr %dst_right.addr.121.i77.i.i, i32 -1
  %77 = ptrtoint ptr %dst_right.addr.121.i77.i.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %dst_right.addr.121.i77.i.i, align 2
  %incdec.ptr10.i81.i.i = getelementptr i16, ptr %src.addr.122.i76.i.i, i32 2
  %78 = ptrtoint ptr %incdec.ptr8.i79.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %incdec.ptr8.i79.i.i, align 2
  %incdec.ptr11.i82.i.i = getelementptr i16, ptr %dst_left.addr.124.i74.i.i, i32 -1
  %80 = ptrtoint ptr %dst_left.addr.124.i74.i.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %dst_left.addr.124.i74.i.i, align 2
  %tobool6.not.i83.i.i = icmp eq i32 %dec5.i78.i.i, 0
  br i1 %tobool6.not.i83.i.i, label %while.body7.i84.i.i.cleanup.i_crit_edge, label %while.body7.i84.i.i.while.body7.i84.i.i_crit_edge

while.body7.i84.i.i.while.body7.i84.i.i_crit_edge: ; preds = %while.body7.i84.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body7.i84.i.i

while.body7.i84.i.i.cleanup.i_crit_edge:          ; preds = %while.body7.i84.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %while.body7.i84.i.i.cleanup.i_crit_edge, %while.body.i73.i.i.cleanup.i_crit_edge, %while.cond.preheader.i62.i.i.cleanup.i_crit_edge, %while.cond4.preheader.i61.i.i.cleanup.i_crit_edge
  %sub24.i.i = sub i32 %tram_pos.0.lcssa.i.i, %frames.0.lcssa.i.i
  %81 = ptrtoint ptr %tram_pos2.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %sub24.i.i, ptr %tram_pos2.i.i, align 4
  %82 = ptrtoint ptr %tram_shift3.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %tram_shift.0.lcssa.i.i, ptr %tram_shift3.i.i, align 4
  %83 = ptrtoint ptr %hw_data.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %hw_data.i, align 4
  %add38.i = add i32 %84, %38
  %85 = ptrtoint ptr %pcm_rec to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pcm_rec, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add38.i, i32 %86)
  %cmp41.i = icmp eq i32 %add38.i, %86
  %spec.store.select.i = select i1 %cmp41.i, i32 0, i32 %add38.i
  %87 = ptrtoint ptr %hw_data.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %spec.store.select.i, ptr %hw_data.i, align 4
  %88 = ptrtoint ptr %sw_data.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %sw_data.i, align 4
  %add46.i = add i32 %89, %38
  %90 = ptrtoint ptr %sw_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %sw_buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add46.i, i32 %91)
  %cmp49.i = icmp eq i32 %add46.i, %91
  %spec.store.select3.i = select i1 %cmp49.i, i32 0, i32 %add46.i
  %92 = ptrtoint ptr %sw_data.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %spec.store.select3.i, ptr %sw_data.i, align 4
  %93 = ptrtoint ptr %hw_ready.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %hw_ready.i, align 4
  %add54.i = add i32 %94, %38
  store i32 %add54.i, ptr %hw_ready.i, align 4
  %95 = ptrtoint ptr %sw_ready16.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %sw_ready16.i, align 4
  %sub56.i = sub i32 %96, %38
  store i32 %sub56.i, ptr %sw_ready16.i, align 4
  %cmp15.i = icmp sgt i32 %cond.i, %add54.i
  br i1 %cmp15.i, label %cleanup.i.land.rhs.i_crit_edge, label %cleanup.i.snd_pcm_indirect_playback_transfer.exit_crit_edge

cleanup.i.snd_pcm_indirect_playback_transfer.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_pcm_indirect_playback_transfer.exit

cleanup.i.land.rhs.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

snd_pcm_indirect_playback_transfer.exit:          ; preds = %cleanup.i.snd_pcm_indirect_playback_transfer.exit_crit_edge, %while.body.i.snd_pcm_indirect_playback_transfer.exit_crit_edge, %land.rhs.i.snd_pcm_indirect_playback_transfer.exit_crit_edge, %cond.end.i.snd_pcm_indirect_playback_transfer.exit_crit_edge, %if.then.i.snd_pcm_indirect_playback_transfer.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.then.i.snd_pcm_indirect_playback_transfer.exit_crit_edge ], [ 0, %cond.end.i.snd_pcm_indirect_playback_transfer.exit_crit_edge ], [ 0, %cleanup.i.snd_pcm_indirect_playback_transfer.exit_crit_edge ], [ 0, %while.body.i.snd_pcm_indirect_playback_transfer.exit_crit_edge ], [ 0, %land.rhs.i.snd_pcm_indirect_playback_transfer.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_fx8010_register_irq_handler(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_emu10k1_fx8010_playback_irq(ptr nocapture noundef readnone %emu, ptr noundef %private_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @snd_pcm_period_elapsed(ptr noundef %private_data) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_fx8010_unregister_irq_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_capture_efx_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool.not, i32 32, i32 64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 132) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %call7.i.i, align 8
  %type = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %type, align 4
  %substream3 = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %substream3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %substream, ptr %substream3, align 8
  %capture_ipr = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %call7.i.i, i32 0, i32 10
  %10 = ptrtoint ptr %capture_ipr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 12288, ptr %capture_ipr, align 8
  %capture_inte = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %call7.i.i, i32 0, i32 11
  %11 = ptrtoint ptr %capture_inte to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 32, ptr %capture_inte, align 4
  %capture_ba_reg = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %call7.i.i, i32 0, i32 12
  %12 = ptrtoint ptr %capture_ba_reg to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 71, ptr %capture_ba_reg, align 8
  %capture_bs_reg = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %call7.i.i, i32 0, i32 13
  %13 = ptrtoint ptr %capture_bs_reg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 75, ptr %capture_bs_reg, align 4
  %capture_idx_reg = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %call7.i.i, i32 0, i32 14
  %14 = ptrtoint ptr %capture_idx_reg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 101, ptr %capture_idx_reg, align 8
  %15 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %runtime1, align 4
  %private_data5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 44
  %17 = ptrtoint ptr %private_data5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %private_data5, align 8
  %18 = load ptr, ptr %runtime1, align 4
  %private_free = getelementptr inbounds %struct.snd_pcm_runtime, ptr %18, i32 0, i32 45
  %19 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @snd_emu10k1_pcm_free_substream, ptr %private_free, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %20 = call ptr @memcpy(ptr %hw, ptr @snd_emu10k1_capture_efx, i32 64)
  %rates = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 2
  %21 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 128, ptr %rates, align 8
  %rate_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 4
  %22 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 48000, ptr %rate_max, align 8
  %rate_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 3
  %23 = ptrtoint ptr %rate_min to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 48000, ptr %rate_min, align 4
  %reg_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 41
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #7
  %card_capabilities = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %card_capabilities, align 4
  %emu_model = getelementptr inbounds %struct.snd_emu_chip_details, ptr %25, i32 0, i32 15
  %26 = ptrtoint ptr %emu_model to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %emu_model, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool10.not = icmp eq i8 %27, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end
  %internal_clock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 52, i32 4
  %28 = ptrtoint ptr %internal_clock to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %internal_clock, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %29, label %if.then11.sw.epilog_crit_edge [
    i32 0, label %if.then11.sw.epilog.sink.split_crit_edge
    i32 1, label %sw.bb20
  ]

if.then11.sw.epilog.sink.split_crit_edge:         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.then11.sw.epilog_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb20, %if.then11.sw.epilog.sink.split_crit_edge
  %.sink109 = phi i32 [ 128, %sw.bb20 ], [ 64, %if.then11.sw.epilog.sink.split_crit_edge ]
  %.sink108 = phi i32 [ 48000, %sw.bb20 ], [ 44100, %if.then11.sw.epilog.sink.split_crit_edge ]
  %31 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink109, ptr %rates, align 8
  %32 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink108, ptr %rate_max, align 8
  %33 = ptrtoint ptr %rate_min to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink108, ptr %rate_min, align 4
  %channels_max28 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 6
  %34 = ptrtoint ptr %channels_max28 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 16, ptr %channels_max28, align 8
  %channels_min30 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 5
  %35 = ptrtoint ptr %channels_min30 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 16, ptr %channels_min30, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.then11.sw.epilog_crit_edge
  %formats = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 1
  %36 = ptrtoint ptr %formats to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 1024, ptr %formats, align 8
  br label %if.end46

if.else:                                          ; preds = %if.end
  %channels_max33 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 6
  %37 = ptrtoint ptr %channels_max33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %channels_max33, align 8
  %channels_min35 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 5
  %38 = ptrtoint ptr %channels_min35 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %channels_min35, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.else
  %idx.0107 = phi i32 [ 0, %if.else ], [ %inc45, %for.inc.for.body_crit_edge ]
  %div106 = lshr i32 %idx.0107, 5
  %arrayidx = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 74, i32 %div106
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx, align 4
  %rem105 = and i32 %idx.0107, 31
  %shl = shl nuw i32 1, %rem105
  %and = and i32 %40, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %for.body.for.inc_crit_edge, label %if.then38

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then38:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %channels_min35 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %channels_min35, align 4
  %inc = add i32 %42, 1
  store i32 %inc, ptr %channels_min35, align 4
  %43 = ptrtoint ptr %channels_max33 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %channels_max33, align 8
  %inc43 = add i32 %44, 1
  store i32 %inc43, ptr %channels_max33, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then38, %for.body.for.inc_crit_edge
  %inc45 = add nuw nsw i32 %idx.0107, 1
  %exitcond.not = icmp eq i32 %inc45, %cond
  br i1 %exitcond.not, label %for.inc.if.end46_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.if.end46_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.end46:                                         ; preds = %for.inc.if.end46_crit_edge, %sw.epilog
  %efx_voices_mask47 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 74
  %45 = ptrtoint ptr %efx_voices_mask47 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %efx_voices_mask47, align 4
  %capture_cr_val = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %call7.i.i, i32 0, i32 15
  %47 = ptrtoint ptr %capture_cr_val to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %capture_cr_val, align 4
  %arrayidx50 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 74, i32 1
  %48 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx50, align 4
  %capture_cr_val2 = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %call7.i.i, i32 0, i32 16
  %50 = ptrtoint ptr %capture_cr_val2 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %capture_cr_val2, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #7
  %capture_efx_interrupt = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 64
  %51 = ptrtoint ptr %capture_efx_interrupt to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @snd_emu10k1_pcm_efx_interrupt, ptr %capture_efx_interrupt, align 4
  %pcm_capture_efx_substream = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 69
  %52 = ptrtoint ptr %pcm_capture_efx_substream to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %substream, ptr %pcm_capture_efx_substream, align 4
  %call52 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 14, ptr noundef nonnull @hw_constraints_capture_period_sizes) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end46 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_emu10k1_capture_efx_close(ptr nocapture noundef readonly %substream) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %capture_interrupt = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 62
  %2 = ptrtoint ptr %capture_interrupt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %capture_interrupt, align 4
  %pcm_capture_efx_substream = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 69
  %3 = ptrtoint ptr %pcm_capture_efx_substream to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %pcm_capture_efx_substream, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_emu10k1_pcm_efx_interrupt(ptr nocapture noundef readonly %emu, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm_capture_efx_substream = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 69
  %0 = ptrtoint ptr %pcm_capture_efx_substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm_capture_efx_substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %1) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_emu10k1_pcm_efx_voices_mask_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool.not, i32 32, i32 64
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %5 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %7 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_pcm_efx_voices_mask_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool.not, i32 32, i32 64
  %reg_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 41
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #7
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %idx.014 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %div13 = lshr i32 %idx.014, 5
  %arrayidx = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 74, i32 %div13
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %rem12 = and i32 %idx.014, 31
  %6 = lshr i32 %5, %rem12
  %7 = and i32 %6, 1
  %arrayidx3 = getelementptr [128 x i32], ptr %value, i32 0, i32 %idx.014
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx3, align 4
  %inc = add nuw nsw i32 %idx.014, 1
  %exitcond.not = icmp eq i32 %inc, %cond
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_pcm_efx_voices_mask_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %nval = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nval) #7
  %2 = getelementptr inbounds [2 x i32], ptr %nval, i32 0, i32 1
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %cond = select i1 %tobool.not, i32 32, i32 64
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %2, align 4
  %6 = ptrtoint ptr %nval to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %nval, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.cond9.preheader:                              ; preds = %for.inc
  %cond3 = select i1 %tobool.not, i32 6, i32 7
  %7 = zext i32 %bits.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %bits.1, label %for.cond9.6 [
    i32 1, label %for.cond9.preheader.for.end18_crit_edge
    i32 2, label %for.end18.fold.split
    i32 4, label %for.end18.fold.split64
    i32 8, label %for.end18.fold.split65
    i32 16, label %for.end18.fold.split66
    i32 32, label %for.end18.fold.split67
  ]

for.cond9.preheader.for.end18_crit_edge:          ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end18

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %idx.062 = phi i32 [ 0, %entry ], [ %inc8, %for.inc.for.body_crit_edge ]
  %bits.061 = phi i32 [ 0, %entry ], [ %bits.1, %for.inc.for.body_crit_edge ]
  %arrayidx5 = getelementptr [128 x i32], ptr %value, i32 0, i32 %idx.062
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %rem59 = and i32 %idx.062, 31
  %shl = shl nuw i32 1, %rem59
  %div60 = lshr i32 %idx.062, 5
  %arrayidx7 = getelementptr [2 x i32], ptr %nval, i32 0, i32 %div60
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx7, align 4
  %or = or i32 %11, %shl
  store i32 %or, ptr %arrayidx7, align 4
  %inc = add i32 %bits.061, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %bits.1 = phi i32 [ %inc, %if.then ], [ %bits.061, %for.body.for.inc_crit_edge ]
  %inc8 = add nuw nsw i32 %idx.062, 1
  %exitcond.not = icmp eq i32 %inc8, %cond
  br i1 %exitcond.not, label %for.cond9.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond9.6:                                      ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %bits.1)
  %cmp13.6 = icmp eq i32 %bits.1, 64
  %or.cond.6 = select i1 %tobool.not, i1 true, i1 %cmp13.6
  %spec.select = select i1 %or.cond.6, i32 6, i32 7
  br label %for.end18

for.end18.fold.split:                             ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end18

for.end18.fold.split64:                           ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end18

for.end18.fold.split65:                           ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end18

for.end18.fold.split66:                           ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end18

for.end18.fold.split67:                           ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end18

for.end18:                                        ; preds = %for.end18.fold.split67, %for.end18.fold.split66, %for.end18.fold.split65, %for.end18.fold.split64, %for.end18.fold.split, %for.cond9.6, %for.cond9.preheader.for.end18_crit_edge
  %idx.1.lcssa = phi i32 [ 0, %for.cond9.preheader.for.end18_crit_edge ], [ 1, %for.end18.fold.split ], [ 2, %for.end18.fold.split64 ], [ 3, %for.end18.fold.split65 ], [ 4, %for.end18.fold.split66 ], [ 5, %for.end18.fold.split67 ], [ %spec.select, %for.cond9.6 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.1.lcssa, i32 %cond3)
  %cmp19.not = icmp ult i32 %idx.1.lcssa, %cond3
  br i1 %cmp19.not, label %if.end21, label %for.end18.cleanup_crit_edge

for.end18.cleanup_crit_edge:                      ; preds = %for.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %for.end18
  %reg_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 41
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #7
  %12 = ptrtoint ptr %nval to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nval, align 4
  %efx_voices_mask = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 74
  %14 = ptrtoint ptr %efx_voices_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %efx_voices_mask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp24.not = icmp eq i32 %13, %15
  br i1 %cmp24.not, label %lor.rhs, label %if.end21.lor.end_crit_edge

if.end21.lor.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

lor.rhs:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %2, align 4
  %arrayidx27 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 74, i32 1
  %18 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp28 = icmp ne i32 %17, %19
  %phi.cast = zext i1 %cmp28 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end21.lor.end_crit_edge
  %20 = phi i32 [ 1, %if.end21.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  %21 = ptrtoint ptr %efx_voices_mask to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %13, ptr %efx_voices_mask, align 4
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %2, align 4
  %arrayidx34 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 74, i32 1
  %24 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx34, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %lor.end, %for.end18.cleanup_crit_edge
  %retval.0 = phi i32 [ %20, %lor.end ], [ -22, %for.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nval) #7
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !35, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/emu10k1/emupcm.c", i32 1387, i32 31}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/emu10k1/emupcm.c", i32 1398, i32 20}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/pci/emu10k1/emupcm.c", i32 1430, i32 20}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/emu10k1/emupcm.c", i32 1455, i32 31}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/pci/emu10k1/emupcm.c", i32 1464, i32 20}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/emu10k1/emupcm.c", i32 1784, i32 31}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/pci/emu10k1/emupcm.c", i32 1794, i32 20}
!14 = !{ptr @snd_emu10k1_playback_ops, !15, !"snd_emu10k1_playback_ops", i1 false, i1 false}
!15 = !{!"../sound/pci/emu10k1/emupcm.c", i32 1352, i32 33}
!16 = !{ptr @snd_emu10k1_playback, !17, !"snd_emu10k1_playback", i1 false, i1 false}
!17 = !{!"../sound/pci/emu10k1/emupcm.c", i32 961, i32 38}
!18 = !{ptr @snd_emu10k1_capture_ops, !19, !"snd_emu10k1_capture_ops", i1 false, i1 false}
!19 = !{!"../sound/pci/emu10k1/emupcm.c", i32 1362, i32 33}
!20 = !{ptr @snd_emu10k1_capture, !21, !"snd_emu10k1_capture", i1 false, i1 false}
!21 = !{!"../sound/pci/emu10k1/emupcm.c", i32 985, i32 38}
!22 = !{ptr @hw_constraints_capture_period_sizes, !23, !"hw_constraints_capture_period_sizes", i1 false, i1 false}
!23 = !{!"../sound/pci/emu10k1/emupcm.c", i32 165, i32 48}
!24 = !{ptr @capture_period_sizes, !25, !"capture_period_sizes", i1 false, i1 false}
!25 = !{!"../sound/pci/emu10k1/emupcm.c", i32 154, i32 27}
!26 = !{ptr @hw_constraints_capture_rates, !27, !"hw_constraints_capture_rates", i1 false, i1 false}
!27 = !{!"../sound/pci/emu10k1/emupcm.c", i32 175, i32 48}
!28 = !{ptr @capture_rates, !29, !"capture_rates", i1 false, i1 false}
!29 = !{!"../sound/pci/emu10k1/emupcm.c", i32 171, i32 27}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/pci/emu10k1/emupcm.c", i32 607, i32 3}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/pci/emu10k1/emupcm.c", i32 815, i32 5}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @snd_emu10k1_capture_trigger.__UNIQUE_ID_ddebug242, !34, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!38 = !{ptr @snd_emu10k1_efx_playback_ops, !39, !"snd_emu10k1_efx_playback_ops", i1 false, i1 false}
!39 = !{!"../sound/pci/emu10k1/emupcm.c", i32 1371, i32 33}
!40 = !{ptr @snd_emu10k1_efx_playback, !41, !"snd_emu10k1_efx_playback", i1 false, i1 false}
!41 = !{!"../sound/pci/emu10k1/emupcm.c", i32 554, i32 38}
!42 = !{ptr @snd_emu10k1_capture_mic_ops, !43, !"snd_emu10k1_capture_mic_ops", i1 false, i1 false}
!43 = !{!"../sound/pci/emu10k1/emupcm.c", i32 1442, i32 33}
!44 = !{ptr @snd_emu10k1_fx8010_playback_ops, !45, !"snd_emu10k1_fx8010_playback_ops", i1 false, i1 false}
!45 = !{!"../sound/pci/emu10k1/emupcm.c", i32 1768, i32 33}
!46 = !{ptr @snd_emu10k1_fx8010_playback, !47, !"snd_emu10k1_fx8010_playback", i1 false, i1 false}
!47 = !{!"../sound/pci/emu10k1/emupcm.c", i32 1718, i32 38}
!48 = !{ptr @snd_emu10k1_capture_efx_ops, !49, !"snd_emu10k1_capture_efx_ops", i1 false, i1 false}
!49 = !{!"../sound/pci/emu10k1/emupcm.c", i32 1536, i32 33}
!50 = !{ptr @snd_emu10k1_capture_efx, !51, !"snd_emu10k1_capture_efx", i1 false, i1 false}
!51 = !{!"../sound/pci/emu10k1/emupcm.c", i32 1005, i32 38}
!52 = !{ptr @.str.12, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/pci/emu10k1/emupcm.c", i32 1530, i32 10}
!54 = !{ptr @snd_emu10k1_pcm_efx_voices_mask, !55, !"snd_emu10k1_pcm_efx_voices_mask", i1 false, i1 false}
!55 = !{!"../sound/pci/emu10k1/emupcm.c", i32 1528, i32 38}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"auto-init"}
!66 = !{i8 0, i8 2}
!67 = !{i64 2154890860}
!68 = !{i64 5035057}
!69 = !{i64 2148540460, i64 2148540465, i64 2148540478, i64 2148540522, i64 2148540556, i64 2148540577}
!70 = !{i64 2154893904}
