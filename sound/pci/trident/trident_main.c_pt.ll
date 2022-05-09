; ModuleID = '/llk/IR_all_yes/sound/pci/trident/trident_main.c_pt.bc'
source_filename = "../sound/pci/trident/trident_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+snd_trident_start_voice\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_trident_start_voice\09\09\09\09"
module asm "\09.long\09__crc_snd_trident_start_voice\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_trident_start_voice:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_trident_start_voice\22\09\09\09\09\09"
module asm "__kstrtabns_snd_trident_start_voice:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_trident_stop_voice\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_trident_stop_voice\09\09\09\09"
module asm "\09.long\09__crc_snd_trident_stop_voice\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_trident_stop_voice:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_trident_stop_voice\22\09\09\09\09\09"
module asm "__kstrtabns_snd_trident_stop_voice:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_trident_write_voice_regs\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_trident_write_voice_regs\09\09\09\09"
module asm "\09.long\09__crc_snd_trident_write_voice_regs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_trident_write_voice_regs:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_trident_write_voice_regs\22\09\09\09\09\09"
module asm "__kstrtabns_snd_trident_write_voice_regs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_trident_alloc_voice\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_trident_alloc_voice\09\09\09\09"
module asm "\09.long\09__crc_snd_trident_alloc_voice\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_trident_alloc_voice:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_trident_alloc_voice\22\09\09\09\09\09"
module asm "__kstrtabns_snd_trident_alloc_voice:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_trident_free_voice\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_trident_free_voice\09\09\09\09"
module asm "\09.long\09__crc_snd_trident_free_voice\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_trident_free_voice:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_trident_free_voice\22\09\09\09\09\09"
module asm "__kstrtabns_snd_trident_free_voice:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.87, i32 }
%union.anon.87 = type { ptr }
%struct.snd_trident = type { i32, i32, i8, i32, i32, i32, i32, %struct.snd_trident_tlb, i8, i8, i32, i32, ptr, i32, [2 x i32], i32, i32, i8, %struct.snd_4dwave, %struct.spinlock, %struct.spinlock, %struct.snd_dma_device, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [32 x %struct.snd_trident_pcm_mixer], ptr, ptr, ptr, ptr, %struct.spinlock, ptr }
%struct.snd_trident_tlb = type { ptr, i32, ptr, ptr, ptr }
%struct.snd_4dwave = type { i32, [4 x %struct.snd_trident_port], [64 x %struct.snd_trident_voice], i32, i32, i32 }
%struct.snd_trident_port = type { ptr, ptr, i32, i32, i32, i8 }
%struct.snd_trident_voice = type { i32, i8, i32, i8, i8, i8, ptr, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_trident_pcm_mixer = type { ptr, i16, i8, i8, i8, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.83, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.83 = type { ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.gameport = type { ptr, [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, i32, %struct.spinlock, i32, ptr, ptr, ptr, ptr, %struct.mutex, %struct.device, %struct.list_head }
%struct.snd_ac97_template = type { ptr, ptr, ptr, i16, i16, i32, ptr }
%struct.snd_util_memhdr = type { i32, %struct.list_head, i32, i32, i32, %struct.mutex }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.77, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.77 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.84, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%union.anon.84 = type { i32, [28 x i8] }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.snd_util_memblk = type { i32, i32, %struct.list_head }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.68, [64 x i8] }
%union.anon.68 = type { %struct.anon.71, [40 x i8] }
%struct.anon.71 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.72, [128 x i8] }
%union.anon.72 = type { %union.anon.74 }
%union.anon.74 = type { [64 x i64] }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.78, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.78 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }

@__kstrtab_snd_trident_start_voice = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_trident_start_voice = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_trident_start_voice = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_trident_start_voice to i32), ptr @__kstrtab_snd_trident_start_voice, ptr @__kstrtabns_snd_trident_start_voice }, section "___ksymtab+snd_trident_start_voice", align 4
@__kstrtab_snd_trident_stop_voice = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_trident_stop_voice = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_trident_stop_voice = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_trident_stop_voice to i32), ptr @__kstrtab_snd_trident_stop_voice, ptr @__kstrtabns_snd_trident_stop_voice }, section "___ksymtab+snd_trident_stop_voice", align 4
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sound/pci/trident/trident_main.c\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUG?\0A\00", [26 x i8] zeroinitializer }, align 32
@__kstrtab_snd_trident_write_voice_regs = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_trident_write_voice_regs = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_trident_write_voice_regs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_trident_write_voice_regs to i32), ptr @__kstrtab_snd_trident_write_voice_regs, ptr @__kstrtabns_snd_trident_write_voice_regs }, section "___ksymtab+snd_trident_write_voice_regs", align 4
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"trident_dx_nx\00", [18 x i8] zeroinitializer }, align 32
@snd_trident_nx_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_trident_playback_open, ptr @snd_trident_playback_close, ptr null, ptr @snd_trident_hw_params, ptr @snd_trident_hw_free, ptr @snd_trident_playback_prepare, ptr @snd_trident_trigger, ptr null, ptr @snd_trident_playback_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_trident_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_trident_playback_open, ptr @snd_trident_playback_close, ptr null, ptr @snd_trident_hw_params, ptr @snd_trident_hw_free, ptr @snd_trident_playback_prepare, ptr @snd_trident_trigger, ptr null, ptr @snd_trident_playback_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_trident_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_trident_capture_open, ptr @snd_trident_capture_close, ptr null, ptr @snd_trident_capture_hw_params, ptr @snd_trident_hw_free, ptr @snd_trident_capture_prepare, ptr @snd_trident_trigger, ptr null, ptr @snd_trident_capture_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_trident_si7018_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_trident_capture_open, ptr @snd_trident_capture_close, ptr null, ptr @snd_trident_si7018_capture_hw_params, ptr @snd_trident_si7018_capture_hw_free, ptr @snd_trident_si7018_capture_prepare, ptr @snd_trident_trigger, ptr null, ptr @snd_trident_playback_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Trident 4DWave\00", [17 x i8] zeroinitializer }, align 32
@snd_trident_nx_foldback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_trident_foldback_open, ptr @snd_trident_foldback_close, ptr null, ptr @snd_trident_hw_params, ptr @snd_trident_hw_free, ptr @snd_trident_foldback_prepare, ptr @snd_trident_trigger, ptr null, ptr @snd_trident_playback_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_trident_foldback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_trident_foldback_open, ptr @snd_trident_foldback_close, ptr null, ptr @snd_trident_hw_params, ptr @snd_trident_hw_free, ptr @snd_trident_foldback_prepare, ptr @snd_trident_trigger, ptr null, ptr @snd_trident_playback_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Front Mixer\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Reverb Mixer\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Chorus Mixer\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Second AC'97 ADC\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"trident_dx_nx IEC958\00", [43 x i8] zeroinitializer }, align 32
@snd_trident_spdif_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_trident_spdif_open, ptr @snd_trident_spdif_close, ptr null, ptr @snd_trident_spdif_hw_params, ptr @snd_trident_hw_free, ptr @snd_trident_spdif_prepare, ptr @snd_trident_trigger, ptr null, ptr @snd_trident_spdif_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_trident_spdif_7018_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_trident_spdif_open, ptr @snd_trident_spdif_close, ptr null, ptr @snd_trident_spdif_hw_params, ptr @snd_trident_hw_free, ptr @snd_trident_spdif_prepare, ptr @snd_trident_trigger, ptr null, ptr @snd_trident_playback_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Trident 4DWave IEC958\00", [42 x i8] zeroinitializer }, align 32
@snd_trident_create_gameport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str, i32 3160, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cannot allocate memory for gameport\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"snd_trident_create_gameport\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_trident_create_gameport._entry_ptr = internal global ptr @snd_trident_create_gameport._entry, section ".printk_index", align 4
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pci%s/gameport0\00", [16 x i8] zeroinitializer }, align 32
@snd_trident_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str, i32 3512, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"architecture does not support 30bit PCI busmaster DMA\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_trident_create\00", [45 x i8] zeroinitializer }, align 32
@snd_trident_create._entry_ptr = internal global ptr @snd_trident_create._entry, section ".printk_index", align 4
@snd_trident_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&trident->reg_lock\00", [45 x i8] zeroinitializer }, align 32
@snd_trident_create.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&trident->event_lock\00", [43 x i8] zeroinitializer }, align 32
@snd_trident_create.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&trident->voice_alloc\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Trident Audio\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snd_trident\00", [20 x i8] zeroinitializer }, align 32
@snd_trident_create._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.16, ptr @.str, i32 3543, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to grab IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@snd_trident_create._entry_ptr.26 = internal global ptr @snd_trident_create._entry.24, section ".printk_index", align 4
@__kstrtab_snd_trident_alloc_voice = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_trident_alloc_voice = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_trident_alloc_voice = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_trident_alloc_voice to i32), ptr @__kstrtab_snd_trident_alloc_voice, ptr @__kstrtabns_snd_trident_alloc_voice }, section "___ksymtab+snd_trident_alloc_voice", align 4
@__kstrtab_snd_trident_free_voice = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_trident_free_voice = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_trident_free_voice = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_trident_free_voice to i32), ptr @__kstrtab_snd_trident_free_voice, ptr @__kstrtabns_snd_trident_free_voice }, section "___ksymtab+snd_trident_free_voice", align 4
@snd_trident_pm = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @snd_trident_suspend, ptr @snd_trident_resume, ptr @snd_trident_suspend, ptr @snd_trident_resume, ptr @snd_trident_suspend, ptr @snd_trident_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@snd_trident_playback = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 4784387, i64 23, i32 1073742078, i32 4000, i32 48000, i32 1, i32 2, i32 262144, i32 64, i32 262144, i32 1, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_trident_capture = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 4784387, i64 23, i32 1073742078, i32 4000, i32 48000, i32 1, i32 2, i32 131072, i32 64, i32 131072, i32 1, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_trident_foldback = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 4784387, i64 4, i32 128, i32 48000, i32 48000, i32 2, i32 2, i32 131072, i32 64, i32 131072, i32 1, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_trident_spdif = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 4784387, i64 4, i32 224, i32 32000, i32 48000, i32 2, i32 2, i32 131072, i32 64, i32 131072, i32 1, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_trident_spdif_7018 = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 4784387, i64 4, i32 128, i32 48000, i32 48000, i32 2, i32 2, i32 131072, i32 64, i32 131072, i32 1, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@snd_trident_tlb_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str, i32 3325, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to allocate TLB buffer\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_trident_tlb_alloc\00", [42 x i8] zeroinitializer }, align 32
@snd_trident_tlb_alloc._entry_ptr = internal global ptr @snd_trident_tlb_alloc._entry, section ".printk_index", align 4
@snd_trident_tlb_alloc._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str, i32 3336, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unable to allocate silent page\0A\00", [32 x i8] zeroinitializer }, align 32
@snd_trident_tlb_alloc._entry_ptr.31 = internal global ptr @snd_trident_tlb_alloc._entry.29, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@snd_trident_4d_dx_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str, i32 3392, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"AC'97 codec ready error\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_trident_4d_dx_init\00", [41 x i8] zeroinitializer }, align 32
@snd_trident_4d_dx_init._entry_ptr = internal global ptr @snd_trident_4d_dx_init._entry, section ".printk_index", align 4
@snd_trident_4d_nx_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str, i32 3431, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"AC'97 codec ready error [0x%x]\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_trident_4d_nx_init\00", [41 x i8] zeroinitializer }, align 32
@snd_trident_4d_nx_init._entry_ptr = internal global ptr @snd_trident_4d_nx_init._entry, section ".printk_index", align 4
@snd_trident_sis_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.36, ptr @.str, i32 3234, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_trident_sis_reset\00", [42 x i8] zeroinitializer }, align 32
@snd_trident_sis_reset._entry_ptr = internal global ptr @snd_trident_sis_reset._entry, section ".printk_index", align 4
@snd_trident_mixer.ops = internal constant { %struct.snd_ac97_bus_ops, [40 x i8] } { %struct.snd_ac97_bus_ops { ptr null, ptr null, ptr @snd_trident_codec_write, ptr @snd_trident_codec_read, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snd_trident_mixer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str, i32 2956, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"SI7018: the secondary codec - invalid access\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_trident_mixer\00", [46 x i8] zeroinitializer }, align 32
@snd_trident_mixer._entry_ptr = internal global ptr @snd_trident_mixer._entry, section ".printk_index", align 4
@snd_trident_vol_wave_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_trident_vol_control_info, ptr @snd_trident_vol_control_get, ptr @snd_trident_vol_control_put, %union.anon.87 { ptr @db_scale_gvol }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_trident_vol_music_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_trident_vol_control_info, ptr @snd_trident_vol_control_get, ptr @snd_trident_vol_control_put, %union.anon.87 { ptr @db_scale_gvol }, i32 16 }, [48 x i8] zeroinitializer }, align 32
@snd_trident_pcm_vol_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 259, i32 32, ptr @snd_trident_pcm_vol_control_info, ptr @snd_trident_pcm_vol_control_get, ptr @snd_trident_pcm_vol_control_put, %union.anon.87 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_trident_pcm_pan_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 259, i32 32, ptr @snd_trident_pcm_pan_control_info, ptr @snd_trident_pcm_pan_control_get, ptr @snd_trident_pcm_pan_control_put, %union.anon.87 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_trident_pcm_rvol_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 259, i32 32, ptr @snd_trident_pcm_rvol_control_info, ptr @snd_trident_pcm_rvol_control_get, ptr @snd_trident_pcm_rvol_control_put, %union.anon.87 { ptr @db_scale_crvol }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_trident_pcm_cvol_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 259, i32 32, ptr @snd_trident_pcm_cvol_control_info, ptr @snd_trident_pcm_cvol_control_get, ptr @snd_trident_pcm_cvol_control_put, %union.anon.87 { ptr @db_scale_crvol }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_trident_ac97_rear_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_trident_ac97_control_get, ptr @snd_trident_ac97_control_put, %union.anon.87 zeroinitializer, i32 4 }, [48 x i8] zeroinitializer }, align 32
@snd_trident_spdif_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_trident_spdif_control_get, ptr @snd_trident_spdif_control_put, %union.anon.87 zeroinitializer, i32 40 }, [48 x i8] zeroinitializer }, align 32
@snd_trident_spdif_default = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.49, i32 0, i32 0, i32 0, ptr @snd_trident_spdif_default_info, ptr @snd_trident_spdif_default_get, ptr @snd_trident_spdif_default_put, %union.anon.87 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_trident_spdif_mask = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.50, i32 0, i32 1, i32 0, ptr @snd_trident_spdif_mask_info, ptr @snd_trident_spdif_mask_get, ptr null, %union.anon.87 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_trident_spdif_stream = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.51, i32 0, i32 259, i32 0, ptr @snd_trident_spdif_stream_info, ptr @snd_trident_spdif_stream_get, ptr @snd_trident_spdif_stream_put, %union.anon.87 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_trident_codec_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str, i32 146, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ac97 codec read TIMEOUT [0x%x/0x%x]!!!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_trident_codec_read\00", [41 x i8] zeroinitializer }, align 32
@snd_trident_codec_read._entry_ptr = internal global ptr @snd_trident_codec_read._entry, section ".printk_index", align 4
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Wave Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@db_scale_gvol = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -6375, i32 25], [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Music Playback Volume\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PCM Front Playback Volume\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PCM Pan Playback Control\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PCM Reverb Playback Volume\00", [37 x i8] zeroinitializer }, align 32
@db_scale_crvol = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -3175, i32 65561], [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PCM Chorus Playback Volume\00", [37 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Rear Path\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IEC958 Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IEC958 Playback Default\00", [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IEC958 Playback Mask\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IEC958 Playback PCM Stream\00", [37 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"trident\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sis7018\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SiS 7018 Audio\00", [17 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Trident 4DWave PCI DX\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Trident 4DWave PCI NX\00", [42 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"???\00", [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s\0A\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Spurious IRQs    : %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Spurious IRQ dlta: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IEC958 Mixer Out : %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Rear Speakers    : %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\0AVirtual Memory\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Memory Maximum : %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Memory Used    : %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Memory Free    : %d\0A\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 270737408, i64 270737409, i64 272199704]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 32, i64 270737408, i64 270737409, i64 272199704]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 270737409, i64 272199704]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 270737409, i64 272199704]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.74 = internal global [5 x i64] [i64 3, i64 32, i64 270737408, i64 270737409, i64 272199704]
@__sancov_gen_cov_switch_values.75 = internal global [5 x i64] [i64 3, i64 32, i64 8000, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 32, i64 8000, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 32, i64 8000, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.78 = internal global [5 x i64] [i64 3, i64 32, i64 8000, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 8000, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 32, i64 270737408, i64 270737409, i64 272199704]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 32, i64 270737408, i64 270737409, i64 272199704]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 32, i64 270737408, i64 270737409, i64 272199704]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 32, i64 270737408, i64 270737409, i64 272199704]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 270737409, i64 272199704]
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 474, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2122, i32 35 }
@___asan_gen_.94 = private unnamed_addr constant [28 x i8] c"snd_trident_nx_playback_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2036, i32 33 }
@___asan_gen_.97 = private unnamed_addr constant [25 x i8] c"snd_trident_playback_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2026, i32 33 }
@___asan_gen_.100 = private unnamed_addr constant [24 x i8] c"snd_trident_capture_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2046, i32 33 }
@___asan_gen_.103 = private unnamed_addr constant [31 x i8] c"snd_trident_si7018_capture_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2056, i32 33 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2140, i32 20 }
@___asan_gen_.109 = private unnamed_addr constant [28 x i8] c"snd_trident_nx_foldback_ops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2076, i32 33 }
@___asan_gen_.112 = private unnamed_addr constant [25 x i8] c"snd_trident_foldback_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2066, i32 33 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2194, i32 26 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2196, i32 26 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2198, i32 26 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2201, i32 27 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2233, i32 35 }
@___asan_gen_.130 = private unnamed_addr constant [22 x i8] c"snd_trident_spdif_ops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2086, i32 33 }
@___asan_gen_.133 = private unnamed_addr constant [27 x i8] c"snd_trident_spdif_7018_ops\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2096, i32 33 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2244, i32 22 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 3159, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 3165, i32 24 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 3511, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 3519, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 3520, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 3521, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 3536, i32 33 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 3542, i32 22 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 3543, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant [15 x i8] c"snd_trident_pm\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 3884, i32 1 }
@___asan_gen_.199 = private unnamed_addr constant [21 x i8] c"snd_trident_playback\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 1683, i32 38 }
@___asan_gen_.202 = private unnamed_addr constant [20 x i8] c"snd_trident_capture\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 1708, i32 38 }
@___asan_gen_.205 = private unnamed_addr constant [21 x i8] c"snd_trident_foldback\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 1733, i32 38 }
@___asan_gen_.208 = private unnamed_addr constant [18 x i8] c"snd_trident_spdif\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 1757, i32 38 }
@___asan_gen_.211 = private unnamed_addr constant [23 x i8] c"snd_trident_spdif_7018\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 1778, i32 38 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 3325, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 3336, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 3392, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 3430, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 3233, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2918, i32 39 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2955, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant [29 x i8] c"snd_trident_vol_wave_control\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2587, i32 38 }
@___asan_gen_.268 = private unnamed_addr constant [30 x i8] c"snd_trident_vol_music_control\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2576, i32 38 }
@___asan_gen_.271 = private unnamed_addr constant [28 x i8] c"snd_trident_pcm_vol_control\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2654, i32 38 }
@___asan_gen_.274 = private unnamed_addr constant [28 x i8] c"snd_trident_pcm_pan_control\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2718, i32 38 }
@___asan_gen_.277 = private unnamed_addr constant [29 x i8] c"snd_trident_pcm_rvol_control\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2775, i32 38 }
@___asan_gen_.280 = private unnamed_addr constant [29 x i8] c"snd_trident_pcm_cvol_control\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2831, i32 38 }
@___asan_gen_.283 = private unnamed_addr constant [30 x i8] c"snd_trident_ac97_rear_control\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2518, i32 38 }
@___asan_gen_.286 = private unnamed_addr constant [26 x i8] c"snd_trident_spdif_control\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2310, i32 38 }
@___asan_gen_.289 = private unnamed_addr constant [26 x i8] c"snd_trident_spdif_default\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2373, i32 38 }
@___asan_gen_.292 = private unnamed_addr constant [23 x i8] c"snd_trident_spdif_mask\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2406, i32 38 }
@___asan_gen_.295 = private unnamed_addr constant [25 x i8] c"snd_trident_spdif_stream\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2468, i32 38 }
@___asan_gen_.298 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 144, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2590, i32 18 }
@___asan_gen_.310 = private unnamed_addr constant [14 x i8] c"db_scale_gvol\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2556, i32 14 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2579, i32 18 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2657, i32 18 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2721, i32 18 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2778, i32 18 }
@___asan_gen_.325 = private unnamed_addr constant [15 x i8] c"db_scale_crvol\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2773, i32 14 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2834, i32 18 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2521, i32 18 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2313, i32 18 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2376, i32 18 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2410, i32 18 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2472, i32 18 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 3295, i32 18 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 3298, i32 7 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 3266, i32 7 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 3269, i32 7 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 3272, i32 7 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 3275, i32 7 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 3277, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 3278, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 3279, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 3281, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 3283, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 3285, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 3286, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 3287, i32 4 }
@___asan_gen_.394 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.395 = private constant [36 x i8] c"../sound/pci/trident/trident_main.c\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 3288, i32 4 }
@llvm.compiler.used = appending global [119 x ptr] [ptr @__ksymtab_snd_trident_alloc_voice, ptr @__ksymtab_snd_trident_free_voice, ptr @__ksymtab_snd_trident_start_voice, ptr @__ksymtab_snd_trident_stop_voice, ptr @__ksymtab_snd_trident_write_voice_regs, ptr @snd_trident_4d_dx_init._entry, ptr @snd_trident_4d_dx_init._entry_ptr, ptr @snd_trident_4d_nx_init._entry, ptr @snd_trident_4d_nx_init._entry_ptr, ptr @snd_trident_codec_read._entry, ptr @snd_trident_codec_read._entry_ptr, ptr @snd_trident_create._entry, ptr @snd_trident_create._entry.24, ptr @snd_trident_create._entry_ptr, ptr @snd_trident_create._entry_ptr.26, ptr @snd_trident_create_gameport._entry, ptr @snd_trident_create_gameport._entry_ptr, ptr @snd_trident_mixer._entry, ptr @snd_trident_mixer._entry_ptr, ptr @snd_trident_sis_reset._entry, ptr @snd_trident_sis_reset._entry_ptr, ptr @snd_trident_tlb_alloc._entry, ptr @snd_trident_tlb_alloc._entry.29, ptr @snd_trident_tlb_alloc._entry_ptr, ptr @snd_trident_tlb_alloc._entry_ptr.31, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @snd_trident_nx_playback_ops, ptr @snd_trident_playback_ops, ptr @snd_trident_capture_ops, ptr @snd_trident_si7018_capture_ops, ptr @.str.3, ptr @snd_trident_nx_foldback_ops, ptr @snd_trident_foldback_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @snd_trident_spdif_ops, ptr @snd_trident_spdif_7018_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @snd_trident_create.__key, ptr @.str.17, ptr @snd_trident_create.__key.18, ptr @.str.19, ptr @snd_trident_create.__key.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @snd_trident_pm, ptr @snd_trident_playback, ptr @snd_trident_capture, ptr @snd_trident_foldback, ptr @snd_trident_spdif, ptr @snd_trident_spdif_7018, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @snd_trident_mixer.ops, ptr @.str.37, ptr @.str.38, ptr @snd_trident_vol_wave_control, ptr @snd_trident_vol_music_control, ptr @snd_trident_pcm_vol_control, ptr @snd_trident_pcm_pan_control, ptr @snd_trident_pcm_rvol_control, ptr @snd_trident_pcm_cvol_control, ptr @snd_trident_ac97_rear_control, ptr @snd_trident_spdif_control, ptr @snd_trident_spdif_default, ptr @snd_trident_spdif_mask, ptr @snd_trident_spdif_stream, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @db_scale_gvol, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @db_scale_crvol, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68], section "llvm.metadata"
@0 = internal global [104 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_nx_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_si7018_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_nx_foldback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_foldback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_spdif_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_spdif_7018_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_create_gameport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_create.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_create.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_create._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_playback to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_capture to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_foldback to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_spdif to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_spdif_7018 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_tlb_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_tlb_alloc._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_4d_dx_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_4d_nx_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_sis_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_mixer.ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_mixer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_vol_wave_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_vol_music_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_pcm_vol_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_pcm_pan_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_pcm_rvol_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_pcm_cvol_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_ac97_rear_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_spdif_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_spdif_default to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_spdif_mask to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_spdif_stream to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_codec_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_gvol to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_crvol to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_trident_start_voice(ptr nocapture noundef readonly %trident, i32 noundef %voice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %voice, 31
  %shl = shl nuw i32 1, %and
  %and1 = and i32 %voice, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  %cond = select i1 %tobool.not, i32 128, i32 180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !212
  tail call void @arm_heavy_mb() #10
  %0 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %port = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 3
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %port, align 4
  %add = add i32 %2, %cond
  %and2 = and i32 %add, 1048575
  %add3 = or i32 %and2, -18874368
  %3 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %3, i32 %0) #10, !srcloc !213
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_trident_stop_voice(ptr nocapture noundef readonly %trident, i32 noundef %voice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %voice, 31
  %shl = shl nuw i32 1, %and
  %and1 = and i32 %voice, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  %cond = select i1 %tobool.not, i32 132, i32 184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %0 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %port = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 3
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %port, align 4
  %add = add i32 %2, %cond
  %and2 = and i32 %add, 1048575
  %add3 = or i32 %and2, -18874368
  %3 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %3, i32 %0) #10, !srcloc !213
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_trident_write_voice_regs(ptr nocapture noundef readonly %trident, ptr noundef readonly %voice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %LBA = getelementptr inbounds %struct.snd_trident_voice, ptr %voice, i32 0, i32 9
  %0 = ptrtoint ptr %LBA to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %LBA, align 4
  %GVSel = getelementptr inbounds %struct.snd_trident_voice, ptr %voice, i32 0, i32 16
  %2 = ptrtoint ptr %GVSel to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %GVSel, align 1
  %conv = zext i8 %3 to i32
  %shl = shl i32 %conv, 31
  %Pan = getelementptr inbounds %struct.snd_trident_voice, ptr %voice, i32 0, i32 15
  %4 = ptrtoint ptr %Pan to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %Pan, align 2
  %6 = and i8 %5, 127
  %and = zext i8 %6 to i32
  %shl2 = shl nuw nsw i32 %and, 24
  %or = or i32 %shl2, %shl
  %CTRL = getelementptr inbounds %struct.snd_trident_voice, ptr %voice, i32 0, i32 20
  %7 = ptrtoint ptr %CTRL to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %CTRL, align 1
  %9 = and i8 %8, 15
  %and4 = zext i8 %9 to i32
  %shl5 = shl nuw nsw i32 %and4, 12
  %or6 = or i32 %or, %shl5
  %FMC = getelementptr inbounds %struct.snd_trident_voice, ptr %voice, i32 0, i32 19
  %10 = ptrtoint ptr %FMC to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %FMC, align 2
  %12 = and i8 %11, 3
  %and9 = zext i8 %12 to i32
  %shl10 = shl nuw nsw i32 %and9, 14
  %RVol = getelementptr inbounds %struct.snd_trident_voice, ptr %voice, i32 0, i32 17
  %13 = ptrtoint ptr %RVol to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %RVol, align 4
  %15 = and i8 %14, 127
  %and12 = zext i8 %15 to i32
  %shl13 = shl nuw nsw i32 %and12, 7
  %or14 = or i32 %shl13, %shl10
  %CVol = getelementptr inbounds %struct.snd_trident_voice, ptr %voice, i32 0, i32 18
  %16 = ptrtoint ptr %CVol to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %CVol, align 1
  %18 = and i8 %17, 127
  %and16 = zext i8 %18 to i32
  %or17 = or i32 %or14, %and16
  %device = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 1
  %19 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %device, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %do.end [
    i32 272199704, label %sw.bb
    i32 270737408, label %sw.bb48
    i32 270737409, label %sw.bb79
  ]

sw.bb:                                            ; preds = %entry
  %22 = ptrtoint ptr %voice to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %voice, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %23)
  %cmp = icmp ugt i32 %23, 31
  %Vol = getelementptr inbounds %struct.snd_trident_voice, ptr %voice, i32 0, i32 14
  %24 = ptrtoint ptr %Vol to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %Vol, align 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %26 = and i16 %25, 1023
  %and20 = zext i16 %26 to i32
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %27 = and i16 %25, 1020
  %and23 = zext i16 %27 to i32
  %shl24 = shl nuw nsw i32 %and23, 14
  %EC = getelementptr inbounds %struct.snd_trident_voice, ptr %voice, i32 0, i32 10
  %28 = ptrtoint ptr %EC to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %EC, align 4
  %30 = and i16 %29, 4095
  %and26 = zext i16 %30 to i32
  %or27 = or i32 %shl24, %and26
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and20, %cond.true ], [ %or27, %cond.false ]
  %CSO = getelementptr inbounds %struct.snd_trident_voice, ptr %voice, i32 0, i32 7
  %31 = ptrtoint ptr %CSO to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %CSO, align 4
  %shl30 = shl i32 %32, 16
  %Alpha = getelementptr inbounds %struct.snd_trident_voice, ptr %voice, i32 0, i32 11
  %33 = ptrtoint ptr %Alpha to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %Alpha, align 2
  %35 = shl i16 %34, 4
  %shl33 = zext i16 %35 to i32
  %or34 = or i32 %shl30, %shl33
  %FMS = getelementptr inbounds %struct.snd_trident_voice, ptr %voice, i32 0, i32 21
  %36 = ptrtoint ptr %FMS to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %FMS, align 4
  %38 = and i8 %37, 15
  %and36 = zext i8 %38 to i32
  %or37 = or i32 %or34, %and36
  %ESO = getelementptr inbounds %struct.snd_trident_voice, ptr %voice, i32 0, i32 8
  %39 = ptrtoint ptr %ESO to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ESO, align 4
  %shl39 = shl i32 %40, 16
  %Delta = getelementptr inbounds %struct.snd_trident_voice, ptr %voice, i32 0, i32 12
  %41 = ptrtoint ptr %Delta to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %Delta, align 4
  %conv40 = zext i16 %42 to i32
  %or42 = or i32 %shl39, %conv40
  %Attribute = getelementptr inbounds %struct.snd_trident_voice, ptr %voice, i32 0, i32 13
  %43 = ptrtoint ptr %Attribute to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %Attribute, align 2
  %conv44 = zext i16 %44 to i32
  %shl45 = shl nuw i32 %conv44, 16
  %or46 = or i32 %shl45, %or17
  br label %do.body129

sw.bb48:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %Vol49 = getelementptr inbounds %struct.snd_trident_voice, ptr %voice, i32 0, i32 14
  %45 = ptrtoint ptr %Vol49 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %Vol49, align 4
  %47 = and i16 %46, 1020
  %and51 = zext i16 %47 to i32
  %shl52 = shl nuw nsw i32 %and51, 14
  %EC53 = getelementptr inbounds %struct.snd_trident_voice, ptr %voice, i32 0, i32 10
  %48 = ptrtoint ptr %EC53 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %EC53, align 4
  %50 = and i16 %49, 4095
  %and55 = zext i16 %50 to i32
  %or56 = or i32 %shl52, %and55
  %CSO59 = getelementptr inbounds %struct.snd_trident_voice, ptr %voice, i32 0, i32 7
  %51 = ptrtoint ptr %CSO59 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %CSO59, align 4
  %shl60 = shl i32 %52, 16
  %Alpha61 = getelementptr inbounds %struct.snd_trident_voice, ptr %voice, i32 0, i32 11
  %53 = ptrtoint ptr %Alpha61 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %Alpha61, align 2
  %55 = shl i16 %54, 4
  %shl64 = zext i16 %55 to i32
  %or65 = or i32 %shl60, %shl64
  %FMS66 = getelementptr inbounds %struct.snd_trident_voice, ptr %voice, i32 0, i32 21
  %56 = ptrtoint ptr %FMS66 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %FMS66, align 4
  %58 = and i8 %57, 15
  %and68 = zext i8 %58 to i32
  %or69 = or i32 %or65, %and68
  %ESO71 = getelementptr inbounds %struct.snd_trident_voice, ptr %voice, i32 0, i32 8
  %59 = ptrtoint ptr %ESO71 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ESO71, align 4
  %shl72 = shl i32 %60, 16
  %Delta73 = getelementptr inbounds %struct.snd_trident_voice, ptr %voice, i32 0, i32 12
  %61 = ptrtoint ptr %Delta73 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %Delta73, align 4
  %conv74 = zext i16 %62 to i32
  %or76 = or i32 %shl72, %conv74
  br label %do.body129

sw.bb79:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %Vol80 = getelementptr inbounds %struct.snd_trident_voice, ptr %voice, i32 0, i32 14
  %63 = ptrtoint ptr %Vol80 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %Vol80, align 4
  %65 = and i16 %64, 1020
  %and82 = zext i16 %65 to i32
  %shl83 = shl nuw nsw i32 %and82, 14
  %EC84 = getelementptr inbounds %struct.snd_trident_voice, ptr %voice, i32 0, i32 10
  %66 = ptrtoint ptr %EC84 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %EC84, align 4
  %68 = and i16 %67, 4095
  %and86 = zext i16 %68 to i32
  %or87 = or i32 %shl83, %and86
  %Delta90 = getelementptr inbounds %struct.snd_trident_voice, ptr %voice, i32 0, i32 12
  %69 = ptrtoint ptr %Delta90 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %Delta90, align 4
  %conv91 = zext i16 %70 to i32
  %shl92 = shl i32 %conv91, 24
  %CSO93 = getelementptr inbounds %struct.snd_trident_voice, ptr %voice, i32 0, i32 7
  %71 = ptrtoint ptr %CSO93 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %CSO93, align 4
  %and94 = and i32 %72, 16777215
  %or95 = or i32 %shl92, %and94
  %shl99 = shl nuw i32 %conv91, 16
  %and100 = and i32 %shl99, -16777216
  %ESO101 = getelementptr inbounds %struct.snd_trident_voice, ptr %voice, i32 0, i32 8
  %73 = ptrtoint ptr %ESO101 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ESO101, align 4
  %and102 = and i32 %74, 16777215
  %or103 = or i32 %and100, %and102
  %Alpha105 = getelementptr inbounds %struct.snd_trident_voice, ptr %voice, i32 0, i32 11
  %75 = ptrtoint ptr %Alpha105 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %Alpha105, align 2
  %conv106 = zext i16 %76 to i32
  %shl107 = shl i32 %conv106, 20
  %FMS108 = getelementptr inbounds %struct.snd_trident_voice, ptr %voice, i32 0, i32 21
  %77 = ptrtoint ptr %FMS108 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %FMS108, align 4
  %79 = and i8 %78, 15
  %and110 = zext i8 %79 to i32
  %shl111 = shl nuw nsw i32 %and110, 16
  %or112 = or i32 %shl111, %shl107
  %or113 = or i32 %or112, %or17
  br label %do.body129

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 474, i32 noundef 9, ptr noundef nonnull @.str.1) #10
  br label %cleanup

do.body129:                                       ; preds = %sw.bb79, %sw.bb48, %cond.end
  %or87.pn = phi i32 [ %or87, %sw.bb79 ], [ %or56, %sw.bb48 ], [ %cond, %cond.end ]
  %regs.sroa.15.0 = phi i32 [ %or113, %sw.bb79 ], [ %or17, %sw.bb48 ], [ %or46, %cond.end ]
  %regs.sroa.10.0 = phi i32 [ %or103, %sw.bb79 ], [ %or76, %sw.bb48 ], [ %or42, %cond.end ]
  %regs.sroa.0.0 = phi i32 [ %or95, %sw.bb79 ], [ %or69, %sw.bb48 ], [ %or37, %cond.end ]
  %regs.sroa.20.0 = or i32 %or87.pn, %or6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %80 = ptrtoint ptr %voice to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %voice, align 4
  %conv133 = trunc i32 %81 to i8
  %port = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 3
  %82 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %port, align 4
  %add = add i32 %83, 160
  %and134 = and i32 %add, 1048575
  %add135 = or i32 %and134, -18874368
  %84 = inttoptr i32 %add135 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %84, i8 %conv133) #10, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @arm_heavy_mb() #10
  %85 = tail call i32 @llvm.bswap.i32(i32 %regs.sroa.0.0)
  %86 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %port, align 4
  %add141 = add i32 %87, 224
  %and142 = and i32 %add141, 1048575
  %add143 = or i32 %and142, -18874368
  %88 = inttoptr i32 %add143 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %88, i32 %85) #10, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  tail call void @arm_heavy_mb() #10
  %89 = tail call i32 @llvm.bswap.i32(i32 %1)
  %90 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %port, align 4
  %add150 = add i32 %91, 228
  %and151 = and i32 %add150, 1048575
  %add152 = or i32 %and151, -18874368
  %92 = inttoptr i32 %add152 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %92, i32 %89) #10, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %93 = tail call i32 @llvm.bswap.i32(i32 %regs.sroa.10.0)
  %94 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %port, align 4
  %add159 = add i32 %95, 232
  %and160 = and i32 %add159, 1048575
  %add161 = or i32 %and160, -18874368
  %96 = inttoptr i32 %add161 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %96, i32 %93) #10, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !220
  tail call void @arm_heavy_mb() #10
  %97 = tail call i32 @llvm.bswap.i32(i32 %regs.sroa.15.0)
  %98 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %port, align 4
  %add168 = add i32 %99, 236
  %and169 = and i32 %add168, 1048575
  %add170 = or i32 %and169, -18874368
  %100 = inttoptr i32 %add170 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %100, i32 %97) #10, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !221
  tail call void @arm_heavy_mb() #10
  %101 = tail call i32 @llvm.bswap.i32(i32 %regs.sroa.20.0)
  %102 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %port, align 4
  %add177 = add i32 %103, 240
  %and178 = and i32 %add177, 1048575
  %add179 = or i32 %and178, -18874368
  %104 = inttoptr i32 %add179 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %104, i32 %101) #10, !srcloc !213
  br label %cleanup

cleanup:                                          ; preds = %do.body129, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_trident_pcm(ptr noundef %trident, i32 noundef %device) local_unnamed_addr #0 align 64 {
entry:
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #10
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !222
  %card = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 23
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 4
  %ChanPCM = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 15
  %3 = ptrtoint ptr %ChanPCM to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ChanPCM, align 4
  %call = call i32 @snd_pcm_new(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %device, i32 noundef %4, i32 noundef 1, ptr noundef nonnull %pcm) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcm, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %trident, ptr %private_data, align 8
  %tlb = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 7
  %8 = ptrtoint ptr %tlb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tlb, align 4
  %tobool.not = icmp eq ptr %9, null
  %snd_trident_playback_ops.snd_trident_nx_playback_ops = select i1 %tobool.not, ptr @snd_trident_playback_ops, ptr @snd_trident_nx_playback_ops
  call void @snd_pcm_set_ops(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %snd_trident_playback_ops.snd_trident_nx_playback_ops) #10
  %10 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcm, align 4
  %device3 = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 1
  %12 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %device3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 272199704, i32 %13)
  %cmp4.not = icmp eq i32 %13, 272199704
  %cond = select i1 %cmp4.not, ptr @snd_trident_si7018_capture_ops, ptr @snd_trident_capture_ops
  call void @snd_pcm_set_ops(ptr noundef %11, i32 noundef 1, ptr noundef nonnull %cond) #10
  %14 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcm, align 4
  %info_flags = getelementptr inbounds %struct.snd_pcm, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %info_flags, align 8
  %dev_subclass = getelementptr inbounds %struct.snd_pcm, ptr %15, i32 0, i32 5
  %17 = ptrtoint ptr %dev_subclass to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %dev_subclass, align 2
  %name = getelementptr inbounds %struct.snd_pcm, ptr %15, i32 0, i32 7
  %18 = call ptr @memcpy(ptr %name, ptr @.str.3, i32 15)
  %pcm6 = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 24
  %19 = ptrtoint ptr %pcm6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %15, ptr %pcm6, align 4
  %20 = ptrtoint ptr %tlb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tlb, align 4
  %tobool9.not = icmp eq ptr %21, null
  br i1 %tobool9.not, label %if.else20, label %if.then10

if.then10:                                        ; preds = %if.end
  %substream11 = getelementptr inbounds %struct.snd_pcm, ptr %15, i32 0, i32 8, i32 0, i32 4
  %22 = ptrtoint ptr %substream11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %substream.038 = load ptr, ptr %substream11, align 4
  %tobool12.not39 = icmp eq ptr %substream.038, null
  br i1 %tobool12.not39, label %if.then10.for.end_crit_edge, label %for.body.lr.ph

if.then10.for.end_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then10
  %pci = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %substream.040 = phi ptr [ %substream.038, %for.body.lr.ph ], [ %substream.0, %for.body.for.body_crit_edge ]
  %23 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %call13 = call i32 @snd_pcm_set_managed_buffer(ptr noundef nonnull %substream.040, i32 noundef 2, ptr noundef %dev, i32 noundef 65536, i32 noundef 131072) #10
  %next = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.040, i32 0, i32 15
  %25 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %25)
  %substream.0 = load ptr, ptr %next, align 4
  %tobool12.not = icmp eq ptr %substream.0, null
  br i1 %tobool12.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then10.for.end_crit_edge
  %26 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pcm, align 4
  %substream16 = getelementptr %struct.snd_pcm, ptr %27, i32 0, i32 8, i32 1, i32 4
  %28 = ptrtoint ptr %substream16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %substream16, align 8
  %pci17 = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 22
  %30 = ptrtoint ptr %pci17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pci17, align 4
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %call19 = call i32 @snd_pcm_set_managed_buffer(ptr noundef %29, i32 noundef 2, ptr noundef %dev18, i32 noundef 65536, i32 noundef 131072) #10
  br label %cleanup

if.else20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %pci21 = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 22
  %32 = ptrtoint ptr %pci21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pci21, align 4
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %call23 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %15, i32 noundef 2, ptr noundef %dev22, i32 noundef 65536, i32 noundef 131072) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else20, %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.else20 ], [ 0, %for.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_trident_foldback_pcm(ptr noundef %trident, i32 noundef %device) local_unnamed_addr #0 align 64 {
entry:
  %foldback = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %foldback) #10
  %0 = ptrtoint ptr %foldback to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %foldback, align 4, !annotation !222
  %device1 = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 1
  %1 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %device1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 270737409, i32 %2)
  %cmp = icmp eq i32 %2, 270737409
  %spec.select = select i1 %cmp, i32 4, i32 3
  %card = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 23
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card, align 4
  %call = call i32 @snd_pcm_new(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef %device, i32 noundef 0, i32 noundef %spec.select, ptr noundef nonnull %foldback) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %entry
  %5 = ptrtoint ptr %foldback to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %foldback, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %trident, ptr %private_data, align 8
  %tlb = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 7
  %8 = ptrtoint ptr %tlb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tlb, align 4
  %tobool.not = icmp eq ptr %9, null
  %snd_trident_foldback_ops.snd_trident_nx_foldback_ops = select i1 %tobool.not, ptr @snd_trident_foldback_ops, ptr @snd_trident_nx_foldback_ops
  call void @snd_pcm_set_ops(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %snd_trident_foldback_ops.snd_trident_nx_foldback_ops) #10
  %10 = ptrtoint ptr %foldback to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %foldback, align 4
  %info_flags = getelementptr inbounds %struct.snd_pcm, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %info_flags, align 8
  %name = getelementptr inbounds %struct.snd_pcm, ptr %11, i32 0, i32 7
  %13 = call ptr @memcpy(ptr %name, ptr @.str.3, i32 15)
  %substream8 = getelementptr %struct.snd_pcm, ptr %11, i32 0, i32 8, i32 1, i32 4
  %14 = ptrtoint ptr %substream8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %substream8, align 8
  %name9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %15, i32 0, i32 4
  %16 = call ptr @memcpy(ptr %name9, ptr @.str.4, i32 12)
  %next = getelementptr inbounds %struct.snd_pcm_substream, ptr %15, i32 0, i32 15
  %17 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %next, align 4
  %name12 = getelementptr inbounds %struct.snd_pcm_substream, ptr %18, i32 0, i32 4
  %19 = call ptr @memcpy(ptr %name12, ptr @.str.5, i32 13)
  %next15 = getelementptr inbounds %struct.snd_pcm_substream, ptr %18, i32 0, i32 15
  %20 = ptrtoint ptr %next15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %next15, align 4
  %name16 = getelementptr inbounds %struct.snd_pcm_substream, ptr %21, i32 0, i32 4
  %22 = call ptr @memcpy(ptr %name16, ptr @.str.6, i32 13)
  br i1 %cmp, label %if.then20, label %if.end4.if.end25_crit_edge

if.end4.if.end25_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then20:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %next21 = getelementptr inbounds %struct.snd_pcm_substream, ptr %21, i32 0, i32 15
  %23 = ptrtoint ptr %next21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %next21, align 4
  %name22 = getelementptr inbounds %struct.snd_pcm_substream, ptr %24, i32 0, i32 4
  %25 = call ptr @memcpy(ptr %name22, ptr @.str.7, i32 17)
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.end4.if.end25_crit_edge
  %foldback26 = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 25
  %26 = ptrtoint ptr %foldback26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %11, ptr %foldback26, align 4
  %27 = ptrtoint ptr %tlb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tlb, align 4
  %tobool29.not = icmp eq ptr %28, null
  %pci33 = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 22
  %29 = ptrtoint ptr %pci33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pci33, align 4
  %dev34 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %. = select i1 %tobool29.not, i32 65536, i32 0
  %call31 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %11, i32 noundef 2, ptr noundef %dev34, i32 noundef %., i32 noundef 131072) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %foldback) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_trident_spdif_pcm(ptr noundef %trident, i32 noundef %device) local_unnamed_addr #0 align 64 {
entry:
  %spdif = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %spdif) #10
  %0 = ptrtoint ptr %spdif to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %spdif, align 4, !annotation !222
  %card = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 23
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 4
  %call = call i32 @snd_pcm_new(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %device, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %spdif) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %spdif to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %spdif, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %trident, ptr %private_data, align 8
  %device1 = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 1
  %6 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %device1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 272199704, i32 %7)
  %cmp2.not = icmp eq i32 %7, 272199704
  %snd_trident_spdif_7018_ops.snd_trident_spdif_ops = select i1 %cmp2.not, ptr @snd_trident_spdif_7018_ops, ptr @snd_trident_spdif_ops
  call void @snd_pcm_set_ops(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %snd_trident_spdif_7018_ops.snd_trident_spdif_ops) #10
  %8 = ptrtoint ptr %spdif to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spdif, align 4
  %info_flags = getelementptr inbounds %struct.snd_pcm, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %info_flags, align 8
  %name = getelementptr inbounds %struct.snd_pcm, ptr %9, i32 0, i32 7
  %11 = call ptr @memcpy(ptr %name, ptr @.str.9, i32 22)
  %spdif6 = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 26
  %12 = ptrtoint ptr %spdif6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %spdif6, align 4
  %pci = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 22
  %13 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %call7 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %9, i32 noundef 2, ptr noundef %dev, i32 noundef 65536, i32 noundef 131072) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %spdif) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_trident_create_gameport(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1248) #13
  %gameport = getelementptr inbounds %struct.snd_trident, ptr %chip, i32 0, i32 38
  %1 = ptrtoint ptr %gameport to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %gameport, align 4
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %card = getelementptr inbounds %struct.snd_trident, ptr %chip, i32 0, i32 23
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.10) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %name1.i = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 1
  %call.i = tail call i32 @strlcpy(ptr noundef %name1.i, ptr noundef nonnull @.str.3, i32 noundef 32) #10
  %pci = getelementptr inbounds %struct.snd_trident, ptr %chip, i32 0, i32 22
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %if.end.pci_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @gameport_set_phys(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.14, ptr noundef %retval.0.i.i) #10
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
  %fuzz = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %fuzz to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 64, ptr %fuzz, align 4
  %read = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 7
  %17 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @snd_trident_gameport_read, ptr %read, align 4
  %trigger = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %trigger to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @snd_trident_gameport_trigger, ptr %trigger, align 8
  %cooked_read = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 8
  %19 = ptrtoint ptr %cooked_read to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @snd_trident_gameport_cooked_read, ptr %cooked_read, align 8
  %open = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 10
  %20 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @snd_trident_gameport_open, ptr %open, align 8
  tail call void @__gameport_register_port(ptr noundef nonnull %call7.i.i.i, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %pci_name.exit, %do.end
  %retval.0 = phi i32 [ 0, %pci_name.exit ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_set_phys(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @snd_trident_gameport_read(ptr nocapture noundef readonly %gameport) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gameport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gameport, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !223

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3101, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %port = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %add = add i32 %3, 49
  %and = and i32 %add, 1048575
  %add24 = or i32 %and, -18874368
  %4 = inttoptr i32 %add24 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #10, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !225
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  %retval.0 = phi i8 [ 0, %do.end ], [ %5, %if.end23 ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_trident_gameport_trigger(ptr nocapture noundef readonly %gameport) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gameport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gameport, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %do.body24, !prof !223

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3110, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

do.body24:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !226
  tail call void @arm_heavy_mb() #10
  %port = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %add = add i32 %3, 49
  %and = and i32 %add, 1048575
  %add27 = or i32 %and, -18874368
  %4 = inttoptr i32 %add27 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 -1) #10, !srcloc !216
  br label %cleanup

cleanup:                                          ; preds = %do.body24, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_gameport_cooked_read(ptr nocapture noundef readonly %gameport, ptr nocapture noundef writeonly %axes, ptr nocapture noundef writeonly %buttons) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gameport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gameport, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !223

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3120, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %port = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %add = add i32 %3, 49
  %and = and i32 %add, 1048575
  %add24 = or i32 %and, -18874368
  %4 = inttoptr i32 %add24 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #10, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !227
  %6 = xor i8 %5, -1
  %7 = lshr i8 %6, 4
  %and27 = zext i8 %7 to i32
  %8 = ptrtoint ptr %buttons to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and27, ptr %buttons, align 4
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %add32 = add i32 %10, 52
  %and33 = and i32 %add32, 1048575
  %add34 = or i32 %and33, -18874368
  %11 = inttoptr i32 %add34 to ptr
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %11) #10, !srcloc !228
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv38 = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %12)
  %cmp40 = icmp eq i16 %12, -1
  %spec.select = select i1 %cmp40, i32 -1, i32 %conv38
  %14 = ptrtoint ptr %axes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.select, ptr %axes, align 4
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %add32.1 = add i32 %16, 54
  %and33.1 = and i32 %add32.1, 1048575
  %add34.1 = or i32 %and33.1, -18874368
  %17 = inttoptr i32 %add34.1 to ptr
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %17) #10, !srcloc !228
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv38.1 = zext i16 %19 to i32
  %arrayidx.1 = getelementptr i32, ptr %axes, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %18)
  %cmp40.1 = icmp eq i16 %18, -1
  %spec.select.1 = select i1 %cmp40.1, i32 -1, i32 %conv38.1
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %spec.select.1, ptr %arrayidx.1, align 4
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port, align 4
  %add32.2 = add i32 %22, 56
  %and33.2 = and i32 %add32.2, 1048575
  %add34.2 = or i32 %and33.2, -18874368
  %23 = inttoptr i32 %add34.2 to ptr
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %23) #10, !srcloc !228
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv38.2 = zext i16 %25 to i32
  %arrayidx.2 = getelementptr i32, ptr %axes, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %24)
  %cmp40.2 = icmp eq i16 %24, -1
  %spec.select.2 = select i1 %cmp40.2, i32 -1, i32 %conv38.2
  %26 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %spec.select.2, ptr %arrayidx.2, align 4
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 4
  %add32.3 = add i32 %28, 58
  %and33.3 = and i32 %add32.3, 1048575
  %add34.3 = or i32 %and33.3, -18874368
  %29 = inttoptr i32 %add34.3 to ptr
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %29) #10, !srcloc !228
  %31 = tail call i16 @llvm.bswap.i16(i16 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv38.3 = zext i16 %31 to i32
  %arrayidx.3 = getelementptr i32, ptr %axes, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %30)
  %cmp40.3 = icmp eq i16 %30, -1
  %spec.select.3 = select i1 %cmp40.3, i32 -1, i32 %conv38.3
  %32 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %spec.select.3, ptr %arrayidx.3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_gameport_open(ptr nocapture noundef readonly %gameport, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gameport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gameport, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !223

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3137, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end23:                                         ; preds = %entry
  %2 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %mode, label %if.end23.cleanup_crit_edge [
    i32 2, label %do.body24
    i32 1, label %do.body29
  ]

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body24:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  tail call void @arm_heavy_mb() #10
  %port = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %add = add i32 %4, 48
  %and = and i32 %add, 1048575
  %add27 = or i32 %and, -18874368
  %5 = inttoptr i32 %add27 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 -128) #10, !srcloc !216
  tail call void @msleep(i32 noundef 20) #10
  br label %cleanup

do.body29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !231
  tail call void @arm_heavy_mb() #10
  %port32 = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %port32 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port32, align 4
  %add33 = add i32 %7, 48
  %and34 = and i32 %add33, 1048575
  %add35 = or i32 %and34, -18874368
  %8 = inttoptr i32 %add35 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 0) #10, !srcloc !216
  br label %cleanup

cleanup:                                          ; preds = %do.body29, %do.body24, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.body29 ], [ 0, %do.body24 ], [ -1, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__gameport_register_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_trident_create(ptr noundef %card, ptr noundef %pci, i32 noundef %pcm_streams, i32 noundef %pcm_spdif_device, i32 noundef %max_wavetable_size) local_unnamed_addr #0 align 64 {
entry:
  %_ac97.i = alloca %struct.snd_ac97_template, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %call = tail call i32 @pcim_enable_device(ptr noundef %pci) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 1073741823) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev3 = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 27
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.15) #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 1073741823) #10
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 7
  %4 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vendor, align 8
  %conv = zext i16 %5 to i32
  %shl = shl nuw i32 %conv, 16
  %device = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 8
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device, align 2
  %conv5 = zext i16 %7 to i32
  %or = or i32 %shl, %conv5
  %device6 = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %device6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %device6, align 4
  %card7 = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 23
  %9 = ptrtoint ptr %card7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %card, ptr %card7, align 4
  %pci8 = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 22
  %10 = ptrtoint ptr %pci8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pci, ptr %pci8, align 4
  %reg_lock = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 37
  tail call void @__raw_spin_lock_init(ptr noundef %reg_lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @snd_trident_create.__key, i16 noundef signext 3) #10
  %event_lock = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 19
  tail call void @__raw_spin_lock_init(ptr noundef %event_lock, ptr noundef nonnull @.str.19, ptr noundef nonnull @snd_trident_create.__key.18, i16 noundef signext 3) #10
  %voice_alloc = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 20
  tail call void @__raw_spin_lock_init(ptr noundef %voice_alloc, ptr noundef nonnull @.str.21, ptr noundef nonnull @snd_trident_create.__key.20, i16 noundef signext 3) #10
  %11 = tail call i32 @llvm.smax.i32(i32 %pcm_streams, i32 1)
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 32)
  %ChanPCM = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 15
  %13 = ptrtoint ptr %ChanPCM to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %ChanPCM, align 4
  %14 = tail call i32 @llvm.smax.i32(i32 %max_wavetable_size, i32 0)
  %mul = shl i32 %14, 10
  %max_size = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 18, i32 4
  %15 = ptrtoint ptr %max_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul, ptr %max_size, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %1, align 4
  %private_free = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 10
  %17 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @snd_trident_free, ptr %private_free, align 4
  %port = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add = add i32 %19, 32
  %midi_port = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %midi_port to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add, ptr %midi_port, align 4
  tail call void @pci_set_master(ptr noundef %pci) #10
  %call33 = tail call i32 @pci_request_regions(ptr noundef %pci, ptr noundef nonnull @.str.22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end4.cleanup_crit_edge, label %if.end37

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end37:                                         ; preds = %if.end4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %21 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %resource, align 8
  %23 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %port, align 4
  %irq40 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %24 = ptrtoint ptr %irq40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq40, align 4
  %call.i185 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %25, ptr noundef nonnull @snd_trident_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.23, ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185)
  %tobool42.not = icmp eq i32 %call.i185, 0
  br i1 %tobool42.not, label %if.end49, label %do.end46

do.end46:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %dev47 = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 27
  %26 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev47, align 8
  %28 = ptrtoint ptr %irq40 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.25, i32 noundef %29) #14
  br label %cleanup

if.end49:                                         ; preds = %if.end37
  %30 = ptrtoint ptr %irq40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq40, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %1, align 4
  %sync_irq = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 33
  %33 = ptrtoint ptr %sync_irq to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %31, ptr %sync_irq, align 4
  %tlb = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 7
  %34 = ptrtoint ptr %tlb to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %tlb, align 4
  %35 = ptrtoint ptr %device6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %device6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 270737409, i32 %36)
  %cmp54 = icmp eq i32 %36, 270737409
  br i1 %cmp54, label %if.then56, label %if.end49.if.end62_crit_edge

if.end49.if.end62_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then56:                                        ; preds = %if.end49
  %37 = ptrtoint ptr %pci8 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pci8, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %call.i.i = tail call ptr @snd_devm_alloc_dir_pages(ptr noundef %dev.i, i32 noundef 2, i32 noundef 0, i32 noundef 32768) #10
  %buffer.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 7, i32 2
  %39 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i.i, ptr %buffer.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %card7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %card7, align 4
  %dev3.i = getelementptr inbounds %struct.snd_card, ptr %41, i32 0, i32 27
  %42 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev3.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.27) #14
  br label %cleanup

if.end.i:                                         ; preds = %if.then56
  %area.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %call.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %area.i, align 4
  %46 = ptrtoint ptr %45 to i32
  %add.i = add i32 %46, 16383
  %and.i = and i32 %add.i, -16384
  %47 = inttoptr i32 %and.i to ptr
  %48 = ptrtoint ptr %tlb to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %tlb, align 4
  %addr.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %call.i.i, i32 0, i32 2
  %49 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %addr.i, align 4
  %add9.i = add i32 %50, 16383
  %and10.i = and i32 %add9.i, -16384
  %entries_dmaaddr.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 7, i32 1
  %51 = ptrtoint ptr %entries_dmaaddr.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %and10.i, ptr %entries_dmaaddr.i, align 4
  %52 = ptrtoint ptr %pci8 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pci8, align 4
  %dev13.i = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  %call.i63.i = tail call ptr @snd_devm_alloc_dir_pages(ptr noundef %dev13.i, i32 noundef 2, i32 noundef 0, i32 noundef 4096) #10
  %silent_page.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 7, i32 4
  %54 = ptrtoint ptr %silent_page.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i63.i, ptr %silent_page.i, align 4
  %tobool18.not.i = icmp eq ptr %call.i63.i, null
  br i1 %tobool18.not.i, label %do.end22.i, label %if.end25.i

do.end22.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %card7 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %card7, align 4
  %dev24.i = getelementptr inbounds %struct.snd_card, ptr %56, i32 0, i32 27
  %57 = ptrtoint ptr %dev24.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev24.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.30) #14
  br label %cleanup

if.end25.i:                                       ; preds = %if.end.i
  %area28.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %call.i63.i, i32 0, i32 1
  %59 = ptrtoint ptr %area28.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %area28.i, align 4
  %61 = call ptr @memset(ptr %60, i32 0, i32 4096)
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end25.i
  %i.064.i = phi i32 [ 0, %if.end25.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %62 = ptrtoint ptr %silent_page.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %silent_page.i, align 4
  %addr31.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %addr31.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %addr31.i, align 4
  %and32.i = and i32 %65, -4096
  %66 = tail call i32 @llvm.bswap.i32(i32 %and32.i) #10
  %67 = ptrtoint ptr %tlb to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tlb, align 4
  %arrayidx.i = getelementptr i32, ptr %68, i32 %i.064.i
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %66, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.064.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4096
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %call35.i = tail call ptr @snd_util_memhdr_new(i32 noundef 16777216) #10
  %memhdr.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 7, i32 3
  %70 = ptrtoint ptr %memhdr.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call35.i, ptr %memhdr.i, align 4
  %cmp39.i = icmp eq ptr %call35.i, null
  br i1 %cmp39.i, label %for.end.i.cleanup_crit_edge, label %snd_trident_tlb_alloc.exit

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

snd_trident_tlb_alloc.exit:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %block_extra_size.i = getelementptr inbounds %struct.snd_util_memhdr, ptr %call35.i, i32 0, i32 4
  %71 = ptrtoint ptr %block_extra_size.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 4, ptr %block_extra_size.i, align 4
  %72 = ptrtoint ptr %device6 to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pr = load i32, ptr %device6, align 4
  br label %if.end62

if.end62:                                         ; preds = %snd_trident_tlb_alloc.exit, %if.end49.if.end62_crit_edge
  %73 = phi i32 [ %.pr, %snd_trident_tlb_alloc.exit ], [ %36, %if.end49.if.end62_crit_edge ]
  %spdif_pcm_bits = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 11
  %74 = ptrtoint ptr %spdif_pcm_bits to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 33587712, ptr %spdif_pcm_bits, align 4
  %spdif_bits = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 10
  %75 = ptrtoint ptr %spdif_bits to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 33587712, ptr %spdif_bits, align 4
  %76 = zext i32 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %73, label %do.end76 [
    i32 270737408, label %sw.bb
    i32 270737409, label %sw.bb65
    i32 272199704, label %sw.bb67
  ]

sw.bb:                                            ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  %call64 = tail call fastcc i32 @snd_trident_4d_dx_init(ptr noundef %1)
  br label %sw.epilog

sw.bb65:                                          ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  %call66 = tail call fastcc i32 @snd_trident_4d_nx_init(ptr noundef %1)
  br label %sw.epilog

sw.bb67:                                          ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @snd_trident_sis_init(ptr noundef %1)
  br label %if.end92

do.end76:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3571, i32 noundef 9, ptr noundef nonnull @.str.1) #10
  br label %if.end92

sw.epilog:                                        ; preds = %sw.bb65, %sw.bb
  %err.1 = phi i32 [ %call66, %sw.bb65 ], [ %call64, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %cmp89 = icmp slt i32 %err.1, 0
  br i1 %cmp89, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.if.end92_crit_edge

sw.epilog.if.end92_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end92:                                         ; preds = %sw.epilog.if.end92_crit_edge, %do.end76, %sw.bb67
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_ac97.i) #10
  %77 = getelementptr inbounds %struct.snd_ac97_template, ptr %_ac97.i, i32 0, i32 3
  %78 = call ptr @memset(ptr %_ac97.i, i32 255, i32 24)
  %79 = ptrtoint ptr %card7 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %card7, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %81 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %81, i32 noundef 3520, i32 noundef 712) #13
  %tobool.not.i186 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i186, label %snd_trident_mixer.exit.thread, label %if.end.i188

snd_trident_mixer.exit.thread:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_ac97.i) #10
  br label %cleanup

if.end.i188:                                      ; preds = %if.end92
  %82 = ptrtoint ptr %card7 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %card7, align 4
  %ac97_bus.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 28
  %call3.i = tail call i32 @snd_ac97_bus(ptr noundef %83, i32 noundef 0, ptr noundef nonnull @snd_trident_mixer.ops, ptr noundef null, ptr noundef %ac97_bus.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i187 = icmp slt i32 %call3.i, 0
  br i1 %cmp.i187, label %if.end.i188.snd_trident_mixer.exit.thread210_crit_edge, label %if.end5.i

if.end.i188.snd_trident_mixer.exit.thread210_crit_edge: ; preds = %if.end.i188
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_mixer.exit.thread210

if.end5.i:                                        ; preds = %if.end.i188
  %84 = getelementptr inbounds i8, ptr %_ac97.i, i32 4
  %85 = call ptr @memset(ptr %84, i32 0, i32 20)
  %86 = ptrtoint ptr %_ac97.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %1, ptr %_ac97.i, align 4
  %ac97_detect.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 17
  %87 = ptrtoint ptr %ac97_detect.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %bf.load.i = load i8, ptr %ac97_detect.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %ac97_detect.i, align 4
  %ac97.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 29
  %88 = ptrtoint ptr %ac97_bus.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ac97_bus.i, align 4
  %call7.i = call i32 @snd_ac97_mixer(ptr noundef %89, ptr noundef nonnull %_ac97.i, ptr noundef %ac97.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.then9.i, label %if.end5.i.if.end20.i_crit_edge

if.end5.i.if.end20.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.then9.i:                                       ; preds = %if.end5.i
  %90 = ptrtoint ptr %device6 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %device6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 272199704, i32 %91)
  %cmp10.i = icmp eq i32 %91, 272199704
  br i1 %cmp10.i, label %if.then11.i, label %if.then9.i.snd_trident_mixer.exit.thread210_crit_edge

if.then9.i.snd_trident_mixer.exit.thread210_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_mixer.exit.thread210

if.then11.i:                                      ; preds = %if.then9.i
  call fastcc void @snd_trident_sis_reset(ptr noundef %1) #10
  %92 = ptrtoint ptr %ac97_bus.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ac97_bus.i, align 4
  %call7.1.i = call i32 @snd_ac97_mixer(ptr noundef %93, ptr noundef nonnull %_ac97.i, ptr noundef %ac97.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.1.i)
  %cmp8.1.i = icmp slt i32 %call7.1.i, 0
  br i1 %cmp8.1.i, label %if.then9.1.i, label %if.then11.i.if.end20.i_crit_edge

if.then11.i.if.end20.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.then9.1.i:                                     ; preds = %if.then11.i
  %94 = ptrtoint ptr %device6 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %device6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 272199704, i32 %95)
  %cmp10.1.i = icmp eq i32 %95, 272199704
  br i1 %cmp10.1.i, label %if.then11.1.i, label %if.then9.1.i.snd_trident_mixer.exit.thread210_crit_edge

if.then9.1.i.snd_trident_mixer.exit.thread210_crit_edge: ; preds = %if.then9.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_mixer.exit.thread210

if.then11.1.i:                                    ; preds = %if.then9.1.i
  call fastcc void @snd_trident_sis_reset(ptr noundef %1) #10
  %96 = ptrtoint ptr %ac97_bus.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ac97_bus.i, align 4
  %call7.2.i = call i32 @snd_ac97_mixer(ptr noundef %97, ptr noundef nonnull %_ac97.i, ptr noundef %ac97.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.2.i)
  %cmp8.2.i = icmp slt i32 %call7.2.i, 0
  br i1 %cmp8.2.i, label %if.then9.2.i, label %if.then11.1.i.if.end20.i_crit_edge

if.then11.1.i.if.end20.i_crit_edge:               ; preds = %if.then11.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.then9.2.i:                                     ; preds = %if.then11.1.i
  %98 = ptrtoint ptr %device6 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %device6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 272199704, i32 %99)
  %cmp10.2.i = icmp eq i32 %99, 272199704
  br i1 %cmp10.2.i, label %if.then11.2.i, label %if.then9.2.i.snd_trident_mixer.exit.thread210_crit_edge

if.then9.2.i.snd_trident_mixer.exit.thread210_crit_edge: ; preds = %if.then9.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_mixer.exit.thread210

if.then11.2.i:                                    ; preds = %if.then9.2.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @snd_trident_sis_reset(ptr noundef %1) #10
  br label %snd_trident_mixer.exit.thread210

if.end20.i:                                       ; preds = %if.then11.1.i.if.end20.i_crit_edge, %if.then11.i.if.end20.i_crit_edge, %if.end5.i.if.end20.i_crit_edge
  %100 = ptrtoint ptr %device6 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %device6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 272199704, i32 %101)
  %cmp22.i = icmp eq i32 %101, 272199704
  br i1 %cmp22.i, label %land.lhs.true.i, label %if.end35.thread.i

if.end35.thread.i:                                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %ac97_detect.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %bf.load37328.i = load i8, ptr %ac97_detect.i, align 4
  %bf.clear38329.i = and i8 %bf.load37328.i, 127
  store i8 %bf.clear38329.i, ptr %ac97_detect.i, align 4
  br label %if.then42.i

land.lhs.true.i:                                  ; preds = %if.end20.i
  %103 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %port, align 4
  %add.i189 = add i32 %104, 72
  %and.i190 = and i32 %add.i189, 1048575
  %add23.i = or i32 %and.i190, -18874368
  %105 = inttoptr i32 %add23.i to ptr
  %106 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %105) #10, !srcloc !232
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !233
  %107 = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp27.not.i = icmp eq i32 %107, 0
  br i1 %cmp27.not.i, label %land.lhs.true.i.if.end35.i_crit_edge, label %if.then28.i

land.lhs.true.i.if.end35.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.i

if.then28.i:                                      ; preds = %land.lhs.true.i
  %108 = ptrtoint ptr %77 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 1, ptr %77, align 4
  %109 = ptrtoint ptr %ac97_bus.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ac97_bus.i, align 4
  %ac97_sec.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 30
  %call30.i = call i32 @snd_ac97_mixer(ptr noundef %110, ptr noundef nonnull %_ac97.i, ptr noundef %ac97_sec.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp31.i = icmp slt i32 %call30.i, 0
  br i1 %cmp31.i, label %do.end.i192, label %if.then28.i.if.end35.i_crit_edge

if.then28.i.if.end35.i_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.i

do.end.i192:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #12
  %111 = ptrtoint ptr %card7 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %card7, align 4
  %dev.i191 = getelementptr inbounds %struct.snd_card, ptr %112, i32 0, i32 27
  %113 = ptrtoint ptr %dev.i191 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev.i191, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.37) #14
  br label %if.end35.i

if.end35.i:                                       ; preds = %do.end.i192, %if.then28.i.if.end35.i_crit_edge, %land.lhs.true.i.if.end35.i_crit_edge
  %115 = ptrtoint ptr %device6 to i32
  call void @__asan_load4_noabort(i32 %115)
  %.pr.i = load i32, ptr %device6, align 4
  %116 = ptrtoint ptr %ac97_detect.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %bf.load37.i = load i8, ptr %ac97_detect.i, align 4
  %bf.clear38.i = and i8 %bf.load37.i, 127
  store i8 %bf.clear38.i, ptr %ac97_detect.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 272199704, i32 %.pr.i)
  %cmp41.not.i = icmp eq i32 %.pr.i, 272199704
  br i1 %cmp41.not.i, label %do.body64.i, label %if.end35.i.if.then42.i_crit_edge

if.end35.i.if.then42.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42.i

if.then42.i:                                      ; preds = %if.end35.i.if.then42.i_crit_edge, %if.end35.thread.i
  %call43.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_trident_vol_wave_control, ptr noundef %1) #10
  %call44.i = call i32 @snd_ctl_add(ptr noundef %80, ptr noundef %call43.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %cmp45.i = icmp slt i32 %call44.i, 0
  br i1 %cmp45.i, label %if.then42.i.snd_trident_mixer.exit.thread210_crit_edge, label %if.end47.i

if.then42.i.snd_trident_mixer.exit.thread210_crit_edge: ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_mixer.exit.thread210

if.end47.i:                                       ; preds = %if.then42.i
  %put.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call43.i, i32 0, i32 5
  %117 = ptrtoint ptr %put.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %put.i, align 4
  %call48.i = call i32 %118(ptr noundef %call43.i, ptr noundef nonnull %call7.i.i.i) #10
  %call49.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_trident_vol_music_control, ptr noundef %1) #10
  %call50.i = call i32 @snd_ctl_add(ptr noundef %80, ptr noundef %call49.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %cmp51.i = icmp slt i32 %call50.i, 0
  br i1 %cmp51.i, label %if.end47.i.snd_trident_mixer.exit.thread210_crit_edge, label %if.end53.i

if.end47.i.snd_trident_mixer.exit.thread210_crit_edge: ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_mixer.exit.thread210

if.end53.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  %put54.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call49.i, i32 0, i32 5
  %119 = ptrtoint ptr %put54.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %put54.i, align 4
  %call55.i = call i32 %120(ptr noundef %call49.i, ptr noundef nonnull %call7.i.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !234
  call void @arm_heavy_mb() #10
  %musicvol_wavevol.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 31
  %121 = ptrtoint ptr %musicvol_wavevol.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %musicvol_wavevol.i, align 4
  %122 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %port, align 4
  %add60.i = add i32 %123, 168
  %and61.i = and i32 %add60.i, 1048575
  %add62.i = or i32 %and61.i, -18874368
  %124 = inttoptr i32 %add62.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %124, i32 0) #10, !srcloc !213
  br label %if.end73.i

do.body64.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !235
  call void @arm_heavy_mb() #10
  %musicvol_wavevol67.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 31
  %125 = ptrtoint ptr %musicvol_wavevol67.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 -65536, ptr %musicvol_wavevol67.i, align 4
  %126 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %port, align 4
  %add69.i = add i32 %127, 168
  %and70.i = and i32 %add69.i, 1048575
  %add71.i = or i32 %and70.i, -18874368
  %128 = inttoptr i32 %add71.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %128, i32 65535) #10, !srcloc !213
  br label %if.end73.i

if.end73.i:                                       ; preds = %do.body64.i, %if.end53.i
  %arrayidx.i193 = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 0
  %129 = ptrtoint ptr %arrayidx.i193 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr null, ptr %arrayidx.i193, align 4
  %arrayidx.1.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 1
  %130 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %arrayidx.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 2
  %131 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %arrayidx.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 3
  %132 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr null, ptr %arrayidx.3.i, align 4
  %arrayidx.4.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 4
  %133 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr null, ptr %arrayidx.4.i, align 4
  %arrayidx.5.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 5
  %134 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr null, ptr %arrayidx.5.i, align 4
  %arrayidx.6.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 6
  %135 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr null, ptr %arrayidx.6.i, align 4
  %arrayidx.7.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 7
  %136 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr null, ptr %arrayidx.7.i, align 4
  %arrayidx.8.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 8
  %137 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr null, ptr %arrayidx.8.i, align 4
  %arrayidx.9.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 9
  %138 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr null, ptr %arrayidx.9.i, align 4
  %arrayidx.10.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 10
  %139 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr null, ptr %arrayidx.10.i, align 4
  %arrayidx.11.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 11
  %140 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr null, ptr %arrayidx.11.i, align 4
  %arrayidx.12.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 12
  %141 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr null, ptr %arrayidx.12.i, align 4
  %arrayidx.13.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 13
  %142 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr null, ptr %arrayidx.13.i, align 4
  %arrayidx.14.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 14
  %143 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr null, ptr %arrayidx.14.i, align 4
  %arrayidx.15.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 15
  %144 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr null, ptr %arrayidx.15.i, align 4
  %arrayidx.16.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 16
  %145 = ptrtoint ptr %arrayidx.16.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr null, ptr %arrayidx.16.i, align 4
  %arrayidx.17.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 17
  %146 = ptrtoint ptr %arrayidx.17.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %arrayidx.17.i, align 4
  %arrayidx.18.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 18
  %147 = ptrtoint ptr %arrayidx.18.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr null, ptr %arrayidx.18.i, align 4
  %arrayidx.19.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 19
  %148 = ptrtoint ptr %arrayidx.19.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr null, ptr %arrayidx.19.i, align 4
  %arrayidx.20.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 20
  %149 = ptrtoint ptr %arrayidx.20.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr null, ptr %arrayidx.20.i, align 4
  %arrayidx.21.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 21
  %150 = ptrtoint ptr %arrayidx.21.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr null, ptr %arrayidx.21.i, align 4
  %arrayidx.22.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 22
  %151 = ptrtoint ptr %arrayidx.22.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr null, ptr %arrayidx.22.i, align 4
  %arrayidx.23.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 23
  %152 = ptrtoint ptr %arrayidx.23.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr null, ptr %arrayidx.23.i, align 4
  %arrayidx.24.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 24
  %153 = ptrtoint ptr %arrayidx.24.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr null, ptr %arrayidx.24.i, align 4
  %arrayidx.25.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 25
  %154 = ptrtoint ptr %arrayidx.25.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr null, ptr %arrayidx.25.i, align 4
  %arrayidx.26.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 26
  %155 = ptrtoint ptr %arrayidx.26.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr null, ptr %arrayidx.26.i, align 4
  %arrayidx.27.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 27
  %156 = ptrtoint ptr %arrayidx.27.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr null, ptr %arrayidx.27.i, align 4
  %arrayidx.28.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 28
  %157 = ptrtoint ptr %arrayidx.28.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr null, ptr %arrayidx.28.i, align 4
  %arrayidx.29.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 29
  %158 = ptrtoint ptr %arrayidx.29.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr null, ptr %arrayidx.29.i, align 4
  %arrayidx.30.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 30
  %159 = ptrtoint ptr %arrayidx.30.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr null, ptr %arrayidx.30.i, align 4
  %arrayidx.31.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 31
  %160 = ptrtoint ptr %arrayidx.31.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr null, ptr %arrayidx.31.i, align 4
  %call75.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_trident_pcm_vol_control, ptr noundef %1) #10
  %ctl_vol.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 33
  %161 = ptrtoint ptr %ctl_vol.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %call75.i, ptr %ctl_vol.i, align 4
  %tobool77.not.i = icmp eq ptr %call75.i, null
  br i1 %tobool77.not.i, label %if.end73.i.snd_trident_mixer.exit.thread210_crit_edge, label %if.end79.i

if.end73.i.snd_trident_mixer.exit.thread210_crit_edge: ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_mixer.exit.thread210

if.end79.i:                                       ; preds = %if.end73.i
  %call81.i = call i32 @snd_ctl_add(ptr noundef %80, ptr noundef nonnull %call75.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i)
  %tobool82.not.i = icmp eq i32 %call81.i, 0
  br i1 %tobool82.not.i, label %if.end84.i, label %if.end79.i.snd_trident_mixer.exit_crit_edge

if.end79.i.snd_trident_mixer.exit_crit_edge:      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_mixer.exit

if.end84.i:                                       ; preds = %if.end79.i
  %call85.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_trident_pcm_pan_control, ptr noundef %1) #10
  %ctl_pan.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 34
  %162 = ptrtoint ptr %ctl_pan.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %call85.i, ptr %ctl_pan.i, align 4
  %tobool87.not.i = icmp eq ptr %call85.i, null
  br i1 %tobool87.not.i, label %if.end84.i.snd_trident_mixer.exit.thread210_crit_edge, label %if.end89.i

if.end84.i.snd_trident_mixer.exit.thread210_crit_edge: ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_mixer.exit.thread210

if.end89.i:                                       ; preds = %if.end84.i
  %call91.i = call i32 @snd_ctl_add(ptr noundef %80, ptr noundef nonnull %call85.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.i)
  %tobool92.not.i = icmp eq i32 %call91.i, 0
  br i1 %tobool92.not.i, label %if.end94.i, label %if.end89.i.snd_trident_mixer.exit_crit_edge

if.end89.i.snd_trident_mixer.exit_crit_edge:      ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_mixer.exit

if.end94.i:                                       ; preds = %if.end89.i
  %call95.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_trident_pcm_rvol_control, ptr noundef %1) #10
  %ctl_rvol.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 35
  %163 = ptrtoint ptr %ctl_rvol.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %call95.i, ptr %ctl_rvol.i, align 4
  %tobool97.not.i = icmp eq ptr %call95.i, null
  br i1 %tobool97.not.i, label %if.end94.i.snd_trident_mixer.exit.thread210_crit_edge, label %if.end99.i

if.end94.i.snd_trident_mixer.exit.thread210_crit_edge: ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_mixer.exit.thread210

if.end99.i:                                       ; preds = %if.end94.i
  %call101.i = call i32 @snd_ctl_add(ptr noundef %80, ptr noundef nonnull %call95.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101.i)
  %tobool102.not.i = icmp eq i32 %call101.i, 0
  br i1 %tobool102.not.i, label %if.end104.i, label %if.end99.i.snd_trident_mixer.exit_crit_edge

if.end99.i.snd_trident_mixer.exit_crit_edge:      ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_mixer.exit

if.end104.i:                                      ; preds = %if.end99.i
  %call105.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_trident_pcm_cvol_control, ptr noundef %1) #10
  %ctl_cvol.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 36
  %164 = ptrtoint ptr %ctl_cvol.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %call105.i, ptr %ctl_cvol.i, align 4
  %tobool107.not.i = icmp eq ptr %call105.i, null
  br i1 %tobool107.not.i, label %if.end104.i.snd_trident_mixer.exit.thread210_crit_edge, label %if.end109.i

if.end104.i.snd_trident_mixer.exit.thread210_crit_edge: ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_mixer.exit.thread210

if.end109.i:                                      ; preds = %if.end104.i
  %call111.i = call i32 @snd_ctl_add(ptr noundef %80, ptr noundef nonnull %call105.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i)
  %tobool112.not.i = icmp eq i32 %call111.i, 0
  br i1 %tobool112.not.i, label %if.end114.i, label %if.end109.i.snd_trident_mixer.exit_crit_edge

if.end109.i.snd_trident_mixer.exit_crit_edge:     ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_mixer.exit

if.end114.i:                                      ; preds = %if.end109.i
  %165 = ptrtoint ptr %device6 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %device6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 270737409, i32 %166)
  %cmp116.i = icmp eq i32 %166, 270737409
  br i1 %cmp116.i, label %if.then117.i, label %if.end114.i.if.end125.i_crit_edge

if.end114.i.if.end125.i_crit_edge:                ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125.i

if.then117.i:                                     ; preds = %if.end114.i
  %call118.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_trident_ac97_rear_control, ptr noundef %1) #10
  %call119.i = call i32 @snd_ctl_add(ptr noundef %80, ptr noundef %call118.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119.i)
  %cmp120.i = icmp slt i32 %call119.i, 0
  br i1 %cmp120.i, label %if.then117.i.snd_trident_mixer.exit.thread210_crit_edge, label %if.end122.i

if.then117.i.snd_trident_mixer.exit.thread210_crit_edge: ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_mixer.exit.thread210

if.end122.i:                                      ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #12
  %put123.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call118.i, i32 0, i32 5
  %167 = ptrtoint ptr %put123.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %put123.i, align 4
  %call124.i = call i32 %168(ptr noundef %call118.i, ptr noundef nonnull %call7.i.i.i) #10
  %169 = ptrtoint ptr %device6 to i32
  call void @__asan_load4_noabort(i32 %169)
  %.pr331.i = load i32, ptr %device6, align 4
  br label %if.end125.i

if.end125.i:                                      ; preds = %if.end122.i, %if.end114.i.if.end125.i_crit_edge
  %170 = phi i32 [ %.pr331.i, %if.end122.i ], [ %166, %if.end114.i.if.end125.i_crit_edge ]
  %171 = zext i32 %170 to i64
  call void @__sanitizer_cov_trace_switch(i64 %171, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %170, label %if.end125.i.snd_trident_mixer.exit.thread216_crit_edge [
    i32 270737409, label %if.end125.i.if.then130.i_crit_edge
    i32 272199704, label %if.end125.i.if.then130.i_crit_edge219
  ]

if.end125.i.if.then130.i_crit_edge219:            ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then130.i

if.end125.i.if.then130.i_crit_edge:               ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then130.i

if.end125.i.snd_trident_mixer.exit.thread216_crit_edge: ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_mixer.exit.thread216

if.then130.i:                                     ; preds = %if.end125.i.if.then130.i_crit_edge, %if.end125.i.if.then130.i_crit_edge219
  %call131.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_trident_spdif_control, ptr noundef %1) #10
  %cmp132.i = icmp eq ptr %call131.i, null
  br i1 %cmp132.i, label %if.then130.i.snd_trident_mixer.exit.thread210_crit_edge, label %if.end134.i

if.then130.i.snd_trident_mixer.exit.thread210_crit_edge: ; preds = %if.then130.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_mixer.exit.thread210

if.end134.i:                                      ; preds = %if.then130.i
  %172 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %ac97.i, align 4
  %ext_id.i = getelementptr inbounds %struct.snd_ac97, ptr %173, i32 0, i32 15
  %174 = ptrtoint ptr %ext_id.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %ext_id.i, align 2
  %176 = and i16 %175, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %176)
  %tobool137.not.i = icmp eq i16 %176, 0
  br i1 %tobool137.not.i, label %if.end134.i.if.end140.i_crit_edge, label %if.then138.i

if.end134.i.if.end140.i_crit_edge:                ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end140.i

if.then138.i:                                     ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #12
  %index.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call131.i, i32 0, i32 1, i32 5
  %177 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %index.i, align 4
  %inc139.i = add i32 %178, 1
  store i32 %inc139.i, ptr %index.i, align 4
  br label %if.end140.i

if.end140.i:                                      ; preds = %if.then138.i, %if.end134.i.if.end140.i_crit_edge
  %ac97_sec141.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 30
  %179 = ptrtoint ptr %ac97_sec141.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %ac97_sec141.i, align 4
  %tobool142.not.i = icmp eq ptr %180, null
  br i1 %tobool142.not.i, label %if.end140.i.if.end153.i_crit_edge, label %land.lhs.true143.i

if.end140.i.if.end153.i_crit_edge:                ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end153.i

land.lhs.true143.i:                               ; preds = %if.end140.i
  %ext_id145.i = getelementptr inbounds %struct.snd_ac97, ptr %180, i32 0, i32 15
  %181 = ptrtoint ptr %ext_id145.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %ext_id145.i, align 2
  %183 = and i16 %182, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %183)
  %tobool148.not.i = icmp eq i16 %183, 0
  br i1 %tobool148.not.i, label %land.lhs.true143.i.if.end153.i_crit_edge, label %if.then149.i

land.lhs.true143.i.if.end153.i_crit_edge:         ; preds = %land.lhs.true143.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end153.i

if.then149.i:                                     ; preds = %land.lhs.true143.i
  call void @__sanitizer_cov_trace_pc() #12
  %index151.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call131.i, i32 0, i32 1, i32 5
  %184 = ptrtoint ptr %index151.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %index151.i, align 4
  %inc152.i = add i32 %185, 1
  store i32 %inc152.i, ptr %index151.i, align 4
  br label %if.end153.i

if.end153.i:                                      ; preds = %if.then149.i, %land.lhs.true143.i.if.end153.i_crit_edge, %if.end140.i.if.end153.i_crit_edge
  %index155.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call131.i, i32 0, i32 1, i32 5
  %186 = ptrtoint ptr %index155.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %index155.i, align 4
  %call156.i = call i32 @snd_ctl_add(ptr noundef %80, ptr noundef nonnull %call131.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156.i)
  %cmp157.i = icmp slt i32 %call156.i, 0
  br i1 %cmp157.i, label %if.end153.i.snd_trident_mixer.exit.thread210_crit_edge, label %if.end160.i

if.end153.i.snd_trident_mixer.exit.thread210_crit_edge: ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_mixer.exit.thread210

if.end160.i:                                      ; preds = %if.end153.i
  %put161.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call131.i, i32 0, i32 5
  %188 = ptrtoint ptr %put161.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %put161.i, align 4
  %call162.i = call i32 %189(ptr noundef nonnull %call131.i, ptr noundef nonnull %call7.i.i.i) #10
  %call163.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_trident_spdif_default, ptr noundef %1) #10
  %cmp164.i = icmp eq ptr %call163.i, null
  br i1 %cmp164.i, label %if.end160.i.snd_trident_mixer.exit.thread210_crit_edge, label %if.end167.i

if.end160.i.snd_trident_mixer.exit.thread210_crit_edge: ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_mixer.exit.thread210

if.end167.i:                                      ; preds = %if.end160.i
  %index169.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call163.i, i32 0, i32 1, i32 5
  %190 = ptrtoint ptr %index169.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %187, ptr %index169.i, align 4
  %device171.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call163.i, i32 0, i32 1, i32 2
  %191 = ptrtoint ptr %device171.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %pcm_spdif_device, ptr %device171.i, align 4
  %call172.i = call i32 @snd_ctl_add(ptr noundef %80, ptr noundef nonnull %call163.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172.i)
  %cmp173.i = icmp slt i32 %call172.i, 0
  br i1 %cmp173.i, label %if.end167.i.snd_trident_mixer.exit.thread210_crit_edge, label %if.end176.i

if.end167.i.snd_trident_mixer.exit.thread210_crit_edge: ; preds = %if.end167.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_mixer.exit.thread210

if.end176.i:                                      ; preds = %if.end167.i
  %call177.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_trident_spdif_mask, ptr noundef %1) #10
  %cmp178.i = icmp eq ptr %call177.i, null
  br i1 %cmp178.i, label %if.end176.i.snd_trident_mixer.exit.thread210_crit_edge, label %if.end181.i

if.end176.i.snd_trident_mixer.exit.thread210_crit_edge: ; preds = %if.end176.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_mixer.exit.thread210

if.end181.i:                                      ; preds = %if.end176.i
  %index183.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call177.i, i32 0, i32 1, i32 5
  %192 = ptrtoint ptr %index183.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %187, ptr %index183.i, align 4
  %device185.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call177.i, i32 0, i32 1, i32 2
  %193 = ptrtoint ptr %device185.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %pcm_spdif_device, ptr %device185.i, align 4
  %call186.i = call i32 @snd_ctl_add(ptr noundef %80, ptr noundef nonnull %call177.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186.i)
  %cmp187.i = icmp slt i32 %call186.i, 0
  br i1 %cmp187.i, label %if.end181.i.snd_trident_mixer.exit.thread210_crit_edge, label %if.end190.i

if.end181.i.snd_trident_mixer.exit.thread210_crit_edge: ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_mixer.exit.thread210

if.end190.i:                                      ; preds = %if.end181.i
  %call191.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_trident_spdif_stream, ptr noundef %1) #10
  %cmp192.i = icmp eq ptr %call191.i, null
  br i1 %cmp192.i, label %if.end190.i.snd_trident_mixer.exit.thread210_crit_edge, label %if.end195.i

if.end190.i.snd_trident_mixer.exit.thread210_crit_edge: ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_mixer.exit.thread210

if.end195.i:                                      ; preds = %if.end190.i
  %index197.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call191.i, i32 0, i32 1, i32 5
  %194 = ptrtoint ptr %index197.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %187, ptr %index197.i, align 4
  %device199.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call191.i, i32 0, i32 1, i32 2
  %195 = ptrtoint ptr %device199.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %pcm_spdif_device, ptr %device199.i, align 4
  %call200.i = call i32 @snd_ctl_add(ptr noundef %80, ptr noundef nonnull %call191.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200.i)
  %cmp201.i = icmp slt i32 %call200.i, 0
  br i1 %cmp201.i, label %if.end195.i.snd_trident_mixer.exit.thread210_crit_edge, label %if.end204.i

if.end195.i.snd_trident_mixer.exit.thread210_crit_edge: ; preds = %if.end195.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_mixer.exit.thread210

if.end204.i:                                      ; preds = %if.end195.i
  call void @__sanitizer_cov_trace_pc() #12
  %spdif_pcm_ctl.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 12
  %196 = ptrtoint ptr %spdif_pcm_ctl.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %call191.i, ptr %spdif_pcm_ctl.i, align 4
  br label %snd_trident_mixer.exit.thread216

snd_trident_mixer.exit.thread210:                 ; preds = %if.end195.i.snd_trident_mixer.exit.thread210_crit_edge, %if.end190.i.snd_trident_mixer.exit.thread210_crit_edge, %if.end181.i.snd_trident_mixer.exit.thread210_crit_edge, %if.end176.i.snd_trident_mixer.exit.thread210_crit_edge, %if.end167.i.snd_trident_mixer.exit.thread210_crit_edge, %if.end160.i.snd_trident_mixer.exit.thread210_crit_edge, %if.end153.i.snd_trident_mixer.exit.thread210_crit_edge, %if.then130.i.snd_trident_mixer.exit.thread210_crit_edge, %if.then117.i.snd_trident_mixer.exit.thread210_crit_edge, %if.end104.i.snd_trident_mixer.exit.thread210_crit_edge, %if.end94.i.snd_trident_mixer.exit.thread210_crit_edge, %if.end84.i.snd_trident_mixer.exit.thread210_crit_edge, %if.end73.i.snd_trident_mixer.exit.thread210_crit_edge, %if.end47.i.snd_trident_mixer.exit.thread210_crit_edge, %if.then42.i.snd_trident_mixer.exit.thread210_crit_edge, %if.then11.2.i, %if.then9.2.i.snd_trident_mixer.exit.thread210_crit_edge, %if.then9.1.i.snd_trident_mixer.exit.thread210_crit_edge, %if.then9.i.snd_trident_mixer.exit.thread210_crit_edge, %if.end.i188.snd_trident_mixer.exit.thread210_crit_edge
  %err.0.i.ph = phi i32 [ -5, %if.then11.2.i ], [ %call7.2.i, %if.then9.2.i.snd_trident_mixer.exit.thread210_crit_edge ], [ %call7.1.i, %if.then9.1.i.snd_trident_mixer.exit.thread210_crit_edge ], [ %call7.i, %if.then9.i.snd_trident_mixer.exit.thread210_crit_edge ], [ -12, %if.end73.i.snd_trident_mixer.exit.thread210_crit_edge ], [ -12, %if.end84.i.snd_trident_mixer.exit.thread210_crit_edge ], [ -12, %if.end94.i.snd_trident_mixer.exit.thread210_crit_edge ], [ -12, %if.end104.i.snd_trident_mixer.exit.thread210_crit_edge ], [ -12, %if.end190.i.snd_trident_mixer.exit.thread210_crit_edge ], [ -12, %if.end176.i.snd_trident_mixer.exit.thread210_crit_edge ], [ -12, %if.end160.i.snd_trident_mixer.exit.thread210_crit_edge ], [ -12, %if.then130.i.snd_trident_mixer.exit.thread210_crit_edge ], [ %call200.i, %if.end195.i.snd_trident_mixer.exit.thread210_crit_edge ], [ %call186.i, %if.end181.i.snd_trident_mixer.exit.thread210_crit_edge ], [ %call172.i, %if.end167.i.snd_trident_mixer.exit.thread210_crit_edge ], [ %call156.i, %if.end153.i.snd_trident_mixer.exit.thread210_crit_edge ], [ %call119.i, %if.then117.i.snd_trident_mixer.exit.thread210_crit_edge ], [ %call50.i, %if.end47.i.snd_trident_mixer.exit.thread210_crit_edge ], [ %call44.i, %if.then42.i.snd_trident_mixer.exit.thread210_crit_edge ], [ %call3.i, %if.end.i188.snd_trident_mixer.exit.thread210_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_ac97.i) #10
  br label %cleanup

snd_trident_mixer.exit.thread216:                 ; preds = %if.end204.i, %if.end125.i.snd_trident_mixer.exit.thread216_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_ac97.i) #10
  br label %for.body.preheader

snd_trident_mixer.exit:                           ; preds = %if.end109.i.snd_trident_mixer.exit_crit_edge, %if.end99.i.snd_trident_mixer.exit_crit_edge, %if.end89.i.snd_trident_mixer.exit_crit_edge, %if.end79.i.snd_trident_mixer.exit_crit_edge
  %err.0.i = phi i32 [ %call81.i, %if.end79.i.snd_trident_mixer.exit_crit_edge ], [ %call91.i, %if.end89.i.snd_trident_mixer.exit_crit_edge ], [ %call101.i, %if.end99.i.snd_trident_mixer.exit_crit_edge ], [ %call111.i, %if.end109.i.snd_trident_mixer.exit_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_ac97.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp94 = icmp slt i32 %err.0.i, 0
  br i1 %cmp94, label %snd_trident_mixer.exit.cleanup_crit_edge, label %snd_trident_mixer.exit.for.body.preheader_crit_edge

snd_trident_mixer.exit.for.body.preheader_crit_edge: ; preds = %snd_trident_mixer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

snd_trident_mixer.exit.cleanup_crit_edge:         ; preds = %snd_trident_mixer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.preheader:                               ; preds = %snd_trident_mixer.exit.for.body.preheader_crit_edge, %snd_trident_mixer.exit.thread216
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0213 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx101 = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 18, i32 2, i32 %i.0213
  %197 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %i.0213, ptr %arrayidx101, align 4
  %trident102 = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 18, i32 2, i32 %i.0213, i32 25
  %198 = ptrtoint ptr %trident102 to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %1, ptr %trident102, align 4
  %inc = add nuw nsw i32 %i.0213, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.body.for.body106_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.body106_crit_edge:                   ; preds = %for.body
  br label %for.body106

for.body106:                                      ; preds = %for.body106.for.body106_crit_edge, %for.body.for.body106_crit_edge
  %i.1214 = phi i32 [ %inc109, %for.body106.for.body106_crit_edge ], [ 0, %for.body.for.body106_crit_edge ]
  %vol = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 %i.1214, i32 1
  %199 = ptrtoint ptr %vol to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 10, ptr %vol, align 4
  %pan = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 %i.1214, i32 2
  %200 = ptrtoint ptr %pan to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 0, ptr %pan, align 2
  %rvol = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 %i.1214, i32 3
  %201 = ptrtoint ptr %rvol to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 127, ptr %rvol, align 1
  %cvol = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 %i.1214, i32 4
  %202 = ptrtoint ptr %cvol to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 127, ptr %cvol, align 4
  %inc109 = add nuw nsw i32 %i.1214, 1
  %exitcond215.not = icmp eq i32 %inc109, 32
  br i1 %exitcond215.not, label %for.end110, label %for.body106.for.body106_crit_edge

for.body106.for.body106_crit_edge:                ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body106

for.end110:                                       ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #12
  %203 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %port, align 4
  %add.i196 = add i32 %204, 160
  %and.i197 = and i32 %add.i196, 1048575
  %add1.i = or i32 %and.i197, -18874368
  %205 = inttoptr i32 %add1.i to ptr
  %206 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %205) #10, !srcloc !232
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  %207 = or i32 %206, 3145728
  %208 = call i32 @llvm.bswap.i32(i32 %207) #10
  %209 = ptrtoint ptr %device6 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %device6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 272199704, i32 %210)
  %cmp.i199 = icmp eq i32 %210, 272199704
  %or4.i = or i32 %208, 65536
  %spec.select.i = select i1 %cmp.i199, i32 %or4.i, i32 %208
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !237
  call void @arm_heavy_mb() #10
  %211 = call i32 @llvm.bswap.i32(i32 %spec.select.i) #10
  %212 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %port, align 4
  %add6.i = add i32 %213, 160
  %and7.i = and i32 %add6.i, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %214 = inttoptr i32 %add8.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %214, i32 %211) #10, !srcloc !213
  %215 = ptrtoint ptr %device6 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %device6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 272199704, i32 %216)
  %cmp.i201 = icmp eq i32 %216, 272199704
  %spec.store.select.i = select i1 %cmp.i201, ptr @.str.53, ptr @.str.52
  %217 = ptrtoint ptr %card7 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %card7, align 4
  %call.i.i203 = call i32 @snd_card_rw_proc_new(ptr noundef %218, ptr noundef nonnull %spec.store.select.i, ptr noundef %1, ptr noundef nonnull @snd_trident_proc_read, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end110, %snd_trident_mixer.exit.cleanup_crit_edge, %snd_trident_mixer.exit.thread210, %snd_trident_mixer.exit.thread, %sw.epilog.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %do.end22.i, %do.end.i, %do.end46, %if.end4.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %do.end ], [ -16, %do.end46 ], [ 0, %for.end110 ], [ %call, %entry.cleanup_crit_edge ], [ %call33, %if.end4.cleanup_crit_edge ], [ %err.1, %sw.epilog.cleanup_crit_edge ], [ %err.0.i, %snd_trident_mixer.exit.cleanup_crit_edge ], [ -12, %snd_trident_mixer.exit.thread ], [ %err.0.i.ph, %snd_trident_mixer.exit.thread210 ], [ -12, %do.end22.i ], [ -12, %do.end.i ], [ -12, %for.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_trident_free(ptr nocapture noundef readonly %card) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %gameport.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %gameport.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gameport.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.snd_trident_free_gameport.exit_crit_edge, label %if.then.i

entry.snd_trident_free_gameport.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_free_gameport.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gameport_unregister_port(ptr noundef nonnull %3) #10
  %4 = ptrtoint ptr %gameport.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %gameport.i, align 4
  br label %snd_trident_free_gameport.exit

snd_trident_free_gameport.exit:                   ; preds = %if.then.i, %entry.snd_trident_free_gameport.exit_crit_edge
  %port.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port.i, align 4
  %add.i = add i32 %6, 160
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %7 = inttoptr i32 %add1.i to ptr
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %7) #10, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !238
  %9 = and i32 %8, -3145729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port.i, align 4
  %add7.i = add i32 %11, 160
  %and8.i = and i32 %add7.i, 1048575
  %add9.i = or i32 %and8.i, -18874368
  %12 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %12, i32 %9) #10, !srcloc !213
  %device = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %device, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %14, label %snd_trident_free_gameport.exit.if.end13_crit_edge [
    i32 270737409, label %do.body
    i32 272199704, label %do.body5
  ]

snd_trident_free_gameport.exit.if.end13_crit_edge: ; preds = %snd_trident_free_gameport.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

do.body:                                          ; preds = %snd_trident_free_gameport.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !240
  tail call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port.i, align 4
  %add = add i32 %17, 39
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %18 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 0) #10, !srcloc !216
  br label %if.end13

do.body5:                                         ; preds = %snd_trident_free_gameport.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  tail call void @arm_heavy_mb() #10
  %19 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port.i, align 4
  %add9 = add i32 %20, 72
  %and10 = and i32 %add9, 1048575
  %add11 = or i32 %and10, -18874368
  %21 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %21, i32 0) #10, !srcloc !213
  br label %if.end13

if.end13:                                         ; preds = %do.body5, %do.body, %snd_trident_free_gameport.exit.if.end13_crit_edge
  %buffer = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 7, i32 2
  %22 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %if.end13.if.end24_crit_edge, label %do.body15

if.end13.if.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

do.body15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !242
  tail call void @arm_heavy_mb() #10
  %24 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port.i, align 4
  %add19 = add i32 %25, 108
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %26 = inttoptr i32 %add21 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %26, i32 0) #10, !srcloc !213
  %memhdr = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 7, i32 3
  %27 = ptrtoint ptr %memhdr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %memhdr, align 4
  tail call void @snd_util_memhdr_free(ptr noundef %28) #10
  br label %if.end24

if.end24:                                         ; preds = %do.body15, %if.end13.if.end24_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_interrupt(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.snd_trident, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 176
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #10, !srcloc !232
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !243
  %and4 = and i32 %4, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %cmp = icmp eq i32 %and4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and5 = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %if.end.if.end154_crit_edge, label %if.then6

if.end.if.end154_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end154

if.then6:                                         ; preds = %if.end
  %reg_lock = getelementptr inbounds %struct.snd_trident, ptr %dev_id, i32 0, i32 37
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #10
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port, align 4
  %add9 = add i32 %6, 200
  %and10 = and i32 %add9, 1048575
  %add11 = or i32 %and10, -18874368
  %7 = inttoptr i32 %add11 to ptr
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %7) #10, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !244
  %9 = and i32 %8, -256
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port, align 4
  %add18 = add i32 %12, 152
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %13 = inttoptr i32 %add20 to ptr
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %13) #10, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp24 = icmp eq i32 %14, 0
  br i1 %cmp24, label %if.then6.__skip1_crit_edge, label %do.body

if.then6.__skip1_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skip1

do.body:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  tail call void @arm_heavy_mb() #10
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %add28 = add i32 %16, 152
  %and29 = and i32 %add28, 1048575
  %add30 = or i32 %and29, -18874368
  %17 = inttoptr i32 %add30 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %17, i32 %14) #10, !srcloc !213
  br label %__skip1

__skip1:                                          ; preds = %do.body, %if.then6.__skip1_crit_edge
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add34 = add i32 %19, 216
  %and35 = and i32 %add34, 1048575
  %add36 = or i32 %and35, -18874368
  %20 = inttoptr i32 %add36 to ptr
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %20) #10, !srcloc !232
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !247
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp40 = icmp eq i32 %21, 0
  br i1 %cmp40, label %__skip1.__skip2_crit_edge, label %for.cond.preheader

__skip1.__skip2_crit_edge:                        ; preds = %__skip1
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skip2

for.cond.preheader:                               ; preds = %__skip1
  %bDMAStart = getelementptr inbounds %struct.snd_trident, ptr %dev_id, i32 0, i32 2
  %device.i = getelementptr inbounds %struct.snd_trident, ptr %dev_id, i32 0, i32 1
  %spurious_irq_count = getelementptr inbounds %struct.snd_trident, ptr %dev_id, i32 0, i32 5
  %spurious_irq_max_delta = getelementptr inbounds %struct.snd_trident, ptr %dev_id, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %channel.0330 = phi i32 [ 63, %for.cond.preheader ], [ %dec, %for.inc.for.body_crit_edge ]
  %and44 = and i32 %channel.0330, 31
  %shl = shl nuw i32 1, %and44
  %and45 = and i32 %shl, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %cmp46 = icmp eq i32 %and45, 0
  br i1 %cmp46, label %for.body.for.inc_crit_edge, label %if.end48

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end48:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.snd_trident, ptr %dev_id, i32 0, i32 18, i32 2, i32 %channel.0330
  %pcm = getelementptr %struct.snd_trident, ptr %dev_id, i32 0, i32 18, i32 2, i32 %channel.0330, i32 1
  %23 = ptrtoint ptr %pcm to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %pcm, align 4
  %24 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool49.not = icmp eq i8 %24, 0
  br i1 %tobool49.not, label %if.end48.do.body52_crit_edge, label %lor.lhs.false

if.end48.do.body52_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body52

lor.lhs.false:                                    ; preds = %if.end48
  %substream = getelementptr %struct.snd_trident, ptr %dev_id, i32 0, i32 18, i32 2, i32 %channel.0330, i32 26
  %25 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %substream, align 4
  %cmp50 = icmp eq ptr %26, null
  br i1 %cmp50, label %lor.lhs.false.do.body52_crit_edge, label %if.end60

lor.lhs.false.do.body52_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body52

do.body52:                                        ; preds = %lor.lhs.false.do.body52_crit_edge, %if.end48.do.body52_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !248
  tail call void @arm_heavy_mb() #10
  %27 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %28 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port, align 4
  %add56 = add i32 %29, 184
  %and57 = and i32 %add56, 1048575
  %add58 = or i32 %and57, -18874368
  %30 = inttoptr i32 %add58 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %30, i32 %27) #10, !srcloc !213
  br label %for.inc

if.end60:                                         ; preds = %lor.lhs.false
  %stimer61 = getelementptr %struct.snd_trident, ptr %dev_id, i32 0, i32 18, i32 2, i32 %channel.0330, i32 30
  %31 = ptrtoint ptr %stimer61 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %stimer61, align 4
  %sub = sub i32 %10, %32
  %33 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %spurious_threshold = getelementptr %struct.snd_trident, ptr %dev_id, i32 0, i32 18, i32 2, i32 %channel.0330, i32 31
  %34 = ptrtoint ptr %spurious_threshold to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %spurious_threshold, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp66 = icmp ult i32 %33, %35
  br i1 %cmp66, label %if.then67, label %if.end72

if.then67:                                        ; preds = %if.end60
  %36 = ptrtoint ptr %spurious_irq_count to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %spurious_irq_count, align 4
  %inc = add i32 %37, 1
  store i32 %inc, ptr %spurious_irq_count, align 4
  %38 = ptrtoint ptr %spurious_irq_max_delta to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %spurious_irq_max_delta, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %33)
  %cmp68 = icmp ult i32 %39, %33
  br i1 %cmp68, label %if.then69, label %if.then67.for.inc_crit_edge

if.then67.for.inc_crit_edge:                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then69:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %spurious_irq_max_delta to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %33, ptr %spurious_irq_max_delta, align 4
  br label %for.inc

if.end72:                                         ; preds = %if.end60
  %41 = ptrtoint ptr %stimer61 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %10, ptr %stimer61, align 4
  %isync = getelementptr %struct.snd_trident, ptr %dev_id, i32 0, i32 18, i32 2, i32 %channel.0330, i32 28
  %42 = ptrtoint ptr %isync to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load74 = load i8, ptr %isync, align 4
  %43 = and i8 %bf.load74, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool78.not = icmp eq i8 %43, 0
  br i1 %tobool78.not, label %if.else127, label %if.then79

if.then79:                                        ; preds = %if.end72
  %44 = and i8 %bf.load74, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool84.not = icmp eq i8 %44, 0
  %45 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %port, align 4
  br i1 %tobool84.not, label %if.then85, label %if.else

if.then85:                                        ; preds = %if.then79
  %add88 = add i32 %46, 192
  %and89 = and i32 %add88, 1048575
  %add90 = or i32 %and89, -18874368
  %47 = inttoptr i32 %add90 to ptr
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %47) #10, !srcloc !228
  %49 = tail call i16 @llvm.bswap.i16(i16 %48)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !249
  %conv = zext i16 %49 to i32
  %50 = ptrtoint ptr %bDMAStart to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %bDMAStart, align 4
  %52 = lshr i8 %51, 6
  %.lobit = and i8 %52, 1
  %53 = zext i8 %.lobit to i32
  %spec.select251 = lshr i32 %conv, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select251)
  %cmp99.not = icmp eq i32 %spec.select251, 0
  br i1 %cmp99.not, label %if.end113.thread, label %if.then101

if.then101:                                       ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #12
  %isync_max = getelementptr %struct.snd_trident, ptr %dev_id, i32 0, i32 18, i32 2, i32 %channel.0330, i32 33
  %54 = ptrtoint ptr %isync_max to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %isync_max, align 4
  %sub102 = sub i32 %55, %spec.select251
  br label %if.end113

if.else:                                          ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #12
  %add106 = add i32 %46, 36
  %and107 = and i32 %add106, 1048575
  %add108 = or i32 %and107, -18874368
  %56 = inttoptr i32 %add108 to ptr
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %56) #10, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %58 = and i32 %57, -256
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  br label %if.end113

if.end113:                                        ; preds = %if.else, %if.then101
  %tmp.1 = phi i32 [ %59, %if.else ], [ %sub102, %if.then101 ]
  %isync_mark = getelementptr %struct.snd_trident, ptr %dev_id, i32 0, i32 18, i32 2, i32 %channel.0330, i32 32
  %60 = ptrtoint ptr %isync_mark to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %isync_mark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp.1, i32 %61)
  %cmp114 = icmp ult i32 %tmp.1, %61
  br i1 %cmp114, label %if.then116, label %if.end113.if.end141_crit_edge

if.end113.if.end141_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

if.end113.thread:                                 ; preds = %if.then85
  %isync_mark325 = getelementptr %struct.snd_trident, ptr %dev_id, i32 0, i32 18, i32 2, i32 %channel.0330, i32 32
  %62 = ptrtoint ptr %isync_mark325 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %isync_mark325, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp114326.not = icmp eq i32 %63, 0
  br i1 %cmp114326.not, label %if.end113.thread.if.end141_crit_edge, label %if.end113.thread.if.else121_crit_edge

if.end113.thread.if.else121_crit_edge:            ; preds = %if.end113.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else121

if.end113.thread.if.end141_crit_edge:             ; preds = %if.end113.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

if.then116:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %tmp.1)
  %cmp117 = icmp ugt i32 %tmp.1, 16
  br i1 %cmp117, label %if.then116.if.end124_crit_edge, label %if.then116.if.else121_crit_edge

if.then116.if.else121_crit_edge:                  ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else121

if.then116.if.end124_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

if.else121:                                       ; preds = %if.then116.if.else121_crit_edge, %if.end113.thread.if.else121_crit_edge
  br label %if.end124

if.end124:                                        ; preds = %if.else121, %if.then116.if.end124_crit_edge
  %.sink337 = phi i32 [ 2, %if.else121 ], [ -7, %if.then116.if.end124_crit_edge ]
  %isync_ESO122 = getelementptr %struct.snd_trident, ptr %dev_id, i32 0, i32 18, i32 2, i32 %channel.0330, i32 34
  %64 = ptrtoint ptr %isync_ESO122 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %isync_ESO122, align 4
  %add123 = add i32 %65, %.sink337
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx, align 4
  %and.i = and i32 %67, 31
  %shl.i = shl nuw i32 1, %and.i
  %and1.i = and i32 %67, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  %cond.i = select i1 %tobool.not.i, i32 132, i32 184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %68 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #10
  %69 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %port, align 4
  %add.i = add i32 %70, %cond.i
  %and2.i = and i32 %add.i, 1048575
  %add3.i = or i32 %and2.i, -18874368
  %71 = inttoptr i32 %add3.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %71, i32 %68) #10, !srcloc !213
  %ESO1.i = getelementptr %struct.snd_trident, ptr %dev_id, i32 0, i32 18, i32 2, i32 %channel.0330, i32 8
  %72 = ptrtoint ptr %ESO1.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %add123, ptr %ESO1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx, align 4
  %conv.i = trunc i32 %74 to i8
  %75 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %port, align 4
  %add.i253 = add i32 %76, 160
  %and.i254 = and i32 %add.i253, 1048575
  %add2.i = or i32 %and.i254, -18874368
  %77 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %77, i8 %conv.i) #10, !srcloc !216
  %78 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %device.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 270737409, i32 %79)
  %cmp.not.i = icmp eq i32 %79, 270737409
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %cmp.not.i, label %do.body14.i, label %do.body4.i

do.body4.i:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  %80 = ptrtoint ptr %ESO1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ESO1.i, align 4
  %conv7.i = trunc i32 %81 to i16
  %82 = tail call i16 @llvm.bswap.i16(i16 %conv7.i) #10
  %83 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %port, align 4
  %add10.i = add i32 %84, 234
  %and11.i = and i32 %add10.i, 1048575
  %add12.i = or i32 %and11.i, -18874368
  %85 = inttoptr i32 %add12.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %85, i16 %82) #10, !srcloc !252
  br label %snd_trident_write_eso_reg.exit

do.body14.i:                                      ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  %Delta.i = getelementptr %struct.snd_trident, ptr %dev_id, i32 0, i32 18, i32 2, i32 %channel.0330, i32 12
  %86 = ptrtoint ptr %Delta.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %Delta.i, align 4
  %conv16.i = zext i16 %87 to i32
  %shl.i255 = shl nuw i32 %conv16.i, 16
  %and17.i = and i32 %shl.i255, -16777216
  %88 = ptrtoint ptr %ESO1.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %ESO1.i, align 4
  %and19.i = and i32 %89, 16777215
  %or.i = or i32 %and17.i, %and19.i
  %90 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %91 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %port, align 4
  %add21.i = add i32 %92, 232
  %and22.i = and i32 %add21.i, 1048575
  %add23.i = or i32 %and22.i, -18874368
  %93 = inttoptr i32 %add23.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %93, i32 %90) #10, !srcloc !213
  br label %snd_trident_write_eso_reg.exit

snd_trident_write_eso_reg.exit:                   ; preds = %do.body14.i, %do.body4.i
  %94 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx, align 4
  %and.i256 = and i32 %95, 31
  %shl.i257 = shl nuw i32 1, %and.i256
  %and1.i258 = and i32 %95, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i258)
  %tobool.not.i259 = icmp eq i32 %and1.i258, 0
  %cond.i260 = select i1 %tobool.not.i259, i32 128, i32 180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !212
  tail call void @arm_heavy_mb() #10
  %96 = tail call i32 @llvm.bswap.i32(i32 %shl.i257) #10
  %97 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %port, align 4
  %add.i262 = add i32 %98, %cond.i260
  %and2.i263 = and i32 %add.i262, 1048575
  %add3.i264 = or i32 %and2.i263, -18874368
  %99 = inttoptr i32 %add3.i264 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %99, i32 %96) #10, !srcloc !213
  br label %if.end141

if.else127:                                       ; preds = %if.end72
  %100 = and i8 %bf.load74, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool132.not = icmp eq i8 %100, 0
  br i1 %tobool132.not, label %if.else127.if.end141_crit_edge, label %if.then133

if.else127.if.end141_crit_edge:                   ; preds = %if.else127
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

if.then133:                                       ; preds = %if.else127
  %bf.clear136 = and i8 %bf.load74, -5
  %101 = ptrtoint ptr %isync to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %bf.clear136, ptr %isync, align 4
  %102 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx, align 4
  %and.i265 = and i32 %103, 31
  %shl.i266 = shl nuw i32 1, %and.i265
  %and1.i267 = and i32 %103, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i267)
  %tobool.not.i268 = icmp eq i32 %and1.i267, 0
  %cond.i269 = select i1 %tobool.not.i268, i32 132, i32 184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %104 = tail call i32 @llvm.bswap.i32(i32 %shl.i266) #10
  %105 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %port, align 4
  %add.i271 = add i32 %106, %cond.i269
  %and2.i272 = and i32 %add.i271, 1048575
  %add3.i273 = or i32 %and2.i272, -18874368
  %107 = inttoptr i32 %add3.i273 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %107, i32 %104) #10, !srcloc !213
  %isync_mark138 = getelementptr %struct.snd_trident, ptr %dev_id, i32 0, i32 18, i32 2, i32 %channel.0330, i32 32
  %108 = ptrtoint ptr %isync_mark138 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %isync_mark138, align 4
  %CSO1.i = getelementptr %struct.snd_trident, ptr %dev_id, i32 0, i32 18, i32 2, i32 %channel.0330, i32 7
  %110 = ptrtoint ptr %CSO1.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %CSO1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !253
  tail call void @arm_heavy_mb() #10
  %111 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx, align 4
  %conv.i274 = trunc i32 %112 to i8
  %113 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %port, align 4
  %add.i276 = add i32 %114, 160
  %and.i277 = and i32 %add.i276, 1048575
  %add2.i278 = or i32 %and.i277, -18874368
  %115 = inttoptr i32 %add2.i278 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %115, i8 %conv.i274) #10, !srcloc !216
  %116 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %device.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 270737409, i32 %117)
  %cmp.not.i280 = icmp eq i32 %117, 270737409
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %cmp.not.i280, label %do.body14.i290, label %do.body4.i285

do.body4.i285:                                    ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #12
  %118 = ptrtoint ptr %CSO1.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %CSO1.i, align 4
  %conv7.i281 = trunc i32 %119 to i16
  %120 = tail call i16 @llvm.bswap.i16(i16 %conv7.i281) #10
  %121 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %port, align 4
  %add10.i282 = add i32 %122, 226
  %and11.i283 = and i32 %add10.i282, 1048575
  %add12.i284 = or i32 %and11.i283, -18874368
  %123 = inttoptr i32 %add12.i284 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %123, i16 %120) #10, !srcloc !252
  br label %snd_trident_write_cso_reg.exit

do.body14.i290:                                   ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #12
  %Delta.i286 = getelementptr %struct.snd_trident, ptr %dev_id, i32 0, i32 18, i32 2, i32 %channel.0330, i32 12
  %124 = ptrtoint ptr %Delta.i286 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %Delta.i286, align 4
  %conv16.i287 = zext i16 %125 to i32
  %shl.i288 = shl i32 %conv16.i287, 24
  %126 = ptrtoint ptr %CSO1.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %CSO1.i, align 4
  %and18.i = and i32 %127, 16777215
  %or.i289 = or i32 %shl.i288, %and18.i
  %128 = tail call i32 @llvm.bswap.i32(i32 %or.i289) #10
  %129 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %port, align 4
  %add20.i = add i32 %130, 224
  %and21.i = and i32 %add20.i, 1048575
  %add22.i = or i32 %and21.i, -18874368
  %131 = inttoptr i32 %add22.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %131, i32 %128) #10, !srcloc !213
  br label %snd_trident_write_cso_reg.exit

snd_trident_write_cso_reg.exit:                   ; preds = %do.body14.i290, %do.body4.i285
  %ESO1.i291 = getelementptr %struct.snd_trident, ptr %dev_id, i32 0, i32 18, i32 2, i32 %channel.0330, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  %132 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx, align 4
  %conv.i292 = trunc i32 %133 to i8
  %134 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %port, align 4
  %add.i294 = add i32 %135, 160
  %and.i295 = and i32 %add.i294, 1048575
  %add2.i296 = or i32 %and.i295, -18874368
  %136 = inttoptr i32 %add2.i296 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %136, i8 %conv.i292) #10, !srcloc !216
  %137 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %device.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 270737409, i32 %138)
  %cmp.not.i298 = icmp eq i32 %138, 270737409
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %cmp.not.i298, label %do.body14.i313, label %do.body4.i303

do.body4.i303:                                    ; preds = %snd_trident_write_cso_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  %139 = ptrtoint ptr %ESO1.i291 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %ESO1.i291, align 4
  %conv7.i299 = trunc i32 %140 to i16
  %141 = tail call i16 @llvm.bswap.i16(i16 %conv7.i299) #10
  %142 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %port, align 4
  %add10.i300 = add i32 %143, 234
  %and11.i301 = and i32 %add10.i300, 1048575
  %add12.i302 = or i32 %and11.i301, -18874368
  %144 = inttoptr i32 %add12.i302 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %144, i16 %141) #10, !srcloc !252
  br label %snd_trident_write_eso_reg.exit314

do.body14.i313:                                   ; preds = %snd_trident_write_cso_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  %Delta.i304 = getelementptr %struct.snd_trident, ptr %dev_id, i32 0, i32 18, i32 2, i32 %channel.0330, i32 12
  %145 = ptrtoint ptr %Delta.i304 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %Delta.i304, align 4
  %conv16.i305 = zext i16 %146 to i32
  %shl.i306 = shl nuw i32 %conv16.i305, 16
  %and17.i307 = and i32 %shl.i306, -16777216
  %147 = ptrtoint ptr %ESO1.i291 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %ESO1.i291, align 4
  %and19.i308 = and i32 %148, 16777215
  %or.i309 = or i32 %and17.i307, %and19.i308
  %149 = tail call i32 @llvm.bswap.i32(i32 %or.i309) #10
  %150 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %port, align 4
  %add21.i310 = add i32 %151, 232
  %and22.i311 = and i32 %add21.i310, 1048575
  %add23.i312 = or i32 %and22.i311, -18874368
  %152 = inttoptr i32 %add23.i312 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %152, i32 %149) #10, !srcloc !213
  br label %snd_trident_write_eso_reg.exit314

snd_trident_write_eso_reg.exit314:                ; preds = %do.body14.i313, %do.body4.i303
  %153 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx, align 4
  %and.i315 = and i32 %154, 31
  %shl.i316 = shl nuw i32 1, %and.i315
  %and1.i317 = and i32 %154, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i317)
  %tobool.not.i318 = icmp eq i32 %and1.i317, 0
  %cond.i319 = select i1 %tobool.not.i318, i32 128, i32 180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !212
  tail call void @arm_heavy_mb() #10
  %155 = tail call i32 @llvm.bswap.i32(i32 %shl.i316) #10
  %156 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %port, align 4
  %add.i321 = add i32 %157, %cond.i319
  %and2.i322 = and i32 %add.i321, 1048575
  %add3.i323 = or i32 %and2.i322, -18874368
  %158 = inttoptr i32 %add3.i323 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %158, i32 %155) #10, !srcloc !213
  br label %if.end141

if.end141:                                        ; preds = %snd_trident_write_eso_reg.exit314, %if.else127.if.end141_crit_edge, %snd_trident_write_eso_reg.exit, %if.end113.thread.if.end141_crit_edge, %if.end113.if.end141_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #10
  %159 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %160) #10
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end141, %if.then69, %if.then67.for.inc_crit_edge, %do.body52, %for.body.for.inc_crit_edge
  %dec = add nsw i32 %channel.0330, -1
  %cmp43 = icmp ugt i32 %dec, 31
  br i1 %cmp43, label %for.inc.for.body_crit_edge, label %do.body145

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.body145:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !254
  tail call void @arm_heavy_mb() #10
  %161 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %port, align 4
  %add149 = add i32 %162, 216
  %and150 = and i32 %add149, 1048575
  %add151 = or i32 %and150, -18874368
  %163 = inttoptr i32 %add151 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %163, i32 %21) #10, !srcloc !213
  br label %__skip2

__skip2:                                          ; preds = %do.body145, %__skip1.__skip2_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #10
  br label %if.end154

if.end154:                                        ; preds = %__skip2, %if.end.if.end154_crit_edge
  %and155 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %tobool156.not = icmp eq i32 %and155, 0
  br i1 %tobool156.not, label %if.end154.cleanup_crit_edge, label %if.then157

if.end154.cleanup_crit_edge:                      ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then157:                                       ; preds = %if.end154
  %rmidi = getelementptr inbounds %struct.snd_trident, ptr %dev_id, i32 0, i32 27
  %164 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %rmidi, align 4
  %tobool158.not = icmp eq ptr %165, null
  br i1 %tobool158.not, label %if.else162, label %if.then159

if.then159:                                       ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #12
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %165, i32 0, i32 9
  %166 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %private_data, align 4
  %call161 = tail call i32 @snd_mpu401_uart_interrupt(i32 noundef %irq, ptr noundef %167) #10
  br label %cleanup

if.else162:                                       ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #12
  %168 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %port, align 4
  %add165 = add i32 %169, 32
  %and166 = and i32 %add165, 1048575
  %add167 = or i32 %and166, -18874368
  %170 = inttoptr i32 %add167 to ptr
  %171 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %170) #10, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !255
  br label %cleanup

cleanup:                                          ; preds = %if.else162, %if.then159, %if.end154.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then159 ], [ 1, %if.else162 ], [ 1, %if.end154.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_trident_4d_dx_init(ptr nocapture noundef %trident) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pci1 = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 22
  %0 = ptrtoint ptr %pci1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci1, align 4
  %call = tail call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 64, i32 noundef 0) #10
  %call2 = tail call i32 @pci_write_config_byte(ptr noundef %1, i32 noundef 68, i8 noundef zeroext 0) #10
  %call3 = tail call i32 @pci_write_config_byte(ptr noundef %1, i32 noundef 69, i8 noundef zeroext 0) #10
  %call4 = tail call i32 @pci_write_config_byte(ptr noundef %1, i32 noundef 70, i8 noundef zeroext 4) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 21474800) #10
  %call5 = tail call i32 @pci_write_config_byte(ptr noundef %1, i32 noundef 70, i8 noundef zeroext 0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 21474800) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !256
  tail call void @arm_heavy_mb() #10
  %port = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 3
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  %add = add i32 %5, 72
  %and = and i32 %add, 1048575
  %add6 = or i32 %and, -18874368
  %6 = inttoptr i32 %add6 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %6, i32 16777216) #10, !srcloc !213
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 21474800) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !257
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %add12 = add i32 %9, 72
  %and13 = and i32 %add12, 1048575
  %add14 = or i32 %and13, -18874368
  %10 = inttoptr i32 %add14 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %10, i32 0) #10, !srcloc !213
  %ac97_ctrl = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 13
  %11 = ptrtoint ptr %ac97_ctrl to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 74, ptr %ac97_ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !258
  tail call void @arm_heavy_mb() #10
  %12 = ptrtoint ptr %ac97_ctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ac97_ctrl, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %add21 = add i32 %16, 72
  %and22 = and i32 %add21, 1048575
  %add23 = or i32 %and22, -18874368
  %17 = inttoptr i32 %add23 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %17, i32 %14) #10, !srcloc !213
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %add26 = add i32 %18, 76
  br label %do.body27

do.body27:                                        ; preds = %if.end.do.body27_crit_edge, %entry
  %19 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port, align 4
  %add29 = add i32 %20, 72
  %and30 = and i32 %add29, 1048575
  %add31 = or i32 %and30, -18874368
  %21 = inttoptr i32 %add31 to ptr
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %21) #10, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !259
  %23 = and i32 %22, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not = icmp eq i32 %23, 0
  br i1 %cmp.not, label %if.end, label %__dx_ok

if.end:                                           ; preds = %do.body27
  %call.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add26, %24
  %cmp36 = icmp sgt i32 %sub, -1
  br i1 %cmp36, label %if.end.do.body27_crit_edge, label %do.end40

if.end.do.body27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body27

do.end40:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %card = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 23
  %25 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %26, i32 0, i32 27
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.32) #14
  br label %cleanup

__dx_ok:                                          ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  tail call void @arm_heavy_mb() #10
  %29 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port, align 4
  %add.i = add i32 %30, 132
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %31 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %31, i32 -1) #10, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %32 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port, align 4
  %add5.i = add i32 %33, 184
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %34 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %34, i32 -1) #10, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !262
  tail call void @arm_heavy_mb() #10
  %35 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port, align 4
  %add12.i = add i32 %36, 156
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %37 = inttoptr i32 %add14.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %37, i32 0) #10, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !263
  tail call void @arm_heavy_mb() #10
  %38 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port, align 4
  %add19.i = add i32 %39, 220
  %and20.i = and i32 %add19.i, 1048575
  %add21.i = or i32 %and20.i, -18874368
  %40 = inttoptr i32 %add21.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %40, i32 0) #10, !srcloc !213
  br label %cleanup

cleanup:                                          ; preds = %__dx_ok, %do.end40
  %retval.0 = phi i32 [ 0, %__dx_ok ], [ -5, %do.end40 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_trident_4d_nx_init(ptr nocapture noundef %trident) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pci1 = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 22
  %0 = ptrtoint ptr %pci1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci1, align 4
  %call = tail call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 64, i32 noundef 0) #10
  %call2 = tail call i32 @pci_write_config_byte(ptr noundef %1, i32 noundef 68, i8 noundef zeroext 0) #10
  %call3 = tail call i32 @pci_write_config_byte(ptr noundef %1, i32 noundef 69, i8 noundef zeroext 0) #10
  %call4 = tail call i32 @pci_write_config_byte(ptr noundef %1, i32 noundef 70, i8 noundef zeroext 1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 21474800) #10
  %call5 = tail call i32 @pci_write_config_byte(ptr noundef %1, i32 noundef 70, i8 noundef zeroext 0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 21474800) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !264
  tail call void @arm_heavy_mb() #10
  %port = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 3
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  %add = add i32 %5, 64
  %and = and i32 %add, 1048575
  %add6 = or i32 %and, -18874368
  %6 = inttoptr i32 %add6 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %6, i32 16777216) #10, !srcloc !213
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 21474800) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !265
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %add12 = add i32 %9, 64
  %and13 = and i32 %add12, 1048575
  %add14 = or i32 %and13, -18874368
  %10 = inttoptr i32 %add14 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %10, i32 0) #10, !srcloc !213
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %add17 = add i32 %11, 76
  br label %do.body18

do.body18:                                        ; preds = %if.end.do.body18_crit_edge, %entry
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add20 = add i32 %13, 64
  %and21 = and i32 %add20, 1048575
  %add22 = or i32 %and21, -18874368
  %14 = inttoptr i32 %add22 to ptr
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %14) #10, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !266
  %16 = and i32 %15, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not = icmp eq i32 %16, 0
  br i1 %cmp.not, label %if.end, label %__nx_ok

if.end:                                           ; preds = %do.body18
  %call.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add17, %17
  %cmp27 = icmp sgt i32 %sub, -1
  br i1 %cmp27, label %if.end.do.body18_crit_edge, label %do.end31

if.end.do.body18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body18

do.end31:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %card = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 23
  %18 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port, align 4
  %add34 = add i32 %23, 64
  %and35 = and i32 %add34, 1048575
  %add36 = or i32 %and35, -18874368
  %24 = inttoptr i32 %add36 to ptr
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %24) #10, !srcloc !232
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !267
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.34, i32 noundef %26) #14
  br label %cleanup

__nx_ok:                                          ; preds = %do.body18
  %ac97_ctrl = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 13
  %27 = ptrtoint ptr %ac97_ctrl to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %ac97_ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  tail call void @arm_heavy_mb() #10
  %28 = ptrtoint ptr %ac97_ctrl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ac97_ctrl, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %31 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %port, align 4
  %add45 = add i32 %32, 64
  %and46 = and i32 %add45, 1048575
  %add47 = or i32 %and46, -18874368
  %33 = inttoptr i32 %add47 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %33, i32 %30) #10, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !269
  tail call void @arm_heavy_mb() #10
  %34 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port, align 4
  %add53 = add i32 %35, 176
  %and54 = and i32 %add53, 1048575
  %add55 = or i32 %and54, -18874368
  %36 = inttoptr i32 %add55 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %36, i32 1048576) #10, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  tail call void @arm_heavy_mb() #10
  %37 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %port, align 4
  %add.i = add i32 %38, 132
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %39 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %39, i32 -1) #10, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port, align 4
  %add5.i = add i32 %41, 184
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %42 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %42, i32 -1) #10, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !262
  tail call void @arm_heavy_mb() #10
  %43 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port, align 4
  %add12.i = add i32 %44, 156
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %45 = inttoptr i32 %add14.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %45, i32 0) #10, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !263
  tail call void @arm_heavy_mb() #10
  %46 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port, align 4
  %add19.i = add i32 %47, 220
  %and20.i = and i32 %add19.i, 1048575
  %add21.i = or i32 %and20.i, -18874368
  %48 = inttoptr i32 %add21.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %48, i32 0) #10, !srcloc !213
  %tlb = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 7
  %49 = ptrtoint ptr %tlb to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tlb, align 4
  %cmp57.not = icmp eq ptr %50, null
  br i1 %cmp57.not, label %do.body68, label %if.then58

if.then58:                                        ; preds = %__nx_ok
  call void @__sanitizer_cov_trace_pc() #12
  %entries_dmaaddr = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 7, i32 1
  %51 = ptrtoint ptr %entries_dmaaddr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %entries_dmaaddr, align 4
  %or = or i32 %52, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !270
  tail call void @arm_heavy_mb() #10
  %53 = tail call i32 @llvm.bswap.i32(i32 %or)
  %54 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %port, align 4
  %add64 = add i32 %55, 108
  %and65 = and i32 %add64, 1048575
  %add66 = or i32 %and65, -18874368
  %56 = inttoptr i32 %add66 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %56, i32 %53) #10, !srcloc !213
  br label %do.body77

do.body68:                                        ; preds = %__nx_ok
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !271
  tail call void @arm_heavy_mb() #10
  %57 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %port, align 4
  %add72 = add i32 %58, 108
  %and73 = and i32 %add72, 1048575
  %add74 = or i32 %and73, -18874368
  %59 = inttoptr i32 %add74 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %59, i32 0) #10, !srcloc !213
  br label %do.body77

do.body77:                                        ; preds = %do.body68, %if.then58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !272
  tail call void @arm_heavy_mb() #10
  %spdif_bits = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 10
  %60 = ptrtoint ptr %spdif_bits to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %spdif_bits, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  %63 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %port, align 4
  %add81 = add i32 %64, 100
  %and82 = and i32 %add81, 1048575
  %add83 = or i32 %and82, -18874368
  %65 = inttoptr i32 %add83 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %65, i32 %62) #10, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !273
  tail call void @arm_heavy_mb() #10
  %spdif_ctrl = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 8
  %66 = ptrtoint ptr %spdif_ctrl to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %spdif_ctrl, align 4
  %68 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %port, align 4
  %add89 = add i32 %69, 39
  %and90 = and i32 %add89, 1048575
  %add91 = or i32 %and90, -18874368
  %70 = inttoptr i32 %add91 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %70, i8 %67) #10, !srcloc !216
  br label %cleanup

cleanup:                                          ; preds = %do.body77, %do.end31
  %retval.0 = phi i32 [ 0, %do.body77 ], [ -5, %do.end31 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_trident_sis_init(ptr nocapture noundef readonly %trident) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @snd_trident_sis_reset(ptr noundef %trident)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  tail call void @arm_heavy_mb() #10
  %port.i = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 3
  %0 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port.i, align 4
  %add.i = add i32 %1, 132
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 -1) #10, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %3 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port.i, align 4
  %add5.i = add i32 %4, 184
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %5 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %5, i32 -1) #10, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !262
  tail call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port.i, align 4
  %add12.i = add i32 %7, 156
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %8 = inttoptr i32 %add14.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %8, i32 0) #10, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !263
  tail call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port.i, align 4
  %add19.i = add i32 %10, 220
  %and20.i = and i32 %add19.i, 1048575
  %add21.i = or i32 %and20.i, -18874368
  %11 = inttoptr i32 %add21.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %11, i32 0) #10, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !274
  tail call void @arm_heavy_mb() #10
  %spdif_bits = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 10
  %12 = ptrtoint ptr %spdif_bits to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %spdif_bits, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port.i, align 4
  %add = add i32 %16, 112
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %17 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %17, i32 %14) #10, !srcloc !213
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_trident_alloc_voice(ptr noundef %trident, i32 noundef %type, i32 noundef %client, i32 noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %voice_alloc = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 20
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_alloc) #10
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then25
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  %ChanPCMcnt.i = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 16
  %1 = ptrtoint ptr %ChanPCMcnt.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ChanPCMcnt.i, align 4
  %ChanPCM.i = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 15
  %3 = ptrtoint ptr %ChanPCM.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ChanPCM.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp.not.i = icmp slt i32 %2, %4
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.then
  %arrayidx.i = getelementptr %struct.snd_trident, ptr %trident, i32 0, i32 14, i32 1
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %idx.017.i = phi i32 [ 31, %for.cond.preheader.i ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %idx.017.i
  %and.i = and i32 %shl.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %snd_trident_allocate_pcm_channel.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %dec.i = add nsw i32 %idx.017.i, -1
  %cmp1.not.i = icmp eq i32 %idx.017.i, 0
  br i1 %cmp1.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

snd_trident_allocate_pcm_channel.exit:            ; preds = %for.body.i
  %or.i = or i32 %shl.i, %6
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or.i, ptr %arrayidx.i, align 4
  %inc.i = add i32 %2, 1
  %8 = ptrtoint ptr %ChanPCMcnt.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %inc.i, ptr %ChanPCMcnt.i, align 4
  %add.i = add nuw i32 %idx.017.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp8 = icmp slt i32 %add.i, 0
  br i1 %cmp8, label %snd_trident_allocate_pcm_channel.exit.cleanup_crit_edge, label %if.end

snd_trident_allocate_pcm_channel.exit.cleanup_crit_edge: ; preds = %snd_trident_allocate_pcm_channel.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %snd_trident_allocate_pcm_channel.exit
  call void @__sanitizer_cov_trace_pc() #12
  %use = getelementptr %struct.snd_trident, ptr %trident, i32 0, i32 18, i32 2, i32 %add.i, i32 1
  %9 = ptrtoint ptr %use to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %use, align 4
  %bf.set14 = or i8 %bf.load, -64
  store i8 %bf.set14, ptr %use, align 4
  %capture = getelementptr %struct.snd_trident, ptr %trident, i32 0, i32 18, i32 2, i32 %add.i, i32 28
  %10 = ptrtoint ptr %capture to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load15 = load i8, ptr %capture, align 4
  %bf.clear19 = and i8 %bf.load15, -97
  store i8 %bf.clear19, ptr %capture, align 4
  %memblk = getelementptr %struct.snd_trident, ptr %trident, i32 0, i32 18, i32 2, i32 %add.i, i32 24
  %11 = ptrtoint ptr %memblk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %memblk, align 4
  %substream = getelementptr %struct.snd_trident, ptr %trident, i32 0, i32 18, i32 2, i32 %add.i, i32 26
  br label %cleanup.sink.split

if.then25:                                        ; preds = %entry
  %ChanMap.i = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 14
  %12 = ptrtoint ptr %ChanMap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ChanMap.i, align 4
  br label %for.body.i90

for.body.i90:                                     ; preds = %for.inc.i95.for.body.i90_crit_edge, %if.then25
  %idx.011.i = phi i32 [ 31, %if.then25 ], [ %dec.i93, %for.inc.i95.for.body.i90_crit_edge ]
  %shl.i87 = shl nuw i32 1, %idx.011.i
  %and.i88 = and i32 %shl.i87, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i88)
  %tobool.not.i89 = icmp eq i32 %and.i88, 0
  br i1 %tobool.not.i89, label %snd_trident_allocate_synth_channel.exit, label %for.inc.i95

for.inc.i95:                                      ; preds = %for.body.i90
  %dec.i93 = add nsw i32 %idx.011.i, -1
  %cmp.not.i94 = icmp eq i32 %idx.011.i, 0
  br i1 %cmp.not.i94, label %for.inc.i95.cleanup_crit_edge, label %for.inc.i95.for.body.i90_crit_edge

for.inc.i95.for.body.i90_crit_edge:               ; preds = %for.inc.i95
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i90

for.inc.i95.cleanup_crit_edge:                    ; preds = %for.inc.i95
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

snd_trident_allocate_synth_channel.exit:          ; preds = %for.body.i90
  %or.i91 = or i32 %shl.i87, %13
  %14 = ptrtoint ptr %ChanMap.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or.i91, ptr %ChanMap.i, align 4
  %ChanSynthCount.i = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 18, i32 3
  %15 = ptrtoint ptr %ChanSynthCount.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ChanSynthCount.i, align 4
  %inc.i92 = add i32 %16, 1
  store i32 %inc.i92, ptr %ChanSynthCount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.011.i)
  %cmp27 = icmp slt i32 %idx.011.i, 0
  br i1 %cmp27, label %snd_trident_allocate_synth_channel.exit.cleanup_crit_edge, label %if.end31

snd_trident_allocate_synth_channel.exit.cleanup_crit_edge: ; preds = %snd_trident_allocate_synth_channel.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end31:                                         ; preds = %snd_trident_allocate_synth_channel.exit
  call void @__sanitizer_cov_trace_pc() #12
  %use35 = getelementptr %struct.snd_trident, ptr %trident, i32 0, i32 18, i32 2, i32 %idx.011.i, i32 1
  %17 = ptrtoint ptr %use35 to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load36 = load i8, ptr %use35, align 4
  %bf.set42 = or i8 %bf.load36, -96
  store i8 %bf.set42, ptr %use35, align 4
  %conv43 = trunc i32 %client to i8
  %client44 = getelementptr %struct.snd_trident, ptr %trident, i32 0, i32 18, i32 2, i32 %idx.011.i, i32 3
  %18 = ptrtoint ptr %client44 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv43, ptr %client44, align 4
  %conv45 = trunc i32 %port to i8
  %port46 = getelementptr %struct.snd_trident, ptr %trident, i32 0, i32 18, i32 2, i32 %idx.011.i, i32 4
  %19 = ptrtoint ptr %port46 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv45, ptr %port46, align 1
  %memblk47 = getelementptr %struct.snd_trident, ptr %trident, i32 0, i32 18, i32 2, i32 %idx.011.i, i32 24
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end31, %if.end
  %memblk47.sink = phi ptr [ %memblk47, %if.end31 ], [ %substream, %if.end ]
  %idx.011.i.pn = phi i32 [ %idx.011.i, %if.end31 ], [ %add.i, %if.end ]
  %retval.0.ph = getelementptr %struct.snd_trident, ptr %trident, i32 0, i32 18, i32 2, i32 %idx.011.i.pn
  %20 = ptrtoint ptr %memblk47.sink to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %memblk47.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %snd_trident_allocate_synth_channel.exit.cleanup_crit_edge, %for.inc.i95.cleanup_crit_edge, %snd_trident_allocate_pcm_channel.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then.cleanup_crit_edge ], [ null, %snd_trident_allocate_pcm_channel.exit.cleanup_crit_edge ], [ null, %snd_trident_allocate_synth_channel.exit.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ null, %for.inc.i.cleanup_crit_edge ], [ null, %for.inc.i95.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_alloc, i32 noundef %call2) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_trident_free_voice(ptr noundef %trident, ptr noundef %voice) #0 align 64 {
entry:
  %mask.i = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %voice, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %use = getelementptr inbounds %struct.snd_trident_voice, ptr %voice, i32 0, i32 1
  %0 = ptrtoint ptr %use to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %use, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %1 = ptrtoint ptr %voice to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %voice, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mask.i) #10
  %3 = ptrtoint ptr %mask.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %mask.i, align 8
  %4 = and i32 %2, 65472
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %.not.i = icmp eq i32 %4, 0
  br i1 %.not.i, label %for.cond.preheader.i, label %do.end.i, !prof !275

for.cond.preheader.i:                             ; preds = %if.end
  %and.i = and i32 %2, 31
  %shl.i = shl nuw i32 1, %and.i
  %conv27.i = lshr i32 %2, 5
  %shr.i = and i32 %conv27.i, 2047
  %arrayidx.i = getelementptr [2 x i32], ptr %mask.i, i32 0, i32 %shr.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %or.i = or i32 %shl.i, %6
  store i32 %or.i, ptr %arrayidx.i, align 4
  %7 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr.i = load i32, ptr %mask.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool31.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool31.not.i, label %for.cond.preheader.i.if.end56.i_crit_edge, label %do.body33.i

for.cond.preheader.i.if.end56.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3825, i32 noundef 9, ptr noundef null) #10
  br label %snd_trident_clear_voices.exit

do.body33.i:                                      ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !276
  tail call void @arm_heavy_mb() #10
  %8 = tail call i32 @llvm.bswap.i32(i32 %.pr.i) #10
  %port.i = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 3
  %9 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port.i, align 4
  %add.i = add i32 %10, 132
  %and37.i = and i32 %add.i, 1048575
  %add38.i = or i32 %and37.i, -18874368
  %11 = inttoptr i32 %add38.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %11, i32 %8) #10, !srcloc !213
  %12 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port.i, align 4
  %add40.i = add i32 %13, 156
  %and41.i = and i32 %add40.i, 1048575
  %add42.i = or i32 %and41.i, -18874368
  %14 = inttoptr i32 %add42.i to ptr
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %14) #10, !srcloc !232
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !278
  tail call void @arm_heavy_mb() #10
  %neg.i = xor i32 %.pr.i, -1
  %and50.i = and i32 %16, %neg.i
  %17 = tail call i32 @llvm.bswap.i32(i32 %and50.i) #10
  %18 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port.i, align 4
  %add52.i = add i32 %19, 156
  %and53.i = and i32 %add52.i, 1048575
  %add54.i = or i32 %and53.i, -18874368
  %20 = inttoptr i32 %add54.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %20, i32 %17) #10, !srcloc !213
  br label %if.end56.i

if.end56.i:                                       ; preds = %do.body33.i, %for.cond.preheader.i.if.end56.i_crit_edge
  %arrayidx57.i = getelementptr inbounds [2 x i32], ptr %mask.i, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx57.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool58.not.i = icmp eq i32 %22, 0
  br i1 %tobool58.not.i, label %if.end56.i.snd_trident_clear_voices.exit_crit_edge, label %do.body60.i

if.end56.i.snd_trident_clear_voices.exit_crit_edge: ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_clear_voices.exit

do.body60.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !279
  tail call void @arm_heavy_mb() #10
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #10
  %port64.i = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 3
  %24 = ptrtoint ptr %port64.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port64.i, align 4
  %add65.i = add i32 %25, 184
  %and66.i = and i32 %add65.i, 1048575
  %add67.i = or i32 %and66.i, -18874368
  %26 = inttoptr i32 %add67.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %26, i32 %23) #10, !srcloc !213
  %27 = ptrtoint ptr %port64.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port64.i, align 4
  %add71.i = add i32 %28, 220
  %and72.i = and i32 %add71.i, 1048575
  %add73.i = or i32 %and72.i, -18874368
  %29 = inttoptr i32 %add73.i to ptr
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %29) #10, !srcloc !232
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !281
  tail call void @arm_heavy_mb() #10
  %neg81.i = xor i32 %22, -1
  %and82.i = and i32 %31, %neg81.i
  %32 = tail call i32 @llvm.bswap.i32(i32 %and82.i) #10
  %33 = ptrtoint ptr %port64.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port64.i, align 4
  %add84.i = add i32 %34, 220
  %and85.i = and i32 %add84.i, 1048575
  %add86.i = or i32 %and85.i, -18874368
  %35 = inttoptr i32 %add86.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %35, i32 %32) #10, !srcloc !213
  br label %snd_trident_clear_voices.exit

snd_trident_clear_voices.exit:                    ; preds = %do.body60.i, %if.end56.i.snd_trident_clear_voices.exit_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mask.i) #10
  %voice_alloc = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 20
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_alloc) #10
  %private_free9 = getelementptr inbounds %struct.snd_trident_voice, ptr %voice, i32 0, i32 36
  %36 = ptrtoint ptr %private_free9 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %private_free9, align 4
  store ptr null, ptr %private_free9, align 4
  %private_data = getelementptr inbounds %struct.snd_trident_voice, ptr %voice, i32 0, i32 35
  %38 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %private_data, align 4
  %39 = ptrtoint ptr %use to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load11 = load i8, ptr %use, align 4
  %40 = and i8 %bf.load11, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool14.not = icmp eq i8 %40, 0
  br i1 %tobool14.not, label %snd_trident_clear_voices.exit.if.end17_crit_edge, label %if.then15

snd_trident_clear_voices.exit.if.end17_crit_edge: ; preds = %snd_trident_clear_voices.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then15:                                        ; preds = %snd_trident_clear_voices.exit
  %41 = ptrtoint ptr %voice to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %voice, align 4
  %43 = add i32 %42, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %43)
  %44 = icmp ult i32 %43, -32
  br i1 %44, label %if.then15.if.end17_crit_edge, label %if.end.i

if.then15.if.end17_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end.i:                                         ; preds = %if.then15
  %and.i76 = and i32 %42, 31
  %arrayidx.i77 = getelementptr %struct.snd_trident, ptr %trident, i32 0, i32 14, i32 1
  %45 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i77, align 4
  %shl.i78 = shl nuw i32 1, %and.i76
  %and2.i = and i32 %46, %shl.i78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end17_crit_edge, label %if.then3.i

if.end.i.if.end17_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %neg.i79 = xor i32 %shl.i78, -1
  %and7.i = and i32 %46, %neg.i79
  %47 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and7.i, ptr %arrayidx.i77, align 4
  %ChanPCMcnt.i = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 16
  %48 = ptrtoint ptr %ChanPCMcnt.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ChanPCMcnt.i, align 4
  %dec.i = add i32 %49, -1
  store i32 %dec.i, ptr %ChanPCMcnt.i, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then3.i, %if.end.i.if.end17_crit_edge, %if.then15.if.end17_crit_edge, %snd_trident_clear_voices.exit.if.end17_crit_edge
  %50 = ptrtoint ptr %use to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load18 = load i8, ptr %use, align 4
  %51 = and i8 %bf.load18, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool22.not = icmp eq i8 %51, 0
  br i1 %tobool22.not, label %if.end17.if.end25_crit_edge, label %if.then23

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then23:                                        ; preds = %if.end17
  %52 = ptrtoint ptr %voice to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %voice, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %53)
  %54 = icmp ugt i32 %53, 31
  br i1 %54, label %if.then23.if.end25_crit_edge, label %if.end.i83

if.then23.if.end25_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.end.i83:                                       ; preds = %if.then23
  %ChanMap.i = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 14
  %55 = ptrtoint ptr %ChanMap.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ChanMap.i, align 4
  %shl.i80 = shl nuw i32 1, %53
  %and2.i81 = and i32 %56, %shl.i80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i81)
  %tobool.not.i82 = icmp eq i32 %and2.i81, 0
  br i1 %tobool.not.i82, label %if.end.i83.if.end25_crit_edge, label %if.then3.i87

if.end.i83.if.end25_crit_edge:                    ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then3.i87:                                     ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #12
  %neg.i84 = xor i32 %shl.i80, -1
  %and7.i85 = and i32 %56, %neg.i84
  %57 = ptrtoint ptr %ChanMap.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %and7.i85, ptr %ChanMap.i, align 4
  %ChanSynthCount.i = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 18, i32 3
  %58 = ptrtoint ptr %ChanSynthCount.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ChanSynthCount.i, align 4
  %dec.i86 = add i32 %59, -1
  store i32 %dec.i86, ptr %ChanSynthCount.i, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then3.i87, %if.end.i83.if.end25_crit_edge, %if.then23.if.end25_crit_edge, %if.end17.if.end25_crit_edge
  %60 = ptrtoint ptr %use to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load26 = load i8, ptr %use, align 4
  %bf.clear38 = and i8 %bf.load26, 15
  store i8 %bf.clear38, ptr %use, align 4
  %spdif = getelementptr inbounds %struct.snd_trident_voice, ptr %voice, i32 0, i32 28
  %61 = ptrtoint ptr %spdif to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load40 = load i8, ptr %spdif, align 4
  %bf.clear44 = and i8 %bf.load40, -97
  store i8 %bf.clear44, ptr %spdif, align 4
  %sample_ops = getelementptr inbounds %struct.snd_trident_voice, ptr %voice, i32 0, i32 6
  %62 = ptrtoint ptr %sample_ops to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %sample_ops, align 4
  %substream = getelementptr inbounds %struct.snd_trident_voice, ptr %voice, i32 0, i32 26
  %63 = ptrtoint ptr %substream to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %substream, align 4
  %extra = getelementptr inbounds %struct.snd_trident_voice, ptr %voice, i32 0, i32 27
  %64 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %extra, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_alloc, i32 noundef %call6) #10
  %tobool47.not = icmp eq ptr %37, null
  br i1 %tobool47.not, label %if.end25.cleanup_crit_edge, label %if.then48

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then48:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %37(ptr noundef nonnull %voice) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %if.end25.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %in_suspend = getelementptr inbounds %struct.snd_trident, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %in_suspend, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %in_suspend, align 4
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %5 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 768, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  %ac97 = getelementptr inbounds %struct.snd_trident, ptr %3, i32 0, i32 29
  %6 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ac97, align 4
  tail call void @snd_ac97_suspend(ptr noundef %7) #10
  %ac97_sec = getelementptr inbounds %struct.snd_trident, ptr %3, i32 0, i32 30
  %8 = ptrtoint ptr %ac97_sec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ac97_sec, align 4
  tail call void @snd_ac97_suspend(ptr noundef %9) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %device = getelementptr inbounds %struct.snd_trident, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 270737408, label %sw.bb
    i32 270737409, label %sw.bb2
    i32 272199704, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call fastcc i32 @snd_trident_4d_dx_init(ptr noundef %3)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call fastcc i32 @snd_trident_4d_nx_init(ptr noundef %3)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @snd_trident_sis_init(ptr noundef %3)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %ac97 = getelementptr inbounds %struct.snd_trident, ptr %3, i32 0, i32 29
  %7 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ac97, align 4
  tail call void @snd_ac97_resume(ptr noundef %8) #10
  %ac97_sec = getelementptr inbounds %struct.snd_trident, ptr %3, i32 0, i32 30
  %9 = ptrtoint ptr %ac97_sec to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ac97_sec, align 4
  tail call void @snd_ac97_resume(ptr noundef %10) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !282
  tail call void @arm_heavy_mb() #10
  %musicvol_wavevol = getelementptr inbounds %struct.snd_trident, ptr %3, i32 0, i32 31
  %11 = ptrtoint ptr %musicvol_wavevol to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %musicvol_wavevol, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %port = getelementptr inbounds %struct.snd_trident, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port, align 4
  %add = add i32 %15, 168
  %and = and i32 %add, 1048575
  %add6 = or i32 %and, -18874368
  %16 = inttoptr i32 %add6 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 %13) #10, !srcloc !213
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port, align 4
  %add.i = add i32 %18, 160
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %19 = inttoptr i32 %add1.i to ptr
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %19) #10, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  %21 = or i32 %20, 3145728
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #10
  %23 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 272199704, i32 %24)
  %cmp.i = icmp eq i32 %24, 272199704
  %or4.i = or i32 %22, 65536
  %spec.select.i = select i1 %cmp.i, i32 %or4.i, i32 %22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !237
  tail call void @arm_heavy_mb() #10
  %25 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #10
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port, align 4
  %add6.i = add i32 %27, 160
  %and7.i = and i32 %add6.i, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %28 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %28, i32 %25) #10, !srcloc !213
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %29 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 0, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  %in_suspend = getelementptr inbounds %struct.snd_trident, ptr %3, i32 0, i32 17
  %30 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load = load i8, ptr %in_suspend, align 4
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %in_suspend, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_playback_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %voice_alloc.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 20
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_alloc.i) #10
  %ChanPCMcnt.i.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %ChanPCMcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ChanPCMcnt.i.i, align 4
  %ChanPCM.i.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %ChanPCM.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ChanPCM.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not.i.i = icmp slt i32 %5, %7
  br i1 %cmp.not.i.i, label %for.cond.preheader.i.i, label %entry.snd_trident_alloc_voice.exit.thread_crit_edge

entry.snd_trident_alloc_voice.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_alloc_voice.exit.thread

for.cond.preheader.i.i:                           ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 14, i32 1
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i
  %idx.017.i.i = phi i32 [ 31, %for.cond.preheader.i.i ], [ %dec.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %idx.017.i.i
  %and.i.i = and i32 %shl.i.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %snd_trident_allocate_pcm_channel.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %dec.i.i = add nsw i32 %idx.017.i.i, -1
  %cmp1.not.i.i = icmp eq i32 %idx.017.i.i, 0
  br i1 %cmp1.not.i.i, label %for.inc.i.i.snd_trident_alloc_voice.exit.thread_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.snd_trident_alloc_voice.exit.thread_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_alloc_voice.exit.thread

snd_trident_allocate_pcm_channel.exit.i:          ; preds = %for.body.i.i
  %or.i.i = or i32 %shl.i.i, %9
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  %inc.i.i = add i32 %5, 1
  %11 = ptrtoint ptr %ChanPCMcnt.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %inc.i.i, ptr %ChanPCMcnt.i.i, align 4
  %add.i.i = add nuw i32 %idx.017.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %cmp8.i = icmp slt i32 %add.i.i, 0
  br i1 %cmp8.i, label %snd_trident_allocate_pcm_channel.exit.i.snd_trident_alloc_voice.exit.thread_crit_edge, label %snd_trident_alloc_voice.exit

snd_trident_allocate_pcm_channel.exit.i.snd_trident_alloc_voice.exit.thread_crit_edge: ; preds = %snd_trident_allocate_pcm_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_alloc_voice.exit.thread

snd_trident_alloc_voice.exit.thread:              ; preds = %snd_trident_allocate_pcm_channel.exit.i.snd_trident_alloc_voice.exit.thread_crit_edge, %for.inc.i.i.snd_trident_alloc_voice.exit.thread_crit_edge, %entry.snd_trident_alloc_voice.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_alloc.i, i32 noundef %call2.i) #10
  br label %cleanup

snd_trident_alloc_voice.exit:                     ; preds = %snd_trident_allocate_pcm_channel.exit.i
  %use.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 18, i32 2, i32 %add.i.i, i32 1
  %12 = ptrtoint ptr %use.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %use.i, align 4
  %bf.set14.i = or i8 %bf.load.i, -64
  store i8 %bf.set14.i, ptr %use.i, align 4
  %capture.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 18, i32 2, i32 %add.i.i, i32 28
  %13 = ptrtoint ptr %capture.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load15.i = load i8, ptr %capture.i, align 4
  %bf.clear19.i = and i8 %bf.load15.i, -97
  store i8 %bf.clear19.i, ptr %capture.i, align 4
  %memblk.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 18, i32 2, i32 %add.i.i, i32 24
  %14 = ptrtoint ptr %memblk.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %memblk.i, align 4
  %substream.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 18, i32 2, i32 %add.i.i, i32 26
  %retval.0.ph.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 18, i32 2, i32 %add.i.i
  %15 = ptrtoint ptr %substream.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %substream.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_alloc.i, i32 noundef %call2.i) #10
  %cmp = icmp eq ptr %retval.0.ph.i, null
  br i1 %cmp, label %snd_trident_alloc_voice.exit.cleanup_crit_edge, label %if.end

snd_trident_alloc_voice.exit.cleanup_crit_edge:   ; preds = %snd_trident_alloc_voice.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %snd_trident_alloc_voice.exit
  %tobool.not.i = icmp eq ptr %1, null
  %tobool2.not.i = icmp eq ptr %substream, null
  %spec.select.i = or i1 %tobool2.not.i, %tobool.not.i
  br i1 %spec.select.i, label %do.end.i, label %if.end25.i, !prof !223

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2876, i32 noundef 9, ptr noundef null) #10
  br label %snd_trident_pcm_mixer_build.exit

if.end25.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %number.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %16 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %number.i, align 4
  %arrayidx.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 %17
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %retval.0.ph.i, ptr %arrayidx.i, align 4
  %vol.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 %17, i32 1
  %19 = ptrtoint ptr %vol.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 10, ptr %vol.i, align 4
  %pan.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 %17, i32 2
  %20 = ptrtoint ptr %pan.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %pan.i, align 2
  %rvol.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 %17, i32 3
  %21 = ptrtoint ptr %rvol.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 127, ptr %rvol.i, align 1
  %cvol.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 %17, i32 4
  %22 = ptrtoint ptr %cvol.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 127, ptr %cvol.i, align 4
  %23 = load i32, ptr %number.i, align 4
  tail call fastcc void @snd_trident_notify_pcm_change(ptr noundef nonnull %1, i32 noundef %23, i32 noundef 1) #10
  br label %snd_trident_pcm_mixer_build.exit

snd_trident_pcm_mixer_build.exit:                 ; preds = %if.end25.i, %do.end.i
  %24 = ptrtoint ptr %substream.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %substream, ptr %substream.i, align 4
  %private_data4 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %25 = ptrtoint ptr %private_data4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %retval.0.ph.i, ptr %private_data4, align 8
  %private_free = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 45
  %26 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @snd_trident_pcm_free_substream, ptr %private_free, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %27 = call ptr @memcpy(ptr %hw, ptr @snd_trident_playback, i32 64)
  tail call void @snd_pcm_set_sync(ptr noundef %substream) #10
  %call5 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 17, i32 noundef 0, i32 noundef 65536) #10
  br label %cleanup

cleanup:                                          ; preds = %snd_trident_pcm_mixer_build.exit, %snd_trident_alloc_voice.exit.cleanup_crit_edge, %snd_trident_alloc_voice.exit.thread
  %retval.0 = phi i32 [ 0, %snd_trident_pcm_mixer_build.exit ], [ -11, %snd_trident_alloc_voice.exit.cleanup_crit_edge ], [ -11, %snd_trident_alloc_voice.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_playback_close(ptr noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %tobool1.not.i = icmp eq ptr %substream, null
  %spec.select.i = or i1 %tobool1.not.i, %tobool.not.i
  br i1 %spec.select.i, label %do.end.i, label %if.end24.i, !prof !223

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2892, i32 noundef 9, ptr noundef null) #10
  br label %snd_trident_pcm_mixer_free.exit

if.end24.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %number.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %2 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %number.i, align 4
  %arrayidx.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx.i, align 4
  %5 = load i32, ptr %number.i, align 4
  tail call fastcc void @snd_trident_notify_pcm_change(ptr noundef nonnull %1, i32 noundef %5, i32 noundef 0) #10
  br label %snd_trident_pcm_mixer_free.exit

snd_trident_pcm_mixer_free.exit:                  ; preds = %if.end24.i, %do.end.i
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_hw_params(ptr noundef %substream, ptr nocapture noundef readonly %hw_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1.i, align 4
  %private_data2.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2.i, align 8
  %tlb.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %tlb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tlb.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.then.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then.i:                                        ; preds = %entry
  %buffer_changed.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 54
  %8 = ptrtoint ptr %buffer_changed.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %buffer_changed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool3.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool3.not.i, label %if.then.i.if.then_crit_edge, label %if.then4.i

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then4.i:                                       ; preds = %if.then.i
  %memblk.i = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 24
  %9 = ptrtoint ptr %memblk.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %memblk.i, align 4
  %tobool5.not.i = icmp eq ptr %10, null
  br i1 %tobool5.not.i, label %if.then4.i.if.end.i_crit_edge, label %if.then6.i

if.then4.i.if.end.i_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then6.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @snd_trident_free_pages(ptr noundef %1, ptr noundef nonnull %10) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then6.i, %if.then4.i.if.end.i_crit_edge
  %call8.i = tail call ptr @snd_trident_alloc_pages(ptr noundef %1, ptr noundef %substream) #10
  %11 = ptrtoint ptr %memblk.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8.i, ptr %memblk.i, align 4
  %cmp.i = icmp eq ptr %call8.i, null
  br i1 %cmp.i, label %if.end.i.if.end_crit_edge, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %if.end.i.if.then_crit_edge, %if.then.i.if.then_crit_edge, %entry.if.then_crit_edge
  %call1 = tail call fastcc i32 @snd_trident_allocate_evoice(ptr noundef %substream, ptr noundef %hw_params)
  br label %if.end

if.end:                                           ; preds = %if.then, %if.end.i.if.end_crit_edge
  %err.0 = phi i32 [ %call1, %if.then ], [ -12, %if.end.i.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_hw_free(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %cond.end

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

cond.end:                                         ; preds = %entry
  %extra = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %extra, align 4
  %tlb = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %tlb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tlb, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %cond.end.if.end9_crit_edge, label %land.lhs.true

cond.end.if.end9_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

land.lhs.true:                                    ; preds = %cond.end
  %memblk = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 24
  %10 = ptrtoint ptr %memblk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %memblk, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %land.lhs.true.if.end9_crit_edge, label %if.then6

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @snd_trident_free_pages(ptr noundef %1, ptr noundef nonnull %11) #10
  %12 = ptrtoint ptr %memblk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %memblk, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %land.lhs.true.if.end9_crit_edge, %cond.end.if.end9_crit_edge
  %cmp.not = icmp eq ptr %7, null
  br i1 %cmp.not, label %if.end9.if.end12_crit_edge, label %if.then10

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then10:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @snd_trident_free_voice(ptr noundef %1, ptr noundef nonnull %7)
  %13 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %extra, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end9.if.end12_crit_edge, %entry.if.end12_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_playback_prepare(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %extra = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %extra, align 4
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %8 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %number, align 4
  %reg_lock = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 37
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #10
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %10 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rate, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %11, label %if.else6.i [
    i32 44100, label %entry.snd_trident_convert_rate.exit_crit_edge
    i32 8000, label %if.then2.i
    i32 48000, label %if.then5.i
  ]

entry.snd_trident_convert_rate.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_convert_rate.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_convert_rate.exit

if.then5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_convert_rate.exit

if.else6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i = shl i32 %11, 12
  %add.i = add i32 %shl.i, 24000
  %div7.i = udiv i32 %add.i, 48000
  %phi.cast = trunc i32 %div7.i to i16
  br label %snd_trident_convert_rate.exit

snd_trident_convert_rate.exit:                    ; preds = %if.else6.i, %if.then5.i, %if.then2.i, %entry.snd_trident_convert_rate.exit_crit_edge
  %delta.0.i = phi i16 [ 683, %if.then2.i ], [ 4096, %if.then5.i ], [ %phi.cast, %if.else6.i ], [ 3763, %entry.snd_trident_convert_rate.exit_crit_edge ]
  %Delta = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 12
  %13 = ptrtoint ptr %Delta to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %delta.0.i, ptr %Delta, align 4
  %14 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rate, align 4
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %16 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %period_size, align 4
  %mul.i = mul i32 %17, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072000, i32 %mul.i)
  %cmp.i = icmp ult i32 %mul.i, 3072000
  %div1.i = udiv i32 %mul.i, 96000
  %div.i = udiv i32 %mul.i, 48000
  %sub.i = add nsw i32 %div.i, -32
  %res.0.i = select i1 %cmp.i, i32 %div1.i, i32 %sub.i
  %spurious_threshold = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 31
  %18 = ptrtoint ptr %spurious_threshold to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %res.0.i, ptr %spurious_threshold, align 4
  %memblk = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 24
  %19 = ptrtoint ptr %memblk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %memblk, align 4
  %tobool.not = icmp eq ptr %20, null
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %offset = getelementptr inbounds %struct.snd_util_memblk, ptr %20, i32 0, i32 1
  %.sink.in = select i1 %tobool.not, ptr %dma_addr, ptr %offset
  %21 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %21)
  %.sink = load i32, ptr %.sink.in, align 4
  %22 = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 9
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink, ptr %22, align 4
  %CSO = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 7
  %24 = ptrtoint ptr %CSO to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %CSO, align 4
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %25 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buffer_size, align 4
  %sub = add i32 %26, -1
  %ESO = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 8
  %27 = ptrtoint ptr %ESO to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub, ptr %ESO, align 4
  %28 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %runtime1, align 4
  %format.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %29, i32 0, i32 12
  %30 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %format.i, align 4
  %call.i = tail call i32 @snd_pcm_format_width(i32 noundef %31) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call.i)
  %cmp.i109 = icmp eq i32 %call.i, 16
  %spec.select.i = select i1 %cmp.i109, i32 9, i32 1
  %32 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %format.i, align 4
  %call3.i = tail call i32 @snd_pcm_format_signed(i32 noundef %33) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  %or5.i = or i32 %spec.select.i, 2
  %CTRL.1.i = select i1 %tobool.not.i, i32 %spec.select.i, i32 %or5.i
  %channels.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %29, i32 0, i32 15
  %34 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %channels.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp7.i = icmp ugt i32 %35, 1
  %or9.i = or i32 %CTRL.1.i, 4
  %CTRL.2.i = select i1 %cmp7.i, i32 %or9.i, i32 %CTRL.1.i
  %conv8 = trunc i32 %CTRL.2.i to i8
  %CTRL = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 20
  %36 = ptrtoint ptr %CTRL to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv8, ptr %CTRL, align 1
  %FMC = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 19
  %37 = ptrtoint ptr %FMC to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 3, ptr %FMC, align 2
  %GVSel = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 16
  %38 = ptrtoint ptr %GVSel to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %GVSel, align 1
  %EC = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 10
  %39 = ptrtoint ptr %EC to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %EC, align 4
  %Alpha = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 11
  %40 = ptrtoint ptr %Alpha to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %Alpha, align 2
  %FMS = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 21
  %41 = ptrtoint ptr %FMS to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %FMS, align 4
  %vol = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 %9, i32 1
  %42 = ptrtoint ptr %vol to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %vol, align 4
  %Vol = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 14
  %44 = ptrtoint ptr %Vol to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %Vol, align 4
  %rvol = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 %9, i32 3
  %45 = ptrtoint ptr %rvol to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %rvol, align 1
  %RVol = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 17
  %47 = ptrtoint ptr %RVol to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %RVol, align 4
  %cvol = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 %9, i32 4
  %48 = ptrtoint ptr %cvol to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %cvol, align 4
  %CVol = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 18
  %50 = ptrtoint ptr %CVol to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %CVol, align 1
  %pan = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 %9, i32 2
  %51 = ptrtoint ptr %pan to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %pan, align 2
  %Pan = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 15
  %53 = ptrtoint ptr %Pan to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %Pan, align 2
  %Attribute = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 13
  %54 = ptrtoint ptr %Attribute to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 0, ptr %Attribute, align 2
  tail call void @snd_trident_write_voice_regs(ptr noundef %1, ptr noundef %5)
  %cmp.not = icmp eq ptr %7, null
  br i1 %cmp.not, label %snd_trident_convert_rate.exit.if.end42_crit_edge, label %if.then11

snd_trident_convert_rate.exit.if.end42_crit_edge: ; preds = %snd_trident_convert_rate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then11:                                        ; preds = %snd_trident_convert_rate.exit
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %Delta to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %Delta, align 4
  %Delta13 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 12
  %57 = ptrtoint ptr %Delta13 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %Delta13, align 4
  %58 = ptrtoint ptr %spurious_threshold to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %spurious_threshold, align 4
  %spurious_threshold15 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 31
  %60 = ptrtoint ptr %spurious_threshold15 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %spurious_threshold15, align 4
  %61 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %22, align 4
  %LBA17 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 9
  %63 = ptrtoint ptr %LBA17 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %LBA17, align 4
  %CSO18 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 7
  %64 = ptrtoint ptr %CSO18 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %CSO18, align 4
  %65 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %period_size, align 4
  %mul = shl i32 %66, 1
  %sub20 = add i32 %mul, 3
  %ESO21 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 8
  %67 = ptrtoint ptr %ESO21 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %sub20, ptr %ESO21, align 4
  %68 = ptrtoint ptr %CTRL to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %CTRL, align 1
  %CTRL23 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 20
  %70 = ptrtoint ptr %CTRL23 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %CTRL23, align 1
  %FMC24 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 19
  %71 = ptrtoint ptr %FMC24 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 3, ptr %FMC24, align 2
  %device = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 1
  %72 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 272199704, i32 %73)
  %cmp25 = icmp ne i32 %73, 272199704
  %conv27 = zext i1 %cmp25 to i8
  %GVSel28 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 16
  %74 = ptrtoint ptr %GVSel28 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv27, ptr %GVSel28, align 1
  %EC29 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 10
  %75 = ptrtoint ptr %EC29 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 0, ptr %EC29, align 4
  %Alpha30 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 11
  %76 = ptrtoint ptr %Alpha30 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 0, ptr %Alpha30, align 2
  %FMS31 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 21
  %77 = ptrtoint ptr %FMS31 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %FMS31, align 4
  %Vol32 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 14
  %78 = ptrtoint ptr %Vol32 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 1023, ptr %Vol32, align 4
  %CVol33 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 18
  %79 = ptrtoint ptr %CVol33 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 127, ptr %CVol33, align 1
  %RVol34 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 17
  %80 = ptrtoint ptr %RVol34 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 127, ptr %RVol34, align 4
  %Pan35 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 15
  %81 = ptrtoint ptr %Pan35 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 127, ptr %Pan35, align 2
  %Attribute36 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 13
  %82 = ptrtoint ptr %Attribute36 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 0, ptr %Attribute36, align 2
  tail call void @snd_trident_write_voice_regs(ptr noundef %1, ptr noundef nonnull %7)
  %isync2 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 28
  %83 = ptrtoint ptr %isync2 to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load = load i8, ptr %isync2, align 4
  %bf.set = or i8 %bf.load, 4
  store i8 %bf.set, ptr %isync2, align 4
  %84 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %period_size, align 4
  %isync_mark = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 32
  %86 = ptrtoint ptr %isync_mark to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %isync_mark, align 4
  %87 = load i32, ptr %period_size, align 4
  %mul39 = shl i32 %87, 1
  %sub40 = add i32 %mul39, -1
  %88 = ptrtoint ptr %ESO21 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %sub40, ptr %ESO21, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then11, %snd_trident_convert_rate.exit.if.end42_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_trigger(ptr noundef %substream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %cmd)
  %2 = icmp ult i32 %cmd, 7
  br i1 %2, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %cmd to i8
  %switch.shifted = lshr i8 123, %switch.maskindex
  %3 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %switch.lobit.not = icmp eq i8 %3, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.cast = trunc i32 %cmd to i7
  %switch.downshift = lshr i7 41, %switch.cast
  %4 = and i7 %switch.downshift, 1
  %5 = sext i7 %4 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %switch.masked.not = icmp eq i7 %4, 0
  %reg_lock = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 37
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #10
  %port = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %add = add i32 %7, 200
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %8 = inttoptr i32 %add2 to ptr
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %8) #10, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !283
  %10 = and i32 %9, -256
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %group = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 18
  %12 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %group, align 4
  %substreams = getelementptr inbounds %struct.snd_pcm_group, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %substreams to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn262 = load ptr, ptr %substreams, align 4
  %cmp.not264 = icmp eq ptr %.pn262, %substreams
  br i1 %cmp.not264, label %switch.lookup.if.end105_crit_edge, label %switch.lookup.for.body_crit_edge

switch.lookup.for.body_crit_edge:                 ; preds = %switch.lookup
  br label %for.body

switch.lookup.if.end105_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %switch.lookup.for.body_crit_edge
  %.pn269 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn262, %switch.lookup.for.body_crit_edge ]
  %what.0268 = phi i32 [ %what.2, %for.inc.for.body_crit_edge ], [ 0, %switch.lookup.for.body_crit_edge ]
  %whati.0267 = phi i32 [ %whati.2, %for.inc.for.body_crit_edge ], [ 0, %switch.lookup.for.body_crit_edge ]
  %capture_flag.0266 = phi i32 [ %capture_flag.2, %for.inc.for.body_crit_edge ], [ 0, %switch.lookup.for.body_crit_edge ]
  %spdif_flag.0265 = phi i32 [ %spdif_flag.1, %for.inc.for.body_crit_edge ], [ 0, %switch.lookup.for.body_crit_edge ]
  %private_data8 = getelementptr i8, ptr %.pn269, i32 -132
  %15 = ptrtoint ptr %private_data8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %private_data8, align 4
  %cmp9 = icmp eq ptr %16, %1
  br i1 %cmp9, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  %runtime = getelementptr i8, ptr %.pn269, i32 -20
  %17 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %runtime, align 4
  %private_data10 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %18, i32 0, i32 44
  %19 = ptrtoint ptr %private_data10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %private_data10, align 8
  %extra = getelementptr inbounds %struct.snd_trident_voice, ptr %20, i32 0, i32 27
  %21 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %extra, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %20, align 4
  %and11 = and i32 %24, 31
  %shl = shl nuw i32 1, %and11
  %or = or i32 %shl, %what.0268
  %cmp12 = icmp eq ptr %22, null
  br i1 %cmp12, label %if.end27, label %if.else

if.else:                                          ; preds = %if.then
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %22, align 4
  %and19 = and i32 %26, 31
  %shl20 = shl nuw i32 1, %and19
  %or21 = or i32 %shl20, %or
  br i1 %switch.masked.not, label %if.end27.thread256, label %if.end27.thread

if.end27.thread:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %whati.1251 = or i32 %shl20, %whati.0267
  br label %if.else31

if.end27.thread256:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %stimer = getelementptr inbounds %struct.snd_trident_voice, ptr %22, i32 0, i32 30
  %27 = ptrtoint ptr %stimer to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %11, ptr %stimer, align 4
  %whati.1259 = or i32 %shl20, %whati.0267
  br label %if.then29

if.end27:                                         ; preds = %if.then
  %whati.1 = or i32 %shl, %whati.0267
  br i1 %switch.masked.not, label %if.end27.if.then29_crit_edge, label %if.end27.if.else31_crit_edge

if.end27.if.else31_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else31

if.end27.if.then29_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

if.then29:                                        ; preds = %if.end27.if.then29_crit_edge, %if.end27.thread256
  %whati.1261 = phi i32 [ %whati.1259, %if.end27.thread256 ], [ %whati.1, %if.end27.if.then29_crit_edge ]
  %what.1260 = phi i32 [ %or21, %if.end27.thread256 ], [ %or, %if.end27.if.then29_crit_edge ]
  %running = getelementptr inbounds %struct.snd_trident_voice, ptr %20, i32 0, i32 28
  %28 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load = load i8, ptr %running, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %running, align 4
  %stimer30 = getelementptr inbounds %struct.snd_trident_voice, ptr %20, i32 0, i32 30
  %29 = ptrtoint ptr %stimer30 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %11, ptr %stimer30, align 4
  br label %if.end36

if.else31:                                        ; preds = %if.end27.if.else31_crit_edge, %if.end27.thread
  %whati.1255 = phi i32 [ %whati.1251, %if.end27.thread ], [ %whati.1, %if.end27.if.else31_crit_edge ]
  %what.1253 = phi i32 [ %or21, %if.end27.thread ], [ %or, %if.end27.if.else31_crit_edge ]
  %running32 = getelementptr inbounds %struct.snd_trident_voice, ptr %20, i32 0, i32 28
  %30 = ptrtoint ptr %running32 to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load33 = load i8, ptr %running32, align 4
  %bf.clear34 = and i8 %bf.load33, 127
  store i8 %bf.clear34, ptr %running32, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else31, %if.then29
  %whati.1254 = phi i32 [ %whati.1255, %if.else31 ], [ %whati.1261, %if.then29 ]
  %what.1252 = phi i32 [ %what.1253, %if.else31 ], [ %what.1260, %if.then29 ]
  %31 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %runtime, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %substream, ptr %32, align 8
  %capture = getelementptr inbounds %struct.snd_trident_voice, ptr %20, i32 0, i32 28
  %34 = ptrtoint ptr %capture to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load37 = load i8, ptr %capture, align 4
  %35 = and i8 %bf.load37, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool39.not = icmp eq i8 %35, 0
  %spec.select = select i1 %tobool39.not, i32 %capture_flag.0266, i32 1
  %36 = and i8 %bf.load37, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool46.not = icmp eq i8 %36, 0
  %spec.select248 = select i1 %tobool46.not, i32 %spdif_flag.0265, i32 1
  br label %for.inc

for.inc:                                          ; preds = %if.end36, %for.body.for.inc_crit_edge
  %spdif_flag.1 = phi i32 [ %spdif_flag.0265, %for.body.for.inc_crit_edge ], [ %spec.select248, %if.end36 ]
  %capture_flag.2 = phi i32 [ %capture_flag.0266, %for.body.for.inc_crit_edge ], [ %spec.select, %if.end36 ]
  %whati.2 = phi i32 [ %whati.0267, %for.body.for.inc_crit_edge ], [ %whati.1254, %if.end36 ]
  %what.2 = phi i32 [ %what.0268, %for.body.for.inc_crit_edge ], [ %what.1252, %if.end36 ]
  %37 = ptrtoint ptr %.pn269 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn = load ptr, ptr %.pn269, align 4
  %38 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %group, align 4
  %substreams7 = getelementptr inbounds %struct.snd_pcm_group, ptr %39, i32 0, i32 2
  %cmp.not = icmp eq ptr %.pn, %substreams7
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spdif_flag.1)
  %tobool55.not = icmp eq i32 %spdif_flag.1, 0
  br i1 %tobool55.not, label %for.end.if.end105_crit_edge, label %if.then56

for.end.if.end105_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105

if.then56:                                        ; preds = %for.end
  %device = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 272199704, i32 %41)
  %cmp57.not = icmp eq i32 %41, 272199704
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %spdif_pcm_bits81 = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 11
  %42 = ptrtoint ptr %spdif_pcm_bits81 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %spdif_pcm_bits81, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %45 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %port, align 4
  br i1 %cmp57.not, label %do.body78, label %do.body

do.body:                                          ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  %add60 = add i32 %46, 100
  %and61 = and i32 %add60, 1048575
  %add62 = or i32 %and61, -18874368
  %47 = inttoptr i32 %add62 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %47, i32 %44) #10, !srcloc !213
  %spdif_pcm_ctrl = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 9
  %48 = ptrtoint ptr %spdif_pcm_ctrl to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %spdif_pcm_ctrl, align 1
  %and66 = and i8 %49, -41
  %spec.select247 = select i1 %switch.masked.not, i8 %49, i8 %and66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !284
  tail call void @arm_heavy_mb() #10
  %50 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port, align 4
  %add73 = add i32 %51, 39
  %and74 = and i32 %add73, 1048575
  %add75 = or i32 %and74, -18874368
  %52 = inttoptr i32 %add75 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 %spec.select247) #10, !srcloc !216
  br label %if.end105

do.body78:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  %add83 = add i32 %46, 112
  %and84 = and i32 %add83, 1048575
  %add85 = or i32 %and84, -18874368
  %53 = inttoptr i32 %add85 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %53, i32 %44) #10, !srcloc !213
  %54 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %port, align 4
  %add89 = add i32 %55, 72
  %and90 = and i32 %add89, 1048575
  %add91 = or i32 %and90, -18874368
  %56 = inttoptr i32 %add91 to ptr
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %56) #10, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %58 = or i32 %57, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call void @arm_heavy_mb() #10
  %59 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %port, align 4
  %add100 = add i32 %60, 72
  %and101 = and i32 %add100, 1048575
  %add102 = or i32 %and101, -18874368
  %61 = inttoptr i32 %add102 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %61, i32 %58) #10, !srcloc !213
  br label %if.end105

if.end105:                                        ; preds = %do.body78, %do.body, %for.end.if.end105_crit_edge, %switch.lookup.if.end105_crit_edge
  %what.0.lcssa280 = phi i32 [ %what.2, %do.body ], [ %what.2, %do.body78 ], [ %what.2, %for.end.if.end105_crit_edge ], [ 0, %switch.lookup.if.end105_crit_edge ]
  %whati.0.lcssa279 = phi i32 [ %whati.2, %do.body ], [ %whati.2, %do.body78 ], [ %whati.2, %for.end.if.end105_crit_edge ], [ 0, %switch.lookup.if.end105_crit_edge ]
  %capture_flag.0.lcssa278 = phi i32 [ %capture_flag.2, %do.body ], [ %capture_flag.2, %do.body78 ], [ %capture_flag.2, %for.end.if.end105_crit_edge ], [ 0, %switch.lookup.if.end105_crit_edge ]
  br i1 %switch.masked.not, label %if.end105.if.end116_crit_edge, label %do.body108

if.end105.if.end116_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

do.body108:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %62 = tail call i32 @llvm.bswap.i32(i32 %what.0.lcssa280)
  %63 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %port, align 4
  %add112 = add i32 %64, 184
  %and113 = and i32 %add112, 1048575
  %add114 = or i32 %and113, -18874368
  %65 = inttoptr i32 %add114 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %65, i32 %62) #10, !srcloc !213
  br label %if.end116

if.end116:                                        ; preds = %do.body108, %if.end105.if.end116_crit_edge
  %66 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %port, align 4
  %add119 = add i32 %67, 220
  %and120 = and i32 %add119, 1048575
  %add121 = or i32 %and120, -18874368
  %68 = inttoptr i32 %add121 to ptr
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %68) #10, !srcloc !232
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !288
  %or127 = or i32 %70, %whati.0.lcssa279
  %neg = xor i32 %whati.0.lcssa279, -1
  %and129 = and i32 %70, %neg
  %val.1 = select i1 %switch.masked.not, i32 %or127, i32 %and129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !289
  tail call void @arm_heavy_mb() #10
  %71 = tail call i32 @llvm.bswap.i32(i32 %val.1)
  %72 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %port, align 4
  %add135 = add i32 %73, 220
  %and136 = and i32 %add135, 1048575
  %add137 = or i32 %and136, -18874368
  %74 = inttoptr i32 %add137 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %74, i32 %71) #10, !srcloc !213
  br i1 %switch.masked.not, label %do.body141, label %if.else163

do.body141:                                       ; preds = %if.end116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !290
  tail call void @arm_heavy_mb() #10
  %75 = tail call i32 @llvm.bswap.i32(i32 %what.0.lcssa280)
  %76 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %port, align 4
  %add145 = add i32 %77, 180
  %and146 = and i32 %add145, 1048575
  %add147 = or i32 %and146, -18874368
  %78 = inttoptr i32 %add147 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %78, i32 %75) #10, !srcloc !213
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %capture_flag.0.lcssa278)
  %tobool149.not = icmp eq i32 %capture_flag.0.lcssa278, 0
  br i1 %tobool149.not, label %do.body141.if.end179_crit_edge, label %land.lhs.true

do.body141.if.end179_crit_edge:                   ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end179

land.lhs.true:                                    ; preds = %do.body141
  %device150 = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 1
  %79 = ptrtoint ptr %device150 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %device150, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 272199704, i32 %80)
  %cmp151.not = icmp eq i32 %80, 272199704
  br i1 %cmp151.not, label %land.lhs.true.if.end179_crit_edge, label %do.body154

land.lhs.true.if.end179_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end179

do.body154:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !291
  tail call void @arm_heavy_mb() #10
  %bDMAStart = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 2
  %81 = ptrtoint ptr %bDMAStart to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %bDMAStart, align 4
  %83 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %port, align 4
  %add158 = add i32 %84, 196
  %and159 = and i32 %add158, 1048575
  %add160 = or i32 %and159, -18874368
  %85 = inttoptr i32 %add160 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %85, i8 %82) #10, !srcloc !216
  br label %if.end179

if.else163:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %capture_flag.0.lcssa278)
  %tobool164.not = icmp eq i32 %capture_flag.0.lcssa278, 0
  br i1 %tobool164.not, label %if.else163.if.end179_crit_edge, label %land.lhs.true165

if.else163.if.end179_crit_edge:                   ; preds = %if.else163
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end179

land.lhs.true165:                                 ; preds = %if.else163
  %device166 = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 1
  %86 = ptrtoint ptr %device166 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %device166, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 272199704, i32 %87)
  %cmp167.not = icmp eq i32 %87, 272199704
  br i1 %cmp167.not, label %land.lhs.true165.if.end179_crit_edge, label %do.body170

land.lhs.true165.if.end179_crit_edge:             ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end179

do.body170:                                       ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  tail call void @arm_heavy_mb() #10
  %88 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %port, align 4
  %add174 = add i32 %89, 196
  %and175 = and i32 %add174, 1048575
  %add176 = or i32 %and175, -18874368
  %90 = inttoptr i32 %add176 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %90, i8 0) #10, !srcloc !216
  br label %if.end179

if.end179:                                        ; preds = %do.body170, %land.lhs.true165.if.end179_crit_edge, %if.else163.if.end179_crit_edge, %do.body154, %land.lhs.true.if.end179_crit_edge, %do.body141.if.end179_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end179, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end179 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_playback_pointer(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data2, align 8
  %running = getelementptr inbounds %struct.snd_trident_voice, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_trident, ptr %6, i32 0, i32 37
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 4
  %conv = trunc i32 %8 to i8
  %port = getelementptr inbounds %struct.snd_trident, ptr %6, i32 0, i32 3
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %add = add i32 %10, 160
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %11 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %conv) #10, !srcloc !216
  %device = getelementptr inbounds %struct.snd_trident, ptr %6, i32 0, i32 1
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 270737409, i32 %13)
  %cmp.not = icmp eq i32 %13, 270737409
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port, align 4
  br i1 %cmp.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add7 = add i32 %15, 226
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %16 = inttoptr i32 %add9 to ptr
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %16) #10, !srcloc !228
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  %conv12 = zext i16 %18 to i32
  br label %if.end22

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add15 = add i32 %15, 224
  %and16 = and i32 %add15, 1048575
  %add17 = or i32 %and16, -18874368
  %19 = inttoptr i32 %add17 to ptr
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %19) #10, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !295
  %21 = and i32 %20, -256
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then5
  %cso.0 = phi i32 [ %conv12, %if.then5 ], [ %22, %if.else ]
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #10
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 18
  %23 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cso.0, i32 %24)
  %cmp24.not = icmp ult i32 %cso.0, %24
  %spec.store.select = select i1 %cmp24.not, i32 %cso.0, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %if.end22 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_trident_pcm_free_substream(ptr nocapture noundef readonly %runtime) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 44
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %trident1 = getelementptr inbounds %struct.snd_trident_voice, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %trident1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trident1, align 4
  tail call void @snd_trident_free_voice(ptr noundef %3, ptr noundef nonnull %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_trident_notify_pcm_change(ptr nocapture noundef readonly %trident, i32 noundef %num, i32 noundef %activate) unnamed_addr #0 align 64 {
entry:
  %id.i27 = alloca %struct.snd_ctl_elem_id, align 4
  %id.i14 = alloca %struct.snd_ctl_elem_id, align 4
  %id.i1 = alloca %struct.snd_ctl_elem_id, align 4
  %id.i = alloca %struct.snd_ctl_elem_id, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 23
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %ctl_vol = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 33
  %2 = ptrtoint ptr %ctl_vol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctl_vol, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %id.i) #10
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.snd_trident_notify_pcm_change1.exit_crit_edge, label %if.end.i

entry.snd_trident_notify_pcm_change1.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_notify_pcm_change1.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %activate)
  %tobool1.not.i = icmp eq i32 %activate, 0
  %access5.i = getelementptr %struct.snd_kcontrol, ptr %3, i32 0, i32 10, i32 %num, i32 1
  %4 = ptrtoint ptr %access5.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %access5.i, align 4
  %and.i = and i32 %5, -257
  %masksel.i = select i1 %tobool1.not.i, i32 256, i32 0
  %or.sink.i = or i32 %and.i, %masksel.i
  store i32 %or.sink.i, ptr %access5.i, align 4
  %id.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %3, i32 0, i32 1
  %6 = call ptr @memcpy(ptr %id.i, ptr %id.i.i, i32 64)
  %index.i.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i, i32 0, i32 5
  %7 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i.i, align 4
  %add.i.i = add i32 %8, %num
  store i32 %add.i.i, ptr %index.i.i, align 4
  %9 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id.i, align 4
  %add1.i.i = add i32 %10, %num
  store i32 %add1.i.i, ptr %id.i, align 4
  call void @snd_ctl_notify(ptr noundef %1, i32 noundef 3, ptr noundef nonnull %id.i) #10
  br label %snd_trident_notify_pcm_change1.exit

snd_trident_notify_pcm_change1.exit:              ; preds = %if.end.i, %entry.snd_trident_notify_pcm_change1.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %id.i) #10
  %11 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card, align 4
  %ctl_pan = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 34
  %13 = ptrtoint ptr %ctl_pan to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctl_pan, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %id.i1) #10
  %tobool.not.i2 = icmp eq ptr %14, null
  br i1 %tobool.not.i2, label %snd_trident_notify_pcm_change1.exit.snd_trident_notify_pcm_change1.exit13_crit_edge, label %if.end.i12

snd_trident_notify_pcm_change1.exit.snd_trident_notify_pcm_change1.exit13_crit_edge: ; preds = %snd_trident_notify_pcm_change1.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_notify_pcm_change1.exit13

if.end.i12:                                       ; preds = %snd_trident_notify_pcm_change1.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %activate)
  %tobool1.not.i3 = icmp eq i32 %activate, 0
  %access5.i4 = getelementptr %struct.snd_kcontrol, ptr %14, i32 0, i32 10, i32 %num, i32 1
  %15 = ptrtoint ptr %access5.i4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %access5.i4, align 4
  %and.i5 = and i32 %16, -257
  %masksel.i6 = select i1 %tobool1.not.i3, i32 256, i32 0
  %or.sink.i7 = or i32 %and.i5, %masksel.i6
  store i32 %or.sink.i7, ptr %access5.i4, align 4
  %id.i.i8 = getelementptr inbounds %struct.snd_kcontrol, ptr %14, i32 0, i32 1
  %17 = call ptr @memcpy(ptr %id.i1, ptr %id.i.i8, i32 64)
  %index.i.i9 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i1, i32 0, i32 5
  %18 = ptrtoint ptr %index.i.i9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i.i9, align 4
  %add.i.i10 = add i32 %19, %num
  store i32 %add.i.i10, ptr %index.i.i9, align 4
  %20 = ptrtoint ptr %id.i1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id.i1, align 4
  %add1.i.i11 = add i32 %21, %num
  store i32 %add1.i.i11, ptr %id.i1, align 4
  call void @snd_ctl_notify(ptr noundef %12, i32 noundef 3, ptr noundef nonnull %id.i1) #10
  br label %snd_trident_notify_pcm_change1.exit13

snd_trident_notify_pcm_change1.exit13:            ; preds = %if.end.i12, %snd_trident_notify_pcm_change1.exit.snd_trident_notify_pcm_change1.exit13_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %id.i1) #10
  %22 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card, align 4
  %ctl_rvol = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 35
  %24 = ptrtoint ptr %ctl_rvol to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctl_rvol, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %id.i14) #10
  %tobool.not.i15 = icmp eq ptr %25, null
  br i1 %tobool.not.i15, label %snd_trident_notify_pcm_change1.exit13.snd_trident_notify_pcm_change1.exit26_crit_edge, label %if.end.i25

snd_trident_notify_pcm_change1.exit13.snd_trident_notify_pcm_change1.exit26_crit_edge: ; preds = %snd_trident_notify_pcm_change1.exit13
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_notify_pcm_change1.exit26

if.end.i25:                                       ; preds = %snd_trident_notify_pcm_change1.exit13
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %activate)
  %tobool1.not.i16 = icmp eq i32 %activate, 0
  %access5.i17 = getelementptr %struct.snd_kcontrol, ptr %25, i32 0, i32 10, i32 %num, i32 1
  %26 = ptrtoint ptr %access5.i17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %access5.i17, align 4
  %and.i18 = and i32 %27, -257
  %masksel.i19 = select i1 %tobool1.not.i16, i32 256, i32 0
  %or.sink.i20 = or i32 %and.i18, %masksel.i19
  store i32 %or.sink.i20, ptr %access5.i17, align 4
  %id.i.i21 = getelementptr inbounds %struct.snd_kcontrol, ptr %25, i32 0, i32 1
  %28 = call ptr @memcpy(ptr %id.i14, ptr %id.i.i21, i32 64)
  %index.i.i22 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i14, i32 0, i32 5
  %29 = ptrtoint ptr %index.i.i22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %index.i.i22, align 4
  %add.i.i23 = add i32 %30, %num
  store i32 %add.i.i23, ptr %index.i.i22, align 4
  %31 = ptrtoint ptr %id.i14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id.i14, align 4
  %add1.i.i24 = add i32 %32, %num
  store i32 %add1.i.i24, ptr %id.i14, align 4
  call void @snd_ctl_notify(ptr noundef %23, i32 noundef 3, ptr noundef nonnull %id.i14) #10
  br label %snd_trident_notify_pcm_change1.exit26

snd_trident_notify_pcm_change1.exit26:            ; preds = %if.end.i25, %snd_trident_notify_pcm_change1.exit13.snd_trident_notify_pcm_change1.exit26_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %id.i14) #10
  %33 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %card, align 4
  %ctl_cvol = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 36
  %35 = ptrtoint ptr %ctl_cvol to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ctl_cvol, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %id.i27) #10
  %tobool.not.i28 = icmp eq ptr %36, null
  br i1 %tobool.not.i28, label %snd_trident_notify_pcm_change1.exit26.snd_trident_notify_pcm_change1.exit39_crit_edge, label %if.end.i38

snd_trident_notify_pcm_change1.exit26.snd_trident_notify_pcm_change1.exit39_crit_edge: ; preds = %snd_trident_notify_pcm_change1.exit26
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_notify_pcm_change1.exit39

if.end.i38:                                       ; preds = %snd_trident_notify_pcm_change1.exit26
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %activate)
  %tobool1.not.i29 = icmp eq i32 %activate, 0
  %access5.i30 = getelementptr %struct.snd_kcontrol, ptr %36, i32 0, i32 10, i32 %num, i32 1
  %37 = ptrtoint ptr %access5.i30 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %access5.i30, align 4
  %and.i31 = and i32 %38, -257
  %masksel.i32 = select i1 %tobool1.not.i29, i32 256, i32 0
  %or.sink.i33 = or i32 %and.i31, %masksel.i32
  store i32 %or.sink.i33, ptr %access5.i30, align 4
  %id.i.i34 = getelementptr inbounds %struct.snd_kcontrol, ptr %36, i32 0, i32 1
  %39 = call ptr @memcpy(ptr %id.i27, ptr %id.i.i34, i32 64)
  %index.i.i35 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i27, i32 0, i32 5
  %40 = ptrtoint ptr %index.i.i35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %index.i.i35, align 4
  %add.i.i36 = add i32 %41, %num
  store i32 %add.i.i36, ptr %index.i.i35, align 4
  %42 = ptrtoint ptr %id.i27 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %id.i27, align 4
  %add1.i.i37 = add i32 %43, %num
  store i32 %add1.i.i37, ptr %id.i27, align 4
  call void @snd_ctl_notify(ptr noundef %34, i32 noundef 3, ptr noundef nonnull %id.i27) #10
  br label %snd_trident_notify_pcm_change1.exit39

snd_trident_notify_pcm_change1.exit39:            ; preds = %if.end.i38, %snd_trident_notify_pcm_change1.exit26.snd_trident_notify_pcm_change1.exit39_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %id.i27) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_trident_allocate_evoice(ptr noundef %substream, ptr nocapture noundef readonly %hw_params) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %extra = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %extra, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 9
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %div31 = lshr i32 %9, 1
  %arrayidx.i.i32 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 5
  %10 = ptrtoint ptr %arrayidx.i.i32 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div31, i32 %11)
  %cmp.not = icmp eq i32 %div31, %11
  %cmp12.not = icmp eq ptr %7, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp12.not, label %if.then5, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %if.then
  %voice_alloc.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 20
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_alloc.i) #10
  %ChanPCMcnt.i.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 16
  %12 = ptrtoint ptr %ChanPCMcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ChanPCMcnt.i.i, align 4
  %ChanPCM.i.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 15
  %14 = ptrtoint ptr %ChanPCM.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ChanPCM.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.not.i.i = icmp slt i32 %13, %15
  br i1 %cmp.not.i.i, label %for.cond.preheader.i.i, label %if.then5.snd_trident_alloc_voice.exit.thread_crit_edge

if.then5.snd_trident_alloc_voice.exit.thread_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_alloc_voice.exit.thread

for.cond.preheader.i.i:                           ; preds = %if.then5
  %arrayidx.i.i33 = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 14, i32 1
  %16 = ptrtoint ptr %arrayidx.i.i33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i33, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i
  %idx.017.i.i = phi i32 [ 31, %for.cond.preheader.i.i ], [ %dec.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %idx.017.i.i
  %and.i.i = and i32 %shl.i.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %snd_trident_allocate_pcm_channel.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %dec.i.i = add nsw i32 %idx.017.i.i, -1
  %cmp1.not.i.i = icmp eq i32 %idx.017.i.i, 0
  br i1 %cmp1.not.i.i, label %for.inc.i.i.snd_trident_alloc_voice.exit.thread_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.snd_trident_alloc_voice.exit.thread_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_alloc_voice.exit.thread

snd_trident_allocate_pcm_channel.exit.i:          ; preds = %for.body.i.i
  %or.i.i = or i32 %shl.i.i, %17
  %18 = ptrtoint ptr %arrayidx.i.i33 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i.i, ptr %arrayidx.i.i33, align 4
  %inc.i.i = add i32 %13, 1
  %19 = ptrtoint ptr %ChanPCMcnt.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %inc.i.i, ptr %ChanPCMcnt.i.i, align 4
  %add.i.i = add nuw i32 %idx.017.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %cmp8.i = icmp slt i32 %add.i.i, 0
  br i1 %cmp8.i, label %snd_trident_allocate_pcm_channel.exit.i.snd_trident_alloc_voice.exit.thread_crit_edge, label %snd_trident_alloc_voice.exit

snd_trident_allocate_pcm_channel.exit.i.snd_trident_alloc_voice.exit.thread_crit_edge: ; preds = %snd_trident_allocate_pcm_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_alloc_voice.exit.thread

snd_trident_alloc_voice.exit.thread:              ; preds = %snd_trident_allocate_pcm_channel.exit.i.snd_trident_alloc_voice.exit.thread_crit_edge, %for.inc.i.i.snd_trident_alloc_voice.exit.thread_crit_edge, %if.then5.snd_trident_alloc_voice.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_alloc.i, i32 noundef %call2.i) #10
  br label %cleanup

snd_trident_alloc_voice.exit:                     ; preds = %snd_trident_allocate_pcm_channel.exit.i
  %use.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 18, i32 2, i32 %add.i.i, i32 1
  %20 = ptrtoint ptr %use.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i = load i8, ptr %use.i, align 4
  %bf.set14.i = or i8 %bf.load.i, -64
  store i8 %bf.set14.i, ptr %use.i, align 4
  %capture.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 18, i32 2, i32 %add.i.i, i32 28
  %21 = ptrtoint ptr %capture.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load15.i = load i8, ptr %capture.i, align 4
  %bf.clear19.i = and i8 %bf.load15.i, -97
  store i8 %bf.clear19.i, ptr %capture.i, align 4
  %memblk.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 18, i32 2, i32 %add.i.i, i32 24
  %22 = ptrtoint ptr %memblk.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %memblk.i, align 4
  %substream.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 18, i32 2, i32 %add.i.i, i32 26
  %retval.0.ph.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 18, i32 2, i32 %add.i.i
  %23 = ptrtoint ptr %substream.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %substream.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_alloc.i, i32 noundef %call2.i) #10
  %cmp7 = icmp eq ptr %retval.0.ph.i, null
  br i1 %cmp7, label %snd_trident_alloc_voice.exit.cleanup_crit_edge, label %if.end

snd_trident_alloc_voice.exit.cleanup_crit_edge:   ; preds = %snd_trident_alloc_voice.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %snd_trident_alloc_voice.exit
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %retval.0.ph.i, ptr %extra, align 4
  %25 = ptrtoint ptr %substream.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %substream, ptr %substream.i, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  br i1 %cmp12.not, label %if.else.cleanup_crit_edge, label %if.then13

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @snd_trident_free_voice(ptr noundef %1, ptr noundef nonnull %7)
  %26 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %extra, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.else.cleanup_crit_edge, %if.end, %snd_trident_alloc_voice.exit.cleanup_crit_edge, %snd_trident_alloc_voice.exit.thread, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %snd_trident_alloc_voice.exit.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then13 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.end ], [ -12, %snd_trident_alloc_voice.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_trident_free_pages(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_trident_alloc_pages(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_signed(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_capture_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %voice_alloc.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 20
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_alloc.i) #10
  %ChanPCMcnt.i.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %ChanPCMcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ChanPCMcnt.i.i, align 4
  %ChanPCM.i.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %ChanPCM.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ChanPCM.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not.i.i = icmp slt i32 %5, %7
  br i1 %cmp.not.i.i, label %for.cond.preheader.i.i, label %entry.snd_trident_alloc_voice.exit.thread_crit_edge

entry.snd_trident_alloc_voice.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_alloc_voice.exit.thread

for.cond.preheader.i.i:                           ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 14, i32 1
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i
  %idx.017.i.i = phi i32 [ 31, %for.cond.preheader.i.i ], [ %dec.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %idx.017.i.i
  %and.i.i = and i32 %shl.i.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %snd_trident_allocate_pcm_channel.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %dec.i.i = add nsw i32 %idx.017.i.i, -1
  %cmp1.not.i.i = icmp eq i32 %idx.017.i.i, 0
  br i1 %cmp1.not.i.i, label %for.inc.i.i.snd_trident_alloc_voice.exit.thread_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.snd_trident_alloc_voice.exit.thread_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_alloc_voice.exit.thread

snd_trident_allocate_pcm_channel.exit.i:          ; preds = %for.body.i.i
  %or.i.i = or i32 %shl.i.i, %9
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  %inc.i.i = add i32 %5, 1
  %11 = ptrtoint ptr %ChanPCMcnt.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %inc.i.i, ptr %ChanPCMcnt.i.i, align 4
  %add.i.i = add nuw i32 %idx.017.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %cmp8.i = icmp slt i32 %add.i.i, 0
  br i1 %cmp8.i, label %snd_trident_allocate_pcm_channel.exit.i.snd_trident_alloc_voice.exit.thread_crit_edge, label %snd_trident_alloc_voice.exit

snd_trident_allocate_pcm_channel.exit.i.snd_trident_alloc_voice.exit.thread_crit_edge: ; preds = %snd_trident_allocate_pcm_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_alloc_voice.exit.thread

snd_trident_alloc_voice.exit.thread:              ; preds = %snd_trident_allocate_pcm_channel.exit.i.snd_trident_alloc_voice.exit.thread_crit_edge, %for.inc.i.i.snd_trident_alloc_voice.exit.thread_crit_edge, %entry.snd_trident_alloc_voice.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_alloc.i, i32 noundef %call2.i) #10
  br label %cleanup

snd_trident_alloc_voice.exit:                     ; preds = %snd_trident_allocate_pcm_channel.exit.i
  %use.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 18, i32 2, i32 %add.i.i, i32 1
  %12 = ptrtoint ptr %use.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %use.i, align 4
  %bf.set14.i = or i8 %bf.load.i, -64
  store i8 %bf.set14.i, ptr %use.i, align 4
  %capture.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 18, i32 2, i32 %add.i.i, i32 28
  %13 = ptrtoint ptr %capture.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load15.i = load i8, ptr %capture.i, align 4
  %bf.clear19.i = and i8 %bf.load15.i, -97
  store i8 %bf.clear19.i, ptr %capture.i, align 4
  %memblk.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 18, i32 2, i32 %add.i.i, i32 24
  %14 = ptrtoint ptr %memblk.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %memblk.i, align 4
  %substream.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 18, i32 2, i32 %add.i.i, i32 26
  %retval.0.ph.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 18, i32 2, i32 %add.i.i
  %15 = ptrtoint ptr %substream.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %substream.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_alloc.i, i32 noundef %call2.i) #10
  %cmp = icmp eq ptr %retval.0.ph.i, null
  br i1 %cmp, label %snd_trident_alloc_voice.exit.cleanup_crit_edge, label %if.end

snd_trident_alloc_voice.exit.cleanup_crit_edge:   ; preds = %snd_trident_alloc_voice.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %snd_trident_alloc_voice.exit
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %capture.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %capture.i, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %capture.i, align 4
  %17 = ptrtoint ptr %substream.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %substream, ptr %substream.i, align 4
  %private_data3 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %18 = ptrtoint ptr %private_data3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %retval.0.ph.i, ptr %private_data3, align 8
  %private_free = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 45
  %19 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @snd_trident_pcm_free_substream, ptr %private_free, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %20 = call ptr @memcpy(ptr %hw, ptr @snd_trident_capture, i32 64)
  tail call void @snd_pcm_set_sync(ptr noundef %substream) #10
  %call4 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 17, i32 noundef 0, i32 noundef 65536) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %snd_trident_alloc_voice.exit.cleanup_crit_edge, %snd_trident_alloc_voice.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ -11, %snd_trident_alloc_voice.exit.cleanup_crit_edge ], [ -11, %snd_trident_alloc_voice.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_trident_capture_close(ptr nocapture noundef readnone %substream) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_capture_hw_params(ptr noundef %substream, ptr nocapture noundef readnone %hw_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1.i, align 4
  %private_data2.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2.i, align 8
  %tlb.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %tlb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tlb.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.if.end14.i_crit_edge, label %if.then.i

entry.if.end14.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

if.then.i:                                        ; preds = %entry
  %buffer_changed.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 54
  %8 = ptrtoint ptr %buffer_changed.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %buffer_changed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool3.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool3.not.i, label %if.then.i.if.end14.i_crit_edge, label %if.then4.i

if.then.i.if.end14.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

if.then4.i:                                       ; preds = %if.then.i
  %memblk.i = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 24
  %9 = ptrtoint ptr %memblk.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %memblk.i, align 4
  %tobool5.not.i = icmp eq ptr %10, null
  br i1 %tobool5.not.i, label %if.then4.i.if.end.i_crit_edge, label %if.then6.i

if.then4.i.if.end.i_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then6.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @snd_trident_free_pages(ptr noundef %1, ptr noundef nonnull %10) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then6.i, %if.then4.i.if.end.i_crit_edge
  %call8.i = tail call ptr @snd_trident_alloc_pages(ptr noundef %1, ptr noundef %substream) #10
  %11 = ptrtoint ptr %memblk.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8.i, ptr %memblk.i, align 4
  %cmp.i = icmp eq ptr %call8.i, null
  br i1 %cmp.i, label %if.end.i.snd_trident_allocate_pcm_mem.exit_crit_edge, label %if.end.i.if.end14.i_crit_edge

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

if.end.i.snd_trident_allocate_pcm_mem.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_allocate_pcm_mem.exit

if.end14.i:                                       ; preds = %if.end.i.if.end14.i_crit_edge, %if.then.i.if.end14.i_crit_edge, %entry.if.end14.i_crit_edge
  br label %snd_trident_allocate_pcm_mem.exit

snd_trident_allocate_pcm_mem.exit:                ; preds = %if.end14.i, %if.end.i.snd_trident_allocate_pcm_mem.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end14.i ], [ -12, %if.end.i.snd_trident_allocate_pcm_mem.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_capture_prepare(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %reg_lock = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 37
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !296
  tail call void @arm_heavy_mb() #10
  %port = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %add = add i32 %7, 15
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %8 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 0) #10, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !297
  tail call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %add8 = add i32 %10, 11
  %and9 = and i32 %add8, 1048575
  %add10 = or i32 %and9, -18874368
  %11 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 84) #10, !srcloc !216
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %12 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_addr, align 8
  %LBA = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 9
  %14 = ptrtoint ptr %LBA to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %LBA, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  tail call void @arm_heavy_mb() #10
  %15 = ptrtoint ptr %LBA to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %LBA, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %and18 = and i32 %19, 1048575
  %add19 = or i32 %and18, -18874368
  %20 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %20, i32 %17) #10, !srcloc !213
  %memblk = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 24
  %21 = ptrtoint ptr %memblk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %memblk, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %offset = getelementptr inbounds %struct.snd_util_memblk, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset, align 4
  %25 = ptrtoint ptr %LBA to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %LBA, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %26 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %runtime1, align 4
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %27, i32 0, i32 18
  %28 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %buffer_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %27, i32 0, i32 21
  %30 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %31, %29
  %div1.i.i = lshr i32 %mul.i.i, 3
  %sub = add nsw i32 %div1.i.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !299
  tail call void @arm_heavy_mb() #10
  %and27 = lshr i32 %sub, 16
  %conv = trunc i32 %and27 to i8
  %32 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port, align 4
  %add29 = add i32 %33, 6
  %and30 = and i32 %add29, 1048575
  %add31 = or i32 %and30, -18874368
  %34 = inttoptr i32 %add31 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %conv) #10, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !300
  tail call void @arm_heavy_mb() #10
  %conv37 = trunc i32 %sub to i16
  %35 = tail call i16 @llvm.bswap.i16(i16 %conv37)
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port, align 4
  %add39 = add i32 %37, 4
  %and40 = and i32 %add39, 1048575
  %add41 = or i32 %and40, -18874368
  %38 = inttoptr i32 %add41 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %38, i16 %35) #10, !srcloc !252
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %39 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rate, align 4
  %div171 = lshr i32 %40, 1
  %add43 = add nuw i32 %div171, 196608000
  %div44 = udiv i32 %add43, %40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !301
  tail call void @arm_heavy_mb() #10
  %conv48 = trunc i32 %div44 to i16
  %41 = tail call i16 @llvm.bswap.i16(i16 %conv48)
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port, align 4
  %add50 = add i32 %43, 172
  %and51 = and i32 %add50, 1048575
  %add52 = or i32 %and51, -18874368
  %44 = inttoptr i32 %add52 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %44, i16 %41) #10, !srcloc !252
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %45 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %format, align 4
  %call54 = tail call i32 @snd_pcm_format_width(i32 noundef %46) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call54)
  %cmp = icmp eq i32 %call54, 16
  %shr57 = lshr i32 %mul.i.i, 4
  %conv59 = add nuw nsw i32 %shr57, 65535
  %val.0.in = select i1 %cmp, i32 %conv59, i32 %sub
  %val.0 = and i32 %val.0.in, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !302
  tail call void @arm_heavy_mb() #10
  %or = mul nuw i32 %val.0, 65537
  %47 = tail call i32 @llvm.bswap.i32(i32 %or)
  %48 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port, align 4
  %add69 = add i32 %49, 192
  %and70 = and i32 %add69, 1048575
  %add71 = or i32 %and70, -18874368
  %50 = inttoptr i32 %add71 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %50, i32 %47) #10, !srcloc !213
  %bDMAStart = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 2
  %51 = ptrtoint ptr %bDMAStart to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 25, ptr %bDMAStart, align 4
  %52 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %format, align 4
  %call74 = tail call i32 @snd_pcm_format_width(i32 noundef %53) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call74)
  %cmp75 = icmp eq i32 %call74, 16
  br i1 %cmp75, label %if.then77, label %if.end.if.end82_crit_edge

if.end.if.end82_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then77:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %bDMAStart to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %bDMAStart, align 4
  %56 = or i8 %55, -128
  store i8 %56, ptr %bDMAStart, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then77, %if.end.if.end82_crit_edge
  %57 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %format, align 4
  %call84 = tail call i32 @snd_pcm_format_signed(i32 noundef %58) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end82.if.end91_crit_edge, label %if.then86

if.end82.if.end91_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.then86:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %bDMAStart to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %bDMAStart, align 4
  %61 = or i8 %60, 32
  store i8 %61, ptr %bDMAStart, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then86, %if.end82.if.end91_crit_edge
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %62 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp92 = icmp ugt i32 %63, 1
  br i1 %cmp92, label %if.then94, label %if.end91.if.end99_crit_edge

if.end91.if.end99_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

if.then94:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %bDMAStart to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %bDMAStart, align 4
  %66 = or i8 %65, 64
  store i8 %66, ptr %bDMAStart, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then94, %if.end91.if.end99_crit_edge
  %67 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rate, align 4
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %68, label %if.else6.i [
    i32 44100, label %if.end99.snd_trident_convert_rate.exit_crit_edge
    i32 8000, label %if.then2.i
    i32 48000, label %if.then5.i
  ]

if.end99.snd_trident_convert_rate.exit_crit_edge: ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_convert_rate.exit

if.then2.i:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_convert_rate.exit

if.then5.i:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_convert_rate.exit

if.else6.i:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i = shl i32 %68, 12
  %add.i = add i32 %shl.i, 24000
  %div7.i = udiv i32 %add.i, 48000
  %phi.cast = trunc i32 %div7.i to i16
  br label %snd_trident_convert_rate.exit

snd_trident_convert_rate.exit:                    ; preds = %if.else6.i, %if.then5.i, %if.then2.i, %if.end99.snd_trident_convert_rate.exit_crit_edge
  %delta.0.i = phi i16 [ 683, %if.then2.i ], [ 4096, %if.then5.i ], [ %phi.cast, %if.else6.i ], [ 3763, %if.end99.snd_trident_convert_rate.exit_crit_edge ]
  %Delta = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 12
  %70 = ptrtoint ptr %Delta to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %delta.0.i, ptr %Delta, align 4
  %71 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rate, align 4
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %73 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %period_size, align 4
  %mul.i = mul i32 %74, %72
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072000, i32 %mul.i)
  %cmp.i = icmp ult i32 %mul.i, 3072000
  %div1.i = udiv i32 %mul.i, 96000
  %div.i = udiv i32 %mul.i, 48000
  %sub.i = add nsw i32 %div.i, -32
  %res.0.i = select i1 %cmp.i, i32 %div1.i, i32 %sub.i
  %spurious_threshold = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 31
  %75 = ptrtoint ptr %spurious_threshold to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %res.0.i, ptr %spurious_threshold, align 4
  %isync = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 28
  %76 = ptrtoint ptr %isync to i32
  call void @__asan_load1_noabort(i32 %76)
  %bf.load = load i8, ptr %isync, align 4
  %bf.set = or i8 %bf.load, 8
  store i8 %bf.set, ptr %isync, align 4
  %77 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %period_size, align 4
  %isync_mark = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 32
  %79 = ptrtoint ptr %isync_mark to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %isync_mark, align 4
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %80 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %buffer_size, align 4
  %isync_max = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 33
  %82 = ptrtoint ptr %isync_max to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %isync_max, align 4
  %CSO = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 7
  %83 = ptrtoint ptr %CSO to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %CSO, align 4
  %84 = load i32, ptr %period_size, align 4
  %mul = shl i32 %84, 1
  %sub108 = add i32 %mul, 5
  %isync_ESO = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 34
  %85 = ptrtoint ptr %isync_ESO to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %sub108, ptr %isync_ESO, align 4
  %ESO = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 8
  %86 = ptrtoint ptr %ESO to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %sub108, ptr %ESO, align 4
  %87 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %runtime1, align 4
  %format.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %88, i32 0, i32 12
  %89 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %format.i, align 4
  %call.i = tail call i32 @snd_pcm_format_width(i32 noundef %90) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call.i)
  %cmp.i173 = icmp eq i32 %call.i, 16
  %spec.select.i = select i1 %cmp.i173, i32 9, i32 1
  %91 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %format.i, align 4
  %call3.i = tail call i32 @snd_pcm_format_signed(i32 noundef %92) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  %or5.i = or i32 %spec.select.i, 2
  %CTRL.1.i = select i1 %tobool.not.i, i32 %spec.select.i, i32 %or5.i
  %channels.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %88, i32 0, i32 15
  %93 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %channels.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %94)
  %cmp7.i = icmp ugt i32 %94, 1
  %or9.i = or i32 %CTRL.1.i, 4
  %CTRL.2.i = select i1 %cmp7.i, i32 %or9.i, i32 %CTRL.1.i
  %conv110 = trunc i32 %CTRL.2.i to i8
  %CTRL = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 20
  %95 = ptrtoint ptr %CTRL to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv110, ptr %CTRL, align 1
  %FMC = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 19
  %96 = ptrtoint ptr %FMC to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 3, ptr %FMC, align 2
  %RVol = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 17
  %97 = ptrtoint ptr %RVol to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 127, ptr %RVol, align 4
  %CVol = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 18
  %98 = ptrtoint ptr %CVol to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 127, ptr %CVol, align 1
  %GVSel = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 16
  %99 = ptrtoint ptr %GVSel to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %GVSel, align 1
  %Pan = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 15
  %100 = ptrtoint ptr %Pan to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 127, ptr %Pan, align 2
  %Vol = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 14
  %101 = ptrtoint ptr %Vol to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 1023, ptr %Vol, align 4
  %EC = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 10
  %102 = ptrtoint ptr %EC to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 0, ptr %EC, align 4
  %Alpha = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 11
  %103 = ptrtoint ptr %Alpha to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 0, ptr %Alpha, align 2
  %FMS = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 21
  %104 = ptrtoint ptr %FMS to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %FMS, align 4
  %Attribute = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 13
  %105 = ptrtoint ptr %Attribute to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 0, ptr %Attribute, align 2
  tail call void @snd_trident_write_voice_regs(ptr noundef %1, ptr noundef %5)
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_capture_pointer(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data2, align 8
  %running = getelementptr inbounds %struct.snd_trident_voice, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data, align 4
  %port = getelementptr inbounds %struct.snd_trident, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 4
  %add = add i32 %8, 192
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %9 = inttoptr i32 %add3 to ptr
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %9) #10, !srcloc !228
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %conv = zext i16 %11 to i32
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 15
  %12 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp ugt i32 %13, 1
  %shr = zext i1 %cmp to i32
  %spec.select = lshr i32 %conv, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp8.not = icmp eq i32 %spec.select, 0
  br i1 %cmp8.not, label %if.end.cleanup_crit_edge, label %if.then10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 18
  %14 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buffer_size, align 4
  %sub = sub i32 %15, %spec.select
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %sub, %if.then10 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_si7018_capture_hw_params(ptr noundef %substream, ptr nocapture noundef readonly %hw_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @snd_trident_allocate_evoice(ptr noundef %substream, ptr noundef %hw_params)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_si7018_capture_hw_free(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %cond.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cond.end:                                         ; preds = %entry
  %extra = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %extra, align 4
  %cmp.not = icmp eq ptr %7, null
  br i1 %cmp.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @snd_trident_free_voice(ptr noundef %1, ptr noundef nonnull %7)
  %8 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %extra, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_si7018_capture_prepare(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %extra = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %extra, align 4
  %reg_lock = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 37
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #10
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %8 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_addr, align 8
  %LBA = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 9
  %10 = ptrtoint ptr %LBA to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %LBA, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %11 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rate, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %12, label %if.else6.i [
    i32 44100, label %entry.snd_trident_convert_adc_rate.exit_crit_edge
    i32 8000, label %if.then2.i
    i32 48000, label %if.then5.i
  ]

entry.snd_trident_convert_adc_rate.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_convert_adc_rate.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_convert_adc_rate.exit

if.then5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_convert_adc_rate.exit

if.else6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %div.i = udiv i32 196608000, %12
  %phi.cast = trunc i32 %div.i to i16
  br label %snd_trident_convert_adc_rate.exit

snd_trident_convert_adc_rate.exit:                ; preds = %if.else6.i, %if.then5.i, %if.then2.i, %entry.snd_trident_convert_adc_rate.exit_crit_edge
  %delta.0.i = phi i16 [ 24576, %if.then2.i ], [ 4096, %if.then5.i ], [ %phi.cast, %if.else6.i ], [ 4458, %entry.snd_trident_convert_adc_rate.exit_crit_edge ]
  %Delta = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 12
  %14 = ptrtoint ptr %Delta to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %delta.0.i, ptr %Delta, align 4
  %15 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rate, align 4
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %17 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %period_size, align 4
  %mul.i = mul i32 %18, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072000, i32 %mul.i)
  %cmp.i = icmp ult i32 %mul.i, 3072000
  %div1.i = udiv i32 %mul.i, 96000
  %div.i92 = udiv i32 %mul.i, 48000
  %sub.i = add nsw i32 %div.i92, -32
  %res.0.i = select i1 %cmp.i, i32 %div1.i, i32 %sub.i
  %spurious_threshold = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 31
  %19 = ptrtoint ptr %spurious_threshold to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %res.0.i, ptr %spurious_threshold, align 4
  %CSO = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 7
  %20 = ptrtoint ptr %CSO to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %CSO, align 4
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %21 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buffer_size, align 4
  %sub = add i32 %22, -1
  %ESO = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 8
  %23 = ptrtoint ptr %ESO to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub, ptr %ESO, align 4
  %24 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %runtime1, align 4
  %format.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %format.i, align 4
  %call.i = tail call i32 @snd_pcm_format_width(i32 noundef %27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call.i)
  %cmp.i93 = icmp eq i32 %call.i, 16
  %spec.select.i = select i1 %cmp.i93, i32 9, i32 1
  %28 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %format.i, align 4
  %call3.i = tail call i32 @snd_pcm_format_signed(i32 noundef %29) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  %or5.i = or i32 %spec.select.i, 2
  %CTRL.1.i = select i1 %tobool.not.i, i32 %spec.select.i, i32 %or5.i
  %channels.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %25, i32 0, i32 15
  %30 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %channels.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp7.i = icmp ugt i32 %31, 1
  %or9.i = or i32 %CTRL.1.i, 4
  %CTRL.2.i = select i1 %cmp7.i, i32 %or9.i, i32 %CTRL.1.i
  %conv6 = trunc i32 %CTRL.2.i to i8
  %CTRL = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 20
  %32 = ptrtoint ptr %CTRL to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv6, ptr %CTRL, align 1
  %FMC = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 19
  %33 = ptrtoint ptr %FMC to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %FMC, align 2
  %RVol = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 17
  %34 = ptrtoint ptr %RVol to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %RVol, align 4
  %CVol = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 18
  %35 = ptrtoint ptr %CVol to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %CVol, align 1
  %GVSel = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 16
  %36 = ptrtoint ptr %GVSel to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %GVSel, align 1
  %Pan = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 15
  %37 = ptrtoint ptr %Pan to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %Pan, align 2
  %Vol = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 14
  %38 = ptrtoint ptr %Vol to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %Vol, align 4
  %EC = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 10
  %39 = ptrtoint ptr %EC to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %EC, align 4
  %Alpha = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 11
  %40 = ptrtoint ptr %Alpha to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %Alpha, align 2
  %FMS = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 21
  %41 = ptrtoint ptr %FMS to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %FMS, align 4
  %Attribute = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 13
  %42 = ptrtoint ptr %Attribute to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 -30080, ptr %Attribute, align 2
  tail call void @snd_trident_write_voice_regs(ptr noundef %1, ptr noundef %5)
  %cmp.not = icmp eq ptr %7, null
  br i1 %cmp.not, label %snd_trident_convert_adc_rate.exit.if.end_crit_edge, label %if.then

snd_trident_convert_adc_rate.exit.if.end_crit_edge: ; preds = %snd_trident_convert_adc_rate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %snd_trident_convert_adc_rate.exit
  %43 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rate, align 4
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %44, label %if.else6.i97 [
    i32 44100, label %if.then.snd_trident_convert_rate.exit_crit_edge
    i32 8000, label %if.then2.i94
    i32 48000, label %if.then5.i95
  ]

if.then.snd_trident_convert_rate.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_convert_rate.exit

if.then2.i94:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_convert_rate.exit

if.then5.i95:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_convert_rate.exit

if.else6.i97:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i = shl i32 %44, 12
  %add.i = add i32 %shl.i, 24000
  %div7.i = udiv i32 %add.i, 48000
  %phi.cast99 = trunc i32 %div7.i to i16
  br label %snd_trident_convert_rate.exit

snd_trident_convert_rate.exit:                    ; preds = %if.else6.i97, %if.then5.i95, %if.then2.i94, %if.then.snd_trident_convert_rate.exit_crit_edge
  %delta.0.i98 = phi i16 [ 683, %if.then2.i94 ], [ 4096, %if.then5.i95 ], [ %phi.cast99, %if.else6.i97 ], [ 3763, %if.then.snd_trident_convert_rate.exit_crit_edge ]
  %Delta11 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 12
  %46 = ptrtoint ptr %Delta11 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %delta.0.i98, ptr %Delta11, align 4
  %47 = ptrtoint ptr %spurious_threshold to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %spurious_threshold, align 4
  %spurious_threshold13 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 31
  %49 = ptrtoint ptr %spurious_threshold13 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %spurious_threshold13, align 4
  %50 = ptrtoint ptr %LBA to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %LBA, align 4
  %LBA15 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 9
  %52 = ptrtoint ptr %LBA15 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %LBA15, align 4
  %CSO16 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 7
  %53 = ptrtoint ptr %CSO16 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %CSO16, align 4
  %54 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %period_size, align 4
  %mul = shl i32 %55, 1
  %sub18 = add i32 %mul, 19
  %ESO19 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 8
  %56 = ptrtoint ptr %ESO19 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %sub18, ptr %ESO19, align 4
  %57 = ptrtoint ptr %CTRL to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %CTRL, align 1
  %CTRL21 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 20
  %59 = ptrtoint ptr %CTRL21 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %CTRL21, align 1
  %FMC22 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 19
  %60 = ptrtoint ptr %FMC22 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 3, ptr %FMC22, align 2
  %GVSel23 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 16
  %61 = ptrtoint ptr %GVSel23 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %GVSel23, align 1
  %EC24 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 10
  %62 = ptrtoint ptr %EC24 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 0, ptr %EC24, align 4
  %Alpha25 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 11
  %63 = ptrtoint ptr %Alpha25 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %Alpha25, align 2
  %FMS26 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 21
  %64 = ptrtoint ptr %FMS26 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %FMS26, align 4
  %Vol27 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 14
  %65 = ptrtoint ptr %Vol27 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 1023, ptr %Vol27, align 4
  %CVol28 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 18
  %66 = ptrtoint ptr %CVol28 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 127, ptr %CVol28, align 1
  %RVol29 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 17
  %67 = ptrtoint ptr %RVol29 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 127, ptr %RVol29, align 4
  %Pan30 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 15
  %68 = ptrtoint ptr %Pan30 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 127, ptr %Pan30, align 2
  %Attribute31 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 13
  %69 = ptrtoint ptr %Attribute31 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 0, ptr %Attribute31, align 2
  tail call void @snd_trident_write_voice_regs(ptr noundef %1, ptr noundef nonnull %7)
  %isync2 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 28
  %70 = ptrtoint ptr %isync2 to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load = load i8, ptr %isync2, align 4
  %bf.set = or i8 %bf.load, 4
  store i8 %bf.set, ptr %isync2, align 4
  %71 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %period_size, align 4
  %isync_mark = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 32
  %73 = ptrtoint ptr %isync_mark to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %isync_mark, align 4
  %74 = load i32, ptr %period_size, align 4
  %mul34 = shl i32 %74, 1
  %sub35 = add i32 %mul34, -1
  %75 = ptrtoint ptr %ESO19 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %sub35, ptr %ESO19, align 4
  br label %if.end

if.end:                                           ; preds = %snd_trident_convert_rate.exit, %snd_trident_convert_adc_rate.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_foldback_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %voice_alloc.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 20
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_alloc.i) #10
  %ChanPCMcnt.i.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %ChanPCMcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ChanPCMcnt.i.i, align 4
  %ChanPCM.i.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %ChanPCM.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ChanPCM.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not.i.i = icmp slt i32 %5, %7
  br i1 %cmp.not.i.i, label %for.cond.preheader.i.i, label %entry.snd_trident_alloc_voice.exit.thread_crit_edge

entry.snd_trident_alloc_voice.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_alloc_voice.exit.thread

for.cond.preheader.i.i:                           ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 14, i32 1
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i
  %idx.017.i.i = phi i32 [ 31, %for.cond.preheader.i.i ], [ %dec.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %idx.017.i.i
  %and.i.i = and i32 %shl.i.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %snd_trident_allocate_pcm_channel.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %dec.i.i = add nsw i32 %idx.017.i.i, -1
  %cmp1.not.i.i = icmp eq i32 %idx.017.i.i, 0
  br i1 %cmp1.not.i.i, label %for.inc.i.i.snd_trident_alloc_voice.exit.thread_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.snd_trident_alloc_voice.exit.thread_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_alloc_voice.exit.thread

snd_trident_allocate_pcm_channel.exit.i:          ; preds = %for.body.i.i
  %or.i.i = or i32 %shl.i.i, %9
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  %inc.i.i = add i32 %5, 1
  %11 = ptrtoint ptr %ChanPCMcnt.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %inc.i.i, ptr %ChanPCMcnt.i.i, align 4
  %add.i.i = add nuw i32 %idx.017.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %cmp8.i = icmp slt i32 %add.i.i, 0
  br i1 %cmp8.i, label %snd_trident_allocate_pcm_channel.exit.i.snd_trident_alloc_voice.exit.thread_crit_edge, label %snd_trident_alloc_voice.exit

snd_trident_allocate_pcm_channel.exit.i.snd_trident_alloc_voice.exit.thread_crit_edge: ; preds = %snd_trident_allocate_pcm_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_alloc_voice.exit.thread

snd_trident_alloc_voice.exit.thread:              ; preds = %snd_trident_allocate_pcm_channel.exit.i.snd_trident_alloc_voice.exit.thread_crit_edge, %for.inc.i.i.snd_trident_alloc_voice.exit.thread_crit_edge, %entry.snd_trident_alloc_voice.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_alloc.i, i32 noundef %call2.i) #10
  br label %cleanup

snd_trident_alloc_voice.exit:                     ; preds = %snd_trident_allocate_pcm_channel.exit.i
  %use.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 18, i32 2, i32 %add.i.i, i32 1
  %12 = ptrtoint ptr %use.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %use.i, align 4
  %bf.set14.i = or i8 %bf.load.i, -64
  store i8 %bf.set14.i, ptr %use.i, align 4
  %capture.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 18, i32 2, i32 %add.i.i, i32 28
  %13 = ptrtoint ptr %capture.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load15.i = load i8, ptr %capture.i, align 4
  %bf.clear19.i = and i8 %bf.load15.i, -97
  store i8 %bf.clear19.i, ptr %capture.i, align 4
  %memblk.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 18, i32 2, i32 %add.i.i, i32 24
  %14 = ptrtoint ptr %memblk.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %memblk.i, align 4
  %substream.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 18, i32 2, i32 %add.i.i, i32 26
  %retval.0.ph.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 18, i32 2, i32 %add.i.i
  %15 = ptrtoint ptr %substream.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %substream.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_alloc.i, i32 noundef %call2.i) #10
  %cmp = icmp eq ptr %retval.0.ph.i, null
  br i1 %cmp, label %snd_trident_alloc_voice.exit.cleanup_crit_edge, label %if.end

snd_trident_alloc_voice.exit.cleanup_crit_edge:   ; preds = %snd_trident_alloc_voice.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %snd_trident_alloc_voice.exit
  call void @__sanitizer_cov_trace_pc() #12
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %16 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %number, align 4
  %foldback_chan = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 18, i32 2, i32 %add.i.i, i32 29
  %18 = ptrtoint ptr %foldback_chan to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %foldback_chan, align 4
  %19 = ptrtoint ptr %substream.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %substream, ptr %substream.i, align 4
  %private_data3 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %20 = ptrtoint ptr %private_data3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %retval.0.ph.i, ptr %private_data3, align 8
  %private_free = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 45
  %21 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @snd_trident_pcm_free_substream, ptr %private_free, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %22 = call ptr @memcpy(ptr %hw, ptr @snd_trident_foldback, i32 64)
  %call4 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 17, i32 noundef 0, i32 noundef 65536) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %snd_trident_alloc_voice.exit.cleanup_crit_edge, %snd_trident_alloc_voice.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ -11, %snd_trident_alloc_voice.exit.cleanup_crit_edge ], [ -11, %snd_trident_alloc_voice.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_foldback_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %reg_lock = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 37
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  tail call void @arm_heavy_mb() #10
  %port = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %foldback_chan = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 29
  %8 = ptrtoint ptr %foldback_chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %foldback_chan, align 4
  %add = add i32 %7, 112
  %add3 = add i32 %add, %9
  %and = and i32 %add3, 1048575
  %add4 = or i32 %and, -18874368
  %10 = inttoptr i32 %add4 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 0) #10, !srcloc !216
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_foldback_prepare(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %extra = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %extra, align 4
  %reg_lock = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 37
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #10
  %memblk = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 24
  %8 = ptrtoint ptr %memblk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %memblk, align 4
  %tobool.not = icmp eq ptr %9, null
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %offset = getelementptr inbounds %struct.snd_util_memblk, ptr %9, i32 0, i32 1
  %.sink.in = select i1 %tobool.not, ptr %dma_addr, ptr %offset
  %10 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %.sink = load i32, ptr %.sink.in, align 4
  %11 = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 9
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %11, align 4
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %13 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buffer_size, align 4
  %sub = add i32 %14, -1
  %ESO = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 8
  %15 = ptrtoint ptr %ESO to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %ESO, align 4
  %Delta = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 12
  %16 = ptrtoint ptr %Delta to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 4096, ptr %Delta, align 4
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %17 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %period_size, align 4
  %mul.i = mul i32 %18, 48000
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072000, i32 %mul.i)
  %cmp.i = icmp ult i32 %mul.i, 3072000
  %div1.i = udiv i32 %mul.i, 96000
  %div.i = udiv i32 %mul.i, 48000
  %sub.i = add nsw i32 %div.i, -32
  %res.0.i = select i1 %cmp.i, i32 %div1.i, i32 %sub.i
  %spurious_threshold = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 31
  %19 = ptrtoint ptr %spurious_threshold to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %res.0.i, ptr %spurious_threshold, align 4
  %CSO = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 7
  %20 = ptrtoint ptr %CSO to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %CSO, align 4
  %21 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %runtime1, align 4
  %format.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %22, i32 0, i32 12
  %23 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %format.i, align 4
  %call.i = tail call i32 @snd_pcm_format_width(i32 noundef %24) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call.i)
  %cmp.i106 = icmp eq i32 %call.i, 16
  %spec.select.i = select i1 %cmp.i106, i32 9, i32 1
  %25 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %format.i, align 4
  %call3.i = tail call i32 @snd_pcm_format_signed(i32 noundef %26) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  %or5.i = or i32 %spec.select.i, 2
  %CTRL.1.i = select i1 %tobool.not.i, i32 %spec.select.i, i32 %or5.i
  %channels.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %22, i32 0, i32 15
  %27 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %channels.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp7.i = icmp ugt i32 %28, 1
  %or9.i = or i32 %CTRL.1.i, 4
  %CTRL.2.i = select i1 %cmp7.i, i32 %or9.i, i32 %CTRL.1.i
  %conv = trunc i32 %CTRL.2.i to i8
  %CTRL = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 20
  %29 = ptrtoint ptr %CTRL to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv, ptr %CTRL, align 1
  %FMC = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 19
  %30 = ptrtoint ptr %FMC to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 3, ptr %FMC, align 2
  %RVol = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 17
  %31 = ptrtoint ptr %RVol to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 127, ptr %RVol, align 4
  %CVol = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 18
  %32 = ptrtoint ptr %CVol to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 127, ptr %CVol, align 1
  %GVSel = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 16
  %33 = ptrtoint ptr %GVSel to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %GVSel, align 1
  %Pan = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 15
  %34 = ptrtoint ptr %Pan to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 127, ptr %Pan, align 2
  %Vol = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 14
  %35 = ptrtoint ptr %Vol to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1023, ptr %Vol, align 4
  %EC = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 10
  %36 = ptrtoint ptr %EC to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %EC, align 4
  %Alpha = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 11
  %37 = ptrtoint ptr %Alpha to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %Alpha, align 2
  %FMS = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 21
  %38 = ptrtoint ptr %FMS to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %FMS, align 4
  %Attribute = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 13
  %39 = ptrtoint ptr %Attribute to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %Attribute, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !305
  tail call void @arm_heavy_mb() #10
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %5, align 4
  %42 = trunc i32 %41 to i8
  %43 = and i8 %42, 63
  %conv6 = or i8 %43, -128
  %port = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 3
  %44 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %port, align 4
  %foldback_chan = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 29
  %46 = ptrtoint ptr %foldback_chan to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %foldback_chan, align 4
  %add = add i32 %45, 112
  %add7 = add i32 %add, %47
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %48 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 %conv6) #10, !srcloc !216
  tail call void @snd_trident_write_voice_regs(ptr noundef %1, ptr noundef %5)
  %cmp.not = icmp eq ptr %7, null
  br i1 %cmp.not, label %entry.if.end44_crit_edge, label %if.then12

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %Delta to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %Delta, align 4
  %Delta14 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 12
  %51 = ptrtoint ptr %Delta14 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %Delta14, align 4
  %52 = ptrtoint ptr %spurious_threshold to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %spurious_threshold, align 4
  %spurious_threshold16 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 31
  %54 = ptrtoint ptr %spurious_threshold16 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %spurious_threshold16, align 4
  %55 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %11, align 4
  %LBA18 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 9
  %57 = ptrtoint ptr %LBA18 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %LBA18, align 4
  %CSO19 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 7
  %58 = ptrtoint ptr %CSO19 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %CSO19, align 4
  %59 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %period_size, align 4
  %mul = shl i32 %60, 1
  %sub22 = add i32 %mul, 3
  %ESO23 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 8
  %61 = ptrtoint ptr %ESO23 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %sub22, ptr %ESO23, align 4
  %62 = ptrtoint ptr %CTRL to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %CTRL, align 1
  %CTRL25 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 20
  %64 = ptrtoint ptr %CTRL25 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %CTRL25, align 1
  %FMC26 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 19
  %65 = ptrtoint ptr %FMC26 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 3, ptr %FMC26, align 2
  %device = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 1
  %66 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 272199704, i32 %67)
  %cmp27 = icmp ne i32 %67, 272199704
  %conv29 = zext i1 %cmp27 to i8
  %GVSel30 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 16
  %68 = ptrtoint ptr %GVSel30 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv29, ptr %GVSel30, align 1
  %EC31 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 10
  %69 = ptrtoint ptr %EC31 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 0, ptr %EC31, align 4
  %Alpha32 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 11
  %70 = ptrtoint ptr %Alpha32 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %Alpha32, align 2
  %FMS33 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 21
  %71 = ptrtoint ptr %FMS33 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %FMS33, align 4
  %Vol34 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 14
  %72 = ptrtoint ptr %Vol34 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 1023, ptr %Vol34, align 4
  %CVol35 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 18
  %73 = ptrtoint ptr %CVol35 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 127, ptr %CVol35, align 1
  %RVol36 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 17
  %74 = ptrtoint ptr %RVol36 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 127, ptr %RVol36, align 4
  %Pan37 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 15
  %75 = ptrtoint ptr %Pan37 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 127, ptr %Pan37, align 2
  %Attribute38 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 13
  %76 = ptrtoint ptr %Attribute38 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 0, ptr %Attribute38, align 2
  tail call void @snd_trident_write_voice_regs(ptr noundef %1, ptr noundef nonnull %7)
  %isync2 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 28
  %77 = ptrtoint ptr %isync2 to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load = load i8, ptr %isync2, align 4
  %bf.set = or i8 %bf.load, 4
  store i8 %bf.set, ptr %isync2, align 4
  %78 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %period_size, align 4
  %isync_mark = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 32
  %80 = ptrtoint ptr %isync_mark to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %isync_mark, align 4
  %81 = load i32, ptr %period_size, align 4
  %mul41 = shl i32 %81, 1
  %sub42 = add i32 %mul41, -1
  %82 = ptrtoint ptr %ESO23 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %sub42, ptr %ESO23, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then12, %entry.if.end44_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_spdif_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %voice_alloc.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 20
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_alloc.i) #10
  %ChanPCMcnt.i.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %ChanPCMcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ChanPCMcnt.i.i, align 4
  %ChanPCM.i.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %ChanPCM.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ChanPCM.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not.i.i = icmp slt i32 %5, %7
  br i1 %cmp.not.i.i, label %for.cond.preheader.i.i, label %entry.snd_trident_alloc_voice.exit.thread_crit_edge

entry.snd_trident_alloc_voice.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_alloc_voice.exit.thread

for.cond.preheader.i.i:                           ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 14, i32 1
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i
  %idx.017.i.i = phi i32 [ 31, %for.cond.preheader.i.i ], [ %dec.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %idx.017.i.i
  %and.i.i = and i32 %shl.i.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %snd_trident_allocate_pcm_channel.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %dec.i.i = add nsw i32 %idx.017.i.i, -1
  %cmp1.not.i.i = icmp eq i32 %idx.017.i.i, 0
  br i1 %cmp1.not.i.i, label %for.inc.i.i.snd_trident_alloc_voice.exit.thread_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.snd_trident_alloc_voice.exit.thread_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_alloc_voice.exit.thread

snd_trident_allocate_pcm_channel.exit.i:          ; preds = %for.body.i.i
  %or.i.i = or i32 %shl.i.i, %9
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  %inc.i.i = add i32 %5, 1
  %11 = ptrtoint ptr %ChanPCMcnt.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %inc.i.i, ptr %ChanPCMcnt.i.i, align 4
  %add.i.i = add nuw i32 %idx.017.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %cmp8.i = icmp slt i32 %add.i.i, 0
  br i1 %cmp8.i, label %snd_trident_allocate_pcm_channel.exit.i.snd_trident_alloc_voice.exit.thread_crit_edge, label %snd_trident_alloc_voice.exit

snd_trident_allocate_pcm_channel.exit.i.snd_trident_alloc_voice.exit.thread_crit_edge: ; preds = %snd_trident_allocate_pcm_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_alloc_voice.exit.thread

snd_trident_alloc_voice.exit.thread:              ; preds = %snd_trident_allocate_pcm_channel.exit.i.snd_trident_alloc_voice.exit.thread_crit_edge, %for.inc.i.i.snd_trident_alloc_voice.exit.thread_crit_edge, %entry.snd_trident_alloc_voice.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_alloc.i, i32 noundef %call2.i) #10
  br label %cleanup

snd_trident_alloc_voice.exit:                     ; preds = %snd_trident_allocate_pcm_channel.exit.i
  %use.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 18, i32 2, i32 %add.i.i, i32 1
  %12 = ptrtoint ptr %use.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %use.i, align 4
  %bf.set14.i = or i8 %bf.load.i, -64
  store i8 %bf.set14.i, ptr %use.i, align 4
  %capture.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 18, i32 2, i32 %add.i.i, i32 28
  %13 = ptrtoint ptr %capture.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load15.i = load i8, ptr %capture.i, align 4
  %bf.clear19.i = and i8 %bf.load15.i, -97
  store i8 %bf.clear19.i, ptr %capture.i, align 4
  %memblk.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 18, i32 2, i32 %add.i.i, i32 24
  %14 = ptrtoint ptr %memblk.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %memblk.i, align 4
  %substream.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 18, i32 2, i32 %add.i.i, i32 26
  %retval.0.ph.i = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 18, i32 2, i32 %add.i.i
  %15 = ptrtoint ptr %substream.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %substream.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_alloc.i, i32 noundef %call2.i) #10
  %cmp = icmp eq ptr %retval.0.ph.i, null
  br i1 %cmp, label %snd_trident_alloc_voice.exit.cleanup_crit_edge, label %if.end

snd_trident_alloc_voice.exit.cleanup_crit_edge:   ; preds = %snd_trident_alloc_voice.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %snd_trident_alloc_voice.exit
  %16 = ptrtoint ptr %capture.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %capture.i, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %capture.i, align 4
  %17 = ptrtoint ptr %substream.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %substream, ptr %substream.i, align 4
  %reg_lock = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 37
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #10
  %spdif_bits = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %spdif_bits to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %spdif_bits, align 4
  %spdif_pcm_bits = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 11
  %20 = ptrtoint ptr %spdif_pcm_bits to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %spdif_pcm_bits, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #10
  %private_data4 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %21 = ptrtoint ptr %private_data4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %retval.0.ph.i, ptr %private_data4, align 8
  %private_free = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 45
  %22 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @snd_trident_pcm_free_substream, ptr %private_free, align 4
  %device = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 272199704, i32 %24)
  %cmp5 = icmp eq i32 %24, 272199704
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %25 = call ptr @memcpy(ptr %hw, ptr @snd_trident_spdif, i32 64)
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %26 = call ptr @memcpy(ptr %hw, ptr @snd_trident_spdif_7018, i32 64)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6
  %spdif_pcm_ctl = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 12
  %27 = ptrtoint ptr %spdif_pcm_ctl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %spdif_pcm_ctl, align 4
  %access = getelementptr inbounds %struct.snd_kcontrol, ptr %28, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %access, align 4
  %and = and i32 %30, -257
  store i32 %and, ptr %access, align 4
  %card = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 23
  %31 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %card, align 4
  %33 = load ptr, ptr %spdif_pcm_ctl, align 4
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %33, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %32, i32 noundef 3, ptr noundef %id) #10
  %call10 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 17, i32 noundef 0, i32 noundef 65536) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %snd_trident_alloc_voice.exit.cleanup_crit_edge, %snd_trident_alloc_voice.exit.thread
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -11, %snd_trident_alloc_voice.exit.cleanup_crit_edge ], [ -11, %snd_trident_alloc_voice.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_spdif_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 37
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #10
  %device = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 272199704, i32 %3)
  %cmp.not = icmp eq i32 %3, 272199704
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %cmp.not, label %do.body10, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %spdif_ctrl = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %spdif_ctrl to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %spdif_ctrl, align 4
  %port = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %add = add i32 %7, 39
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %8 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %5) #10, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !306
  tail call void @arm_heavy_mb() #10
  %spdif_bits = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %spdif_bits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %spdif_bits, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add6 = add i32 %13, 100
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %14 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 %11) #10, !srcloc !213
  br label %if.end37

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %spdif_bits13 = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %spdif_bits13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %spdif_bits13, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %port14 = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %port14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port14, align 4
  %add15 = add i32 %19, 112
  %and16 = and i32 %add15, 1048575
  %add17 = or i32 %and16, -18874368
  %20 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %20, i32 %17) #10, !srcloc !213
  %21 = ptrtoint ptr %port14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port14, align 4
  %add20 = add i32 %22, 72
  %and21 = and i32 %add20, 1048575
  %add22 = or i32 %and21, -18874368
  %23 = inttoptr i32 %add22 to ptr
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %23) #10, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !307
  %spdif_ctrl25 = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 8
  %25 = ptrtoint ptr %spdif_ctrl25 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %spdif_ctrl25, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not = icmp eq i8 %26, 0
  %27 = and i32 %24, -536870913
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %masksel = select i1 %tobool.not, i32 0, i32 32
  %temp.0 = or i32 %masksel, %28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !308
  tail call void @arm_heavy_mb() #10
  %29 = tail call i32 @llvm.bswap.i32(i32 %temp.0)
  %30 = ptrtoint ptr %port14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port14, align 4
  %add33 = add i32 %31, 72
  %and34 = and i32 %add33, 1048575
  %add35 = or i32 %and34, -18874368
  %32 = inttoptr i32 %add35 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %32, i32 %29) #10, !srcloc !213
  br label %if.end37

if.end37:                                         ; preds = %do.body10, %do.body
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #10
  %spdif_pcm_ctl = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 12
  %33 = ptrtoint ptr %spdif_pcm_ctl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %spdif_pcm_ctl, align 4
  %access = getelementptr inbounds %struct.snd_kcontrol, ptr %34, i32 1, i32 0, i32 1
  %35 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %access, align 4
  %or39 = or i32 %36, 256
  store i32 %or39, ptr %access, align 4
  %card = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 23
  %37 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %card, align 4
  %39 = load ptr, ptr %spdif_pcm_ctl, align 4
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %39, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %38, i32 noundef 3, ptr noundef %id) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_spdif_hw_params(ptr noundef %substream, ptr nocapture noundef readonly %hw_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1.i, align 4
  %private_data2.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2.i, align 8
  %tlb.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %tlb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tlb.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %entry
  %buffer_changed.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 54
  %8 = ptrtoint ptr %buffer_changed.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %buffer_changed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool3.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool3.not.i, label %if.then.i.if.end_crit_edge, label %if.then4.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then4.i:                                       ; preds = %if.then.i
  %memblk.i = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 24
  %9 = ptrtoint ptr %memblk.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %memblk.i, align 4
  %tobool5.not.i = icmp eq ptr %10, null
  br i1 %tobool5.not.i, label %if.then4.i.if.end.i_crit_edge, label %if.then6.i

if.then4.i.if.end.i_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then6.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @snd_trident_free_pages(ptr noundef %1, ptr noundef nonnull %10) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then6.i, %if.then4.i.if.end.i_crit_edge
  %call8.i = tail call ptr @snd_trident_alloc_pages(ptr noundef %1, ptr noundef %substream) #10
  %11 = ptrtoint ptr %memblk.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8.i, ptr %memblk.i, align 4
  %cmp.i = icmp eq ptr %call8.i, null
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %if.then.i.if.end_crit_edge, %entry.if.end_crit_edge
  %device = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 272199704, i32 %13)
  %cmp1 = icmp eq i32 %13, 272199704
  br i1 %cmp1, label %if.then2, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %call3 = tail call fastcc i32 @snd_trident_allocate_evoice(ptr noundef %substream, ptr noundef %hw_params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then2.cleanup_crit_edge, label %if.then2.if.end7_crit_edge

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.then2.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %reg_lock = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 37
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #10
  %spdif_pcm_bits = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %spdif_pcm_bits to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %spdif_pcm_bits, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %storemerge.v = select i1 %tobool.not, i32 -251658241, i32 -193
  %storemerge = and i32 %storemerge.v, %15
  %16 = ptrtoint ptr %spdif_pcm_bits to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %storemerge, ptr %spdif_pcm_bits, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 47999, i32 %18)
  %cmp15 = icmp ugt i32 %18, 47999
  br i1 %cmp15, label %if.then16, label %if.else20

if.then16:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %spdif_pcm_ctrl = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %spdif_pcm_ctrl to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 60, ptr %spdif_pcm_ctrl, align 1
  %spdif_bits = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %spdif_bits to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %spdif_bits, align 4
  %and17 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %cond = select i1 %tobool18.not, i32 33554432, i32 128
  br label %if.end40

if.else20:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 44099, i32 %18)
  %cmp22 = icmp ugt i32 %18, 44099
  %spdif_pcm_ctrl24 = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 9
  br i1 %cmp22, label %if.then23, label %if.else31

if.then23:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %spdif_pcm_ctrl24 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 62, ptr %spdif_pcm_ctrl24, align 1
  %spdif_bits25 = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 10
  %23 = ptrtoint ptr %spdif_bits25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %spdif_bits25, align 4
  %and26 = shl i32 %24, 6
  %25 = and i32 %and26, 64
  br label %if.end40

if.else31:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %spdif_pcm_ctrl24 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 61, ptr %spdif_pcm_ctrl24, align 1
  %spdif_bits33 = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 10
  %27 = ptrtoint ptr %spdif_bits33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %spdif_bits33, align 4
  %and34 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %cond36 = select i1 %tobool35.not, i32 50331648, i32 192
  br label %if.end40

if.end40:                                         ; preds = %if.else31, %if.then23, %if.then16
  %.sink = phi i32 [ %25, %if.then23 ], [ %cond36, %if.else31 ], [ %cond, %if.then16 ]
  %or30 = or i32 %.sink, %storemerge
  %29 = ptrtoint ptr %spdif_pcm_bits to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or30, ptr %spdif_pcm_bits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %or30)
  %cmp42.not = icmp eq i32 %15, %or30
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #10
  br i1 %cmp42.not, label %if.end40.cleanup_crit_edge, label %if.then45

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then45:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %card = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 23
  %30 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %card, align 4
  %spdif_pcm_ctl = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 12
  %32 = ptrtoint ptr %spdif_pcm_ctl to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %spdif_pcm_ctl, align 4
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %33, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %31, i32 noundef 1, ptr noundef %id) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end40.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then2.cleanup_crit_edge ], [ 0, %if.then45 ], [ 0, %if.end40.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_spdif_prepare(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %extra = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %extra, align 4
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %8 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %number, align 4
  %reg_lock = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 37
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #10
  %device = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 272199704, i32 %11)
  %cmp.not = icmp eq i32 %11, 272199704
  br i1 %cmp.not, label %if.else78, label %if.then

if.then:                                          ; preds = %entry
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %12 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rate, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %13, label %if.else6.i [
    i32 44100, label %if.then.snd_trident_convert_rate.exit_crit_edge
    i32 8000, label %if.then2.i
    i32 48000, label %if.then5.i
  ]

if.then.snd_trident_convert_rate.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_convert_rate.exit

if.then2.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_convert_rate.exit

if.then5.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_trident_convert_rate.exit

if.else6.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i = shl i32 %13, 12
  %add.i = add i32 %shl.i, 24000
  %div7.i = udiv i32 %add.i, 48000
  %phi.cast = trunc i32 %div7.i to i16
  br label %snd_trident_convert_rate.exit

snd_trident_convert_rate.exit:                    ; preds = %if.else6.i, %if.then5.i, %if.then2.i, %if.then.snd_trident_convert_rate.exit_crit_edge
  %delta.0.i = phi i16 [ 683, %if.then2.i ], [ 4096, %if.then5.i ], [ %phi.cast, %if.else6.i ], [ 3763, %if.then.snd_trident_convert_rate.exit_crit_edge ]
  %Delta = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 12
  %15 = ptrtoint ptr %Delta to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %delta.0.i, ptr %Delta, align 4
  %16 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rate, align 4
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %18 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %period_size, align 4
  %mul.i = mul i32 %19, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072000, i32 %mul.i)
  %cmp.i = icmp ult i32 %mul.i, 3072000
  %div1.i = udiv i32 %mul.i, 96000
  %div.i = udiv i32 %mul.i, 48000
  %sub.i = add nsw i32 %div.i, -32
  %res.0.i = select i1 %cmp.i, i32 %div1.i, i32 %sub.i
  %spurious_threshold = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 31
  %20 = ptrtoint ptr %spurious_threshold to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %res.0.i, ptr %spurious_threshold, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %21 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma_addr, align 8
  %memblk = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 24
  %23 = ptrtoint ptr %memblk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %memblk, align 4
  %tobool.not = icmp eq ptr %24, null
  br i1 %tobool.not, label %snd_trident_convert_rate.exit.if.end_crit_edge, label %if.then5

snd_trident_convert_rate.exit.if.end_crit_edge:   ; preds = %snd_trident_convert_rate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then5:                                         ; preds = %snd_trident_convert_rate.exit
  call void @__sanitizer_cov_trace_pc() #12
  %offset = getelementptr inbounds %struct.snd_util_memblk, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %snd_trident_convert_rate.exit.if.end_crit_edge
  %.sink = phi i32 [ %26, %if.then5 ], [ %22, %snd_trident_convert_rate.exit.if.end_crit_edge ]
  %27 = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 9
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink, ptr %27, align 4
  %isync = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 28
  %29 = ptrtoint ptr %isync to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load = load i8, ptr %isync, align 4
  %bf.set10 = or i8 %bf.load, 10
  store i8 %bf.set10, ptr %isync, align 4
  %30 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %period_size, align 4
  %isync_mark = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 32
  %32 = ptrtoint ptr %isync_mark to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %isync_mark, align 4
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %33 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buffer_size, align 4
  %isync_max = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 33
  %35 = ptrtoint ptr %isync_max to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %isync_max, align 4
  %36 = load i32, ptr %buffer_size, align 4
  %sub = add i32 %36, -1
  %37 = load i32, ptr %period_size, align 4
  %mul = shl i32 %37, 1
  %sub14 = add i32 %mul, 5
  %isync_ESO = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 34
  %38 = ptrtoint ptr %isync_ESO to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub14, ptr %isync_ESO, align 4
  %ESO = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 8
  %39 = ptrtoint ptr %ESO to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub14, ptr %ESO, align 4
  %40 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %runtime1, align 4
  %format.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %41, i32 0, i32 12
  %42 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %format.i, align 4
  %call.i = tail call i32 @snd_pcm_format_width(i32 noundef %43) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call.i)
  %cmp.i314 = icmp eq i32 %call.i, 16
  %spec.select.i = select i1 %cmp.i314, i32 9, i32 1
  %44 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %format.i, align 4
  %call3.i = tail call i32 @snd_pcm_format_signed(i32 noundef %45) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  %or5.i = or i32 %spec.select.i, 2
  %CTRL.1.i = select i1 %tobool.not.i, i32 %spec.select.i, i32 %or5.i
  %channels.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %41, i32 0, i32 15
  %46 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %channels.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp7.i = icmp ugt i32 %47, 1
  %or9.i = or i32 %CTRL.1.i, 4
  %CTRL.2.i = select i1 %cmp7.i, i32 %or9.i, i32 %CTRL.1.i
  %conv16 = trunc i32 %CTRL.2.i to i8
  %CTRL = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 20
  %48 = ptrtoint ptr %CTRL to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv16, ptr %CTRL, align 1
  %FMC = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 19
  %49 = ptrtoint ptr %FMC to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 3, ptr %FMC, align 2
  %RVol = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 17
  %50 = ptrtoint ptr %RVol to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 127, ptr %RVol, align 4
  %CVol = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 18
  %51 = ptrtoint ptr %CVol to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 127, ptr %CVol, align 1
  %GVSel = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 16
  %52 = ptrtoint ptr %GVSel to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %GVSel, align 1
  %Pan = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 15
  %53 = ptrtoint ptr %Pan to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 127, ptr %Pan, align 2
  %Vol = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 14
  %54 = ptrtoint ptr %Vol to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1023, ptr %Vol, align 4
  %EC = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 10
  %55 = ptrtoint ptr %EC to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %EC, align 4
  %CSO = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 7
  %56 = ptrtoint ptr %CSO to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %CSO, align 4
  %Alpha = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 11
  %57 = ptrtoint ptr %Alpha to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %Alpha, align 2
  %FMS = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 21
  %58 = ptrtoint ptr %FMS to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %FMS, align 4
  %Attribute = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 13
  %59 = ptrtoint ptr %Attribute to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 0, ptr %Attribute, align 2
  tail call void @snd_trident_write_voice_regs(ptr noundef %1, ptr noundef %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !309
  tail call void @arm_heavy_mb() #10
  %conv17 = trunc i32 %sub to i16
  %60 = tail call i16 @llvm.bswap.i16(i16 %conv17)
  %port = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 3
  %61 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %port, align 4
  %add18 = add i32 %62, 44
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %63 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %63, i16 %60) #10, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !310
  tail call void @arm_heavy_mb() #10
  %shr = lshr i32 %sub, 16
  %conv25 = trunc i32 %shr to i8
  %64 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %port, align 4
  %add27 = add i32 %65, 46
  %and28 = and i32 %add27, 1048575
  %add29 = or i32 %and28, -18874368
  %66 = inttoptr i32 %add29 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 %conv25) #10, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !311
  tail call void @arm_heavy_mb() #10
  %and34 = and i32 %22, -4
  %67 = tail call i32 @llvm.bswap.i32(i32 %and34)
  %68 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %port, align 4
  %add36 = add i32 %69, 40
  %and37 = and i32 %add36, 1048575
  %add38 = or i32 %and37, -18874368
  %70 = inttoptr i32 %add38 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %70, i32 %67) #10, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %71 = ptrtoint ptr %CSO to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %CSO, align 4
  %conv45 = trunc i32 %72 to i16
  %73 = tail call i16 @llvm.bswap.i16(i16 %conv45)
  %74 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %port, align 4
  %add47 = add i32 %75, 36
  %and48 = and i32 %add47, 1048575
  %add49 = or i32 %and48, -18874368
  %76 = inttoptr i32 %add49 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %76, i16 %73) #10, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  tail call void @arm_heavy_mb() #10
  %77 = ptrtoint ptr %CSO to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %CSO, align 4
  %shr55 = lshr i32 %78, 16
  %conv56 = trunc i32 %shr55 to i8
  %79 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %port, align 4
  %add58 = add i32 %80, 38
  %and59 = and i32 %add58, 1048575
  %add60 = or i32 %and59, -18874368
  %81 = inttoptr i32 %add60 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %81, i8 %conv56) #10, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %spdif_pcm_ctrl = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 9
  %82 = ptrtoint ptr %spdif_pcm_ctrl to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %spdif_pcm_ctrl, align 1
  %84 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %port, align 4
  %add66 = add i32 %85, 39
  %and67 = and i32 %add66, 1048575
  %add68 = or i32 %and67, -18874368
  %86 = inttoptr i32 %add68 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %86, i8 %83) #10, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  %spdif_pcm_bits = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 11
  %87 = ptrtoint ptr %spdif_pcm_bits to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %spdif_pcm_bits, align 4
  %89 = tail call i32 @llvm.bswap.i32(i32 %88)
  %90 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %port, align 4
  %add74 = add i32 %91, 100
  %and75 = and i32 %add74, 1048575
  %add76 = or i32 %and75, -18874368
  %92 = inttoptr i32 %add76 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %92, i32 %89) #10, !srcloc !213
  br label %if.end191

if.else78:                                        ; preds = %entry
  %Delta79 = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 12
  %93 = ptrtoint ptr %Delta79 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 2048, ptr %Delta79, align 4
  %period_size80 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %94 = ptrtoint ptr %period_size80 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %period_size80, align 4
  %mul.i315 = mul i32 %95, 48000
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072000, i32 %mul.i315)
  %cmp.i316 = icmp ult i32 %mul.i315, 3072000
  %div1.i317 = udiv i32 %mul.i315, 96000
  %div.i318 = udiv i32 %mul.i315, 48000
  %sub.i319 = add nsw i32 %div.i318, -32
  %res.0.i320 = select i1 %cmp.i316, i32 %div1.i317, i32 %sub.i319
  %spurious_threshold82 = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 31
  %96 = ptrtoint ptr %spurious_threshold82 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %res.0.i320, ptr %spurious_threshold82, align 4
  %memblk83 = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 24
  %97 = ptrtoint ptr %memblk83 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %memblk83, align 4
  %tobool84.not = icmp eq ptr %98, null
  %dma_addr90 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %offset87 = getelementptr inbounds %struct.snd_util_memblk, ptr %98, i32 0, i32 1
  %.sink334.in = select i1 %tobool84.not, ptr %dma_addr90, ptr %offset87
  %99 = ptrtoint ptr %.sink334.in to i32
  call void @__asan_load4_noabort(i32 %99)
  %.sink334 = load i32, ptr %.sink334.in, align 4
  %100 = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 9
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %.sink334, ptr %100, align 4
  %CSO93 = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 7
  %102 = ptrtoint ptr %CSO93 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %CSO93, align 4
  %buffer_size94 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %103 = ptrtoint ptr %buffer_size94 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %buffer_size94, align 4
  %sub95 = add i32 %104, -1
  %ESO96 = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 8
  %105 = ptrtoint ptr %ESO96 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %sub95, ptr %ESO96, align 4
  %106 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %runtime1, align 4
  %format.i322 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %107, i32 0, i32 12
  %108 = ptrtoint ptr %format.i322 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %format.i322, align 4
  %call.i323 = tail call i32 @snd_pcm_format_width(i32 noundef %109) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call.i323)
  %cmp.i324 = icmp eq i32 %call.i323, 16
  %spec.select.i325 = select i1 %cmp.i324, i32 9, i32 1
  %110 = ptrtoint ptr %format.i322 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %format.i322, align 4
  %call3.i326 = tail call i32 @snd_pcm_format_signed(i32 noundef %111) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i326)
  %tobool.not.i327 = icmp eq i32 %call3.i326, 0
  %or5.i328 = or i32 %spec.select.i325, 2
  %CTRL.1.i329 = select i1 %tobool.not.i327, i32 %spec.select.i325, i32 %or5.i328
  %channels.i330 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %107, i32 0, i32 15
  %112 = ptrtoint ptr %channels.i330 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %channels.i330, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %113)
  %cmp7.i331 = icmp ugt i32 %113, 1
  %or9.i332 = or i32 %CTRL.1.i329, 4
  %CTRL.2.i333 = select i1 %cmp7.i331, i32 %or9.i332, i32 %CTRL.1.i329
  %conv98 = trunc i32 %CTRL.2.i333 to i8
  %CTRL99 = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 20
  %114 = ptrtoint ptr %CTRL99 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %conv98, ptr %CTRL99, align 1
  %FMC100 = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 19
  %115 = ptrtoint ptr %FMC100 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 3, ptr %FMC100, align 2
  %GVSel101 = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 16
  %116 = ptrtoint ptr %GVSel101 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 1, ptr %GVSel101, align 1
  %EC102 = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 10
  %117 = ptrtoint ptr %EC102 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 0, ptr %EC102, align 4
  %Alpha103 = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 11
  %118 = ptrtoint ptr %Alpha103 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 0, ptr %Alpha103, align 2
  %FMS104 = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 21
  %119 = ptrtoint ptr %FMS104 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %FMS104, align 4
  %vol = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 %9, i32 1
  %120 = ptrtoint ptr %vol to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %vol, align 4
  %Vol105 = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 14
  %122 = ptrtoint ptr %Vol105 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %121, ptr %Vol105, align 4
  %rvol = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 %9, i32 3
  %123 = ptrtoint ptr %rvol to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %rvol, align 1
  %RVol106 = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 17
  %125 = ptrtoint ptr %RVol106 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %RVol106, align 4
  %cvol = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 %9, i32 4
  %126 = ptrtoint ptr %cvol to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %cvol, align 4
  %CVol107 = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 18
  %128 = ptrtoint ptr %CVol107 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %CVol107, align 1
  %pan = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 %9, i32 2
  %129 = ptrtoint ptr %pan to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %pan, align 2
  %Pan108 = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 15
  %131 = ptrtoint ptr %Pan108 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %Pan108, align 2
  %Attribute109 = getelementptr inbounds %struct.snd_trident_voice, ptr %5, i32 0, i32 13
  %132 = ptrtoint ptr %Attribute109 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 23552, ptr %Attribute109, align 2
  tail call void @snd_trident_write_voice_regs(ptr noundef %1, ptr noundef %5)
  %cmp110.not = icmp eq ptr %7, null
  br i1 %cmp110.not, label %if.else78.do.body151_crit_edge, label %if.then112

if.else78.do.body151_crit_edge:                   ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body151

if.then112:                                       ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #12
  %133 = ptrtoint ptr %Delta79 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %Delta79, align 4
  %Delta114 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 12
  %135 = ptrtoint ptr %Delta114 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %134, ptr %Delta114, align 4
  %136 = ptrtoint ptr %spurious_threshold82 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %spurious_threshold82, align 4
  %spurious_threshold116 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 31
  %138 = ptrtoint ptr %spurious_threshold116 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %spurious_threshold116, align 4
  %139 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %100, align 4
  %LBA118 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 9
  %141 = ptrtoint ptr %LBA118 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %LBA118, align 4
  %CSO119 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 7
  %142 = ptrtoint ptr %CSO119 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %CSO119, align 4
  %143 = ptrtoint ptr %period_size80 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %period_size80, align 4
  %mul121 = shl i32 %144, 1
  %sub123 = add i32 %mul121, 3
  %ESO124 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 8
  %145 = ptrtoint ptr %ESO124 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %sub123, ptr %ESO124, align 4
  %146 = ptrtoint ptr %CTRL99 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %CTRL99, align 1
  %CTRL126 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 20
  %148 = ptrtoint ptr %CTRL126 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %147, ptr %CTRL126, align 1
  %FMC127 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 19
  %149 = ptrtoint ptr %FMC127 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 3, ptr %FMC127, align 2
  %150 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 272199704, i32 %151)
  %cmp129 = icmp ne i32 %151, 272199704
  %conv131 = zext i1 %cmp129 to i8
  %GVSel132 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 16
  %152 = ptrtoint ptr %GVSel132 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %conv131, ptr %GVSel132, align 1
  %EC133 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 10
  %153 = ptrtoint ptr %EC133 to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 0, ptr %EC133, align 4
  %Alpha134 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 11
  %154 = ptrtoint ptr %Alpha134 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 0, ptr %Alpha134, align 2
  %FMS135 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 21
  %155 = ptrtoint ptr %FMS135 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %FMS135, align 4
  %Vol136 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 14
  %156 = ptrtoint ptr %Vol136 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 1023, ptr %Vol136, align 4
  %CVol137 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 18
  %157 = ptrtoint ptr %CVol137 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 127, ptr %CVol137, align 1
  %RVol138 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 17
  %158 = ptrtoint ptr %RVol138 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 127, ptr %RVol138, align 4
  %Pan139 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 15
  %159 = ptrtoint ptr %Pan139 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 127, ptr %Pan139, align 2
  %Attribute140 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 13
  %160 = ptrtoint ptr %Attribute140 to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 0, ptr %Attribute140, align 2
  tail call void @snd_trident_write_voice_regs(ptr noundef %1, ptr noundef nonnull %7)
  %isync2 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 28
  %161 = ptrtoint ptr %isync2 to i32
  call void @__asan_load1_noabort(i32 %161)
  %bf.load141 = load i8, ptr %isync2, align 4
  %bf.set143 = or i8 %bf.load141, 4
  store i8 %bf.set143, ptr %isync2, align 4
  %162 = ptrtoint ptr %period_size80 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %period_size80, align 4
  %isync_mark145 = getelementptr inbounds %struct.snd_trident_voice, ptr %7, i32 0, i32 32
  %164 = ptrtoint ptr %isync_mark145 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %isync_mark145, align 4
  %165 = load i32, ptr %period_size80, align 4
  %mul147 = shl i32 %165, 1
  %sub148 = add i32 %mul147, -1
  %166 = ptrtoint ptr %ESO124 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %sub148, ptr %ESO124, align 4
  br label %do.body151

do.body151:                                       ; preds = %if.then112, %if.else78.do.body151_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !316
  tail call void @arm_heavy_mb() #10
  %spdif_pcm_bits154 = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 11
  %167 = ptrtoint ptr %spdif_pcm_bits154 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %spdif_pcm_bits154, align 4
  %169 = tail call i32 @llvm.bswap.i32(i32 %168)
  %port155 = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 3
  %170 = ptrtoint ptr %port155 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %port155, align 4
  %add156 = add i32 %171, 112
  %and157 = and i32 %add156, 1048575
  %add158 = or i32 %and157, -18874368
  %172 = inttoptr i32 %add158 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %172, i32 %169) #10, !srcloc !213
  %173 = ptrtoint ptr %port155 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %port155, align 4
  %add161 = add i32 %174, 160
  %and162 = and i32 %add161, 1048575
  %add163 = or i32 %and162, -18874368
  %175 = inttoptr i32 %add163 to ptr
  %176 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %175) #10, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !317
  %177 = and i32 %176, -2049
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !318
  tail call void @arm_heavy_mb() #10
  %178 = ptrtoint ptr %port155 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %port155, align 4
  %add171 = add i32 %179, 160
  %and172 = and i32 %add171, 1048575
  %add173 = or i32 %and172, -18874368
  %180 = inttoptr i32 %add173 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %180, i32 %177) #10, !srcloc !213
  %181 = ptrtoint ptr %port155 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %port155, align 4
  %add177 = add i32 %182, 72
  %and178 = and i32 %add177, 1048575
  %add179 = or i32 %and178, -18874368
  %183 = inttoptr i32 %add179 to ptr
  %184 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %183) #10, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !319
  %185 = or i32 %184, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !320
  tail call void @arm_heavy_mb() #10
  %186 = ptrtoint ptr %port155 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %port155, align 4
  %add187 = add i32 %187, 72
  %and188 = and i32 %add187, 1048575
  %add189 = or i32 %and188, -18874368
  %188 = inttoptr i32 %add189 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %188, i32 %185) #10, !srcloc !213
  br label %if.end191

if.end191:                                        ; preds = %do.body151, %if.end
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_spdif_pointer(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data2, align 8
  %running = getelementptr inbounds %struct.snd_trident_voice, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data, align 4
  %port = getelementptr inbounds %struct.snd_trident, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 4
  %add = add i32 %8, 36
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %9 = inttoptr i32 %add3 to ptr
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %9) #10, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  %11 = and i32 %10, -256
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_util_memhdr_new(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_devm_alloc_dir_pages(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_trident_sis_reset(ptr nocapture noundef readonly %trident) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %in_suspend = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 17
  %0 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %in_suspend, align 4
  %1 = lshr i8 %bf.load, 5
  %2 = and i8 %1, 2
  %3 = xor i8 %2, 2
  %4 = zext i8 %3 to i32
  %pci = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 22
  %port = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 3
  %card = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 23
  br label %__si7018_retry

__si7018_retry:                                   ; preds = %do.body49.__si7018_retry_crit_edge, %entry
  %r.0 = phi i32 [ %4, %entry ], [ %dec, %do.body49.__si7018_retry_crit_edge ]
  %5 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci, align 4
  %call = tail call i32 @pci_write_config_byte(ptr noundef %6, i32 noundef 70, i8 noundef zeroext 4) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 21474800) #10
  %8 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci, align 4
  %call2 = tail call i32 @pci_write_config_byte(ptr noundef %9, i32 noundef 70, i8 noundef zeroext 0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 21474800) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !322
  tail call void @arm_heavy_mb() #10
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port, align 4
  %add = add i32 %12, 76
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %13 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 0) #10, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !323
  tail call void @arm_heavy_mb() #10
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port, align 4
  %add9 = add i32 %15, 72
  %and10 = and i32 %add9, 1048575
  %add11 = or i32 %and10, -18874368
  %16 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 37752576) #10, !srcloc !213
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !324
  tail call void @arm_heavy_mb() #10
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add18 = add i32 %19, 72
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %20 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %20, i32 4198144) #10, !srcloc !213
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 429496000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %add23 = add i32 %22, 76
  br label %do.body24

do.body24:                                        ; preds = %if.end.do.body24_crit_edge, %__si7018_retry
  %23 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port, align 4
  %add26 = add i32 %24, 72
  %and27 = and i32 %add26, 1048575
  %add28 = or i32 %and27, -18874368
  %25 = inttoptr i32 %add28 to ptr
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %25) #10, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !325
  %27 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not = icmp eq i32 %27, 0
  br i1 %cmp.not, label %if.end, label %do.body24.do.body55.preheader_crit_edge

do.body24.do.body55.preheader_crit_edge:          ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body55.preheader

do.body55.preheader:                              ; preds = %do.end37.do.body55.preheader_crit_edge, %do.body24.do.body55.preheader_crit_edge
  br label %do.body55

if.end:                                           ; preds = %do.body24
  %call.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add23, %28
  %cmp33 = icmp sgt i32 %sub, -1
  br i1 %cmp33, label %if.end.do.body24_crit_edge, label %do.end37

if.end.do.body24_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body24

do.end37:                                         ; preds = %if.end
  %29 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %30, i32 0, i32 27
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 8
  %33 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port, align 4
  %add40 = add i32 %34, 72
  %and41 = and i32 %add40, 1048575
  %add42 = or i32 %and41, -18874368
  %35 = inttoptr i32 %add42 to ptr
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %35) #10, !srcloc !232
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !326
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.34, i32 noundef %37) #14
  %dec = add nsw i32 %r.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0)
  %cmp46 = icmp sgt i32 %r.0, 0
  br i1 %cmp46, label %if.then47, label %do.end37.do.body55.preheader_crit_edge

do.end37.do.body55.preheader_crit_edge:           ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body55.preheader

if.then47:                                        ; preds = %do.end37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %add48 = add i32 %38, 100
  br label %do.body49

do.body49:                                        ; preds = %do.body49.do.body49_crit_edge, %if.then47
  %call.i1 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %sub51 = sub i32 %add48, %39
  %cmp52 = icmp sgt i32 %sub51, -1
  br i1 %cmp52, label %do.body49.do.body49_crit_edge, label %do.body49.__si7018_retry_crit_edge

do.body49.__si7018_retry_crit_edge:               ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  br label %__si7018_retry

do.body49.do.body49_crit_edge:                    ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body49

do.body55:                                        ; preds = %if.end67.do.body55_crit_edge, %do.body55.preheader
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port, align 4
  %add58 = add i32 %41, 72
  %and59 = and i32 %add58, 1048575
  %add60 = or i32 %and59, -18874368
  %42 = inttoptr i32 %add60 to ptr
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %42) #10, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !327
  %44 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp65.not = icmp eq i32 %44, 0
  br i1 %cmp65.not, label %if.end67, label %do.body55.do.body72_crit_edge

do.body55.do.body72_crit_edge:                    ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body72

if.end67:                                         ; preds = %do.body55
  %call.i2 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %sub69 = sub i32 %add23, %45
  %cmp70 = icmp sgt i32 %sub69, -1
  br i1 %cmp70, label %if.end67.do.body55_crit_edge, label %if.end67.do.body72_crit_edge

if.end67.do.body72_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body72

if.end67.do.body55_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body55

do.body72:                                        ; preds = %if.end67.do.body72_crit_edge, %do.body55.do.body72_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !328
  tail call void @arm_heavy_mb() #10
  %46 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port, align 4
  %add76 = add i32 %47, 160
  %and77 = and i32 %add76, 1048575
  %add78 = or i32 %and77, -18874368
  %48 = inttoptr i32 %add78 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %48, i32 256) #10, !srcloc !213
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_trident_codec_write(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg, i16 noundef zeroext %wdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %conv = zext i16 %wdata to i32
  %shl = shl nuw i32 %conv, 16
  %reg_lock = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 37
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #10
  %device = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 270737408, label %do.body8.preheader
    i32 270737409, label %do.body27.preheader
    i32 272199704, label %do.body58.preheader
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body58.preheader:                              ; preds = %entry
  %port60 = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 3
  br label %do.body58

do.body27.preheader:                              ; preds = %entry
  %port29 = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 3
  br label %do.body27

do.body8.preheader:                               ; preds = %entry
  %port = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 3
  br label %do.body8

do.body8:                                         ; preds = %do.cond18.do.body8_crit_edge, %do.body8.preheader
  %count.0 = phi i16 [ %dec, %do.cond18.do.body8_crit_edge ], [ -1, %do.body8.preheader ]
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port, align 4
  %add = add i32 %6, 64
  %and = and i32 %add, 1048575
  %add9 = or i32 %and, -18874368
  %7 = inttoptr i32 %add9 to ptr
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %7) #10, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  %.mask135 = and i16 %8, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask135)
  %cmp15 = icmp eq i16 %.mask135, 0
  br i1 %cmp15, label %do.body8.do.end19_crit_edge, label %do.cond18

do.body8.do.end19_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

do.cond18:                                        ; preds = %do.body8
  %dec = add i16 %count.0, -1
  %tobool.not = icmp eq i16 %dec, 0
  br i1 %tobool.not, label %do.cond18.do.end19_crit_edge, label %do.cond18.do.body8_crit_edge

do.cond18.do.body8_crit_edge:                     ; preds = %do.cond18
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8

do.cond18.do.end19_crit_edge:                     ; preds = %do.cond18
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

do.end19:                                         ; preds = %do.cond18.do.end19_crit_edge, %do.body8.do.end19_crit_edge
  %count.1 = phi i16 [ %count.0, %do.body8.do.end19_crit_edge ], [ 0, %do.cond18.do.end19_crit_edge ]
  %9 = and i16 %reg, 255
  %10 = or i16 %9, -32768
  %or = zext i16 %10 to i32
  %or22 = or i32 %shl, %or
  br label %if.end91

do.body27:                                        ; preds = %do.cond42.do.body27_crit_edge, %do.body27.preheader
  %count.2 = phi i16 [ %dec43, %do.cond42.do.body27_crit_edge ], [ -1, %do.body27.preheader ]
  %11 = ptrtoint ptr %port29 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port29, align 4
  %add30 = add i32 %12, 68
  %and31 = and i32 %add30, 1048575
  %add32 = or i32 %and31, -18874368
  %13 = inttoptr i32 %add32 to ptr
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %13) #10, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !330
  %15 = and i16 %14, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp38 = icmp eq i16 %15, 0
  br i1 %cmp38, label %do.body27.do.end45_crit_edge, label %do.cond42

do.body27.do.end45_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end45

do.cond42:                                        ; preds = %do.body27
  %dec43 = add i16 %count.2, -1
  %tobool44.not = icmp eq i16 %dec43, 0
  br i1 %tobool44.not, label %do.cond42.do.end45_crit_edge, label %do.cond42.do.body27_crit_edge

do.cond42.do.body27_crit_edge:                    ; preds = %do.cond42
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body27

do.cond42.do.end45_crit_edge:                     ; preds = %do.cond42
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end45

do.end45:                                         ; preds = %do.cond42.do.end45_crit_edge, %do.body27.do.end45_crit_edge
  %count.3 = phi i16 [ %count.2, %do.body27.do.end45_crit_edge ], [ 0, %do.cond42.do.end45_crit_edge ]
  %num = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 11
  %16 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %num, align 8
  %conv46 = zext i16 %17 to i32
  %shl47 = shl nuw nsw i32 %conv46, 8
  %18 = and i16 %reg, 255
  %and50 = zext i16 %18 to i32
  %or48 = or i32 %shl47, %and50
  %or51 = or i32 %shl, %or48
  %or52 = or i32 %or51, 2048
  br label %if.end91

do.body58:                                        ; preds = %do.cond73.do.body58_crit_edge, %do.body58.preheader
  %count.4 = phi i16 [ %dec74, %do.cond73.do.body58_crit_edge ], [ -1, %do.body58.preheader ]
  %19 = ptrtoint ptr %port60 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port60, align 4
  %add61 = add i32 %20, 64
  %and62 = and i32 %add61, 1048575
  %add63 = or i32 %and62, -18874368
  %21 = inttoptr i32 %add63 to ptr
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %21) #10, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  %.mask = and i16 %22, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask)
  %cmp69 = icmp eq i16 %.mask, 0
  br i1 %cmp69, label %do.body58.do.end76_crit_edge, label %do.cond73

do.body58.do.end76_crit_edge:                     ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end76

do.cond73:                                        ; preds = %do.body58
  %dec74 = add i16 %count.4, -1
  %tobool75.not = icmp eq i16 %dec74, 0
  br i1 %tobool75.not, label %do.cond73.do.end76_crit_edge, label %do.cond73.do.body58_crit_edge

do.cond73.do.body58_crit_edge:                    ; preds = %do.cond73
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body58

do.cond73.do.end76_crit_edge:                     ; preds = %do.cond73
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end76

do.end76:                                         ; preds = %do.cond73.do.end76_crit_edge, %do.body58.do.end76_crit_edge
  %count.5 = phi i16 [ %count.4, %do.body58.do.end76_crit_edge ], [ 0, %do.cond73.do.end76_crit_edge ]
  %23 = and i16 %reg, 255
  %24 = or i16 %23, -16384
  %or79 = zext i16 %24 to i32
  %or80 = or i32 %shl, %or79
  %num81 = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 11
  %25 = ptrtoint ptr %num81 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %num81, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %26)
  %cmp83 = icmp eq i16 %26, 1
  %or86 = or i32 %or80, 128
  %spec.select = select i1 %cmp83, i32 %or86, i32 %or80
  br label %if.end91

if.end91:                                         ; preds = %do.end76, %do.end45, %do.end19
  %count.6 = phi i16 [ %count.1, %do.end19 ], [ %count.3, %do.end45 ], [ %count.5, %do.end76 ]
  %data.0 = phi i32 [ %or22, %do.end19 ], [ %or52, %do.end45 ], [ %spec.select, %do.end76 ]
  %address.0 = phi i32 [ 64, %do.end19 ], [ 68, %do.end45 ], [ 64, %do.end76 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %count.6)
  %cmp93 = icmp eq i16 %count.6, 0
  br i1 %cmp93, label %if.end91.cleanup_crit_edge, label %do.body98

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body98:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !332
  tail call void @arm_heavy_mb() #10
  %27 = tail call i32 @llvm.bswap.i32(i32 %data.0)
  %port101 = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %port101 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port101, align 4
  %add102 = add i32 %29, %address.0
  %and103 = and i32 %add102, 1048575
  %add104 = or i32 %and103, -18874368
  %30 = inttoptr i32 %add104 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %30, i32 %27) #10, !srcloc !213
  br label %cleanup

cleanup:                                          ; preds = %do.body98, %if.end91.cleanup_crit_edge, %entry.cleanup_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @snd_trident_codec_read(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 37
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #10
  %device = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %3, label %entry.if.end117_crit_edge [
    i32 270737408, label %if.then
    i32 270737409, label %if.then31
    i32 272199704, label %if.then68
  ]

entry.if.end117_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end117

if.then:                                          ; preds = %entry
  %5 = and i16 %reg, 255
  %6 = or i16 %5, -32768
  %or = zext i16 %6 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !333
  tail call void @arm_heavy_mb() #10
  %7 = tail call i32 @llvm.bswap.i32(i32 %or)
  %port = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %add = add i32 %9, 68
  %and11 = and i32 %add, 1048575
  %add12 = or i32 %and11, -18874368
  %10 = inttoptr i32 %add12 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %10, i32 %7) #10, !srcloc !213
  br label %do.body14

do.body14:                                        ; preds = %do.cond26.do.body14_crit_edge, %if.then
  %count.0 = phi i16 [ -1, %if.then ], [ %dec, %do.cond26.do.body14_crit_edge ]
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port, align 4
  %add16 = add i32 %12, 68
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %13 = inttoptr i32 %add18 to ptr
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %13) #10, !srcloc !232
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !334
  %and22 = and i32 %15, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %cmp23 = icmp eq i32 %and22, 0
  br i1 %cmp23, label %do.body14.if.end117_crit_edge, label %do.cond26

do.body14.if.end117_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end117

do.cond26:                                        ; preds = %do.body14
  %dec = add i16 %count.0, -1
  %tobool.not = icmp eq i16 %dec, 0
  br i1 %tobool.not, label %do.cond26.land.lhs.true_crit_edge, label %do.cond26.do.body14_crit_edge

do.cond26.do.body14_crit_edge:                    ; preds = %do.cond26
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body14

do.cond26.land.lhs.true_crit_edge:                ; preds = %do.cond26
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.then31:                                        ; preds = %entry
  %16 = and i16 %reg, 255
  %17 = or i16 %16, 2048
  %or34 = zext i16 %17 to i32
  %num = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 11
  %18 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %num, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp36 = icmp eq i16 %19, 0
  %cond = select i1 %cmp36, i32 72, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !335
  tail call void @arm_heavy_mb() #10
  %20 = tail call i32 @llvm.bswap.i32(i32 %or34)
  %port41 = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %port41 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port41, align 4
  %add42 = add i32 %22, %cond
  %and43 = and i32 %add42, 1048575
  %add44 = or i32 %and43, -18874368
  %23 = inttoptr i32 %add44 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %23, i32 %20) #10, !srcloc !213
  br label %do.body46

do.body46:                                        ; preds = %do.cond60.do.body46_crit_edge, %if.then31
  %count.1 = phi i16 [ -1, %if.then31 ], [ %dec61, %do.cond60.do.body46_crit_edge ]
  %24 = ptrtoint ptr %port41 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port41, align 4
  %add49 = add i32 %25, %cond
  %and50 = and i32 %add49, 1048575
  %add51 = or i32 %and50, -18874368
  %26 = inttoptr i32 %add51 to ptr
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %26) #10, !srcloc !232
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !336
  %and55 = and i32 %28, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %cmp56 = icmp eq i32 %and55, 0
  br i1 %cmp56, label %do.body46.if.end117_crit_edge, label %do.cond60

do.body46.if.end117_crit_edge:                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end117

do.cond60:                                        ; preds = %do.body46
  %dec61 = add i16 %count.1, -1
  %tobool62.not = icmp eq i16 %dec61, 0
  br i1 %tobool62.not, label %do.cond60.land.lhs.true_crit_edge, label %do.cond60.do.body46_crit_edge

do.cond60.do.body46_crit_edge:                    ; preds = %do.cond60
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body46

do.cond60.land.lhs.true_crit_edge:                ; preds = %do.cond60
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.then68:                                        ; preds = %entry
  %29 = and i16 %reg, 255
  %30 = or i16 %29, -16384
  %or71 = zext i16 %30 to i32
  %num72 = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 11
  %31 = ptrtoint ptr %num72 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %num72, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %32)
  %cmp74 = icmp eq i16 %32, 1
  %or77 = or i32 %or71, 128
  %spec.select = select i1 %cmp74, i32 %or77, i32 %or71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !337
  tail call void @arm_heavy_mb() #10
  %33 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %port82 = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %port82 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port82, align 4
  %add83 = add i32 %35, 68
  %and84 = and i32 %add83, 1048575
  %add85 = or i32 %and84, -18874368
  %36 = inttoptr i32 %add85 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %36, i32 %33) #10, !srcloc !213
  br label %do.body87

do.body87:                                        ; preds = %do.cond101.do.body87_crit_edge, %if.then68
  %count.2 = phi i16 [ -1, %if.then68 ], [ %dec102, %do.cond101.do.body87_crit_edge ]
  %37 = ptrtoint ptr %port82 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %port82, align 4
  %add90 = add i32 %38, 68
  %and91 = and i32 %add90, 1048575
  %add92 = or i32 %and91, -18874368
  %39 = inttoptr i32 %add92 to ptr
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %39) #10, !srcloc !232
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !338
  %and96 = and i32 %41, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %cmp97 = icmp eq i32 %and96, 0
  br i1 %cmp97, label %do.body87.if.end117_crit_edge, label %do.cond101

do.body87.if.end117_crit_edge:                    ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end117

do.cond101:                                       ; preds = %do.body87
  %dec102 = add i16 %count.2, -1
  %tobool103.not = icmp eq i16 %dec102, 0
  br i1 %tobool103.not, label %do.cond101.land.lhs.true_crit_edge, label %do.cond101.do.body87_crit_edge

do.cond101.do.body87_crit_edge:                   ; preds = %do.cond101
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body87

do.cond101.land.lhs.true_crit_edge:               ; preds = %do.cond101
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.cond101.land.lhs.true_crit_edge, %do.cond60.land.lhs.true_crit_edge, %do.cond26.land.lhs.true_crit_edge
  %data.1 = phi i32 [ %15, %do.cond26.land.lhs.true_crit_edge ], [ %28, %do.cond60.land.lhs.true_crit_edge ], [ %41, %do.cond101.land.lhs.true_crit_edge ]
  %ac97_detect = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 17
  %42 = ptrtoint ptr %ac97_detect to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load = load i8, ptr %ac97_detect, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool111.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool111.not, label %do.end115, label %land.lhs.true.if.end117_crit_edge

land.lhs.true.if.end117_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end117

do.end115:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %card = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 23
  %43 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %44, i32 0, i32 27
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 8
  %conv116 = zext i16 %reg to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.39, i32 noundef %conv116, i32 noundef %data.1) #14
  br label %if.end117

if.end117:                                        ; preds = %do.end115, %land.lhs.true.if.end117_crit_edge, %do.body87.if.end117_crit_edge, %do.body46.if.end117_crit_edge, %do.body14.if.end117_crit_edge, %entry.if.end117_crit_edge
  %data.2 = phi i32 [ %data.1, %land.lhs.true.if.end117_crit_edge ], [ 0, %do.end115 ], [ 0, %entry.if.end117_crit_edge ], [ %15, %do.body14.if.end117_crit_edge ], [ %28, %do.body46.if.end117_crit_edge ], [ %41, %do.body87.if.end117_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call2) #10
  %shr = lshr i32 %data.2, 16
  %conv119 = trunc i32 %shr to i16
  ret i16 %conv119
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_bus(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_mixer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_trident_vol_control_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_trident_vol_control_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %musicvol_wavevol = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %musicvol_wavevol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %musicvol_wavevol, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %3, %5
  %and = and i32 %shr, 255
  %sub = xor i32 %and, 255
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub, ptr %value, align 8
  %7 = load i32, ptr %private_value, align 4
  %add = add i32 %7, 8
  %shr2 = lshr i32 %3, %add
  %and3 = and i32 %shr2, 255
  %sub4 = xor i32 %and3, 255
  %arrayidx6 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub4, ptr %arrayidx6, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_vol_control_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 37
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #10
  %musicvol_wavevol = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %musicvol_wavevol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %musicvol_wavevol, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %shl = shl i32 65535, %5
  %neg = xor i32 %shl, -1
  %and = and i32 %3, %neg
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  %and1 = and i32 %7, 255
  %arrayidx3 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3, align 4
  %and4 = shl i32 %9, 8
  %sub5 = and i32 %and4, 65280
  %10 = or i32 %sub5, %and1
  %or = xor i32 %10, 65535
  %shl8 = shl i32 %or, %5
  %or9 = or i32 %shl8, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %or9, i32 %3)
  %cmp = icmp ne i32 %or9, %3
  %conv = zext i1 %cmp to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !339
  tail call void @arm_heavy_mb() #10
  %11 = ptrtoint ptr %musicvol_wavevol to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or9, ptr %musicvol_wavevol, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %or9)
  %port = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port, align 4
  %add = add i32 %14, 168
  %and12 = and i32 %add, 1048575
  %add13 = or i32 %and12, -18874368
  %15 = inttoptr i32 %add13 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 %12) #10, !srcloc !213
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #10
  ret i32 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_trident_pcm_vol_control_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %3 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %5 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 255, ptr %max, align 4
  %device = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 272199704, i32 %7)
  %cmp = icmp eq i32 %7, 272199704
  %spec.store.select = select i1 %cmp, i32 1023, i32 255
  %8 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.store.select, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_pcm_vol_control_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %ucontrol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ucontrol, align 4
  %id1.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1
  %4 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id1.i, align 4
  %sub.i = sub i32 %3, %5
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #10, !srcloc !340
  %and.i = and i32 %8, %sub.i
  %device = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 272199704, i32 %10)
  %cmp = icmp eq i32 %10, 272199704
  %vol = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 %and.i, i32 1
  %11 = ptrtoint ptr %vol to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vol, align 4
  %13 = lshr i16 %12, 2
  %.sink13 = select i1 %cmp, i16 %12, i16 %13
  %.sink = select i1 %cmp, i32 1023, i32 255
  %14 = zext i16 %.sink13 to i32
  %sub4 = sub nsw i32 %.sink, %14
  %15 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub4, ptr %15, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_pcm_vol_control_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %ucontrol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ucontrol, align 4
  %id1.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1
  %4 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id1.i, align 4
  %sub.i = sub i32 %3, %5
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #10, !srcloc !340
  %and.i = and i32 %8, %sub.i
  %arrayidx = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 %and.i
  %device = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 272199704, i32 %10)
  %cmp = icmp eq i32 %10, 272199704
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 8
  %and = and i32 %12, 1023
  %sub = xor i32 %and, 1023
  %and4 = shl i32 %12, 2
  %sub5 = and i32 %and4, 1020
  %shl = xor i32 %sub5, 1020
  %val.0 = select i1 %cmp, i32 %sub, i32 %shl
  %reg_lock = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 37
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #10
  %vol = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 %and.i, i32 1
  %13 = ptrtoint ptr %vol to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vol, align 4
  %conv8 = trunc i32 %val.0 to i16
  store i16 %conv8, ptr %vol, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %cmp10.not = icmp eq ptr %16, null
  br i1 %cmp10.not, label %entry.if.end14_crit_edge, label %if.then12

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then12:                                        ; preds = %entry
  %Vol1.i = getelementptr inbounds %struct.snd_trident_voice, ptr %16, i32 0, i32 14
  %17 = ptrtoint ptr %Vol1.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv8, ptr %Vol1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !341
  tail call void @arm_heavy_mb() #10
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %16, align 4
  %conv2.i = trunc i32 %19 to i8
  %port.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port.i, align 4
  %add.i = add i32 %21, 160
  %and.i28 = and i32 %add.i, 1048575
  %add3.i = or i32 %and.i28, -18874368
  %22 = inttoptr i32 %add3.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %conv2.i) #10, !srcloc !216
  %23 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %device, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %24, label %if.then12.if.end14_crit_edge [
    i32 270737408, label %if.then12.do.body4.i_crit_edge
    i32 270737409, label %if.then12.do.body4.i_crit_edge29
    i32 272199704, label %do.body15.i
  ]

if.then12.do.body4.i_crit_edge29:                 ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i

if.then12.do.body4.i_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i

if.then12.if.end14_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

do.body4.i:                                       ; preds = %if.then12.do.body4.i_crit_edge, %if.then12.do.body4.i_crit_edge29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !342
  tail call void @arm_heavy_mb() #10
  %26 = ptrtoint ptr %Vol1.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %Vol1.i, align 4
  %28 = lshr i16 %27, 2
  %conv8.i = trunc i16 %28 to i8
  %29 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port.i, align 4
  %add10.i = add i32 %30, 242
  %and11.i = and i32 %add10.i, 1048575
  %add12.i = or i32 %and11.i, -18874368
  %31 = inttoptr i32 %add12.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %conv8.i) #10, !srcloc !216
  br label %if.end14

do.body15.i:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !343
  tail call void @arm_heavy_mb() #10
  %CTRL.i = getelementptr inbounds %struct.snd_trident_voice, ptr %16, i32 0, i32 20
  %32 = ptrtoint ptr %CTRL.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %CTRL.i, align 1
  %conv17.i = zext i8 %33 to i16
  %shl.i = shl i16 %conv17.i, 12
  %34 = ptrtoint ptr %Vol1.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %Vol1.i, align 4
  %or.i = or i16 %shl.i, %35
  %36 = tail call i16 @llvm.bswap.i16(i16 %or.i) #10
  %37 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %port.i, align 4
  %add22.i = add i32 %38, 240
  %and23.i = and i32 %add22.i, 1048575
  %add24.i = or i32 %and23.i, -18874368
  %39 = inttoptr i32 %add24.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %39, i16 %36) #10, !srcloc !252
  br label %if.end14

if.end14:                                         ; preds = %do.body15.i, %do.body4.i, %if.then12.if.end14_crit_edge, %entry.if.end14_crit_edge
  %conv = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %val.0, i32 %conv)
  %cmp6 = icmp ne i32 %val.0, %conv
  %conv7 = zext i1 %cmp6 to i32
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #10
  ret i32 %conv7
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_trident_pcm_pan_control_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 127, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_pcm_pan_control_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %ucontrol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ucontrol, align 4
  %id1.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1
  %4 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id1.i, align 4
  %sub.i = sub i32 %3, %5
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #10, !srcloc !340
  %and.i = and i32 %8, %sub.i
  %pan = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 %and.i, i32 2
  %9 = ptrtoint ptr %pan to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pan, align 2
  %conv = zext i8 %10 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %and = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or = or i32 %conv, 64
  %and6 = and i32 %conv, 63
  %sub = xor i32 %and6, 63
  %storemerge = select i1 %tobool.not, i32 %or, i32 %sub
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %storemerge, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_pcm_pan_control_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %ucontrol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ucontrol, align 4
  %id1.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1
  %4 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id1.i, align 4
  %sub.i = sub i32 %3, %5
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #10, !srcloc !340
  %and.i = and i32 %8, %sub.i
  %arrayidx = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 %and.i
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 8
  %and = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %11 = trunc i32 %10 to i8
  %conv = and i8 %11, 63
  %conv8 = xor i8 %conv, 127
  %val.0 = select i1 %tobool.not, i8 %conv8, i8 %conv
  %reg_lock = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 37
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #10
  %pan = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 %and.i, i32 2
  %12 = ptrtoint ptr %pan to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pan, align 2
  store i8 %val.0, ptr %pan, align 2
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %cmp13.not = icmp eq ptr %15, null
  br i1 %cmp13.not, label %entry.if.end18_crit_edge, label %if.then15

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %Pan1.i = getelementptr inbounds %struct.snd_trident_voice, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %Pan1.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %val.0, ptr %Pan1.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !344
  tail call void @arm_heavy_mb() #10
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %15, align 4
  %conv2.i = trunc i32 %18 to i8
  %port.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port.i, align 4
  %add.i = add i32 %20, 160
  %and.i32 = and i32 %add.i, 1048575
  %add3.i = or i32 %and.i32, -18874368
  %21 = inttoptr i32 %add3.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %conv2.i) #10, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !345
  tail call void @arm_heavy_mb() #10
  %GVSel.i = getelementptr inbounds %struct.snd_trident_voice, ptr %15, i32 0, i32 16
  %22 = ptrtoint ptr %GVSel.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %GVSel.i, align 1
  %24 = shl i8 %23, 7
  %25 = ptrtoint ptr %Pan1.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %Pan1.i, align 2
  %27 = and i8 %26, 127
  %or21.i = or i8 %27, %24
  %28 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port.i, align 4
  %add13.i = add i32 %29, 243
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %30 = inttoptr i32 %add15.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 %or21.i) #10, !srcloc !216
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %entry.if.end18_crit_edge
  call void @__sanitizer_cov_trace_cmp1(i8 %val.0, i8 %13)
  %cmp = icmp ne i8 %val.0, %13
  %conv11 = zext i1 %cmp to i32
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #10
  ret i32 %conv11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_trident_pcm_rvol_control_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 127, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_pcm_rvol_control_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %ucontrol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ucontrol, align 4
  %id1.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1
  %4 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id1.i, align 4
  %sub.i = sub i32 %3, %5
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #10, !srcloc !340
  %and.i = and i32 %8, %sub.i
  %rvol = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 %and.i, i32 3
  %9 = ptrtoint ptr %rvol to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rvol, align 1
  %conv = zext i8 %10 to i32
  %sub = sub nsw i32 127, %conv
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_pcm_rvol_control_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %ucontrol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ucontrol, align 4
  %id1.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1
  %4 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id1.i, align 4
  %sub.i = sub i32 %3, %5
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #10, !srcloc !340
  %and.i = and i32 %8, %sub.i
  %arrayidx = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 %and.i
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 8
  %11 = trunc i32 %10 to i16
  %12 = and i16 %11, 127
  %conv = xor i16 %12, 127
  %reg_lock = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 37
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #10
  %rvol = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 %and.i, i32 3
  %13 = ptrtoint ptr %rvol to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rvol, align 1
  %conv5 = trunc i16 %conv to i8
  store i8 %conv5, ptr %rvol, align 1
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %cmp7.not = icmp eq ptr %16, null
  br i1 %cmp7.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %RVol1.i = getelementptr inbounds %struct.snd_trident_voice, ptr %16, i32 0, i32 17
  %17 = ptrtoint ptr %RVol1.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv5, ptr %RVol1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !346
  tail call void @arm_heavy_mb() #10
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %16, align 4
  %conv2.i = trunc i32 %19 to i8
  %port.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port.i, align 4
  %add.i = add i32 %21, 160
  %and.i22 = and i32 %add.i, 1048575
  %add3.i = or i32 %and.i22, -18874368
  %22 = inttoptr i32 %add3.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %conv2.i) #10, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !347
  tail call void @arm_heavy_mb() #10
  %FMC.i = getelementptr inbounds %struct.snd_trident_voice, ptr %16, i32 0, i32 19
  %23 = ptrtoint ptr %FMC.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %FMC.i, align 2
  %and7.i = zext i8 %24 to i16
  %shl.i = shl i16 %and7.i, 14
  %25 = ptrtoint ptr %RVol1.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %RVol1.i, align 4
  %27 = and i8 %26, 127
  %and10.i = zext i8 %27 to i16
  %shl11.i = shl nuw nsw i16 %and10.i, 7
  %or.i = or i16 %shl11.i, %shl.i
  %CVol.i = getelementptr inbounds %struct.snd_trident_voice, ptr %16, i32 0, i32 18
  %28 = ptrtoint ptr %CVol.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %CVol.i, align 1
  %30 = and i8 %29, 127
  %and13.i = zext i8 %30 to i16
  %or14.i = or i16 %or.i, %and13.i
  %31 = tail call i16 @llvm.bswap.i16(i16 %or14.i) #10
  %32 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port.i, align 4
  %add18.i = add i32 %33, 236
  %and19.i = and i32 %add18.i, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %34 = inttoptr i32 %add20.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %34, i16 %31) #10, !srcloc !252
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %35 = zext i8 %14 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %conv, i16 %35)
  %cmp = icmp ne i16 %conv, %35
  %conv4 = zext i1 %cmp to i32
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #10
  ret i32 %conv4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_trident_pcm_cvol_control_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 127, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_pcm_cvol_control_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %ucontrol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ucontrol, align 4
  %id1.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1
  %4 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id1.i, align 4
  %sub.i = sub i32 %3, %5
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #10, !srcloc !340
  %and.i = and i32 %8, %sub.i
  %cvol = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 %and.i, i32 4
  %9 = ptrtoint ptr %cvol to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cvol, align 4
  %conv = zext i8 %10 to i32
  %sub = sub nsw i32 127, %conv
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_pcm_cvol_control_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %ucontrol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ucontrol, align 4
  %id1.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1
  %4 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id1.i, align 4
  %sub.i = sub i32 %3, %5
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #10, !srcloc !340
  %and.i = and i32 %8, %sub.i
  %arrayidx = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 %and.i
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 8
  %11 = trunc i32 %10 to i16
  %12 = and i16 %11, 127
  %conv = xor i16 %12, 127
  %reg_lock = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 37
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #10
  %cvol = getelementptr %struct.snd_trident, ptr %1, i32 0, i32 32, i32 %and.i, i32 4
  %13 = ptrtoint ptr %cvol to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cvol, align 4
  %conv5 = trunc i16 %conv to i8
  store i8 %conv5, ptr %cvol, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %cmp7.not = icmp eq ptr %16, null
  br i1 %cmp7.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %CVol1.i = getelementptr inbounds %struct.snd_trident_voice, ptr %16, i32 0, i32 18
  %17 = ptrtoint ptr %CVol1.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv5, ptr %CVol1.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !348
  tail call void @arm_heavy_mb() #10
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %16, align 4
  %conv2.i = trunc i32 %19 to i8
  %port.i = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port.i, align 4
  %add.i = add i32 %21, 160
  %and.i22 = and i32 %add.i, 1048575
  %add3.i = or i32 %and.i22, -18874368
  %22 = inttoptr i32 %add3.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %conv2.i) #10, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !349
  tail call void @arm_heavy_mb() #10
  %FMC.i = getelementptr inbounds %struct.snd_trident_voice, ptr %16, i32 0, i32 19
  %23 = ptrtoint ptr %FMC.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %FMC.i, align 2
  %and7.i = zext i8 %24 to i16
  %shl.i = shl i16 %and7.i, 14
  %RVol.i = getelementptr inbounds %struct.snd_trident_voice, ptr %16, i32 0, i32 17
  %25 = ptrtoint ptr %RVol.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %RVol.i, align 4
  %27 = and i8 %26, 127
  %and9.i = zext i8 %27 to i16
  %shl10.i = shl nuw nsw i16 %and9.i, 7
  %or.i = or i16 %shl10.i, %shl.i
  %28 = ptrtoint ptr %CVol1.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %CVol1.i, align 1
  %30 = and i8 %29, 127
  %and13.i = zext i8 %30 to i16
  %or14.i = or i16 %or.i, %and13.i
  %31 = tail call i16 @llvm.bswap.i16(i16 %or14.i) #10
  %32 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port.i, align 4
  %add18.i = add i32 %33, 236
  %and19.i = and i32 %add18.i, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %34 = inttoptr i32 %add20.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %34, i16 %31) #10, !srcloc !252
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %35 = zext i8 %14 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %conv, i16 %35)
  %cmp = icmp ne i16 %conv, %35
  %conv4 = zext i1 %cmp to i32
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #10
  ret i32 %conv4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_ac97_control_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 37
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #10
  %port = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %add = add i32 %3, 64
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %4) #10, !srcloc !232
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !350
  %ac97_ctrl = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %ac97_ctrl to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %ac97_ctrl, align 4
  %conv3 = and i32 %6, 255
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %8 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %private_value, align 4
  %10 = lshr i32 %conv3, %9
  %11 = and i32 %10, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %12 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %value, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_ac97_control_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 37
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #10
  %port = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %add = add i32 %3, 64
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %4) #10, !srcloc !232
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !351
  %ac97_ctrl = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %ac97_ctrl to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %ac97_ctrl, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %8 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %private_value, align 4
  %shl = shl nuw i32 1, %9
  %neg = xor i32 %shl, -1
  %and4 = and i32 %6, %neg
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  %or = or i32 %shl, %6
  %val.0 = select i1 %tobool.not, i32 %and4, i32 %or
  %conv10 = and i32 %val.0, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10, i32 %6)
  %cmp = icmp ne i32 %conv10, %6
  %conv12 = zext i1 %cmp to i32
  %12 = ptrtoint ptr %ac97_ctrl to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv10, ptr %ac97_ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !352
  tail call void @arm_heavy_mb() #10
  %13 = ptrtoint ptr %ac97_ctrl to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv10, ptr %ac97_ctrl, align 4
  %14 = shl nuw i32 %conv10, 24
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %add18 = add i32 %16, 64
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %17 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %17, i32 %14) #10, !srcloc !213
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #10
  ret i32 %conv12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_spdif_control_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 37
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #10
  %spdif_ctrl = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %spdif_ctrl to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %spdif_ctrl, align 4
  %conv = zext i8 %3 to i32
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp = icmp eq i32 %5, %conv
  %conv1 = zext i1 %cmp to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv1, ptr %value, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_spdif_control_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %conv = trunc i32 %5 to i8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i8 [ %conv, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %reg_lock = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 37
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #10
  %spdif_ctrl = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %spdif_ctrl to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %spdif_ctrl, align 4
  store i8 %cond, ptr %spdif_ctrl, align 4
  %device = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 272199704, i32 %9)
  %cmp7.not = icmp eq i32 %9, 272199704
  br i1 %cmp7.not, label %if.else, label %if.then

if.then:                                          ; preds = %cond.end
  %port = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port, align 4
  %add = add i32 %11, 39
  %and = and i32 %add, 1048575
  %add9 = or i32 %and, -18874368
  %12 = inttoptr i32 %add9 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #10, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !353
  %14 = and i8 %13, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp13 = icmp eq i8 %14, 0
  br i1 %cmp13, label %do.body, label %if.then.if.end63_crit_edge

if.then.if.end63_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !354
  tail call void @arm_heavy_mb() #10
  %spdif_bits = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %spdif_bits to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %spdif_bits, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add17 = add i32 %19, 100
  %and18 = and i32 %add17, 1048575
  %add19 = or i32 %and18, -18874368
  %20 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %20, i32 %17) #10, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !355
  tail call void @arm_heavy_mb() #10
  %21 = ptrtoint ptr %spdif_ctrl to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %spdif_ctrl, align 4
  %23 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port, align 4
  %add26 = add i32 %24, 39
  %and27 = and i32 %add26, 1048575
  %add28 = or i32 %and27, -18874368
  %25 = inttoptr i32 %add28 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %22) #10, !srcloc !216
  br label %if.end63

if.else:                                          ; preds = %cond.end
  %spdif = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 26
  %26 = ptrtoint ptr %spdif to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %spdif, align 4
  %cmp30 = icmp eq ptr %27, null
  br i1 %cmp30, label %if.then32, label %if.else.if.end63_crit_edge

if.else.if.end63_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.then32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !356
  tail call void @arm_heavy_mb() #10
  %spdif_bits36 = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 10
  %28 = ptrtoint ptr %spdif_bits36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %spdif_bits36, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %port37 = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %port37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %port37, align 4
  %add38 = add i32 %32, 112
  %and39 = and i32 %add38, 1048575
  %add40 = or i32 %and39, -18874368
  %33 = inttoptr i32 %add40 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %33, i32 %30) #10, !srcloc !213
  %34 = ptrtoint ptr %port37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port37, align 4
  %add44 = add i32 %35, 72
  %and45 = and i32 %add44, 1048575
  %add46 = or i32 %and45, -18874368
  %36 = inttoptr i32 %add46 to ptr
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %36) #10, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !357
  %38 = and i32 %37, -536870913
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cond)
  %tobool51.not = icmp eq i8 %cond, 0
  %or = or i32 %39, 32
  %spec.select = select i1 %tobool51.not, i32 %39, i32 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !358
  tail call void @arm_heavy_mb() #10
  %40 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %41 = ptrtoint ptr %port37 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port37, align 4
  %add58 = add i32 %42, 72
  %and59 = and i32 %add58, 1048575
  %add60 = or i32 %and59, -18874368
  %43 = inttoptr i32 %add60 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %43, i32 %40) #10, !srcloc !213
  br label %if.end63

if.end63:                                         ; preds = %if.then32, %if.else.if.end63_crit_edge, %do.body, %if.then.if.end63_crit_edge
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %cond)
  %cmp = icmp ne i8 %7, %cond
  %conv5 = zext i1 %cmp to i32
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #10
  ret i32 %conv5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_trident_spdif_default_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
define internal i32 @snd_trident_spdif_default_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 37
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #10
  %spdif_bits = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %spdif_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spdif_bits, align 4
  %conv = trunc i32 %3 to i8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %value, align 8
  %5 = load i32, ptr %spdif_bits, align 4
  %shr2 = lshr i32 %5, 8
  %conv4 = trunc i32 %shr2 to i8
  %arrayidx7 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv4, ptr %arrayidx7, align 1
  %7 = load i32, ptr %spdif_bits, align 4
  %shr9 = lshr i32 %7, 16
  %conv11 = trunc i32 %shr9 to i8
  %arrayidx14 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv11, ptr %arrayidx14, align 2
  %9 = load i32, ptr %spdif_bits, align 4
  %shr16 = lshr i32 %9, 24
  %conv18 = trunc i32 %shr16 to i8
  %arrayidx21 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv18, ptr %arrayidx21, align 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_spdif_default_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %value, align 8
  %conv = zext i8 %3 to i32
  %arrayidx3 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %5 to i32
  %shl5 = shl nuw nsw i32 %conv4, 8
  %or = or i32 %shl5, %conv
  %arrayidx8 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8, align 2
  %conv9 = zext i8 %7 to i32
  %shl10 = shl nuw nsw i32 %conv9, 16
  %or11 = or i32 %or, %shl10
  %arrayidx14 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %9 to i32
  %shl16 = shl nuw i32 %conv15, 24
  %or17 = or i32 %or11, %shl16
  %reg_lock = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 37
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #10
  %spdif_bits = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %spdif_bits to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %spdif_bits, align 4
  store i32 %or17, ptr %spdif_bits, align 4
  %device = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 272199704, i32 %13)
  %cmp20.not = icmp eq i32 %13, 272199704
  br i1 %cmp20.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %port = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port, align 4
  %add = add i32 %15, 39
  %and = and i32 %add, 1048575
  %add22 = or i32 %and, -18874368
  %16 = inttoptr i32 %add22 to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #10, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !359
  %18 = and i8 %17, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp26 = icmp eq i8 %18, 0
  br i1 %cmp26, label %do.body, label %if.then.if.end48_crit_edge

if.then.if.end48_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !360
  tail call void @arm_heavy_mb() #10
  %19 = ptrtoint ptr %spdif_bits to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %spdif_bits, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port, align 4
  %add31 = add i32 %23, 100
  %and32 = and i32 %add31, 1048575
  %add33 = or i32 %and32, -18874368
  %24 = inttoptr i32 %add33 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %24, i32 %21) #10, !srcloc !213
  br label %if.end48

if.else:                                          ; preds = %entry
  %spdif = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 26
  %25 = ptrtoint ptr %spdif to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %spdif, align 4
  %cmp35 = icmp eq ptr %26, null
  br i1 %cmp35, label %do.body38, label %if.else.if.end48_crit_edge

if.else.if.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

do.body38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !361
  tail call void @arm_heavy_mb() #10
  %27 = ptrtoint ptr %spdif_bits to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %spdif_bits, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %port42 = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %port42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port42, align 4
  %add43 = add i32 %31, 112
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %32 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %32, i32 %29) #10, !srcloc !213
  br label %if.end48

if.end48:                                         ; preds = %do.body38, %if.else.if.end48_crit_edge, %do.body, %if.then.if.end48_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %or17)
  %cmp = icmp ne i32 %11, %or17
  %conv18 = zext i1 %cmp to i32
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #10
  ret i32 %conv18
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_trident_spdif_mask_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_trident_spdif_mask_get(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %ucontrol) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_trident_spdif_stream_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
define internal i32 @snd_trident_spdif_stream_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 37
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #10
  %spdif_pcm_bits = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %spdif_pcm_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spdif_pcm_bits, align 4
  %conv = trunc i32 %3 to i8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %value, align 8
  %5 = load i32, ptr %spdif_pcm_bits, align 4
  %shr2 = lshr i32 %5, 8
  %conv4 = trunc i32 %shr2 to i8
  %arrayidx7 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv4, ptr %arrayidx7, align 1
  %7 = load i32, ptr %spdif_pcm_bits, align 4
  %shr9 = lshr i32 %7, 16
  %conv11 = trunc i32 %shr9 to i8
  %arrayidx14 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv11, ptr %arrayidx14, align 2
  %9 = load i32, ptr %spdif_pcm_bits, align 4
  %shr16 = lshr i32 %9, 24
  %conv18 = trunc i32 %shr16 to i8
  %arrayidx21 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv18, ptr %arrayidx21, align 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_spdif_stream_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %value, align 8
  %conv = zext i8 %3 to i32
  %arrayidx3 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %5 to i32
  %shl5 = shl nuw nsw i32 %conv4, 8
  %or = or i32 %shl5, %conv
  %arrayidx8 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8, align 2
  %conv9 = zext i8 %7 to i32
  %shl10 = shl nuw nsw i32 %conv9, 16
  %or11 = or i32 %or, %shl10
  %arrayidx14 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %9 to i32
  %shl16 = shl nuw i32 %conv15, 24
  %or17 = or i32 %or11, %shl16
  %reg_lock = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 37
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #10
  %spdif_pcm_bits = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %spdif_pcm_bits to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %spdif_pcm_bits, align 4
  store i32 %or17, ptr %spdif_pcm_bits, align 4
  %spdif = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 26
  %12 = ptrtoint ptr %spdif to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spdif, align 4
  %cmp20.not = icmp eq ptr %13, null
  br i1 %cmp20.not, label %entry.if.end35_crit_edge, label %if.then

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then:                                          ; preds = %entry
  %device = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 272199704, i32 %15)
  %cmp22.not = icmp eq i32 %15, 272199704
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %cmp22.not, label %do.body27, label %do.body

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %spdif_pcm_bits to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %spdif_pcm_bits, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %port = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port, align 4
  %add = add i32 %20, 100
  %and = and i32 %add, 1048575
  %add26 = or i32 %and, -18874368
  %21 = inttoptr i32 %add26 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %21, i32 %18) #10, !srcloc !213
  br label %if.end35

do.body27:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %spdif_bits = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 10
  %22 = ptrtoint ptr %spdif_bits to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %spdif_bits, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %port30 = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %port30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port30, align 4
  %add31 = add i32 %26, 112
  %and32 = and i32 %add31, 1048575
  %add33 = or i32 %and32, -18874368
  %27 = inttoptr i32 %add33 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %27, i32 %24) #10, !srcloc !213
  br label %if.end35

if.end35:                                         ; preds = %do.body27, %do.body, %entry.if.end35_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %or17)
  %cmp = icmp ne i32 %11, %or17
  %conv18 = zext i1 %cmp to i32
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #10
  ret i32 %conv18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_trident_proc_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %device = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %3, label %sw.default [
    i32 272199704, label %entry.sw.epilog_crit_edge
    i32 270737408, label %sw.bb2
    i32 270737409, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb2, %entry.sw.epilog_crit_edge
  %s.0 = phi ptr [ @.str.57, %sw.default ], [ @.str.56, %sw.bb3 ], [ @.str.55, %sw.bb2 ], [ @.str.54, %entry.sw.epilog_crit_edge ]
  %5 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %6, ptr noundef nonnull @.str.58, ptr noundef nonnull %s.0) #10
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer, align 4
  %spurious_irq_count = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %spurious_irq_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %spurious_irq_count, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %8, ptr noundef nonnull @.str.59, i32 noundef %10) #10
  %11 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer, align 4
  %spurious_irq_max_delta = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %spurious_irq_max_delta to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %spurious_irq_max_delta, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %12, ptr noundef nonnull @.str.60, i32 noundef %14) #10
  %15 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %device, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %16, label %sw.epilog.if.end_crit_edge [
    i32 270737409, label %sw.epilog.if.then_crit_edge
    i32 272199704, label %sw.epilog.if.then_crit_edge51
  ]

sw.epilog.if.then_crit_edge51:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.epilog.if.then_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %sw.epilog.if.then_crit_edge, %sw.epilog.if.then_crit_edge51
  %18 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer, align 4
  %spdif_ctrl = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %spdif_ctrl to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %spdif_ctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %21)
  %cmp11 = icmp eq i8 %21, 40
  %cond = select i1 %cmp11, ptr @.str.62, ptr @.str.63
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %19, ptr noundef nonnull @.str.61, ptr noundef nonnull %cond) #10
  %22 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load i32, ptr %device, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %23 = phi i32 [ %16, %sw.epilog.if.end_crit_edge ], [ %.pr, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 270737409, i32 %23)
  %cmp14 = icmp eq i32 %23, 270737409
  br i1 %cmp14, label %if.then16, label %if.end.if.end31_crit_edge

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then16:                                        ; preds = %if.end
  %24 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer, align 4
  %ac97_ctrl = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 13
  %26 = ptrtoint ptr %ac97_ctrl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ac97_ctrl, align 4
  %and = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond18 = select i1 %tobool.not, ptr @.str.63, ptr @.str.62
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %25, ptr noundef nonnull @.str.64, ptr noundef nonnull %cond18) #10
  %tlb = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 7
  %28 = ptrtoint ptr %tlb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tlb, align 4
  %tobool19.not = icmp eq ptr %29, null
  br i1 %tobool19.not, label %if.then16.if.end31_crit_edge, label %if.then20

if.then16.if.end31_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %31, ptr noundef nonnull @.str.65) #10
  %32 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buffer, align 4
  %memhdr = getelementptr inbounds %struct.snd_trident, ptr %1, i32 0, i32 7, i32 3
  %34 = ptrtoint ptr %memhdr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %memhdr, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %33, ptr noundef nonnull @.str.66, i32 noundef %37) #10
  %38 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %buffer, align 4
  %40 = ptrtoint ptr %memhdr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %memhdr, align 4
  %used = getelementptr inbounds %struct.snd_util_memhdr, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %used, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %39, ptr noundef nonnull @.str.67, i32 noundef %43) #10
  %44 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buffer, align 4
  %46 = ptrtoint ptr %memhdr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %memhdr, align 4
  %call = tail call i32 @snd_util_mem_avail(ptr noundef %47) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %45, ptr noundef nonnull @.str.68, i32 noundef %call) #10
  br label %if.end31

if.end31:                                         ; preds = %if.then20, %if.then16.if.end31_crit_edge, %if.end.if.end31_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_util_mem_avail(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_util_memhdr_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_unregister_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mpu401_uart_interrupt(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !34, !36, !37, !38, !39, !41, !42, !44, !45, !47, !48, !50, !52, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !115, !116, !117, !118, !120, !121, !122, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !192, !193, !195, !197, !199, !201}
!llvm.module.flags = !{!203, !204, !205, !206, !207, !208, !209, !210}
!llvm.ident = !{!211}

!0 = !{ptr @__ksymtab_snd_trident_start_voice, !1, !"__ksymtab_snd_trident_start_voice", i1 false, i1 false}
!1 = !{!"../sound/pci/trident/trident_main.c", i32 295, i32 1}
!2 = !{ptr @__ksymtab_snd_trident_stop_voice, !3, !"__ksymtab_snd_trident_stop_voice", i1 false, i1 false}
!3 = !{!"../sound/pci/trident/trident_main.c", i32 319, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/pci/trident/trident_main.c", i32 474, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__ksymtab_snd_trident_write_voice_regs, !8, !"__ksymtab_snd_trident_write_voice_regs", i1 false, i1 false}
!8 = !{!"../sound/pci/trident/trident_main.c", i32 500, i32 1}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../sound/pci/trident/trident_main.c", i32 2122, i32 35}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/pci/trident/trident_main.c", i32 2140, i32 20}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/pci/trident/trident_main.c", i32 2194, i32 26}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/pci/trident/trident_main.c", i32 2196, i32 26}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/pci/trident/trident_main.c", i32 2198, i32 26}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/pci/trident/trident_main.c", i32 2201, i32 27}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/pci/trident/trident_main.c", i32 2233, i32 35}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/pci/trident/trident_main.c", i32 2244, i32 22}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/pci/trident/trident_main.c", i32 3159, i32 3}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @snd_trident_create_gameport._entry, !26, !"_entry", i1 false, i1 false}
!31 = !{ptr @snd_trident_create_gameport._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/pci/trident/trident_main.c", i32 3165, i32 24}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/pci/trident/trident_main.c", i32 3511, i32 3}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @snd_trident_create._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @snd_trident_create._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @snd_trident_create.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../sound/pci/trident/trident_main.c", i32 3519, i32 2}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @snd_trident_create.__key.18, !43, !"__key", i1 false, i1 false}
!43 = !{!"../sound/pci/trident/trident_main.c", i32 3520, i32 2}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @snd_trident_create.__key.20, !46, !"__key", i1 false, i1 false}
!46 = !{!"../sound/pci/trident/trident_main.c", i32 3521, i32 2}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/pci/trident/trident_main.c", i32 3536, i32 33}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/pci/trident/trident_main.c", i32 3542, i32 22}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/pci/trident/trident_main.c", i32 3543, i32 3}
!54 = !{ptr @snd_trident_create._entry.24, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @snd_trident_create._entry_ptr.26, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @__ksymtab_snd_trident_alloc_voice, !57, !"__ksymtab_snd_trident_alloc_voice", i1 false, i1 false}
!57 = !{!"../sound/pci/trident/trident_main.c", i32 3791, i32 1}
!58 = !{ptr @__ksymtab_snd_trident_free_voice, !59, !"__ksymtab_snd_trident_free_voice", i1 false, i1 false}
!59 = !{!"../sound/pci/trident/trident_main.c", i32 3819, i32 1}
!60 = !{ptr @snd_trident_pm, !61, !"snd_trident_pm", i1 false, i1 false}
!61 = !{!"../sound/pci/trident/trident_main.c", i32 3884, i32 1}
!62 = !{ptr @snd_trident_nx_playback_ops, !63, !"snd_trident_nx_playback_ops", i1 false, i1 false}
!63 = !{!"../sound/pci/trident/trident_main.c", i32 2036, i32 33}
!64 = !{ptr @snd_trident_playback, !65, !"snd_trident_playback", i1 false, i1 false}
!65 = !{!"../sound/pci/trident/trident_main.c", i32 1683, i32 38}
!66 = !{ptr @snd_trident_playback_ops, !67, !"snd_trident_playback_ops", i1 false, i1 false}
!67 = !{!"../sound/pci/trident/trident_main.c", i32 2026, i32 33}
!68 = !{ptr @snd_trident_capture_ops, !69, !"snd_trident_capture_ops", i1 false, i1 false}
!69 = !{!"../sound/pci/trident/trident_main.c", i32 2046, i32 33}
!70 = !{ptr @snd_trident_capture, !71, !"snd_trident_capture", i1 false, i1 false}
!71 = !{!"../sound/pci/trident/trident_main.c", i32 1708, i32 38}
!72 = !{ptr @snd_trident_si7018_capture_ops, !73, !"snd_trident_si7018_capture_ops", i1 false, i1 false}
!73 = !{!"../sound/pci/trident/trident_main.c", i32 2056, i32 33}
!74 = !{ptr @snd_trident_nx_foldback_ops, !75, !"snd_trident_nx_foldback_ops", i1 false, i1 false}
!75 = !{!"../sound/pci/trident/trident_main.c", i32 2076, i32 33}
!76 = !{ptr @snd_trident_foldback, !77, !"snd_trident_foldback", i1 false, i1 false}
!77 = !{!"../sound/pci/trident/trident_main.c", i32 1733, i32 38}
!78 = !{ptr @snd_trident_foldback_ops, !79, !"snd_trident_foldback_ops", i1 false, i1 false}
!79 = !{!"../sound/pci/trident/trident_main.c", i32 2066, i32 33}
!80 = !{ptr @snd_trident_spdif_ops, !81, !"snd_trident_spdif_ops", i1 false, i1 false}
!81 = !{!"../sound/pci/trident/trident_main.c", i32 2086, i32 33}
!82 = !{ptr @snd_trident_spdif, !83, !"snd_trident_spdif", i1 false, i1 false}
!83 = !{!"../sound/pci/trident/trident_main.c", i32 1757, i32 38}
!84 = !{ptr @snd_trident_spdif_7018, !85, !"snd_trident_spdif_7018", i1 false, i1 false}
!85 = !{!"../sound/pci/trident/trident_main.c", i32 1778, i32 38}
!86 = !{ptr @snd_trident_spdif_7018_ops, !87, !"snd_trident_spdif_7018_ops", i1 false, i1 false}
!87 = !{!"../sound/pci/trident/trident_main.c", i32 2096, i32 33}
!88 = !{ptr @.str.27, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/pci/trident/trident_main.c", i32 3325, i32 3}
!90 = !{ptr @.str.28, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @snd_trident_tlb_alloc._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @snd_trident_tlb_alloc._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.30, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/pci/trident/trident_main.c", i32 3336, i32 3}
!95 = !{ptr @snd_trident_tlb_alloc._entry.29, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @snd_trident_tlb_alloc._entry_ptr.31, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.32, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/pci/trident/trident_main.c", i32 3392, i32 2}
!99 = !{ptr @.str.33, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @snd_trident_4d_dx_init._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @snd_trident_4d_dx_init._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.34, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/pci/trident/trident_main.c", i32 3430, i32 2}
!104 = !{ptr @.str.35, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @snd_trident_4d_nx_init._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @snd_trident_4d_nx_init._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.36, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/pci/trident/trident_main.c", i32 3233, i32 2}
!109 = !{ptr @snd_trident_sis_reset._entry, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @snd_trident_sis_reset._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @snd_trident_mixer.ops, !112, !"ops", i1 false, i1 false}
!112 = !{!"../sound/pci/trident/trident_main.c", i32 2918, i32 39}
!113 = !{ptr @.str.37, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/pci/trident/trident_main.c", i32 2955, i32 4}
!115 = !{ptr @.str.38, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @snd_trident_mixer._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @snd_trident_mixer._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.39, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/pci/trident/trident_main.c", i32 144, i32 3}
!120 = !{ptr @.str.40, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @snd_trident_codec_read._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @snd_trident_codec_read._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.41, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/pci/trident/trident_main.c", i32 2590, i32 18}
!125 = !{ptr @snd_trident_vol_wave_control, !126, !"snd_trident_vol_wave_control", i1 false, i1 false}
!126 = !{!"../sound/pci/trident/trident_main.c", i32 2587, i32 38}
!127 = !{ptr @db_scale_gvol, !128, !"db_scale_gvol", i1 false, i1 false}
!128 = !{!"../sound/pci/trident/trident_main.c", i32 2556, i32 14}
!129 = !{ptr @.str.42, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/pci/trident/trident_main.c", i32 2579, i32 18}
!131 = !{ptr @snd_trident_vol_music_control, !132, !"snd_trident_vol_music_control", i1 false, i1 false}
!132 = !{!"../sound/pci/trident/trident_main.c", i32 2576, i32 38}
!133 = !{ptr @.str.43, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/pci/trident/trident_main.c", i32 2657, i32 18}
!135 = !{ptr @snd_trident_pcm_vol_control, !136, !"snd_trident_pcm_vol_control", i1 false, i1 false}
!136 = !{!"../sound/pci/trident/trident_main.c", i32 2654, i32 38}
!137 = !{ptr @.str.44, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/pci/trident/trident_main.c", i32 2721, i32 18}
!139 = !{ptr @snd_trident_pcm_pan_control, !140, !"snd_trident_pcm_pan_control", i1 false, i1 false}
!140 = !{!"../sound/pci/trident/trident_main.c", i32 2718, i32 38}
!141 = !{ptr @.str.45, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/pci/trident/trident_main.c", i32 2778, i32 18}
!143 = !{ptr @snd_trident_pcm_rvol_control, !144, !"snd_trident_pcm_rvol_control", i1 false, i1 false}
!144 = !{!"../sound/pci/trident/trident_main.c", i32 2775, i32 38}
!145 = !{ptr @db_scale_crvol, !146, !"db_scale_crvol", i1 false, i1 false}
!146 = !{!"../sound/pci/trident/trident_main.c", i32 2773, i32 14}
!147 = !{ptr @.str.46, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/pci/trident/trident_main.c", i32 2834, i32 18}
!149 = !{ptr @snd_trident_pcm_cvol_control, !150, !"snd_trident_pcm_cvol_control", i1 false, i1 false}
!150 = !{!"../sound/pci/trident/trident_main.c", i32 2831, i32 38}
!151 = !{ptr @.str.47, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/pci/trident/trident_main.c", i32 2521, i32 18}
!153 = !{ptr @snd_trident_ac97_rear_control, !154, !"snd_trident_ac97_rear_control", i1 false, i1 false}
!154 = !{!"../sound/pci/trident/trident_main.c", i32 2518, i32 38}
!155 = !{ptr @.str.48, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/pci/trident/trident_main.c", i32 2313, i32 18}
!157 = !{ptr @snd_trident_spdif_control, !158, !"snd_trident_spdif_control", i1 false, i1 false}
!158 = !{!"../sound/pci/trident/trident_main.c", i32 2310, i32 38}
!159 = !{ptr @.str.49, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/pci/trident/trident_main.c", i32 2376, i32 18}
!161 = !{ptr @snd_trident_spdif_default, !162, !"snd_trident_spdif_default", i1 false, i1 false}
!162 = !{!"../sound/pci/trident/trident_main.c", i32 2373, i32 38}
!163 = !{ptr @.str.50, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/pci/trident/trident_main.c", i32 2410, i32 18}
!165 = !{ptr @snd_trident_spdif_mask, !166, !"snd_trident_spdif_mask", i1 false, i1 false}
!166 = !{!"../sound/pci/trident/trident_main.c", i32 2406, i32 38}
!167 = !{ptr @.str.51, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/pci/trident/trident_main.c", i32 2472, i32 18}
!169 = !{ptr @snd_trident_spdif_stream, !170, !"snd_trident_spdif_stream", i1 false, i1 false}
!170 = !{!"../sound/pci/trident/trident_main.c", i32 2468, i32 38}
!171 = !{ptr @.str.52, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/pci/trident/trident_main.c", i32 3295, i32 18}
!173 = !{ptr @.str.53, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/pci/trident/trident_main.c", i32 3298, i32 7}
!175 = !{ptr @.str.54, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/pci/trident/trident_main.c", i32 3266, i32 7}
!177 = !{ptr @.str.55, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/pci/trident/trident_main.c", i32 3269, i32 7}
!179 = !{ptr @.str.56, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/pci/trident/trident_main.c", i32 3272, i32 7}
!181 = !{ptr @.str.57, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/pci/trident/trident_main.c", i32 3275, i32 7}
!183 = !{ptr @.str.58, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/pci/trident/trident_main.c", i32 3277, i32 2}
!185 = !{ptr @.str.59, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/pci/trident/trident_main.c", i32 3278, i32 2}
!187 = !{ptr @.str.60, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/pci/trident/trident_main.c", i32 3279, i32 2}
!189 = !{ptr @.str.61, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/pci/trident/trident_main.c", i32 3281, i32 3}
!191 = !{ptr @.str.62, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.63, !190, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.64, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/pci/trident/trident_main.c", i32 3283, i32 3}
!195 = !{ptr @.str.65, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/pci/trident/trident_main.c", i32 3285, i32 4}
!197 = !{ptr @.str.66, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/pci/trident/trident_main.c", i32 3286, i32 4}
!199 = !{ptr @.str.67, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/pci/trident/trident_main.c", i32 3287, i32 4}
!201 = !{ptr @.str.68, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/pci/trident/trident_main.c", i32 3288, i32 4}
!203 = !{i32 1, !"wchar_size", i32 2}
!204 = !{i32 1, !"min_enum_size", i32 4}
!205 = !{i32 8, !"branch-target-enforcement", i32 0}
!206 = !{i32 8, !"sign-return-address", i32 0}
!207 = !{i32 8, !"sign-return-address-all", i32 0}
!208 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!209 = !{i32 7, !"uwtable", i32 1}
!210 = !{i32 7, !"frame-pointer", i32 2}
!211 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!212 = !{i64 2154882612}
!213 = !{i64 4324585}
!214 = !{i64 2154884777}
!215 = !{i64 2154891675}
!216 = !{i64 4324388}
!217 = !{i64 2154892135}
!218 = !{i64 2154892702}
!219 = !{i64 2154893269}
!220 = !{i64 2154893838}
!221 = !{i64 2154894408}
!222 = !{!"auto-init"}
!223 = !{!"branch_weights", i32 1, i32 2000}
!224 = !{i64 4324783}
!225 = !{i64 2154959886}
!226 = !{i64 2154960707}
!227 = !{i64 2154961750}
!228 = !{i64 4324165}
!229 = !{i64 2154962547}
!230 = !{i64 2154963375}
!231 = !{i64 2154963778}
!232 = !{i64 4325003}
!233 = !{i64 2154954626}
!234 = !{i64 2154956846}
!235 = !{i64 2154957494}
!236 = !{i64 2154880380}
!237 = !{i64 2154880750}
!238 = !{i64 2154881756}
!239 = !{i64 2154882065}
!240 = !{i64 2155005838}
!241 = !{i64 2155006349}
!242 = !{i64 2155006886}
!243 = !{i64 2155007888}
!244 = !{i64 2155008660}
!245 = !{i64 2155009432}
!246 = !{i64 2155009745}
!247 = !{i64 2155010759}
!248 = !{i64 2155011081}
!249 = !{i64 2155012089}
!250 = !{i64 2155012861}
!251 = !{i64 2154898449}
!252 = !{i64 4323965}
!253 = !{i64 2154896680}
!254 = !{i64 2155013174}
!255 = !{i64 2155013779}
!256 = !{i64 2154985125}
!257 = !{i64 2154986237}
!258 = !{i64 2154986809}
!259 = !{i64 2154987859}
!260 = !{i64 2154981827}
!261 = !{i64 2154982391}
!262 = !{i64 2154982946}
!263 = !{i64 2154983483}
!264 = !{i64 2154991249}
!265 = !{i64 2154992361}
!266 = !{i64 2154993395}
!267 = !{i64 2154996298}
!268 = !{i64 2154996624}
!269 = !{i64 2154997211}
!270 = !{i64 2154997792}
!271 = !{i64 2154998329}
!272 = !{i64 2154998884}
!273 = !{i64 2154999447}
!274 = !{i64 2154999915}
!275 = !{!"branch_weights", i32 2000, i32 1}
!276 = !{i64 2155018765}
!277 = !{i64 2155019779}
!278 = !{i64 2155020099}
!279 = !{i64 2155020668}
!280 = !{i64 2155021682}
!281 = !{i64 2155022002}
!282 = !{i64 2155022837}
!283 = !{i64 2154918965}
!284 = !{i64 2154923621}
!285 = !{i64 2154925139}
!286 = !{i64 2154925448}
!287 = !{i64 2154925992}
!288 = !{i64 2154927000}
!289 = !{i64 2154927309}
!290 = !{i64 2154927853}
!291 = !{i64 2154928438}
!292 = !{i64 2154928912}
!293 = !{i64 2154929372}
!294 = !{i64 2154930379}
!295 = !{i64 2154931151}
!296 = !{i64 2154906470}
!297 = !{i64 2154906883}
!298 = !{i64 2154907338}
!299 = !{i64 2154907886}
!300 = !{i64 2154908355}
!301 = !{i64 2154909287}
!302 = !{i64 2154909844}
!303 = !{i64 2154931961}
!304 = !{i64 2154938830}
!305 = !{i64 2154910617}
!306 = !{i64 2154936160}
!307 = !{i64 2154937789}
!308 = !{i64 2154938099}
!309 = !{i64 2154911463}
!310 = !{i64 2154912011}
!311 = !{i64 2154912479}
!312 = !{i64 2154913072}
!313 = !{i64 2154913638}
!314 = !{i64 2154914082}
!315 = !{i64 2154914554}
!316 = !{i64 2154915230}
!317 = !{i64 2154916276}
!318 = !{i64 2154916586}
!319 = !{i64 2154917594}
!320 = !{i64 2154917904}
!321 = !{i64 2154932771}
!322 = !{i64 2154967516}
!323 = !{i64 2154967962}
!324 = !{i64 2154969053}
!325 = !{i64 2154970623}
!326 = !{i64 2154973522}
!327 = !{i64 2154974658}
!328 = !{i64 2154975323}
!329 = !{i64 2154877347}
!330 = !{i64 2154878210}
!331 = !{i64 2154879058}
!332 = !{i64 2154879369}
!333 = !{i64 2154870555}
!334 = !{i64 2154871563}
!335 = !{i64 2154871954}
!336 = !{i64 2154872957}
!337 = !{i64 2154873328}
!338 = !{i64 2154874336}
!339 = !{i64 2154950156}
!340 = !{i64 755816, i64 755833}
!341 = !{i64 2154900242}
!342 = !{i64 2154900826}
!343 = !{i64 2154901368}
!344 = !{i64 2154901943}
!345 = !{i64 2154902410}
!346 = !{i64 2154902836}
!347 = !{i64 2154903562}
!348 = !{i64 2154904311}
!349 = !{i64 2154905037}
!350 = !{i64 2154947567}
!351 = !{i64 2154948375}
!352 = !{i64 2154948705}
!353 = !{i64 2154939748}
!354 = !{i64 2154940073}
!355 = !{i64 2154940636}
!356 = !{i64 2154941116}
!357 = !{i64 2154942154}
!358 = !{i64 2154942464}
!359 = !{i64 2154943467}
!360 = !{i64 2154943792}
!361 = !{i64 2154944395}
